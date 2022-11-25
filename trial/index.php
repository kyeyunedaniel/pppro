<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello World</title>
</head>
<body>
    <form action="index.php" method="POST">
        <br><br>
    Name: <br><input type = "text" name = "name"> <br><br>
    Department: <br><input type = "text" name = "dept"> <br><br>
  
    <input type="submit" name="submit">
    </form>
    
</body>
</html>


<?php
session_start();
$conn = mysqli_connect('localhost','root','','trial');
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }


if(isset($_POST['submit'])){
 $name = $_POST['name'];
 $Department = $_POST['dept'];


$intro = "hello world ";
echo $intro; 

$sql= "INSERT INTO `registration`(`NAME`, `DEPARTMENT`) VALUES ('$name','$Department')";
$execute = mysqli_query($conn, $sql);

if($execute== true){
    
    //echo "data was inserted successfully";
    $_SESSION["username"] = "$name";
    $_SESSION["dept"] = "$Department";
   // header("Location:welcome.php");
   
    }
    else {
       echo "there has been an issue";
    }

}

$query = "SELECT * FROM registration";

if ($result = $conn->query($query)) {

    /* fetch associative array */
    while ($row = $result->fetch_assoc()) {
        $field1name = $row["NAME"];
        $field2name = $row["DEPARTMENT"];
        echo '<br>';
        echo '<tr>
                <th>Namet<th>
                <th>Department<th>
              </tr>
              <tr>
                  <td>'.$field1name.'</td> 
                  <td>'.$field2name.'</td>
              </tr>';
        echo '<br>';
       
    }

    /* free result set */
    $result->free();
}




?>