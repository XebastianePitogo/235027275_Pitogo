<?php

//sample calculator of php program/scripting
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $num1 = $_POST['num1'];
    $num2 = $_POST['num2'];
    $op = $_POST['operation'];

    switch ($op) {
        case '+':
            $result = $num1 + $num2;
            break;
        case '-':
            $result = $num1 - $num2;
            break;
        case '*':
            $result = $num1 * $num2;
            break;
        case '/':
            $result = $num2 != 0 ? $num1 / $num2 : "Error: Division by zero";
            break;
        default:
            $result = "Invalid operation";
    }

    echo "Result: " . $result;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>PHP Calculator</title>
</head>
<body>
    <form action="testmysql.php" method="post">
        <input type="number" name="num1" required="required" placeholder="Number 1" />
        <input type="number" name="num2" required="required" placeholder="Number 2" />
        <button type="submit" name="operation" value="+">Add</button>
        <button type="submit" name="operation" value="-">Subtract</button>
        <button type="submit" name="operation" value="*">Multiply</button>
        <button type="submit" name="operation" value="/">Divide</button>
    </form>
</body>
</html>
