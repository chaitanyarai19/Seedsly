<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
     
        <link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/2.2.1/mdb.min.css"
  rel="stylesheet"
/>

        <style>
            @import url('https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  outline: none;
  box-sizing: border-box;
  font-family: 'Montserrat', sans-serif;
}

nav{
  background: hsl(240, 73%, 65%);
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: space-between;
  height: 70px;
  padding: 0 100px;
}
nav .logo{
  color: #fff;
  font-size: 30px;
  font-weight: 600;
  letter-spacing: -1px;
}
nav .nav-items{
  display: flex;
  flex: 1;
  padding: 0 0 0 40px;
  margin-top: 15px;
}
nav .nav-items li{
  list-style: none;
  padding: 0 15px;
}
nav .nav-items li a{
  color: #fff;
  font-size: 18px;
  font-weight: 500;
  text-decoration: none;
}
nav .nav-items .dropdown{
    margin-top: -8px;
}
nav .nav-items li a:hover{
  color: #ff3d00;
}
nav form .dash_text
{
    /* margin-top:5px ; */
    color: #fff;
    font-size: 18px;
    font-weight: 500;
    text-decoration: none;
}
nav form .dash_text:hover
{
    color: #ff3d00;
}
nav form{
  display: flex;
  height: 40px;
  padding: 2px;
  /* background: #1e232b; */
  min-width: 18%!important;
  border-radius: 2px;
  border: 1px solid rgba(155,155,155,0.2);
}
nav form .search-data{
  width: 100%;
  height: 100%;
  padding: 0 10px;
  color: #fff;
  font-size: 17px;
  border: none;
  font-weight: 500;
  background: none;
}
nav form button{
  padding: 0 15px;
  color: #fff;
  font-size: 17px;
  background: #ff3d00;
  border: none;
  border-radius: 2px;
  cursor: pointer;
}
nav form button:hover{
  background: #e63600;
}
nav .menu-icon,
nav .cancel-icon,
nav .search-icon{
  width: 40px;
  text-align: center;
  margin: 0 50px;
  font-size: 18px;
  color: #fff;
  cursor: pointer;
  display: none;
}
nav .menu-icon span,
nav .cancel-icon,
nav .search-icon{
  display: none;
}
@media (max-width: 1245px) {
  nav{
    padding: 0 50px;
  }
}
@media (max-width: 1140px){
  nav{
    padding: 0px;
  }
  nav .logo{
    flex: 2;
    text-align: center;
  }
  nav .nav-items{
    position: fixed;
    z-index: 99;
    top: 70px;
    width: 100%;
    left: -100%;
    height: 100%;
    padding: 10px 50px 0 50px;
    text-align: center;
    background: #14181f;
    display: inline-block;
    transition: left 0.3s ease;
  }
  nav .nav-items.active{
    left: 0px;
  }
  nav .nav-items li{
    line-height: 40px;
    margin: 30px 0;
  }
  nav .nav-items li a{
    font-size: 20px;
  }
  nav form{
    position: absolute;
    top: 80px;
    right: 50px;
    opacity: 0;
    pointer-events: none;
    transition: top 0.3s ease, opacity 0.1s ease;
  }
  nav form.active{
    top: 95px;
    opacity: 1;
    pointer-events: auto;
  }
  nav form:before{
    position: absolute;
    content: "";
    top: -13px;
    right: 0px;
    width: 0;
    height: 0;
    z-index: -1;
    border: 10px solid transparent;
    border-bottom-color: #1e232b;
    margin: -20px 0 0;
  }
  nav form:after{
    position: absolute;
    content: '';
    height: 60px;
    padding: 2px;
    background: #1e232b;
    border-radius: 2px;
    min-width: calc(100% + 20px);
    z-index: -2;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
  }
  nav .menu-icon{
    display: block;
  }
  nav .search-icon,
  nav .menu-icon span{
    display: block;
  }
  nav .menu-icon span.hide,
  nav .search-icon.hide{
    display: none;
  }
  nav .cancel-icon.show{
    display: block;
  }
}
nav .logo.space{
  color: red;
  padding: 0 5px 0 0;
}
@media (max-width: 980px){
  nav .menu-icon,
  nav .cancel-icon,
  nav .search-icon{
    margin: 0 20px;
  }
  nav form{
    right: 30px;
  }
}
@media (max-width: 350px){
  nav .menu-icon,
  nav .cancel-icon,
  nav .search-icon{
    margin: 0 10px;
    font-size: 16px;
  }
}

        </style>
	<link rel="stylesheet" type="text/css" href="layouts/modal/css/default.css" />
		<link rel="stylesheet" type="text/css" href="layouts/modal/css/component.css" />
		<script src="layouts/modal/js/modernizr.custom.js"></script>	
  <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>

    </head>
    <body>
        <div class="container-fluid">

            <nav>
              <div class="menu-icon">
                <span class="fas fa-bars"></span></div>
              <div class="logo">
                <i class='bx bxs-star'></i>
                STARLING </div>
              <div class="nav-items">
                <li><a href="#">Home</a></li>
                <li><a href="../apna/index.php">Department</a></li>
                <!-- <li><a href="#">Contact</a></li> -->
                <li class="nav-item dropdown">
                    <a
                      class="nav-link dropdown-toggle"
                      href="#"
                      id="navbarDropdown"
                      role="button"
                      data-toggle="dropdown"
                      aria-expanded="false"
                    >
                    Warming
                    </a>
                    <!-- Dropdown menu -->
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><button class="butt md-trigger" data-modal="modal-7">State-Wise</button></li>
                      <li><button class="butt md-trigger" data-modal="modal-77">Dist-Wise</button></li>
                    </ul>
                  </li>
                  <li><a href="../apna/layouts/services/index.php">Services</a></li>
                <li class="nav-item dropdown">
                    <a
                      class="nav-link dropdown-toggle"
                      href="#"
                      id="navbarDropdown"
                      role="button"
                      data-toggle="dropdown"
                      aria-expanded="false"
                    >
                    Alert
                    </a>
                    <!-- Dropdown menu -->
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                      <li><b>Flood Alert!!! Water May be rise</b></li>
                      
                    </ul>
                  </li>
              </div>
              <div class="search-icon">
                <span class="fas fa-search"></span></div>
              <div class="cancel-icon">
                <span class="fas fa-times"></span></div>
              <form action="#" >
                <a class="mt-2 dash_text" href="#">
                  <i class='bx bxs-dashboard'></i>
                  Dashboard
                </a>
              </form>
            </nav>
           
           
          </div>
		  
		  <div class="md-modal md-effect-7" id="modal-7">
			<div class="md-content">
				<h3>Modal Dialog</h3>
				<div>
					
					<ul>
						<li>* modal windows will probably tell you something important so don't forget to read what they say.</li>
						<li>* a modal window enjoys a certain kind of attention; just look at it and appreciate its presence.</li>
						<li>* click on the button below to close the modal.</li>
					</ul>
					<button class="butt md-close">Close me!</button>
				</div>
			</div>
		</div>
		
		<div class="md-modal md-effect-7" id="modal-77">
			<div class="md-content">
				<h3>Modal Dialog</h3>
				<div>
					
					<ul>
						<li>* modal windows will probably tell you something important so don't forget to read what they say.</li>
						<li>* modal window enjoys a certain kind of attention; just look at it and appreciate its presence.</li>
						<li>* click on the button below to close the modal.</li>
					</ul>
					<button class="butt md-close">Close me!</button>
				</div>
			</div>
		</div>

		  
		  
		  <script src="layouts/modal/js/classie.js"></script>
		<script src="layouts/modal/js/modalEffects.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/2.2.1/mdb.min.js"></script>

    </body>
</html>