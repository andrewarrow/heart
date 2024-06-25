{{ define "navbar" }}
  div pl-6 pr-6
    div navbar 
      div navbar-start 
        a btn btn-ghost href=/
          heart 
      div navbar-center flex hidden md:block
        ul menu menu-horizontal
      div navbar-end
        div mr-0
          {{ $user := index . "user" }}
          {{ if $user }}
            a href=# id=logout
              Logout
          {{ else }}
            a href=/heart/login btn btn-ghost
              Login / Sign Up
          {{ end }}
    {{ end }}
