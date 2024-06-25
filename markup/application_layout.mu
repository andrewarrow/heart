html data-theme=garden
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
      link href=https://cdn.jsdelivr.net/npm/daisyui@4.12.8/dist/full.min.css rel=stylesheet type=text/css
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
    div overflow-x-auto min-h-screen font-poppins text-base
      div flex justify-center
        div w-full md:w-1/2
          {{ index . "content" }}
    {{ index . "wasm" }}
