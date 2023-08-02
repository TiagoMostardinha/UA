/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{js,jsx,ts,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        violet: '#734976',
        pink:"#F472B6",
      },
    },
  },
  plugins: [require("daisyui")],
}