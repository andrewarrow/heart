html data-theme=corporate
  head
    {{ $build := index . "build" }}
    {{ $og := index . "og" }}
    meta property=og:image content={{$og}}
    link rel=apple-touch-icon href=/assets/images/book.png
    link rel=apple-touch-startup-image href=/assets/images/book.png
    link rel=icon href=/assets/images/book.png
    link rel=stylesheet type=text/css href=/assets/css/tail.min.css?id!{{$build}}
    link rel=stylesheet type=text/css href=/assets/css/main.css?id!{{$build}}
    <link rel="stylesheet" type="text/css" href="/assets/css/air-datepicker.css">
    {{ if index . "USE_LIVE_TEMPLATES" }}
      script src=https://cdn.tailwindcss.com
    {{ end }}
    script src=/assets/javascript/wasm_exec.js?id!{{$build}}
    <script src="/assets/javascript/air-datepicker.js"></script>
    script
      function $(id) { return document.getElementById(id); }
    title
      {{ index . "title" }}
    {{ index . "viewport" }}
  body
    div id=flash bg-red-600 text-white text-center fixed top-0 left-0 w-full
      {{ index . "flash" }}
    div overflow-x-auto pl-3 pr-3 min-h-screen font-familjen text-base
      {{ index . "content" }}
    div 
      div pb-32 footer items-center p-10 bg-base-200 text-base-content rounded
        div items-center grid-flow-col
          Copyright &copy; 2024 - All right reserved by andrewarrow.dev
        div grid-flow-col gap-4 md:place-self-center md:justify-self-end
          a href=/heart/about-us link link-hover
            About Us
          a href=/heart/terms link link-hover
            Terms & Conditions
          a href=/heart/privacy link link-hover
            Privacy Policy
    {{ index . "wasm" }}
