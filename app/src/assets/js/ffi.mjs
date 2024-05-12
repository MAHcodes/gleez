import { Some, None } from "/build/dev/javascript/gleam_stdlib/gleam/option.mjs";
import { Uri } from "/build/dev/javascript/gleam_stdlib/gleam/uri.mjs";

function attach_copy() {
	const codes = document.querySelectorAll("pre.hljs");

	if (codes.length === 0) return;

	codes.forEach(function (code) {
		const copy = code.parentElement.querySelector("button.copy");
		const success = code.parentElement.querySelector("button.copy-success");
		const danger = code.parentElement.querySelector("button.copy-danger");

		if (!copy) return;

		if (!copy.hasEventListener) {
			copy.addEventListener("click", async function () {
				copy.classList.add("opacity-0");
				try {
					await navigator.clipboard.writeText(code.innerText);
					success.classList.remove("invisible");
					danger.classList.add("invisible");
				} catch (error) {
					console.error(error.message);
					success.classList.add("invisible");
					danger.classList.remove("invisible");
				} finally {
					setTimeout(function () {
						success.classList.add("invisible");
						danger.classList.add("invisible");
					}, 2000);
					setTimeout(function () {
						copy.classList.remove("opacity-0");
					}, 2200);
				}
			});
			copy.hasEventListener = true;
		}
	});
}

function attach_less_is_more() {
	const btns = document.querySelectorAll("button.less-is-more");

	if (btns.length === 0) return;

	function handleClick(btn) {
		const source = btn.parentElement.querySelector(".source-code");
		if (!source) return;
		const hidden = source.classList.contains("hide");
		if (hidden) {
			source.classList.add("animate-fade-in");
			source.classList.remove("hide");
		} else {
			source.classList.remove("animate-fade-in");
			source.classList.add("animate-fade-out");
			setTimeout(() => {
				source.classList.add("hide");
				source.classList.remove("animate-fade-out");
			}, 300);
		}
	}

	btns.forEach(function (btn) {
		if (!btn.hasEventListener) {
			btn.addEventListener("click", () => handleClick(btn));
			btn.hasEventListener = true;
		}
	});
}

function getSystemDark() {
	return (
		window.matchMedia &&
		window.matchMedia("(prefers-color-scheme: dark)").matches
	);
}

function saveDarkTheme(isDark) {
	localStorage.setItem("GLEEZUIDARKTHEME", isDark ? "true" : "false");
}

function getDarkTheme() {
	const savedDarkTheme = localStorage.getItem("GLEEZUIDARKTHEME");
	if (savedDarkTheme) {
		return JSON.parse(savedDarkTheme);
	} else {
		return getSystemDark();
	}
}

function update_init_theme() {
	getDarkTheme() ? setThemeDark() : setThemeLight();
}

function setThemeDark() {
	document.body.classList.remove("light");
	document.body.classList.add("dark");
	updateThemeIcons();
	saveDarkTheme(true);
}

function setThemeLight() {
	document.body.classList.add("light");
	document.body.classList.remove("dark");
	updateThemeIcons();
	saveDarkTheme(false);
}

function updateThemeIcons() {
	const sun = document.getElementById("sun-icon");
	const moon = document.getElementById("moon-icon");

	if (!sun || !moon) return;

	if (document.body.classList.contains("dark")) {
		sun.classList.remove("hidden");
		moon.classList.add("hidden");
	} else {
		moon.classList.remove("hidden");
		sun.classList.add("hidden");
	}
}

function toggleTheme() {
	document.body.classList.contains("dark") ? setThemeLight() : setThemeDark();
}

function attach_toggle() {
	const toggleBtn = document.getElementById("theme-toggle");

	if (!toggleBtn) return;

	if (!toggleBtn.hasEventListener) {
		toggleBtn.addEventListener("click", toggleTheme);
		toggleBtn.hasEventListener = true;
	}
}

function scroll_to_top() {
	window.scrollTo(0, 0);
}

function do_attach_all() {
	attach_copy();
	attach_less_is_more();
	attach_toggle();
	update_init_theme();
	scroll_to_top();
}

export function attach_all() {
	window.requestAnimationFrame(do_attach_all);
}

const uri_from_url = (url) => {
	return new Uri(
		/* scheme   */ new (url.protocol ? Some : None)(url.protocol),
		/* userinfo */ new None(),
		/* host     */ new (url.host ? Some : None)(url.host),
		/* port     */ new (url.port ? Some : None)(url.port),
		/* path     */ url.pathname,
		/* query    */ new (url.search ? Some : None)(url.search),
		/* fragment */ new (url.hash ? Some : None)(url.hash.slice(1)),
	);
};

export function uri() {
	const url = new URL(window.location.href);
	return uri_from_url(url);
}
