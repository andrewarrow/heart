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
