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
        h3 {
            font-size: 60px;
            font-family: Coolvetica;
            text-align: center;
            word-break: break-word;
            margin: 0;
            position: absolute;
            top: 400px;
            left: 10px;
            transform: translate(-50%, -50%);
            overflow: hidden;
        }
        h3 span {
            display: inline-block;
            transition: color 0.3s ease;
        }
        h3 span:hover {
            color: white;
        }
        h2 {
            font-size: 30px;
            font-family: Coolvetica;
            text-align: center;
            word-break: break-word;
            margin: 0;
            z-index: 1;
        }
        h2 span {
            display: inline-block;
            transition: color 0.3s ease;
        }
        h2 span:hover {
            color: white;
        }
        .form-border{
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
    <h2 id="titleHeading" style="margin-top: 20px">
        <span>B</span><span>o</span><span>o</span><span>k</span><span>S</span><span>t</span><span>o</span><span>r</span><span>e</span>
    </h2>
    <div class="container">
    <form id="glimmeryForm" class="form-border mt-5 p-4 rounded" action="BookServlet" method="get">
        <div class="form-group">
            <label for="name" style="font-weight: bold;">Id:</label>
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