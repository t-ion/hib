<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<style>
.htrack{
color:white;
background-color: #0051ff;
font: size 30;
padding-top: 10px;
padding-left: 20px;
}

.price{
    color: red;
}

.material-icons {
	   vertical-align: middle;
}
#iconsize{
    font-size:18px;
    }

.title{
font-size: 35px;
text-align: left;
}

.logo{
    height: 40px;
    width: 50px;
    padding-left: 10px;
    font-color: black;
}

footer{
    text-align: left;
  bottom: 0;
  position: absolute;
    width: 100%;
    background-color: #0051ff;
    height:40px;
color: white;
margin-top: 10px;
padding-left: 10px;
}
.pricedel{
    text-align: right;
}
.total{
    font-size: 25px;
}
.cell{
    display: table-cell;
    border-style: inset;
    border-radius:25%;
    border-collapse:collapse;
  	 background-color: #c1d2f7;
 	
}
.dustbin{
    color:#837575 ;
}
.pay-btn{
padding:1px;
margin-top: 20px;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src= "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> 
    </script>    
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> 
    </script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css"/>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
    <nav class="navbar navbar-dark htrack">
       <div class="navbar-brand title"> truYum</div>

       <div class="navbar-expand-md">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>   
        </button>
       <div class="collapse navbar-collapse" id="collapsibleNavbar">  
            <ul class="navbar-nav active">
                <li class="nav-item">
                    <a class="nav-link" style="color: white;" href="menu-item-list-customer"><i class="fas fa-pizza-slice" id="iconsize"></i> Menu Items</a>
                </li>
               
            
        </ul>
        </div>
        </div>
    </nav>
    
    
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="w-100"></div>
            <div class="col-sm-5">
                <div class="title"><i class="material-icons logo"></i>Cart</div>
				        <c:forEach items="${inf}" var="temp">
				
                <div class="row cell">
                    <div class="col-5"><label id="Name"> ${temp.name} </label></div>
                    <div class="col-6 pricedel">
                        <label class="price" id="Price"> ${temp.price} </label>
                        <a href="deleteItem?id=${temp.id}" class="dustbin" >
                            <i class="material-icons">delete_forever</i>
                        </a>
                    </div>
                </div>
              
                </c:forEach>
                <div class="pay-btn"><button class="btn-success">Proceed to pay</button></div>
            </div>
        </div>

    </div>

    

      
    <footer class="page-footer">
     <div class="footer-copyright">
        Copyright 2020
     </div>   
    </footer>
</body>


</html>