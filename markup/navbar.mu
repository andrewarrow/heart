{{ define "navbar" }}
  div navbar 
    div navbar-start 
      div btn btn-ghost w-32 h-32
        a href=/
          img rounded-md src=https://i.imgur.com/ncNzv2g.png
    div navbar-center flex hidden md:block
      ul menu menu-horizontal
    div navbar-end
      div mr-9
        {{ $user := index . "user" }}
        {{ if $user }}
          a href=/profile
            Settings
          a href=# id=logout
            Logout
        {{ else }}
          a href=# id=sign-in whitespace-nowrap
            Sign in
        {{ end }}
  {{ end }}
