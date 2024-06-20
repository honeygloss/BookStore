<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BookStore</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        @font-face {
            font-family: 'Coolvetica';
            src: url('CoolveticaRg-Regular.woff2') format('woff2'),
                 url('CoolveticaRg-Regular.woff') format('woff');
            font-weight: bold;
        }
        body {
            background-color: yellow;
        }
        .title-container {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 20px;
        }
        .title-container img {
            height: 60px; /* Adjust the height of the logo as needed */
            margin-right: 10px; /* Space between logo and title */
        }
        .title-container h2 {
            font-size: 30px;
            font-family: Coolvetica;
            text-align: center;
            word-break: break-word;
            margin: 0;
            z-index: 1;
        }
        .title-container h2 span {
            display: inline-block;
            transition: color 0.3s ease;
        }
        .title-container h2 span:hover {
            color: white;
        }
        .form-border {
			border: 2px solid blue;
            padding: 20px;
        }
        .container {
            padding-left: 20px;
            padding-right: 20px;
        }
    </style>
</head>
<body>
    <div class="title-container">
        <img src="logo.png" alt="BookStore Logo">
        <h2 id="titleHeading">
            <span>B</span><span>o</span><span>o</span><span>k</span><span>S</span><span>t</span><span>o</span><span>r</span><span>e</span>
        </h2>
    </div>
    <div class="container">
        <form id="glimmeryForm" class="form-border mt-5 p-4 rounded" action="BookServlet" method="get">
            <div class="form-group">
                <label for="name" style="font-weight: bold;">ID:</label>
                <input type="text" class="form-control" id="id" name="id" size="25">
            </div>
            <div class="form-group">
                <label for="age" style="font-weight: bold;">Title:</label>
                <input type="text" class="form-control" id="title" name="title" size="25" style="color: black;">
            </div>
            <div class="form-group">
                <label for="age" style="font-weight: bold;">Author:</label>
                <input type="text" class="form-control" id="author" name="author" size="25" style="color: black;">
            </div>
            <div class="form-group">
                <label style="font-weight: bold;">Price: RM</label><br>
                <input type="text" class="form-control" id="price" name="price" size="25" style="color: black;">
            </div>
            <div class="form-group">
                <label style="font-weight: bold;">Description:</label><br>
                <textarea class="form-control" id="description" name="desc" rows="3"></textarea>
            </div>
            <div class="form-group">
                <button id="submitBtn" type="submit" class="btn btn-primary" name="submit" value="Submit" style="background-color: rgb(19, 54, 37); color: yellow; cursor: pointer; transition: background-color 0.3s ease, color 0.3s ease;" 
                    onmouseover="this.style.backgroundColor='rgb(20, 36, 105)'; this.style.color='white';"
                    onmouseout="this.style.backgroundColor='rgb(19, 54, 37)'; this.style.color='yellow';">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
