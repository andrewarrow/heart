div p-0 
  {{ template "navbar" . }}
  div bg-white shadow-md rounded-lg p-3
    h1 text-center text-2xl font-bold mb-3
      Start
    form id=start space-y-4
      div
        Enter some names (nicknames, first names whatever you want) of some
        people you already know.
      div flex space-x-6
        div
          div
            1st person:
          div
            input id=first type=text pattern=.* w-full input input-primary autofocus=true autocomplete=off inputmode=text
      div flex space-x-6
        div
          div
            2nd person:
          div
            input id=second type=text pattern=.* w-full input input-primary autofocus=true autocomplete=off inputmode=text
      div flex space-x-6
        div
          div
            3rd person:
          div
            input id=third type=text pattern=.* w-full input input-primary autofocus=true autocomplete=off inputmode=text
      div
        input type=submit val=ok hidden
