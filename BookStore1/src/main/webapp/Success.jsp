<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="MVC.Book" %>
<jsp:useBean id="bean" scope="request" type="MVC.Book"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Success</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
	<style>
         @font-face {
            font-family: 'Coolvetica';
            src: url('CoolveticaRg-Regular.woff2') format('woff2'),
                 url('CoolveticaRg-Regular.woff') format('woff');
            font-weight: bold;
        }
        .header-container {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 20px;
        }
        .header-container img {
            height: 60px; /* Adjust the height of the image as needed */
            margin-right: 10px; /* Space between image and text */
        }
        h1 {
            font-size: 30px;
            font-family: Coolvetica;
            text-align: center;
            word-break: break-word;
            margin: 0;
            z-index: 1;
            color: black;
            
        }
        h1 span {
            display: inline-block;
            transition: color 0.3s ease;
        }
        h1 span:hover {
            color: white;
        }
        
        }
	    .container {
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        height: 100vh;
	        background-color: yellow;
	    }
	    .content {
	        text-align: center;
	        z-index: -1;
	        background-color: rgba(255, 255, 0, 0.9); /* Slightly transparent yellow background */
            padding: 20px;
            border-radius: 10px;
            border: 2px solid black; /* Add border with blue color */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Adjust shadow as needed */
	    }

	    .borderless {
	        border: 2px solid blue; /* Add border with red color */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Adjust shadow as needed */
            padding: 15px;
            border-radius: 10px;
	       
	    }
	    .rounded {
	        border-radius: 10px; /* Example border radius */
	    }
	    body {
	    	background-color: yellow;
            background-image: url('effect.gif');
            background-position: center;
            background-size: cover;
        }
        body::before {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0); /* Semi-transparent overlay */
        z-index: -1;
    	}
        
         p{
	    	color:black;
	    }
    </style>
</head>
<body>
<div class="container p-5 bg-blue">
 	<div class="content p-5">
		<div class="header-container">
            <img src="logo.png" alt="Bookstore logo"> <!-- Adjust the image source and path as needed -->
            <h1>Book is successfully keyed in</h1>
        </div>
		<div class="mt-4 p-5 borderless rounded ">
			<p><b>ID: </b><jsp:getProperty name="bean" property="id"/></p>
			<p><b>Title: </b><jsp:getProperty name="bean" property="title"/></p>
			<p><b>Author: </b><jsp:getProperty name="bean" property="author"/></p>
			<p><b>Price: </b><%= ((Book)request.getAttribute("bean")).getPrice() %></p>
			<p style="text-align: center;"><b>Description: </b><jsp:getProperty name="bean" property="desc"/></p>
		</div>
	</div>
</div>
</body>
</html>