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
.benefit{
background-color:#33cccc;
}
.log{
background-color:#9999FF;
}

.material-icons {
	   vertical-align: middle;
}
#iconsize{
    font-size:18px;
    }

.image{
    width: 100%;
}
.title{
font-size: 20px;
font-weight: bolder;
}
.price{
    font-size: 15px;
    text-align: right;
    padding-right: 20px;
    color: red;
}
.delivery{
    text-align: right;
}
p{
    padding-top: 20px;
}
.logo{
    height: 40px;
    width: 50px;
    padding-left: 10px;
}
.free{

    font-size: 12px;
    color: white;
    background-color:#079494;
}

footer{
    text-align: left;
    position: relative;
  left: 0;
  bottom: 0;
    width: 100%;
    background-color: #0051ff;
    height:40px;
color: white;
margin-top: 10px;
padding-left: 10px;

}
.statusActive{
    background-color: green;
    border-radius: 5px;
    padding: 1px;
    color: white;
}
.statusInactive{
background-color: red;
border-radius: 5px;
color: white;
padding: 1px;
}
.text-title{
    font-size: 12px;
}
.topBack{
    background-image:url("/WEB-INF/views/backFood.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}
.findfood{
    color: white;
    float: left;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src= "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> 
    </script>    
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> 
    </script> 
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
                    <a class="nav-link" style="color: white;" href="menu-item-list-admin"><i class="fas fa-pizza-slice" id="iconsize"></i> Menu Items</a>
                </li>
                
            
        </ul>
        </div>
        </div>
    </nav>
    <div class="jumbotron text-center topBack">
        
      </div>
    <div class="container-fluid">
        <div class="row">
        <c:forEach items="${inf}" var="temp">
        
            <div class="col-sm-3">
                <div class="card">
                    <div class="card-body">
                    <div class="card-title title">
                        <div class="row">
                            <div class="col-6"><label> ${temp.name} </label></div>
                        
                        <div class="col-6">
                            <div class="price"><i class="fa fa-inr" style="font-size:20px"> ${temp.price} </i></div>
                        </div>
                        </div>
                    </div>
                    <div class="card-text">
                     <div class="row">
                        <div class="col-6 text-title">
                           <div><label class="statusActive">Active</label> <label> ${temp.category} </label></div>
                        </div>
                        <div class="col-6 delivery">
                           <i class="fas fa-truck"></i>
                            <label class="free">FREE</label>
                        </div>
                     </div>           
                     <div class="row">
                        <div class="col-6 text-title">
                        <div>
                           <i class="far fa-clock"></i> Launch
                        </div>    
                        <div>
							${temp.dateOfLaunch}
                        </div>
                        </div> 
                        <div class="col-6">
                            <div class="addCart">
                                <a href="edit?id=${temp.id}" class="btn btn-warning float-right"><i class="fas fa-pen"></i> Edit</a>
                             </div>
                        </div>
                     </div>
                      
                </div>
                </div>
           </div>
            </div>
 </c:forEach>
        </div>
            </div>
        
    <footer class="page-footer">
     <div class="footer-copyright">
        Copyright 2020
     </div>   
    </footer>
</body>
</html>