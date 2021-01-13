<!DOCTYPE html>
<html>
    <head>
        <title>COS 216 index page</title>

        <style>
            body{
                background-color:black;
                font-family: monospace;
                color:lime;
                font-size: 20px;
                text-align: center;
            }

            a{
                text-decoration: none;
                color: red;
            }

            .assignment{
                width: 90%;
                height: 50px;
                border: 5px solid black;
                background-color: rgb(210, 255, 254);
                margin-left: 80px;
                padding-top: 20px;
            }
        </style>
    </head>

    <?php
        header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
    ?>

    <body>
        <h1>Welcome to the COS 216 index page for u19030119</h1>

        <div class="assignment">
            <a href="COS216/Prac1/launchPage.html">Practical Assignment 1</a>
        </div>

        <div class="assignment">
            <a href="COS216/Prac2/launchPage.html">Practical Assignment 2</a>
        </div>
       
        <div class="assignment">
            <a href="COS216/Prac3/php/launchPage.php">Practical Assignment 3</a>
        </div>

        <div class="assignment">
            <a href="COS216/Prac4/php/launchPage.php">Practical Assignment 4</a>
        </div>

        <div class="assignment">
            <a href="COS216/Prac5/php/launchPage.php">Practical Assignment 5</a>
        </div>
    
</body>
</html>