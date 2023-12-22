-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 22, 2023 at 02:47 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizz`
--

-- --------------------------------------------------------

--
-- Table structure for table `correction`
--

CREATE TABLE `correction` (
  `id` int NOT NULL,
  `reponse` varchar(255) NOT NULL,
  `verification` bigint NOT NULL,
  `question_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `correction`
--

INSERT INTO `correction` (`id`, `reponse`, `verification`, `question_id`) VALUES
(1, 'Colombie', 1, 1),
(2, '1994', 1, 2),
(3, 'Bambi', 1, 3),
(4, 'Expérience 626', 1, 4),
(5, 'Un tigre', 1, 5),
(6, 'Il a des mains à 5 doigts', 1, 6),
(7, 'Parce qu\'il a fumé et bu de la bière ', 1, 7),
(8, 'Peine et Panique', 1, 8),
(9, 'Naveen', 1, 9),
(10, 'Emily Blunt', 1, 10),
(11, 'Radiator Springs', 1, 11),
(12, 'Meeko', 1, 12),
(13, 'Anaïs Delva', 1, 13),
(14, 'Lily La Tigresse', 1, 14),
(15, 'Pinocchio', 1, 15),
(16, 'Espagne', 0, 1),
(18, 'Cuba', 0, 1),
(20, '1996', 0, 2),
(21, '1990', 0, 2),
(24, 'Merlin l\'Enchanteur', 0, 3),
(25, 'Le livre de la Jungle', 0, 3),
(28, 'ADN 403', 0, 4),
(29, 'Alien 812', 0, 4),
(32, 'Une tête de mort', 0, 5),
(33, 'Un scarabée', 0, 5),
(34, 'Une tête de mort', 0, 5),
(35, 'Un scarabée', 0, 5),
(36, 'Il possède une boucle d\'oreille', 0, 6),
(37, 'Il porte une ceinture rouge ', 0, 6),
(44, 'Parce qu\'il a trop menti', 0, 7),
(45, 'Parce qu\'il à été empoisonné', 0, 7),
(48, 'Méchant et Magouille', 0, 8),
(49, 'Colère et Malice', 0, 8),
(52, 'Flynn', 0, 9),
(53, 'Antonio', 0, 9),
(56, 'Anne Hataway', 0, 10),
(57, 'Jessica Chastain', 0, 10),
(60, 'Carburator Inn ', 0, 11),
(61, 'Gear Town', 0, 11),
(62, 'Flint', 0, 12),
(63, 'Percy', 0, 12),
(66, 'Alizée', 0, 13),
(67, 'Julie Lescaut', 0, 13),
(70, 'Lily la Gazelle', 0, 14),
(71, 'Lily la Colombe', 0, 14),
(74, 'Peter Pan', 0, 15),
(75, 'Cendrillon', 0, 15);

-- --------------------------------------------------------

--
-- Table structure for table `quizz_question`
--

CREATE TABLE `quizz_question` (
  `id` int NOT NULL,
  `question` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quizz_question`
--

INSERT INTO `quizz_question` (`id`, `question`) VALUES
(1, 'Dans quel pays se déroule l’action du film Disney \"Encanto : La Fantastique Famille Madrigal\" ?'),
(2, 'En quelle année le dessin animé Le Roi Lion est-il sorti au cinéma ?'),
(3, 'Lequel de ces dessins animés Disney est le plus ancien ?'),
(4, 'Sous quel autre nom est connu le personnage de Stitch dans le dessin animé Disney “Lilo & Stitch” ?'),
(5, 'Dans le dessin animé Disney Aladdin de 1992, à quoi ressemble la Caverne aux Merveilles dans le désert ?'),
(6, 'Quelle information est fausse concernant Le Génie dans le dessin animé Aladdin de Disney ?'),
(7, 'Pour quelle raison Pinocchio va se voir pousser des oreilles d’âne ?'),
(8, 'Quels sont les noms de ces 2 personnages du film Hercule de Disney ?'),
(9, 'Quel est le nom du prince qui se fait transformer en grenouille dans le dessin animé Disney “La princesse et la grenouille” ?'),
(10, 'Qui incarne Mary Poppins dans le film de 2018 “Le retour de Mary Poppins” ?'),
(11, 'Dans quelle petite ville va débarquer par erreur Flash McQueen dans le premier film Cars de Disney ?\r\n'),
(12, 'Quel est le nom du raton laveur ami de Pocahontas dans le film Disney ?'),
(13, 'Qui est la chanteuse qui interprète “Libérée, Délivrée” dans le film Disney La Reine des Neiges ?'),
(14, 'Quel est le nom de la fille du chef indien dans le film Disney Peter Pan ?'),
(15, 'Quel est le second film réalisé par Walt Disney juste après Blanche Neige et les 7 nains ?');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `pseudo`, `score`) VALUES
(1, 'Sarah', 0),
(2, 'Sarah', 0),
(3, 'Brieuc', 0),
(4, 'Brieuc', 0),
(5, 'Ilan', 0),
(6, 'Sarah', 0),
(7, 'Sarah', 0),
(8, 'Chafi42', 0),
(9, 'Chafi', 0),
(10, 'Chafi', 0),
(11, 'Jeremy', 0),
(12, 'Sarah', 0),
(13, 'Sarah', 0),
(14, 'Sarah', 0),
(15, 'Sarah', 0),
(16, 'Sarah', 0),
(17, 'Sarah', 0),
(18, 'Sarah', 0),
(19, 'Brieuc', 0),
(20, 'Joan', 0),
(21, 'Sarah', 0),
(22, 'Ilan', 0),
(23, 'Sarah', 0),
(24, 'joan', 0),
(25, 'Brieuc', 0),
(26, 'Sarah', 0),
(27, 'Brieuc', 0),
(28, 'Sarah', 0),
(29, 'Brieuc', 0),
(30, 'Ilan', 0),
(31, 'Brieuc', 0),
(32, 'Sarah', 0),
(33, 'Brieuc', 0),
(34, 'Ilan', 0),
(35, 'Sarah', 0),
(36, 'Sarah', 0),
(37, 'Sarah', 0),
(38, 'Brieuc', 0),
(39, 'Chafi', 0),
(40, 'Sarah', 0),
(41, 'Ilan', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `correction`
--
ALTER TABLE `correction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `quizz_question`
--
ALTER TABLE `quizz_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `correction`
--
ALTER TABLE `correction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `quizz_question`
--
ALTER TABLE `quizz_question`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `correction`
--
ALTER TABLE `correction`
  ADD CONSTRAINT `correction_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `quizz_question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
