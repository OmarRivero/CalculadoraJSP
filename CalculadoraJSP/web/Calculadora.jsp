<%-- 
    Document   : Calculadora
    Created on : 12/10/2016, 10:52:23 PM
    Author     : omari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>

<%
    int num1, num2;
    float res = 0;
    
    num1 = Integer.parseInt(request.getParameter("num1"));
    num2 = Integer.parseInt(request.getParameter("num2"));
    String opcion = request.getParameter("Operacion");
        
    switch(opcion){
        case "Sumar":
            res = num1 + num2;
        break;
        case "Restar":
            res = num1 - num2;
        break;
        case "Multiplicar":
            res = num1 * num2;
        break;
        case "Dividir":
            res = num1 / num2;
        break;
    }
%>

<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Calculadora JSP</title>

    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/animate.min.css" type="text/css">

    <link rel="stylesheet" href="css/creative.css" type="text/css">

</head>

<body id="page-top">

    <header>
        <br>
        <br>
        <br>
        <center><h1>Calculadora con JSP</h1></center>
        <br>
        <div class="header-content">
            <h2>El resultado de la operacion es: <%= res %> </h2>
        </div>
   
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.min.js"></script>
        <script src="js/jquery.fittext.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/creative.js"></script>
    </header>

</body>

</html>
