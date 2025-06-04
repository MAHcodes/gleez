import argv
import gleam/http/request
import gleam/httpc
import gleam/int
import gleam/io
import gleam/result
import gleam/string
import simplifile

// github tag for the ui components
const tag = "v0.3.2"

// distination path for the installed components
const dist = "./src/components/ui/"

fn component_url(component: String) -> String {
  [
    "https://raw.githubusercontent.com/MAHcodes/gleez/",
    tag,
    "/app/src/components/ui/",
    component,
    ".gleam",
  ]
  |> string.join("")
}

fn component_path(component: String) -> String {
  dist <> component <> ".gleam"
}

pub opaque type FetchError {
  RequestFailed
  SendFailed
  CreateDirectoryFailed(String)
  NotOk(Int)
  WriteFileFailed(String)
  CommandNotFound
}

fn status_ok(status: Int) -> Result(Nil, Nil) {
  case status >= 200 && status < 300 {
    True -> Ok(Nil)
    False -> Error(Nil)
  }
}

fn download(component: String) -> Result(String, FetchError) {
  use req <- result.try(result.replace_error(
    request.to(component_url(component)),
    RequestFailed,
  ))

  use resp <- result.try(result.replace_error(httpc.send(req), SendFailed))

  use _ <- result.try(result.replace_error(
    status_ok(resp.status),
    NotOk(resp.status),
  ))

  use _ <- result.try(result.replace_error(
    simplifile.create_directory_all(dist),
    CreateDirectoryFailed(dist),
  ))

  use _ <- result.try(result.replace_error(
    simplifile.write(component_path(component), resp.body),
    WriteFileFailed(component_path(component)),
  ))

  Ok("installed: " <> component_path(component))
}

pub fn main() {
  let op = case argv.load().arguments {
    ["add", component] -> download(component)
    _ -> Error(CommandNotFound)
  }

  case op {
    Ok(msg) -> msg
    Error(RequestFailed) -> "Request failed"
    Error(SendFailed) -> "Sending request failed"
    Error(CreateDirectoryFailed(d)) -> "Failed to create directory: " <> d
    Error(WriteFileFailed(f)) -> "Failed to write file: " <> f
    Error(NotOk(s)) -> "Response status is " <> int.to_string(s)
    Error(CommandNotFound) -> "usage: gleam run -m gleez add <component>"
  }
  |> io.println
}
