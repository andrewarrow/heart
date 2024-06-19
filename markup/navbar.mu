{{ define "navbar" }}
  div navbar pl-6 pr-6
    div navbar-start 
      div btn btn-ghost w-20 h-20 -ml-6
        a href=/
          img rounded-md src=https://i.imgur.com/ncNzv2g.png
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
          button btn btn-outline
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="black" class="size-6"> <path stroke-linecap="round" stroke-linejoin="round" d="m21 21-5.197-5.197m0 0A7.5 7.5 0 1 0 5.196 5.196a7.5 7.5 0 0 0 10.607 10.607Z" /> </svg>

        {{ end }}
  {{ end }}
