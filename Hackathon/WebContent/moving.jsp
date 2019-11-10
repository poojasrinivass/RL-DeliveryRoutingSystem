<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="../../../../favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
      .centered {
	  position: absolute;
	  top: 50%;
	  left: 50%;
          font-size:60px;
          color: white;
	  transform: translate(-50%, -50%);}
       
      
      
	body {font-family: Arial, Helvetica, sans-serif;}
	form {border: 3px solid #f1f1f1;}
	
	.wrapper {
	    text-align: left;
	}


	button:hover {
	  opacity: 0.8;
	}


	.container {
	  padding: 16px;
	}

   </style>

    
    <title></title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

    <!-- Custom styles for this template -->
    <link href="navbar-top-fixed.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<style>
canvas {
    border:1px solid #d3d3d3;
    background-color: #f1f1f1;
}
</style>
</head>
<body onload="startGame()">
<script>

var myGamePiece;

function startGame() {
    myGamePiece = new component(30, 30, "red", 225, 225);
    myGameArea.start();
}

var myGameArea = {
    canvas : document.createElement("canvas"),
    start : function() {
        this.canvas.width = 480;
        this.canvas.height = 480;
        this.context = this.canvas.getContext("2d");
        document.body.insertBefore(this.canvas, document.body.childNodes[0]);
        this.frameNo = 0;
        this.interval = setInterval(updateGameArea, 20);
    },
    stop : function() {
        clearInterval(this.interval);
    },    
    clear : function() {
        this.context.clearRect(0, 0, this.canvas.width, this.canvas.height);
    }
}

function component(width, height, color, x, y, type) {

    this.type = type;
    this.width = width;
    this.height = height;
    this.speed = 1;
    this.angle = 0;
    this.x = x;
    this.y = y;    
    this.update = function() {
        ctx = myGameArea.context;
        ctx.save();
        ctx.translate(this.x, this.y);
        ctx.rotate(this.angle);
        ctx.fillStyle = color;
        ctx.fillRect(this.width / -2, this.height / -2, this.width, this.height);        
        ctx.restore();    
    }
    this.newPos = function() {
        this.x += this.speed * Math.sin(this.angle);
        this.y -= this.speed * Math.cos(this.angle);
    }
}

function updateGameArea() {
    myGameArea.clear();
    myGamePiece.newPos();
    myGamePiece.update();
}

</script>

<p>The red square will move forward.</p>
<p>Try changing the speed property, and you will see the red square will move accordingly.</p>

<footer>
  <div style="background-color:#343a40;;">
      <hr style="color: black;max-width: 100%;margin-top: 0;">
        <div class="container" style="margin-bottom: 3vh;">
          <div class="row">
            <div class="col-lg-3 col-md-3">
              <div class="footer-heading" style="color: white">CONTACT PERSON</div>
              <div class="footer-content" style="color: white">XYZ</div>
            </div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <div class="col-lg-3 col-md-3">
              <div class="footer-heading" style="color: white">PHONE</div>
              <div class="footer-content" style="color: white"><a href="tel:1111111111" style="color:rgba(255,255,255,0.9)">+91-11111 11111</a></div>
            </div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
            <div class="col-lg-3 col-md-3">
              <div class="footer-heading" style="color: white">EMAIL</div>
              <div class="footer-content" style="color: white"><a href="mailto:xyz@lnmiit.ac.in" style="color: rgba(255,255,255,0.9)">xyz@lnmiit.ac.in</a></div>
            </div>
           <!-- <div class="col-lg-3 col-md-3">
              <div class="footer-heading">VENUE</div>
              <div class="footer-content">The LNMIIT, Jaipur, Rajasthan </div>
            </div>
            
          </div>-->
        </div> 
          <div class="row" style="color:white;text-align: center;background: #;">
            
           <div class="col-lg-12" style="margin-top: 3vh;margin-left: 1vw;font-size: 1.0vw;margin-bottom: 1vh;">
             <p class="developers"> Developers: Komal Kungwani, Parul Shandilya, Soumya Taurani, Pooja Srinivas
            </p>
          </div>
        </div>
    </div>
</footer>

</body>
</html>
