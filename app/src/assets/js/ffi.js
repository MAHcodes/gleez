// attach copy functionality for copy to clipboard buttons
function attach_copy() {
	const codes = document.querySelectorAll("pre.hljs");

	if (codes.length === 0) return;

	codes.forEach(function (code) {
		const copy = code.parentElement.querySelector("button.copy");
		const success = code.parentElement.querySelector("button.copy-success");
		const danger = code.parentElement.querySelector("button.copy-danger");

		if (!copy) return;

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

function updateInitTheme() {
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

	toggleBtn.removeEventListener("click", toggleTheme);
	toggleBtn.addEventListener("click", toggleTheme);
}

export function attach_all() {
	window.requestAnimationFrame(attach_copy);
	window.requestAnimationFrame(attach_toggle);
	window.requestAnimationFrame(updateInitTheme);
}