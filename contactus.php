<!DOCTYPE html>
<html>
    <head>
        <meta charset="Utf-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>products</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
        <title>Contact Us</title>
        <script type="text/javascript">
            function validateEmail(inputText)
    {
       var mailformat= /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
       if(inputText.match(mailformat))
        {
            alert("valid email address!");
                return true;
        }
         else
            {
                alert ("Please enter valid email address");
                return false;
               }
     }
     function validdateform()
            {
                var fullname= document.getElementById('fullname').value;
                var email =document.getElementById('email').value;
                if(fullname ==null || email=='')
                {
                    document.getElementById("errormessage").innerHTML='Please enter your email';
                    return false;
                }
                if(fullname =='' || email== NULL)
                {
                    document.getElementById("errormessage").innerHTML='Please enter your name';
                    return false;
                }
            }
    </script>
    <style>
        #errormessage
        {
            color:red;
        }
    </style>
    </head>
    <body style="background-color:lightblue;font-size:18px;text-align:center;">
        <h1>Send us message to assist you with your inquiry: </h1>
        <h6 style="color: red; font-size: xx-small;font-family: serif;">*required</h6>
        <p id="errormessage"></p>
       <form name="contactinfo" method="POST" action="contactinfo.php" 
       onsubmit="return validdateform()"style="background-color:lightblue;border:2px solid black;">
      <label>FULL NAME*:</label><br>
        <input type="text" name="fullname" id="fullname"><br>
        <label>Email*:</label><br>
        <input type="email" name="email" id="email"><br>
        <label>Message:</label><br>
        <textarea cols="30" rows="6" size="500" name="tell-us">
        </textarea>
        <br>
        <input type="submit" value="submit"style="background-color: white;color: black;width: 120px;text-align: center;font-size: 15px;padding: 20px;
            border-radius: 15px;
border: 3px dashed blue;">
        </form>
        <h2>OR you can subscribe to our newsletter to get latest info about our exclusive offers </h2>
        <form name="form1" action="#">
            <input type="text" name="emailid" id="email" value="">
            <input type="submit" name="submit" value="subscribe" onclick="return validateEmail(form1.email.value);">
        </form>
    </body> 
</html>