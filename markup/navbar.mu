{{ define "navbar" }}
  div navbar bg-base-200
    div navbar-start 
      div btn btn-ghost
        a href=/
          h1 text-5xl font-bold
            book
    div navbar-center flex hidden md:block
      ul menu menu-horizontal
    div navbar-end
      ul menu menu-horizontal
        li
          details
            summary
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.0" stroke="yellow" class="w-9 h-9"> <path stroke-linecap="round" stroke-linejoin="round" d="M6.75 3v2.25M17.25 3v2.25M3 18.75V7.5a2.25 2.25 0 0 1 2.25-2.25h13.5A2.25 2.25 0 0 1 21 7.5v11.25m-18 0A2.25 2.25 0 0 0 5.25 21h13.5A2.25 2.25 0 0 0 21 18.75m-18 0v-7.5A2.25 2.25 0 0 1 5.25 9h13.5A2.25 2.25 0 0 1 21 11.25v7.5m-9-6h.008v.008H12v-.008ZM12 15h.008v.008H12V15Zm0 2.25h.008v.008H12v-.008ZM9.75 15h.008v.008H9.75V15Zm0 2.25h.008v.008H9.75v-.008ZM7.5 15h.008v.008H7.5V15Zm0 2.25h.008v.008H7.5v-.008Zm6.75-4.5h.008v.008h-.008v-.008Zm0 2.25h.008v.008h-.008V15Zm0 2.25h.008v.008h-.008v-.008Zm2.25-4.5h.008v.008H16.5v-.008Zm0 2.25h.008v.008H16.5V15Z" /> </svg>
            ul bg-orange-800 z-[1]
              li
                a href=/space/pricing
                  Pricing
              li
                a href=/space/about-us whitespace-nowrap
                  About Us
              li
                a href=/space/feedback
                  Feedback
              {{ $user := index . "user" }}
              {{ if $user }}
                li
                  a href=/profile
                    Settings
                li
                  a href=# id=logout
                    Logout
              {{ else }}
                li
                  a href=# id=sign-in whitespace-nowrap
                    Sign in
              {{ end }}
  {{ end }}
