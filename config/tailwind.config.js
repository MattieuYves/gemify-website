const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {

      fontFamily: {
        sans: ['Montserrat','Inter var', ...defaultTheme.fontFamily.sans],
      },
      spacing: {
        '128': '32rem',
      },
      backgroundImage: {
        'noise-pattern': "url('noise.png')",
        'form-purple': "url('svg_rand_form.svg')",
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
