<!DOCTYPE html>
<html lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.4.0/css/bulma.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style type="text/css">
        .form-style-5{
            max-width: 500px;
            padding: 10px 20px;
            background: #f4f7f8;
            margin: 10px auto;
            padding: 20px;
            background: #f4f7f8;
            border-radius: 8px;
            font-family: Georgia, "Times New Roman", Times, serif;
        }
        table {
        border-collapse: collapse;
        width: 100%;
        }

        th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
        }

        tr:hover {background-color:#f5f5f5;}
    </style>
</head>
<body>
    <div class="form-style-5">
        <?php 
            if($_SERVER['REQUEST_METHOD']=='POST'){
                $conn = mysqli_connect('localhost','root','','shubham');
                if(!$conn){
                    echo "Connection Failed!<br>".mysqli_error($conn);
                }
                $sql3 = "SELECT * FROM deepak";
                $result = mysqli_query($conn, $sql3);
                if (mysqli_num_rows($result) > 0) {
                    echo "<table><tr>
                        <th>UserName</th>
                        <th>Movie Name</th>
                        <th>Ratings</th>
                      </tr>";
                    while($row = mysqli_fetch_assoc($result)) {
                        echo "
                      <tr>
                        <td>".$row["username"]."</td>
                        <td>".$row["movie"]."</td>
                        <td><span><i class='fa fa-star' style='font-size:20px;color:yellow;'></i></span>".$row["rating"]."</td>
                      </tr>";
                    }
                } else {
                    echo "0 results";
                }
            }
         ?>
    </div>
</body>
</html>
