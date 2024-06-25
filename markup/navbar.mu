{{ define "navbar" }}
  div pl-6 pr-6
    div navbar 
      div navbar-start 
        div btn btn-ghost w-20 h-20 -ml-6
          a href=/
            heart 
      div navbar-center flex hidden md:block
        ul menu menu-horizontal
      div navbar-end
        div mr-0
          {{ $user := index . "user" }}
          {{ if $user }}
            a href=/profile
              Settings
            a href=# id=logout
              Logout
          {{ else }}
            div btn btn-ghost h-20 -ml-6
              a href=/heart/register
                Login / Sign Up
          {{ end }}
    {{ end }}
