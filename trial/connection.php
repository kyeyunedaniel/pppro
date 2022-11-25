<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<body>

  <form action="connection.php" method="post">
  <input type="NUMBER" name="subnum">
  <input type="submit" name= "SubmitNum">
  </form>

</body>
</html>


<?php
$conn = mysqli_connect('localhost','root','','trial');
 if(isset($_POST['SubmitNum'])){
  $num2 = $_POST['subnum'];
  $num2=$num2+1;

  echo ($num2);
  for($i=1;$i<$num2;$i++){
    $fname = "FirstName".$i;
    $lname = "lastName".$i;
    $email = $i."@test.com";
    
    $sql= "INSERT INTO `users`(`FirstName`, `LastName`,`EmailAddress`) VALUES ('$fname','$lname','$email')";

    $execute = mysqli_query($conn, $sql);
   }
   if($execute== true){
    
     echo '<script>alert("all data has been inserted")</script>';
    
  
   
      }
    else {
       echo "there has been an issue";
       }
 }

 ?>