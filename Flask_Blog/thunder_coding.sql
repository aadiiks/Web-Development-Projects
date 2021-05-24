-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2021 at 07:46 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thunder_coding`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first contact', 'firstcontact@gmail.com', '1234567890', 'first contact', '2021-04-02 23:56:03'),
(5, 'test', 'testing@email.com', '2345234543', 'asdgasbdfb', '2021-04-06 20:59:44'),
(6, 'sinha_coder', 'test@gmail.com', '1234567890', 'sadfbh', '2021-04-16 20:17:50'),
(7, 'sinha_codera', 'test@gmail.com', '1234567890', 'authorization', '2021-04-16 23:34:31'),
(8, 'sinha_codera', 'test@gmail.com', '1234567890', 'authorization', '2021-04-16 23:37:52'),
(9, 'authorized', 'authorized@gmail.com', '7894561230', 'hi this should finally work', '2021-04-16 23:40:00'),
(10, 'authorized', 'authorized@gmail.com', '7894561230', 'hi this should finally work', '2021-04-16 23:41:16'),
(11, 'authorized', 'authorized@gmail.com', '7894561230', 'hi this should finally work', '2021-04-16 23:43:16'),
(12, 'authorized', 'authorized@gmail.com', '7894561230', 'hi this should finally work', '2021-04-16 23:51:21'),
(13, 'sinha_codera', 'test@gmail.com', '1234567890', 'authorization', '2021-04-16 23:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(50) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'This is my first post title', 'This is the first post tagline', 'first-post', 'This is my first post and I am very excited about this blog and flask microframe work', 'home-bg1.jpg', '2021-05-17 23:17:33'),
(2, 'This is second post', 'This is second post tagline', 'second-post', 'A Jinja template is simply a text file. Jinja can generate any text-based format (HTML, XML, CSV, LaTeX, etc.). A Jinja template doesn’t need to have a specific extension: .html, .xml, or any other extension is just fine.\r\n\r\nA template contains variables and/or expressions, which get replaced with values when a template is rendered; and tags, which control the logic of the template. The template syntax is heavily inspired by Django and Python.', '', '2021-04-22 23:28:17'),
(3, 'Variables', 'Mast wali tagline', 'third-post', 'Template variables are defined by the context dictionary passed to the template.\r\n\r\nYou can mess around with the variables in templates provided they are passed in by the application. Variables may have attributes or elements on them you can access too. What attributes a variable has depends heavily on the application providing that variable.\r\n\r\nYou can use a dot (.) to access attributes of a variable in addition to the standard Python __getitem__ “subscript” syntax ([]).\r\n\r\nThe following lines do the same thing:', '', '2021-04-23 18:02:54'),
(4, 'Implementation', 'A post on implementation', 'fourth-post', 'For the sake of convenience, foo.bar in Jinja does the following things on the Python layer:\r\n\r\ncheck for an attribute called bar on foo (getattr(foo, \'bar\'))\r\n\r\nif there is not, check for an item \'bar\' in foo (foo.__getitem__(\'bar\'))\r\n\r\nif there is not, return an undefined object.\r\n\r\nfoo[\'bar\'] works mostly the same with a small difference in sequence:\r\n\r\ncheck for an item \'bar\' in foo. (foo.__getitem__(\'bar\'))\r\n\r\nif there is not, check for an attribute called bar on foo. (getattr(foo, \'bar\'))\r\n\r\nif there is not, return an undefined object.\r\n\r\nThis is important if an object has an item and attribute with the same name. Additionally, the attr() filter only looks up attributes.', '', '2021-04-23 18:03:36'),
(5, 'Filters', 'A filters post', 'fifth-post', 'Variables can be modified by filters. Filters are separated from the variable by a pipe symbol (|) and may have optional arguments in parentheses. Multiple filters can be chained. The output of one filter is applied to the next.\r\n\r\nFor example, {{ name|striptags|title }} will remove all HTML Tags from variable name and title-case the output (title(striptags(name))).\r\n\r\nFilters that accept arguments have parentheses around the arguments, just like a function call. For example: {{ listx|join(\', \') }} will join a list with commas (str.join(\', \', listx)).\r\n\r\nThe List of Builtin Filters below describes all the builtin filters.', '', '2021-04-23 18:04:15'),
(6, 'Tests', 'sixth tag line', 'sixth-post', 'Beside filters, there are also so-called “tests” available. Tests can be used to test a variable against a common expression. To test a variable or expression, you add is plus the name of the test after the variable. For example, to find out if a variable is defined, you can do name is defined, which will then return true or false depending on whether name is defined in the current template context.\r\n\r\nTests can accept arguments, too. If the test only takes one argument, you can leave out the parentheses. For example, the following two expressions do the same thing:', '', '2021-04-23 18:05:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
