<?php
header("Cache-Control: no-cache, must-revalidate");
session_cache_limiter('nocache');
require '../config.php';
if (!empty($_SESSION["id"])) {
    $user_id = $_SESSION["id"];
    $result = mysqli_query($conn, "SELECT * FROM usuarios WHERE id=$user_id");
    $row = mysqli_fetch_assoc($result);
    if ($row["rol_id"] == 3) {
        header("Location:../login.php");
    }
} else {
    header("Location:../login.php");
}
?>

<!doctype html>
<html lang="en">

<head>

    <title>Admin Cine Hub</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/estilos-inicio.css">
    <link rel="shortcut icon" href="../assets/logo2.webP">
</head>

<body style="position: relative; padding-bottom: 3em; min-height: 100vh;">


    <?php $url = "http://" . $_SERVER['HTTP_HOST'] . "/BLOG"
    ?>

    <nav class="navbar navbar-expand navbar-blak bg-blak">
        <div class="nav navbar-nav">
            <a class="nav-item nav-link active" href="<?php echo $url; ?>/administrador/inicio.php">Inicio Admin <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link" href="<?php echo $url; ?>/logout.php">Cerrar sesión</a>
            <a class="nav-item nav-link" href="<?php echo $url; ?>/index.php">Ver Blog web</a>

            <?php if ($row["rol_id"] == 1) { ?>
                <a class="nav-item nav-link" href="<?php echo $url; ?>/administrador/owner.php">Usuarios</a>
            <?php } ?>

            <?php if ($row["rol_id"] == 2) { ?>
                <a class="nav-item nav-link" href="<?php echo $url; ?>/administrador/administradores.php">Usuarios</a>
            <?php } ?>


        </div>
    </nav>
    <div class="container">
        <br />
        <div class="row">
            <script src="js/sweetalert2@11.js"></script>