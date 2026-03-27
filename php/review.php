<?php
require_once "../config/db.php";


if(!isset($_GET['id'])){
    die("Brak recenzji");
}

$id = $_GET['id'];


$sql = "SELECT * FROM reviews WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);
$stmt->execute();

$result = $stmt->get_result();

if($result->num_rows === 0){
    die("Recenzja nie istnieje");
}

$review = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="pl">
<head>
<meta charset="UTF-8">
<title><?php echo $review['title']; ?></title>
<link rel="stylesheet" href="../styles/style.css">
<link rel="stylesheet" href="../styles/review.css">
</head>

<body>

<div class="wrapper">

    <section class="review-container">
        <div class="review-wrapper">

            <h1><?php echo htmlspecialchars($review['title']); ?></h1>

            <div class="review-meta">
                ⭐ <?php echo $review['rating']; ?>/10
            </div>

            <img 
                src="../<?php echo $review['image']; ?>" 
                class="review-image"
            >

            <div class="review-content">
                <?php echo nl2br($review['content']); ?>
            </div>

        </div>
    </section>

</div>

</body>
</html>