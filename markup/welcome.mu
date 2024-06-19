div p-0 
  {{ template "navbar" . }}
  div hero mt-32
    div hero-content text-center
      div max-w-md
        h1 text-5xl font-bold
          A matter of Heart
        p py-6
          A classic dating app.
        a href=/heart/start btn btn-primary
          Get Started
  {{ template "footer" . }}
