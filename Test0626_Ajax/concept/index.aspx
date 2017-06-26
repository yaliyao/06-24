<!DOCTYPE html>
<html>
  <head>
    <script type='text/javascript' src='ajax.js'></script>
    <title>PHP AJAX Example</title>
  </head>
  <body>
    Your name:<input type="text" name="txtTest" id="txtTest" />
    <input type='button' onclick='MakeRequestSync()' value='Sync' /> 
    <input type='button' onclick='MakeRequestAsync()' value='Async, AJAX' /> <br />
    Other data: <input type="text" name="txtOther" id="txtOther" /><br />
    <hr>
    <div id='ResponseDiv'>
      This is a div to hold the response.
    </div>
  </body>
</html>
