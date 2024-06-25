div p-0 
  {{ template "navbar" . }}
  div 
    h1 text-center text-2xl font-bold mb-3
      Start
    form id=start space-y-4
      div
        Enter some names (nicknames, first names whatever you want) of some
        people you already know.
      div flex space-x-6 items-center
        div
          div
            1st person:
          div
            input id=first type=text pattern=.* w-full input input-primary autofocus=true autocomplete=off inputmode=text
      div flex space-x-6 items-center hidden
        div badge badge-primary p-6 text-sm
          93ca4f34-4c7e-4ca4-b518-5f83029dea70
        div btn glass p-3 bg-blue-700
          <svg style="pointer-events: none;" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="white" class="size-6"> <path stroke-linecap="round" stroke-linejoin="round" d="M15.666 3.888A2.25 2.25 0 0 0 13.5 2.25h-3c-1.03 0-1.9.693-2.166 1.638m7.332 0c.055.194.084.4.084.612v0a.75.75 0 0 1-.75.75H9a.75.75 0 0 1-.75-.75v0c0-.212.03-.418.084-.612m7.332 0c.646.049 1.288.11 1.927.184 1.1.128 1.907 1.077 1.907 2.185V19.5a2.25 2.25 0 0 1-2.25 2.25H6.75A2.25 2.25 0 0 1 4.5 19.5V6.257c0-1.108.806-2.057 1.907-2.185a48.208 48.208 0 0 1 1.927-.184" /> </svg>
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
