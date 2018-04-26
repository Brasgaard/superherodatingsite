-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2018 at 12:05 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `superherodatingsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(5) NOT NULL,
  `text` text NOT NULL,
  `superhero_from` int(11) NOT NULL,
  `superhero_to` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `text`, `superhero_from`, `superhero_to`) VALUES
(1, 'Hello Hulk', 1, 2),
(2, 'Hello Hulk', 1, 2),
(3, 'Hello Myself', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `superheroes`
--

CREATE TABLE `superheroes` (
  `name` varchar(64) NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `location` varchar(64) NOT NULL,
  `alias` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `profilepicture` varchar(256) NOT NULL,
  `id` int(5) NOT NULL,
  `likes` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superheroes`
--

INSERT INTO `superheroes` (`name`, `age`, `gender`, `location`, `alias`, `description`, `profilepicture`, `id`, `likes`) VALUES
('Anung Un Rama', 33, 'Male', 'East Bromwich, England', 'Hellboy', 'I can promise you two things: One, I will always look this good, and two I will never give up on you.', 'https://www.superherodb.com/pictures2/portraits/10/100/813.jpg', 1, 0),
('Bruce Banner', 49, 'Male', 'Dayton, Ohio.', 'Hulk', 'Any last words? Hulk... SMASH!!!', 'https://www.superherodb.com/pictures2/portraits/10/100/83.jpg ', 2, 0),
('Diana Prince', 43, 'Female', 'Paradise Island.', 'Wonder Woman', 'Of all people you know who I am. Who the world needs me to be, I\'m Wonder Woman. ', 'https://www.superherodb.com/pictures2/portraits/10/100/807.jpg ', 3, 0),
('Selina Kyle', 26, 'Female', 'Gotham City, USA.', 'Catwoman', 'I\'m a thief--and stealing is what I do. Not so much for the prize or the possession or even the profit...but for the art of doing it...because I can...and because I\'m good.', 'https://www.superherodb.com/pictures2/portraits/10/100/659.jpg ', 4, 0),
('Wade Wilson', 41, 'Male', 'New York City, USA.', 'Deadpool', 'Is it sexist if I kill You? Is it sexist if I don\'t kill you?', 'https://www.superherodb.com/pictures2/portraits/10/100/835.jpg ', 5, 0),
('Carlos Ray Norris', 78, 'Male', 'Oklahoma, USA.', 'Chuck Norris', 'A lot of times people look at the negative side of what they feel they can\'t do. I always look on the positive side of what I can do.', 'https://www.superherodb.com/pictures2/portraits/10/100/954.jpg ', 6, 0),
('Kakarot', 736, 'Male', '439 East District, Mount Paozu.', 'Goku', 'I am the hope of the universe....I am the answer to all living things that cry out for peace...I am the protector of the innocent...I am the light in the darkness...I am truth. Ally to good... Nightmare to you!!!', 'https://www.superherodb.com/pictures2/portraits/10/100/1284.jpg ', 7, 0),
('Natasha Romanoff', 33, 'Female', 'Moscow, Russia.', 'Black Widow', 'You might think I\'m cold-hearted. I am. I can\'t afford distractions. I\'ve got work to do.', 'https://www.superherodb.com/pictures2/portraits/10/100/248.jpg ', 8, 0),
('Harley Quinn', 25, 'Female', 'Gotham City, USA.', 'Harley Quinn', 'You think I\'m just a doll. A doll that\'s pink and light. A doll you can arrange any way you like. You\'re wrong. Very wrong. What you think of me is only a ghost of time. I am dangerous. And I will show you just how dark I can be.', 'https://www.superherodb.com/pictures2/portraits/10/100/701.jpg ', 9, 3),
('Saitama', 25, 'Male', 'Z-City', 'One Punch Man', '100 push-ups, 100 sit-ups, 100 squats, and a 10km run EVERY SINGLE DAY!!!', 'https://www.superherodb.com/pictures2/portraits/10/100/10522.jpg ', 10, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `superhero_from` (`superhero_from`),
  ADD KEY `superhero_to` (`superhero_to`);

--
-- Indexes for table `superheroes`
--
ALTER TABLE `superheroes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `superheroes`
--
ALTER TABLE `superheroes`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`superhero_from`) REFERENCES `superheroes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`superhero_to`) REFERENCES `superheroes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
