/** @type {import('tailwindcss').Config} */
module.exports = {
	darkMode: "class",
	content: ["./src/**/*.{html,gleam,js,mjs,ts,css}"],
	future: {
		hoverOnlyWhenSupported: true,
	},
	theme: {
		container: {
			center: true,
			padding: "2rem",
			screens: {
				"2xl": "1280px",
			},
		},
		extend: {
			fontFamily: {
				main: "'IBM Plex Sans', sans-serif",
			},
			colors: {
				background: "hsl(var(--background) / <alpha-value>)",
				foreground: "hsl(var(--foreground) / <alpha-value>)",
				neutral: {
					DEFAULT: "hsl(var(--neutral) / <alpha-value>)",
					foreground: "hsl(var(--neutral-foreground) / <alpha-value>)",
				},
				primary: {
					DEFAULT: "hsl(var(--primary) / <alpha-value>)",
					foreground: "hsl(var(--primary-foreground) / <alpha-value>)",
				},
				secondary: {
					DEFAULT: "hsl(var(--secondary) / <alpha-value>)",
					foreground: "hsl(var(--secondary-foreground) / <alpha-value>)",
				},
				info: {
					DEFAULT: "hsl(var(--info) / <alpha-value>)",
					foreground: "hsl(var(--info-foreground) / <alpha-value>)",
				},
				success: {
					DEFAULT: "hsl(var(--success) / <alpha-value>)",
					foreground: "hsl(var(--success-foreground) / <alpha-value>)",
				},
				warning: {
					DEFAULT: "hsl(var(--warning) / <alpha-value>)",
					foreground: "hsl(var(--warning-foreground) / <alpha-value>)",
				},
				danger: {
					DEFAULT: "hsl(var(--danger) / <alpha-value>)",
					foreground: "hsl(var(--danger-foreground) / <alpha-value>)",
				},
			},
			borderRadius: {
				lg: "12px",
				md: "10px",
				sm: "8px",
			},
			keyframes: {
				fadeIn: {
					from: {
						opacity: 0,
					},
					to: {
						opacity: 1,
					},
				},
				fadeOut: {
					from: {
						opacity: 1,
					},
					to: {
						opacity: 0,
					},
				},
			},
			animation: {
				"fade-in": "fadeIn 400ms ease-in-out",
				"fade-out": "fadeOut 300ms ease-in-out forwards",
			},
		},
	},
	plugins: [require("@tailwindcss/typography")],
};
