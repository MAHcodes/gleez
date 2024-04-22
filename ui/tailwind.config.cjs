/** @type {import('tailwindcss').Config} */
module.exports = {
	darkMode: "class",
	content: ["./src/**/*.{html,gleam,js,ts,css}"],
	theme: {
		container: {
			center: true,
			padding: "2rem",
			screens: {
				"2xl": "1400px",
			},
		},
		extend: {
			colors: {
				background: "hsl(var(--background))",
				foreground: "hsl(var(--foreground))",
				neutral: {
					DEFAULT: "hsl(var(--neutral))",
					foreground: "hsl(var(--neutral-foreground))",
				},
				primary: {
					DEFAULT: "hsl(var(--primary))",
					foreground: "hsl(var(--primary-foreground))",
				},
				secondary: {
					DEFAULT: "hsl(var(--secondary))",
					foreground: "hsl(var(--secondary-foreground))",
				},
				info: {
					DEFAULT: "hsl(var(--info))",
					foreground: "hsl(var(--info-foreground))",
				},
				success: {
					DEFAULT: "hsl(var(--success))",
					foreground: "hsl(var(--success-foreground))",
				},
				warning: {
					DEFAULT: "hsl(var(--warning))",
					foreground: "hsl(var(--warning-foreground))",
				},
				danger: {
					DEFAULT: "hsl(var(--danger))",
					foreground: "hsl(var(--danger-foreground))",
				},
			},
			borderRadius: {
				lg: "12px",
				md: "10px",
				sm: "8px",
			},
		},
	},
	plugins: [],
};
