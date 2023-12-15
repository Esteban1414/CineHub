<?php
header("Cache-Control: no-cache, must-revalidate");
session_cache_limiter('nocache');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $idMedia = $_POST["idMedia"];

    msgDobled($idMedia);
}

function msgDobled($idMedia)
{
    require 'config.php';
    if (!empty($_SESSION["id"])) {
        if (isset($_POST["add"])) {
            $user_id_1 = $_SESSION["id"];
            $rating_peliculas = $_POST["rating"];
            $verify_review = $conne->prepare("SELECT * FROM rate_peliculas WHERE post_id = ? AND user_id = ?");
            $verify_review->execute([$idMedia, $user_id_1]);
            if ($verify_review->rowCount() > 0) {
                $update_review = $conne->prepare("UPDATE rate_peliculas SET rate = ? WHERE post_id = ? AND user_id = ?");
                $update_review->execute([$rating_peliculas, $idMedia, $user_id_1]);
                header("Location:reseñas.php#peliculas");
                echo '<script language="javascript">
                document.addEventListener("DOMContentLoaded", function() {
                Swal.fire({
                    icon: "success",
                    title: "Su calificación se agregó correctamente",
                    text: "",
                    confirmButtonColor: "#28a745",
                    confirmButtonText: "OK",
                }).then(function() {
                    window.location.href = "reseñas.php#peliculas";
                });
            });
          </script>';
            } else {
                $add_review = $conne->prepare("INSERT INTO rate_peliculas (id, post_id, user_id, rate) VALUES(?,?,?,?)");
                $add_review->execute(['', $idMedia, $user_id_1, $rating_peliculas]);
                header("Location:reseñas.php#peliculas");
                echo '<script language="javascript">
                document.addEventListener("DOMContentLoaded", function() {
                Swal.fire({
                    icon: "success",
                    title: "Su calificación se actualizó correctamente",
                    text: "",
                    confirmButtonColor: "#28a745",
                    confirmButtonText: "OK",
                }).then(function() {
                    window.location.href = "reseñas.php#peliculas";
                });
            });
          </script>';
            }
        }

        if (isset($_POST["add_series"])) {
            $user_id_2 = $_SESSION["id"];
            $rating_series = $_POST["rating_series"];
            $verify_review2 = $conne->prepare("SELECT * FROM rate_series WHERE post_id = ? AND user_id = ?");
            $verify_review2->execute([$idMedia, $user_id_2]);
            if ($verify_review2->rowCount() > 0) {
                $update_review2 = $conne->prepare("UPDATE rate_series SET rate = ? WHERE post_id = ? AND user_id = ?");
                $update_review2->execute([$rating_series, $idMedia, $user_id_2]);
                header("Location:reseñas.php#series");
                echo '<script language="javascript">
                document.addEventListener("DOMContentLoaded", function() {
                Swal.fire({
                    icon: "success",
                    title: "Su calificación se agregó correctamente",
                    text: "",
                    confirmButtonColor: "#28a745",
                    confirmButtonText: "OK",
                }).then(function() {
                    window.location.href = "reseñas.php#series";
                });
            });
          </script>';
            } else {
                $add_review2 = $conne->prepare("INSERT INTO rate_series (id, post_id, user_id, rate) VALUES(?,?,?,?)");
                $add_review2->execute(['', $idMedia, $user_id_2, $rating_series]);
                header("Location:reseñas.php#series");
                echo '<script language="javascript">
                document.addEventListener("DOMContentLoaded", function() {
                Swal.fire({
                    icon: "success",
                    title: "Su calificación se actualizó correctamente",
                    text: "",
                    confirmButtonColor: "#28a745",
                    confirmButtonText: "OK",
                }).then(function() {
                    window.location.href = "reseñas.php#series";
                });
            });
          </script>';
            }
        }
    }
}
?>