/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./src/index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {},
  },
  safelist: [
    'bg-emerald-500/20', 'text-emerald-400', 'border-t-emerald-500',
    'bg-amber-500/20', 'text-amber-400', 'border-t-amber-500',
    'bg-red-500/20', 'text-red-400', 'border-t-red-500'
  ],
  plugins: [],
}
