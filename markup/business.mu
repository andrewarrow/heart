div p-0 
  {{ template "navbar" . }}
  {{ $item := index . "item" }}
  {{ $guid := index $item "guid" }}
  div flex justify-between
    ul menu bg-base-200 menu-horizontal rounded-box
      li
        a href=./{{$guid}}
          Services
  div flex justify-center mt-3 p-3
    div text-4xl
      {{ index $item "name" }}
  div flex space-x-3 justify-center hidden id=date-div
    div id=date-picker 
    div mt-3
      div
        {{ $items := index . "times" }}
        {{ $lenItems := len $items }}
        {{ if gt $lenItems 0 }}
        form 
          select select select-primary id=times
            {{ range $i, $item := $items }}
              option
                {{ $item }}
            {{ end }}
        {{ end }}
      div mt-9 ml-9
        div
          Please schedule my 30 minute sauna for
        div
          span id=display-date
          span id=display-time
            at 9:00 AM
        div mt-9 text-sm flex space-x-3
          div
            input type=checkbox checkbox checkbox-primary id=box
          div
            I understand the 24 hour cancelation policy
  form id=book flex justify-center mt-3 p-3 
    input type=hidden id=hidden-date
    button type=submit hidden btn btn-primary id=selected-service
      Book 30 minute sauna
  div flex justify-center mt-3 p-3 id=services
    div
      {{ $items := index . "services" }}
      {{ range $i, $item := $items }}
      {{ $guid := index $item "guid" }}
      a id=s-{{$guid}} service flex items-center href=# transition-all duration-900 hover:bg-orange-900 hover:rounded-md p-3
        div w-64 truncate 
          {{ index $item "name" }}
      {{ end }}
