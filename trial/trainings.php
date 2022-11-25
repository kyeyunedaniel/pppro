<?php 

echo '
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="style4.css">
</head>
<body style="text-align:center;padding-left:50px;padding-right:50px;">

<div id="myNav1" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <div class="overlay-content">
   <form style="background-color:#FFFFFF; padding: 10px;" action="new1.php" method="POST">
        <br><br>
        <div class="form-row">
            <div class="form-group col-md-6">
              <label for="inputEmail4">first Name</label> 
              <input type="text" class="form-control" name = "fname" id="inputEmail4" placeholder="First Name">
            </div>
            <div class="form-group col-md-6">
              <label for="inputPassword4">Last Name</label>
              <input type="text" class="form-control" name = "lname" id="inputPassword4" placeholder="Last Name">
            </div>
            <br><br>
          </div>
          <div class="form-group">
            <label for="inputAddress">Email Address</label>
            <input type="text" class="form-control" name = "email1" id="inputAddress" placeholder="Email">
          </div>
          <button type="submit" class="btn btn-primary" name="submit">Add User</button>
        </form>
  </div>
</div>

<div id="myNav2" class="overlay">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav2()">&times;</a>
  <div class="overlay-content">
   <form action="new1.php" method="POST">
    selectUser: <br>
    <select name ="id22">';
    
   
    $conn = mysqli_connect('localhost','root','','trial');

   $queryx= "SELECT * FROM users";
   $resultsx = mysqli_query($conn, $queryx);
    while($row1 = mysqli_fetch_array($resultsx)):;
    ?>
    <option name= >
        <?php echo$row1['UserId']; ?>
    </option>
    <?php endwhile;?>
      
    </select> <br><br>
    TrainingDeffered: <br><input type = "text" name = "train"> <br><br>
    StartDate: <br><input type = "date" name = "start1"> <br><br>
    EndDate: <br><input type = "date" name = "end1"> <br><br>

  
    <input type="submit" name="submit22">
    </form>
  </div>
</div>



<div class = "bt1">
 <br><br>
  <button type="button" class="btn btn-primary btn-lg" onclick="openNav2()">Trainings</button>
  <br><br>
  Number of Records to Add:
  <input type = "number" name = "batchNo" > 
  <input type ="submit" name ="submit14">
  <br>
<br>
  <button type="button" class="btn btn-primary btn-lg" onclick="openNav2()">Delete All</button>
</div>
<script>

function openNav2() {
  document.getElementById("myNav2").style.height = "100%";
}



function closeNav2() {
  document.getElementById("myNav2").style.height = "0%";
}

</script>
<div>
<H4></H4>
</div>
     

<?php
session_start();
$conn = mysqli_connect('localhost','root','','trial');
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }


if(isset($_POST['submit'])){
 $fname = $_POST['fname'];
 $lname = $_POST['lname'];
 $email = $_POST['email1'];
$sql= "INSERT INTO `users`(`FirstName`, `LastName`,`EmailAddress`) VALUES ('$fname','$lname','$email')";

$execute = mysqli_query($conn, $sql);

if($execute== true){
    
  echo '<script>alert("data has been inserted")</script>';
    
  
   
  }
  else {
       echo "there has been an issue";
  }

}

echo'
<table class="table table-striped table-dark">

  <thead class="thead-dark">
    <tr>
    
      <th scope="col">FirstName</th>
      <th scope="col">LastName</th>
      <th scope="col">EmailAddress</th>
      
    </tr>
  </thead>
  <tbody>


';

$query = "SELECT * FROM users";

if ($result = $conn->query($query)) {

    /* fetch associative array */
    while ($row = $result->fetch_assoc()) {
        $field1name = $row["FirstName"];
        $field2name = $row["LastName"]; 
        $field3name = $row["EmailAddress"];   
        echo "
        <tr>
        <td>$field1name</td>
        <td>$field2name</td>
        <td>$field3name</td>
        </tr><br>";
    }

    /* free result set */
    $result->free();
}

echo'
  </tbody>
</table>
</body>
</html>';

$conn = mysqli_connect('localhost','root','','trial');
if(isset($_POST['submit22'])){
    $sel = $_POST['id22'];
    $train1 = $_POST['train'];
    $stdat = $_POST['start1'];
    $endat = $_POST['end1'];

  

    $sql4= "INSERT INTO `trainings`(`train`, `StartDate`, `EndDate`, `UserID`) VALUES ('$train1','$stdat','$endat','$sel')";
    $execute4 = mysqli_query($conn, $sql4);
   
   if($execute4== true){
       
    echo '<script>alert("data has been inserted")</script>';
    
    
   
      
       }
       else {
         
        echo '<script>alert("there has been an issue")</script>';
       }
   
   }
   ?>