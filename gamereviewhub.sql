-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2026 at 10:24 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamereviewhub`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `short_desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `title`, `content`, `image`, `rating`, `created_at`, `short_desc`) VALUES
(1, 'Elden Ring', 'Elden Ring to ambitne połączenie klasycznego soulslike z otwartym światem. FromSoftware stworzyło ogromną krainę pełną sekretów, wymagających przeciwników oraz epickich bossów. Gra nagradza eksplorację i cierpliwość, a brak prowadzenia za rękę sprawia, że każde odkrycie daje ogromną satysfakcję. System walki pozostaje wymagający, ale niezwykle satysfakcjonujący. Klimat tajemnicy i minimalistyczna narracja budują unikalne doświadczenie, które redefiniuje gatunek.', 'images/elden.jpg', 10.0, '2026-03-26 11:43:28', 'Wymagający soulslike z ogromnym otwartym światem i epickimi bossami.'),
(3, 'The Witcher 3: Wild Hunt', 'The Witcher 3: Wild Hunt to jedno z największych osiągnięć w historii gier RPG. Gracz wciela się w Geralta z Rivii — wiedźmina poszukującego swojej przybranej córki w świecie ogarniętym wojną. Produkcja wyróżnia się niezwykle dojrzałą narracją oraz questami pobocznymi, które często dorównują jakością głównemu wątkowi fabularnemu. Otwarty świat jest ogromny, żyjący i pełen szczegółów — od małych wiosek po tętniące życiem miasta. System walki, rozwój postaci oraz moralne wybory sprawiają, że każda rozgrywka może wyglądać inaczej. Ścieżka dźwiękowa oraz klimat słowiańskiego fantasy tworzą niezapomniane doświadczenie, które do dziś pozostaje wzorem dla innych RPG.', 'images/witcher3.jpg', 10.0, '2026-03-26 11:47:48', 'Rozbudowane RPG akcji z wciągającą fabułą i otwartym światem fantasy.'),
(4, 'Resident Evil 4 Remake', 'Resident Evil 4 Remake odświeża kultowy survival horror, zachowując ducha oryginału i jednocześnie modernizując mechaniki rozgrywki. Historia Leona S. Kennedy’ego została przedstawiona w bardziej realistyczny i mroczny sposób. System walki jest dynamiczny, przeciwnicy inteligentniejsi, a atmosfera napięcia utrzymuje się przez całą grę. Graficznie tytuł prezentuje najwyższy poziom, a redesign lokacji sprawia, że nawet weterani serii czują element zaskoczenia. To przykład remake’u wykonanego niemal perfekcyjnie.', 'images/re4.jpg', 9.0, '2026-03-26 11:47:48', 'Nowoczesny remake klasycznego survival horroru pełen napięcia.'),
(5, 'Cyberpunk 2077', 'Cyberpunk 2077 po licznych aktualizacjach stał się pełnoprawnym RPG nowej generacji. Night City zachwyca skalą oraz szczegółowością, oferując ogromną swobodę eksploracji i wiele stylów rozgrywki. Fabuła skupiona wokół postaci Johnny’ego Silverhanda oraz wyborów moralnych gracza jest jedną z najmocniejszych stron produkcji. System rozwoju postaci pozwala tworzyć różnorodne buildy — od hakera po brutalnego solo. Aktualizacje znacząco poprawiły stabilność oraz balans gry, czyniąc ją doświadczeniem wartym uwagi.', 'images/cyberpunk.jpg', 8.0, '2026-03-26 11:47:48', 'Futurystyczne RPG w otwartym świecie Night City pełnym wyborów.'),
(7, 'Red Dead Redemption 2', 'Red Dead Redemption 2 to niezwykle realistyczna opowieść o upadku Dzikiego Zachodu. Historia Arthura Morgana to emocjonalna podróż pełna moralnych wyborów i świetnie napisanych postaci. Świat gry reaguje na działania gracza, a poziom detali jest wręcz filmowy. Polowania, podróże konne i losowe wydarzenia tworzą immersję niespotykaną w innych produkcjach. To gra wolniejsza w tempie, ale nagradzająca cierpliwość i zaangażowanie.', 'images/rdr2.jpg', 10.0, '2026-03-26 11:47:48', 'Realistyczna przygodowa gra akcji na Dzikim Zachodzie.'),
(8, 'God of War Ragnarök', 'God of War Ragnarök rozwija wszystkie elementy poprzedniej części, oferując bardziej emocjonalną historię i jeszcze bardziej widowiskowe starcia. Relacja Kratosa i Atreusa stanowi centrum narracji, a nordycki świat pełen jest sekretów oraz spektakularnych lokacji. System walki jest dynamiczny i satysfakcjonujący, a różnorodność przeciwników utrzymuje świeżość rozgrywki przez dziesiątki godzin.', 'images/gow.jpg', 9.0, '2026-03-26 11:47:48', 'Epicka nordycka przygoda Kratosa i Atreusa pełna emocji.'),
(9, 'Hogwarts Legacy', 'Hogwarts Legacy pozwala spełnić marzenie o zostaniu uczniem Hogwartu. Gra oferuje otwarty świat pełen magicznych stworzeń, sekretów i znanych lokacji. System rzucania zaklęć jest dynamiczny, a eksploracja zamku zachwyca dbałością o szczegóły. Choć fabuła nie zawsze dorównuje najlepszym RPG, klimat świata Harry’ego Pottera rekompensuje drobne niedociągnięcia.', 'images/hogwarts.jpg', 7.0, '2026-03-26 11:47:48', 'Magiczna przygoda RPG w świecie znanym z Harry’ego Pottera.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `review_likes`
--

CREATE TABLE `review_likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `review_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Maciej', 'karol@wp.pl', '$2y$10$4Mly/lFtkOFUk9XGEO1PsO0q4dnewmsP60uRyLYEpALvjFASr350G', 'user', '2026-03-25 16:10:15'),
(2, 'kacper', 'kacper@elo.pl', '$2y$10$OqC4bqwxLSyGVJdFXYzbKeCqlROlG3GP9onwMfR6Y3hDjzGxyuvZW', 'user', '2026-03-26 12:25:14'),
(4, 'karol', 'eloelo@wp.pl', '$2y$10$WOXO8A/lyQ5CA1F3xo9UGOlITTrpWgCdj7uaSNxheKlX8iP66L.da', 'user', '2026-04-01 14:06:52');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `review_likes`
--
ALTER TABLE `review_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`review_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `review_likes`
--
ALTER TABLE `review_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
