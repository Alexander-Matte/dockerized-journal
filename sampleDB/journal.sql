-- Adminer 4.8.1 MySQL 8.2.0 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `journal`;
CREATE DATABASE `journal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `journal`;

DROP TABLE IF EXISTS `entries`;
CREATE TABLE `entries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `entries_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `entries` (`id`, `user_id`, `title`, `content`) VALUES
(100,	81,	'Exploring the Wonders of Nature',	'Today, I went on a breathtaking journey through the lush forests, discovering the hidden gems of nature.'),
(101,	74,	'Cooking Adventures in the Kitchen',	'Experimented with a new recipe today, and the result was a delicious masterpiece! Sharing the joy of culinary creativity.'),
(102,	73,	'Tech Trends: A Glimpse into the Future',	'Diving into the latest technological advancements and discussing their potential impact on our lives.'),
(103,	70,	'A Day in the Life of a Travel Enthusiast',	'Embarked on a thrilling adventure, exploring new cultures, meeting incredible people, and creating unforgettable memories.'),
(104,	75,	'Fitness Journey: Achieving Personal Goals',	'Documenting the fitness milestones reached and the challenges overcome on the path to a healthier lifestyle.'),
(105,	70,	'Musings on Art and Creativity',	'Reflecting on the power of art to inspire and evoke emotions. Exploring different forms of artistic expression.'),
(106,	81,	'Mindful Living: Finding Balance in Chaos',	'Sharing thoughts on practicing mindfulness in a fast-paced world and maintaining a sense of peace and balance.'),
(107,	75,	'Book Lover\'s Corner: A Literary Escape',	'Immersing into the captivating worlds of literature, discussing favorite books, and uncovering hidden literary gems.'),
(108,	78,	'Techie Talks: Navigating the Digital Landscape',	'Exploring the ever-evolving digital world, from the latest gadgets to navigating the intricacies of software development.'),
(109,	81,	'Culinary Delights: A Journey through Flavors',	'Indulging in the diverse world of culinary delights, from street food adventures to gourmet experiences.'),
(110,	79,	'Reflections on Personal Growth',	'Charting the path of personal development, sharing insights gained, and celebrating the journey towards becoming a better version of oneself.'),
(111,	72,	'Photography Chronicles: Capturing Moments',	'Through the lens of a camera, reliving the beauty of captured moments and the stories they tell.'),
(112,	74,	'Environmental Advocacy: A Call to Action',	'Raising awareness about environmental issues and discussing the collective responsibility to protect our planet.'),
(113,	74,	'Fitness and Wellness: A Holistic Approach',	'Exploring the interconnected aspects of physical and mental well-being, and the pursuit of a holistic, healthy lifestyle.'),
(114,	80,	'Travel Diaries: Serene Landscapes and Cultural Riches',	'Documenting the awe-inspiring landscapes and cultural experiences encountered during travels around the world.'),
(115,	73,	'Tech Innovations: Shaping the Future',	'Delving into the revolutionary innovations in technology and their potential to transform industries and societies.'),
(116,	77,	'Artistic Expressions: Unleashing Creativity',	'Embracing various forms of art as a means of self-expression and exploring the boundless realms of creativity.'),
(117,	75,	'Mindfulness in the Modern World',	'Navigating the challenges of modern life through the practice of mindfulness and cultivating a sense of inner peace.'),
(118,	72,	'Literary Escapades: A Journey through Books',	'Embarking on literary adventures, exploring diverse genres, and sharing the joy of reading with fellow book enthusiasts.'),
(119,	79,	'Digital Nomad Chronicles: Remote Work Lifestyle',	'Sharing experiences and insights from the nomadic lifestyle of working remotely, embracing freedom and flexibility.'),
(120,	73,	'Gastronomic Delights: Culinary Experiences',	'Savoring the delights of diverse cuisines, from street food escapades to fine dining experiences around the world.'),
(121,	70,	'Personal Development: Navigating Life\'s Path',	'Reflecting on the journey of personal growth, overcoming challenges, and embracing opportunities for self-improvement.'),
(122,	74,	'Through the Lens: Visual Stories Captured',	'Exploring the art of photography and storytelling through visual narratives that capture the essence of moments in time.');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `password` char(60) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `password`, `email`) VALUES
(70,	'Cara',	'Huber',	'$2y$10$H/Bls4CatZC862gP6bVNIuxqsW4/o6k.8vSQ8YyCQRXz3zXWERa.S',	'gadewasahy@mailinator.com'),
(71,	'Cheyenne',	'Velazquez',	'$2y$10$Wmi/QpNSHiPKAwo2CHPZFuGG5lgqTDq0kvOfps9CMTa.xCrdlNsnS',	'pixaziwo@mailinator.com'),
(72,	'Otto',	'Lester',	'$2y$10$QoSrKd7V194k8Q5c4qyf6OiHGu16xEZJGIcgimwmiq2cfvSO9xD4a',	'pajoze@mailinator.com'),
(73,	'Stuart',	'Roberts',	'$2y$10$IPALHMJoNWu4zeipyQfG8uKbSS30tXqQMs6EOBqMIs0KEDK8dCJDe',	'muzudat@mailinator.com'),
(74,	'Herrod',	'Reynolds',	'$2y$10$P/p/ajCUBcYz2oM.aQSmMuq44kq8cfsa3pd1Rdf8mIZy586jBKq8O',	'boxali@mailinator.com'),
(75,	'Camille',	'Mcclain',	'$2y$10$4G.40Ndql/d6p3Z5GLMw6u.2fW/XDHP4Dx7OlpmJjKZVcKa1FQl1W',	'jesen@mailinator.com'),
(76,	'Oprah',	'Carver',	'$2y$10$sjW0r7RLz3cDXlWcYS5IqO186wrBzVLQVfVwR/KJLMOIg364M.jYK',	'wesin@mailinator.com'),
(77,	'Summer',	'Green',	'$2y$10$ZAqvcIRLucuiSqFwqLlzmuNL24Fh5saA.6LT4HjxGf9MP5Er0Dstq',	'qizuwazul@mailinator.com'),
(78,	'Zenia',	'Burns',	'$2y$10$AMGzgdSCAciIlLKPgniSGujzdXYtg6sT.u/1QAn.lqRUU4mQ0eEQK',	'hobahozo@mailinator.com'),
(79,	'Veda',	'Randolph',	'$2y$10$XGqJvUED14nXgIihiaBqbOVNoYLEY31S4v7pBW6W8loNc9Ls60QcC',	'jukitaf@mailinator.com'),
(80,	'Sonya',	'Norton',	'$2y$10$LVrbltkzihGuiVXipfYSOeT6jSziK3YiFKpuXlUjiNUsKIrx5BWbG',	'sifydiryhu@mailinator.com'),
(81,	'Vaughan',	'Bird',	'$2y$10$prv.38T.N7wP/Xv85DvZ..IuuOOQ.uxyvU0BtQKEVqjUYsjtnNQ5e',	'mecib@mailinator.com');

-- 2024-01-21 17:50:00
