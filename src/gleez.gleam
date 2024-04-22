import gleam/http/request
import gleam/httpc
import simplifile

pub fn download(file_uri: String) {
  let assert Ok(req) = request.to(file_uri)
  let assert Ok(resp) = httpc.send(req)

  let assert Ok(_) = simplifile.write("./catppuccin.gleam", resp.body)
}

pub fn main() {
  "https://raw.githubusercontent.com/MAHcodes/catppuccin/v2.0.0/src/catppuccin.gleam"
  |> download
}
