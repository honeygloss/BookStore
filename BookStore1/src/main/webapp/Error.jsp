<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        
        }
	    .container {
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        height: 100vh;
	    }
	    .content {
	        text-align: center;
	        z-index: -1;
	    }

	    .borderless {
	        border: none;
	        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5); /* Adjust shadow as needed */
	       
	    }
	    .rounded {
	        border-radius: 10px; /* Example border radius */
	    }
         p{
	    	color:black;
	    }
    </style>
</head>
<body>
		<H6>Failed to key in. Something wrong with input. Please Try again</H6>
		<%@ include file = "Input.jsp" %>
</body>
</html>