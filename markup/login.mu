div p-0 
  {{ template "navbar" . }}
  div flex justify-center mt-32
    div 
      div
        h1 text-5xl font-bold
          Login
      form mt-6 space-y-3 id=login
        div
          input input input-primary id=email placeholder=email autofocus=true
        div
          input input input-primary id=password placeholder=password
        div flex space-x-6 justify-between
          div
            input type=submit btn btn-primary value=Go
          div
            input type=submit btn btn-secondary value=Forgot
