<?PHP echo '<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body style="text-align:center;padding-left:50px;padding-right:50px;">
<table class="table table-sm" id = "h2214">
  <thead class="thead-dark">
    <tr>
    
      <th scope="col">USERID</th>
      <th scope="col">TRAINING</th>
      <th scope="col">START DATE</th>
      <th scope="col">END DATE</th>
    </tr>
  </thead>
  <tbody>';
    $conn = mysqli_connect('localhost','root','','trial');
    $query = "SELECT * FROM trainings";
    if ($result = $conn->query($query)) {

    /* fetch associative array */
    while ($row = $result->fetch_assoc()) {
        $field1name = $row["UserID"];
        $field2name = $row["train"]; 
        $field3name = $row["StartDate"]; 
        $field4name = $row['EndDate'];  
        echo"
        <tr>
            <td>$field1name</td>
            <td>$field2name</td>
            <td>$field3name</td>
            <td>$field4name</td> 
        </tr> <br>";
    }

    /* free result set */
    $result->free();
}
echo'
  </tbody>
</table>
</body>
</html>';



?>

<style>
  .h2214 {
  width: 50%;
}

</style>