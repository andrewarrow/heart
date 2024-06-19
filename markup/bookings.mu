div p-0 
  {{ template "navbar" . }}
  div flex justify-between
    ul menu bg-base-200 menu-horizontal rounded-box
      li
        a href=/book
          Businesses
      li
        a href=/book/bookings
          Bookings
    a href=/book btn btn-accent mt-3 mr-3
      New Booking
  div flex justify-center mt-3 p-3
    div
      {{ $items := index . "items" }}
      {{ range $i, $item := $items }}
      {{ $guid := index $item "guid" }}
      {{ $b := index $item "business" }}
      {{ $s := index $item "service" }}
      a flex items-center flex-col md:flex-row items-center href=/book/business/{{$guid}} transition-all duration-900 hover:bg-orange-900 hover:rounded-md p-3
        div md:w-64 truncate 
          div
            {{ index $b "name" }}
          div
            {{ index $s "name" }}
        div 
          div
            {{ index $item "starts_at_ago" }}
          div
            {{ index $item "starts_at_human" }}
      {{ end }}
