div p-0 
  {{ template "navbar" . }}
  div flex justify-between
    ul menu bg-base-200 menu-horizontal rounded-box
      li
        a href=/
          Businesses
      li
        a href=/book/bookings
          Bookings
    button id=add btn btn-primary mt-3 mr-3
      Add Business
  div flex justify-center mt-3 p-3
    div
      {{ $items := index . "items" }}
      {{ range $i, $item := $items }}
      {{ $guid := index $item "guid" }}
      a flex flex-col md:flex-row items-center href=/book/business/{{$guid}} transition-all duration-900 hover:bg-orange-900 hover:rounded-md p-3
        div md:w-64 truncate 
          {{ index $item "name" }}
        div 
          {{ index $item "address" }}
      {{ end }}
