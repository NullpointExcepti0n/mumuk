<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title></title>
    <meta charset=utf-8>
    <meta name=description content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <link rel="import" href="http://www.polymer-project.org/components/paper-ripple/paper-ripple.html">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href=" meterial.css">
    <script src="./jquery-2.1.3.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
</head>
<body>
    <div class="landing" id="landing">
       <div class="start-form">
            <div class="landing-form">
                <div class="group">      
                  <input type="text" name="member" required>
                  <span class="highlight"></span>
                  <span class="bar"></span>
                  <label>메뉴 수(최대 20개)</label>
                    <div  id="button" class="button raised green">
                      <div  class="center" fit>START</div>
                      <paper-ripple fit></paper-ripple>
                    </div>
                </div>
            </div>
       </div>
    </div>
    <div id="ladder" class="ladder">
        <div class="dim"></div>
         <canvas class="ladder_canvas" id="ladder_canvas"></canvas>
    </div>
<script src="./ladder.js"></script>
</body>
</html>