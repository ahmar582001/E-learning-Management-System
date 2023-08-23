-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2023 at 01:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `course_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `user_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`user_id`, `playlist_id`) VALUES
('54eDDJfBxQPVDLZrK2G1', 'FDpNtTdHyMYdb5LIWYa7'),
('pAS7ofqrWUwYg8DdlVRf', 'yETfNIi4GbmNUqSoJViU');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content_id`, `user_id`, `tutor_id`, `comment`, `date`) VALUES
('46dFKAIY6lvxLnB2CIJ8', 'BqaFWhGioiUaCKT3fqOo', 'pAS7ofqrWUwYg8DdlVRf', 'OB22HqAI9yoseCg8YS6j', 'Thank You\r\n', '2023-08-15'),
('eFmetM3kFhtt9FuCqfpU', 'Gdznr4lZUnu00FdjnK4t', 'pAS7ofqrWUwYg8DdlVRf', 'OB22HqAI9yoseCg8YS6j', 'Good video', '2023-08-15'),
('npDqaEt4jJiDTIQKUibH', 'jFgoSgkMYjqCo9qkq3Xd', 'pAS7ofqrWUwYg8DdlVRf', 'OB22HqAI9yoseCg8YS6j', 'learned a lot about laravel\r\n', '2023-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` int(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `playlist_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `video` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`id`, `tutor_id`, `playlist_id`, `title`, `description`, `video`, `thumb`, `date`, `status`) VALUES
('TJuiSNNlf8NzzzBDbX81', 'OB22HqAI9yoseCg8YS6j', '', 'robotics', 'learn about robotics', 'NuiIm96OaLAb6UvgachF.', 's2oiV90oHzoLDT8yWUgw.jpg', '2023-08-15', 'active'),
('BqaFWhGioiUaCKT3fqOo', 'OB22HqAI9yoseCg8YS6j', 'yETfNIi4GbmNUqSoJViU', 'python', 'learn about python', 'NLPJELVKqfBPnSlwfsxW.mp4', 'ncGlPa5KT8vyCVMfyvV1.jpg', '2023-08-15', 'active'),
('jFgoSgkMYjqCo9qkq3Xd', 'OB22HqAI9yoseCg8YS6j', 'sUKM7QSUAgSOfY2SWS6Z', 'Laravel', 'Learn about Laravel', 'mT4HW9KfIF1TdNgvotTH.mp4', 'HxloSPdsHHNL5XZdXrw5.png', '2023-08-15', 'active'),
('Gdznr4lZUnu00FdjnK4t', 'OB22HqAI9yoseCg8YS6j', 'p3jU9m1lgRtUUG9WjGSh', 'PHP', 'Learn PHP', 'tn6I9YEDIW6ZAB7Yi3GN.mp4', 'Mz2y6i7HVZB8Y4nUUoe3.jpg', '2023-08-15', 'active'),
('AIDzeNUuoWSiN4mZHC1o', 'OB22HqAI9yoseCg8YS6j', 'rb74HpqsH4vaofsZomJA', 'HTML', 'learn HTML', '0BOtOkcWQ4Pri48ugLmg.mp4', 'wUjmiQVAJb3AkSm19Bbu.jpg', '2023-08-15', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `user_id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `content_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`user_id`, `tutor_id`, `content_id`) VALUES
('pAS7ofqrWUwYg8DdlVRf', 'OB22HqAI9yoseCg8YS6j', 'BqaFWhGioiUaCKT3fqOo'),
('pAS7ofqrWUwYg8DdlVRf', 'OB22HqAI9yoseCg8YS6j', 'Gdznr4lZUnu00FdjnK4t'),
('pAS7ofqrWUwYg8DdlVRf', 'OB22HqAI9yoseCg8YS6j', 'jFgoSgkMYjqCo9qkq3Xd');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` varchar(20) NOT NULL,
  `tutor_id` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `tutor_id`, `title`, `description`, `thumb`, `date`, `status`) VALUES
('yETfNIi4GbmNUqSoJViU', 'OB22HqAI9yoseCg8YS6j', 'python', 'Introduction to pythonis thought to be one of the most important languages in the world. There are many reasons why pythonis so important', 'fBbtClepfOqWOO4tmJR7.jpg', '2023-08-15', 'active'),
('p3jU9m1lgRtUUG9WjGSh', 'OB22HqAI9yoseCg8YS6j', 'PHP for beginners', 'learn PHP here', 'JG73n6FbwxWTVAdpzShQ.jpg', '2023-08-15', 'active'),
('sUKM7QSUAgSOfY2SWS6Z', 'OB22HqAI9yoseCg8YS6j', 'Laravel', 'Know and learn about laravel', 'ORwVNNypYvAldc2yUDde.png', '2023-08-15', 'active'),
('lHG0v4uPC4k7cbbaBvyn', 'OB22HqAI9yoseCg8YS6j', 'flask', 'start of flask learning journey', '8NQnlvmHwY2flbFXZEX1.png', '2023-08-15', 'active'),
('zl5bdlGlTgT9aV2dj5nb', 'OB22HqAI9yoseCg8YS6j', 'introduction to English', 'Take your first steps towards English\r\n', 'bvx25RbsmZLFmqgcACjc.jpg', '2023-08-15', 'active'),
('rb74HpqsH4vaofsZomJA', 'OB22HqAI9yoseCg8YS6j', 'Introduction to HTML', 'This the beginning of your long and interesting Journey over HTML', 'YWoMdTFvBoY2D7gQGRW7.jpg', '2023-08-15', 'active'),
('FDpNtTdHyMYdb5LIWYa7', 'OB22HqAI9yoseCg8YS6j', 'Introduction to software engineering', 'start this journey of learning software engineering with us\r\n', '1qQ5rsdWG0GKsaiiRuqN.jpg', '2023-08-15', 'active'),
('yKLs6PdgrZ8XQPYhIqRv', 'WUafIVphuiIZZhIephpc', 'music', 'learn  music', 'VrSr3nrzVO4ID1N319XU.png', '2023-08-15', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `name`, `profession`, `email`, `password`, `image`) VALUES
('OB22HqAI9yoseCg8YS6j', 'Ter Stegen', 'teacher', 'admin@example.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'jKvZhLCJ8gUqdBPE0QVF.jpg'),
('lyo7UegFXRUUOLPZNMuT', 'Ronaldo Araujo', 'biologist', 'example@gmail.com', '7b52009b64fd0a2a49e6d8a939753077792b0554', 'M9T1UtHk40sTFg2OhQTy.png'),
('WUafIVphuiIZZhIephpc', 'Siam Ahmed', 'musician', 'siam@gmail.com', '7b52009b64fd0a2a49e6d8a939753077792b0554', 'Wm4AusCDsAOZXisiEqkj.png'),
('OsbEI171RvfLLjN3qTW6', 'arif hossain', 'engineer', 'arif@gmail.com', '7b52009b64fd0a2a49e6d8a939753077792b0554', 'J10nMsFDPLZZlsTDJeFx.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('JnWCX1ggW4x23fBMx0Qf', 'Ronaldo Araujo', 'student@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '6RUFHyrRX7yWolenuzc1.png'),
('54eDDJfBxQPVDLZrK2G1', 'Student 1', 'admin@example.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'oOnP7LTbJWN68eGKdynF.png'),
('pAS7ofqrWUwYg8DdlVRf', 'liam', 'liam@gmail.com', '7b52009b64fd0a2a49e6d8a939753077792b0554', 'lP5zMBE6O3XFnMQ3rVKz.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
