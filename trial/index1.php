<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="styles.css">

<style>
#overlay {
  position: fixed;
  display: none;
  width: 100%;
  height: 100%;
 
  top: 20;
  left: 20;
  right: 20;
  bottom: 20;
  background-color: rgba(0,0,0,0.5);
  
  
}

.bt1 {
  float:left;
}

.bt2 {
  float:right;
}

#text{
  position: absolute;
  top: 50%;
  left: 50%;
  font-size: 50px;
  color: white;
  transform: translate(-50%,-50%);
  -ms-transform: translate(-50%,-50%);
}
</style>
</head>
<body>

<div id="overlay" onclick="off()">
  <div id="text">Overlay Text</div>
</div>

<div class = "bt1">
  <h2>Add Users</h2>
  <button onclick="on()">ADD USER</button>

</div>

<div class = "bt2">
  <h2>Assaign Trainings</h2>
  <button onclick="on()">TRAININGS</button>
  
</div>

<script>
function on() {
  document.getElementById("overlay").style.display = "block";
}

function off() {
  document.getElementById("overlay").style.display = "none";
}
</script>
   
</body>
</html> 
