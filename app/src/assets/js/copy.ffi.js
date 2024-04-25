export function attach() {
  console.log("attach fired")
  const codes = document.querySelectorAll("pre.hljs")

  if (codes.length === 0) return

  codes.forEach(function (code) {
    const copy = code.parentElement.querySelector("button.copy")
    const success = code.parentElement.querySelector("button.copy-success")
    const danger = code.parentElement.querySelector("button.copy-danger")

    if (!copy) return

    copy.addEventListener("click", async function () {
      copy.classList.add("opacity-0")
      try {
        await navigator.clipboard.writeText(code.innerText);
        success.classList.remove("invisible")
      } catch (error) {
        console.error(error.message);
        danger.classList.remove("invisible")
      } finally {
        setTimeout(function () {
          success.classList.add("invisible")
          danger.classList.add("invisible")
          copy.classList.remove("hidden")
        }, 2000)
        setTimeout(function () {
          copy.classList.remove("opacity-0")
        }, 2100)
      }
    })
  })
}
