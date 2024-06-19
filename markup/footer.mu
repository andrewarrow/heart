{{ define "footer" }}
  div pt-64 text-center space-y-6 pb-16
    div
      Copyright &copy; 2024 - All right reserved by andrewarrow.dev
    div flex justify-center
      div flex space-x-6 whitespace-nowrap text-sm
        a href=/heart/about-us link link-hover
          About Us
        a href=/heart/terms link link-hover
          Terms of Service 
        a href=/heart/privacy link link-hover
          Privacy Policy
  {{ end }}
