div p-0 
  {{ template "navbar" . }}
  div bg-white shadow-md rounded-lg p-3
    h1 text-center text-2xl font-bold mb-3
      Heart Start
    form id=start space-y-4
      div
        Welcome to Heart, where connections begin. Our mission is to create a safe and enjoyable platform for people to meet and build meaningful relationships.
      div
        What's your first name?
      div
        <input type="text" pattern=".*" class="w-full input input-primary" id="name" autofocus="true" autocomplete="off" inputmode="text" >
      div
        input type=submit val=ok hidden
    div cursor-pointer id=people hidden flex flex-wrap space-x-3 space-y-3
      div ml-3 mt-3
        img w-32 w-32 rounded-lg src=https://i.imgur.com/JKuLPSe.png
      div
        img w-32 w-32 rounded-lg src=https://i.imgur.com/3QOb76A.png
      div
        img w-32 w-32 rounded-lg src=https://i.imgur.com/LPUttvH.png
      div
        img src=https://i.imgur.com/4tnmnkD.png w-32 w-32 rounded-lg
      div
        img w-32 w-32 rounded-lg src=https://i.imgur.com/Ub34uhP.png
      div 
        img w-32 w-32 rounded-lg src=https://i.imgur.com/v5bunRG.png
      div 
        img w-32 w-32 rounded-lg src=https://i.imgur.com/AiMJZdG.png
      div 
        img w-32 w-32 rounded-lg src=https://i.imgur.com/M5jDFlr.png
      div 
        img w-32 w-32 rounded-lg src=https://i.imgur.com/27qxqdi.png
      div 
        img w-32 w-32 rounded-lg src=https://i.imgur.com/X1hq5p5.png
      div 
        img w-32 w-32 rounded-lg src=https://i.imgur.com/PoP7QlC.png
      div 
        img w-32 w-32 rounded-lg src=https://i.imgur.com/QxQ1Sd9.png
      div 
        img w-32 w-32 rounded-lg src=https://i.imgur.com/o2bAcNB.png
      div 
        img w-32 w-32 rounded-lg src=https://i.imgur.com/tOn6YAv.png
      div 
        img w-32 w-32 rounded-lg src=https://i.imgur.com/zDn7Pv4.png
      div 
        img w-32 w-32 rounded-lg src=https://i.imgur.com/5P2uicH.png
      div 
        img w-32 w-32 rounded-lg src=https://i.imgur.com/MtmCaPy.png
      div 
        img w-32 w-32 rounded-lg src=https://i.imgur.com/63Ii55q.png
  {{ template "toolbar" . }}
