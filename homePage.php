<?php
require_once "config/db.php";

$sql = "SELECT * FROM reviews ORDER BY created_at DESC LIMIT 6";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GameReviewHub</title>
    <link rel="stylesheet" href="styles/style.css">
</head>

<body>

<div class="wrapper">

    <!-- NAVBAR -->
    <header class="navbar-container">
        <div class="container navbar">

            <div class="logo">
                <h2>GameReview<span>Hub</span></h2>
            </div>

            <nav class="menu">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#reviews">Recenzje</a></li>
                    <li><a href="#games">Gry</a></li>
                    <li><a href="#">Kontakt</a></li>
                </ul>
            </nav>
            <div class="acc-btns">
                <a href="register.html">Zaloguj się</a>
                <a href="login.html">Zarejestruj się</a>
            </div>

        </div>
    </header>

    <!-- HERO -->
    <section class="hero-container">
        <div class="container hero">

            <div class="hero-card">
                <p class="category">Gaming</p>
                <h1>Najlepsze recenzje gier w jednym miejscu</h1>
                <p class="meta">10 Marca 2026 • Admin</p>
                <a href="#reviews" class="btn-primary">Czytaj więcej</a>
            </div>

        </div>
    </section>

    <!-- REVIEWS -->

    <?php
        $sql_reviews = "SELECT * FROM reviews ORDER BY rating DESC";
        $reviews = $conn->query($sql_reviews);
    ?>

    <section id="reviews" class="reviews-container">
        <div class="container reviews">

            <h2>Popularne recenzje</h2>

            <div class="reviews-grid">

                <?php while($rev = $reviews->fetch_assoc()): ?>

                    <div class="review-card">
                        <h3><?php echo htmlspecialchars($rev['title']); ?></h3>

                        <p><?php echo htmlspecialchars($rev['short_desc']); ?></p>

                        <span class="rating">
                            ⭐ <?php echo $rev['rating']; ?> / 10
                        </span>
                    </div>

                <?php endwhile; ?>

            </div>

        </div>
    </section>

    <!-- GAMES -->
    <section id="games" class="games-container">
        <div class="container games">

            <h2>Najnowsze Tytuły</h2>

            <div class="games-grid">

                <?php while($game = $result->fetch_assoc()): ?>

                    <div class="game-card">

                        <img src="<?php echo htmlspecialchars($game['image']); ?>">

                        <div class="game-overlay">
                            <h3><?php echo htmlspecialchars($game['title']); ?></h3>

                            <span>⭐ <?php echo $game['rating']; ?></span>

                            <a href="php/review.php?id=<?php echo $game['id']; ?>" 
                            class="game-btn">
                            Zobacz recenzję
                            </a>
                        </div>

                    </div>

                <?php endwhile; ?>

            </div>

        </div>
    </section>

    <!-- ABOUT -->
    <section class="about-container">
        <div class="container about">
            <h2>O stronie</h2>
            <p>GameReviewHub to portal dla graczy z recenzjami i ocenami gier.</p>
        </div>
    </section>

    <!-- FOOTER -->
    <footer class="footer-container">
        <div class="container footer">
            <p>© 2026 GameReviewHub</p>
        </div>
    </footer>


    
</div>




<script src="script.js"></script>

</body>
</html>