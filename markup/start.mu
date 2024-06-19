div p-0 
  {{ template "navbar" . }}
  div max-w-3xl mx-auto bg-white shadow-md rounded-lg p-8
    h1 text-3xl font-bold mb-6
      Heart Start
    form id=start space-y-4
      div
        Welcome to Heart, where connections begin. Our mission is to create a safe and enjoyable platform for people to meet and build meaningful relationships.
      div
        What's your first name?
      div
        input type=text input input-primary autofocus=true
      div
        input type=submit val=ok hidden
    div flex flex-wrap space-x-3 space-y-3
      div ml-3 mt-3
        img src=https://i.imgur.com/Fpp1T8c.png w-32 w-32 rounded-lg
      div
        img src=https://i.imgur.com/4tnmnkD.png w-32 w-32 rounded-lg
      div
        img w-32 w-32 rounded-lg src=https://i.imgur.com/3QOb76A.png
      div
        img w-32 w-32 rounded-lg src=https://i.imgur.com/LPUttvH.png
      div
        img w-32 w-32 rounded-lg src=https://i.imgur.com/Ub34uhP.png
      div bg-r
        img w-32 w-32 rounded-lg src=https://i.imgur.com/v5bunRG.png
