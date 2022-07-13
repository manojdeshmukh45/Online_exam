-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2019 at 08:14 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE `mst_admin` (
  `id` int(11) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`id`, `loginid`, `pass`) VALUES
(1, 'manoj', 'manoj');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE `mst_question` (
  `que_id` int(5) NOT NULL,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(34, 5, 'Which of the following is a single global function defined in the jQuery library?', ' jQuery()', '$()', 'Queryanalysis()', 'None of the mentioned', 1),
(35, 5, ' Which jQuery method is used to hide selected elements?\r\n \r\n ', '  hidden()', ' hide()', ' visible(false)', ' display(none) ', 2),
(36, 5, 'Look at the following jQuery selector: $(â€œdiv#intro .headâ€). What does it select?', 'The first element with id=â€headâ€ inside any div element with class=â€i', 'All elements with class=â€headâ€ inside the first div element with id=â€', 'All div elements with id=â€introâ€ or class=â€headâ€', 'None', 3),
(37, 5, ' $.foo() is equivalent to\r\n', 'javascript.foo()', 'document.foo()', 'jQuery.foo()', 'None of the above', 3),
(38, 5, 'Which built-in method returns the character at the specified index?\r\n', 'characterAt()', 'getCharAt()', 'charAt()', ' None of the above', 3),
(39, 5, ' Using ________ function, we can hold or release the execution of jQueryâ€™s ready event.', ' jQuery.holdReady()', ' jQuery.ready()', 'jQuery.hold()', 'jQuery.holdready()', 1),
(40, 5, ' The â€¦â€¦â€¦. method is like offset(), except that it is a getter only and it returns element positions relative to their offset parent, rather to t', 'width()', 'position()', 'offsetparent()', ' setparent()', 2),
(41, 5, ' Select all elements that contain the specified text.', 'contains()', ':selects()', 'Dazzler', ' None of these', 1),
(42, 5, 'The______ method is used to represent an array or an object in serialize manner.', 'size()', ' length', 'param()', 'None of these', 3),
(43, 5, ' Which sign does jQuery use as a shortcut for jQuery?', '. $ sign', ' % sign', '? Sign', 'None', 1),
(45, 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1),
(46, 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3),
(47, 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2),
(48, 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1),
(49, 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2),
(50, 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2),
(51, 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1),
(52, 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2),
(53, 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4),
(54, 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1),
(56, 8, 'The colour of the banana is		', 'red', 'green', 'yellow', 'orange', 3),
(57, 8, 'how much letters are there in the english alphabet?', '24', '30', '26', '22', 3),
(58, 8, 'baby of a dog is', 'puppy', 'manoj', 'darshan', 'sasi', 1),
(59, 8, 'how many  colours in rainbow', '3', '6', '7', '5', 3),
(60, 8, 'select not belongs to group', 'mi', 'samsung', 'vivo', 'dell', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`login`, `test_id`, `test_date`, `score`) VALUES
('manoj', 5, '0000-00-00', 1),
('manoj', 5, '0000-00-00', 1),
('manoj', 4, '0000-00-00', 4),
('manoj', 4, '0000-00-00', 2),
('manoj', 4, '0000-00-00', 5),
('manoj', 4, '0000-00-00', 1),
('manoj', 4, '0000-00-00', 4),
('rashmi', 4, '0000-00-00', 2),
('manoj', 4, '0000-00-00', 4),
('manoj', 4, '0000-00-00', 5),
('manoj', 5, '0000-00-00', 5),
('rashmi', 4, '0000-00-00', 5),
('rashmi', 5, '0000-00-00', 4),
('manoj', 4, '0000-00-00', 1),
('manoj', 4, '0000-00-00', 1),
('manoj', 4, '0000-00-00', 2),
('manoj', 4, '0000-00-00', 4),
('manoj', 4, '0000-00-00', 3),
('manoj', 4, '0000-00-00', 2),
('manoj', 4, '0000-00-00', 2),
('manoj', 4, '0000-00-00', 1),
('manoj', 4, '0000-00-00', 2),
('manoj', 4, '0000-00-00', 1),
('manoj', 7, '0000-00-00', 1),
('manoj', 4, '0000-00-00', 1),
('manoj', 4, '0000-00-00', 1),
('rashmi', 4, '0000-00-00', 5),
('1cd18mca23', 4, '0000-00-00', 2),
('pranesh', 5, '0000-00-00', 2),
('1cd18mca23', 4, '0000-00-00', 1),
('18mca70', 5, '0000-00-00', 1),
('18mca70', 4, '0000-00-00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE `mst_subject` (
  `sub_id` int(5) NOT NULL,
  `sub_name` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, 'Advance Web Programming'),
(2, 'Advance Java Programming'),
(3, 'java program'),
(4, 'ADA'),
(5, 'Sample');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE `mst_test` (
  `test_id` int(5) NOT NULL,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(4, 1, 'PHP', '10'),
(5, 1, 'jQuery', '10'),
(6, 2, 'JSP', '10'),
(7, 4, 'Functions', '1'),
(8, 5, 'Sample', '5');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `user_id` int(5) NOT NULL,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(17, 'rashmi', 'rashmi', 'Rashmu', 'K R Purm', 'BANGLORE', 987654321, 'rashmi@gmail.com'),
(19, 'pranesh', 'pranesh', 'pranesh', 'dhhuucdhcdchene', 'BANGLORE', 987654321, 'pranesh@gmail.com'),
(20, 'ashu', 'ashu', 'ashu', 'ashu', 'Kolar', 987654321, 'ashu@gmail.com'),
(22, '1cd18mca23', 'manu', 'manohar reddy', 'sindhanur', 'sindhanur', 2147483647, 'reddymanohar27@gmail.com'),
(23, '18mca70', 'loki', 'lokesh', 'kr pura', 'Kolar', 2147483647, 'loki@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 4),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 4),
('t4n7r37tbfq2scdmgos5nfqndk', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 3),
('t4n7r37tbfq2scdmgos5nfqndk', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 2),
('t4n7r37tbfq2scdmgos5nfqndk', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 2),
('tdu7f2psbkn23g72it5kaefm66', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 2),
('tdu7f2psbkn23g72it5kaefm66', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 3),
('tdu7f2psbkn23g72it5kaefm66', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 2),
('tdu7f2psbkn23g72it5kaefm66', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 2),
('tdu7f2psbkn23g72it5kaefm66', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 2),
('tdu7f2psbkn23g72it5kaefm66', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 3),
('tdu7f2psbkn23g72it5kaefm66', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 2),
('tdu7f2psbkn23g72it5kaefm66', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 2),
('tdu7f2psbkn23g72it5kaefm66', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 3),
('tdu7f2psbkn23g72it5kaefm66', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 2),
('tdu7f2psbkn23g72it5kaefm66', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 2),
('tdu7f2psbkn23g72it5kaefm66', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 3),
('tdu7f2psbkn23g72it5kaefm66', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 2),
('tdu7f2psbkn23g72it5kaefm66', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 2),
('tdu7f2psbkn23g72it5kaefm66', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 2),
('tdu7f2psbkn23g72it5kaefm66', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 2),
('tdu7f2psbkn23g72it5kaefm66', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 3),
('tdu7f2psbkn23g72it5kaefm66', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 4),
('tdu7f2psbkn23g72it5kaefm66', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 4),
('tdu7f2psbkn23g72it5kaefm66', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 3),
('2tapsjp14v3ve7t69qs6k0dv36', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 2),
('2tapsjp14v3ve7t69qs6k0dv36', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 3),
('2tapsjp14v3ve7t69qs6k0dv36', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 2),
('2tapsjp14v3ve7t69qs6k0dv36', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 2),
('2tapsjp14v3ve7t69qs6k0dv36', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 2),
('2tapsjp14v3ve7t69qs6k0dv36', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 3),
('2tapsjp14v3ve7t69qs6k0dv36', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 4),
('2tapsjp14v3ve7t69qs6k0dv36', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 2),
('2tapsjp14v3ve7t69qs6k0dv36', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 4),
('2tapsjp14v3ve7t69qs6k0dv36', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 2),
('2tapsjp14v3ve7t69qs6k0dv36', 5, 'Which of the following is a single global function defined in the jQuery library?', ' jQuery()', '$()', 'Queryanalysis()', 'None of the mentioned', 1, 2),
('2tapsjp14v3ve7t69qs6k0dv36', 5, ' Which jQuery method is used to hide selected elements?\r\n \r\n ', '  hidden()', ' hide()', ' visible(false)', ' display(none) ', 2, 3),
('2tapsjp14v3ve7t69qs6k0dv36', 5, 'Look at the following jQuery selector: $(â€œdiv#intro .headâ€). What does it select?', 'The first element with id=â€headâ€ inside any di', 'All elements with class=â€headâ€ inside the firs', 'All div elements with id=â€introâ€ or class=â€h', 'None', 3, 4),
('2tapsjp14v3ve7t69qs6k0dv36', 5, ' $.foo() is equivalent to\r\n', 'javascript.foo()', 'document.foo()', 'jQuery.foo()', 'None of the above', 3, 4),
('2tapsjp14v3ve7t69qs6k0dv36', 5, 'Which built-in method returns the character at the specified index?\r\n', 'characterAt()', 'getCharAt()', 'charAt()', ' None of the above', 3, 3),
('2tapsjp14v3ve7t69qs6k0dv36', 5, ' Using ________ function, we can hold or release the execution of jQueryâ€™s ready event.', ' jQuery.holdReady()', ' jQuery.ready()', 'jQuery.hold()', 'jQuery.holdready()', 1, 3),
('2tapsjp14v3ve7t69qs6k0dv36', 5, ' The â€¦â€¦â€¦. method is like offset(), except that it is a getter only and it returns element positions relative to their offset parent, rather to t', 'width()', 'position()', 'offsetparent()', ' setparent()', 2, 2),
('2tapsjp14v3ve7t69qs6k0dv36', 5, ' Select all elements that contain the specified text.', 'contains()', ':selects()', 'Dazzler', ' None of these', 1, 4),
('2tapsjp14v3ve7t69qs6k0dv36', 5, 'The______ method is used to represent an array or an object in serialize manner.', 'size()', ' length', 'param()', 'None of these', 3, 3),
('2tapsjp14v3ve7t69qs6k0dv36', 5, ' Which sign does jQuery use as a shortcut for jQuery?', '. $ sign', ' % sign', '? Sign', 'None', 1, 3),
('2tapsjp14v3ve7t69qs6k0dv36', 5, ' jQuery method is used to perform an asynchronous HTTP request?', ' jQuery.ajaxAsync()', 'jQuery.ajaxSetup()', ' jQuery.ajax()', ' None', 3, 3),
('0vo86kh9n2fusacm5dpvob984v', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 3),
('0vo86kh9n2fusacm5dpvob984v', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 3),
('0vo86kh9n2fusacm5dpvob984v', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 3),
('0vo86kh9n2fusacm5dpvob984v', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 3),
('0vo86kh9n2fusacm5dpvob984v', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 3),
('0vo86kh9n2fusacm5dpvob984v', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 3),
('0vo86kh9n2fusacm5dpvob984v', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 3),
('0vo86kh9n2fusacm5dpvob984v', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 3),
('0vo86kh9n2fusacm5dpvob984v', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 3),
('0vo86kh9n2fusacm5dpvob984v', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 3),
('rei1en51g469mccg08tm9gem8o', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 2),
('rei1en51g469mccg08tm9gem8o', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 4),
('rei1en51g469mccg08tm9gem8o', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 4),
('rei1en51g469mccg08tm9gem8o', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 4),
('rei1en51g469mccg08tm9gem8o', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 4),
('rei1en51g469mccg08tm9gem8o', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 4),
('rei1en51g469mccg08tm9gem8o', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 2),
('rei1en51g469mccg08tm9gem8o', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 4),
('rei1en51g469mccg08tm9gem8o', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 4),
('rei1en51g469mccg08tm9gem8o', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 3),
('bn1oh72ifg40tgm07acepfl6dn', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 2),
('bn1oh72ifg40tgm07acepfl6dn', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 3),
('bn1oh72ifg40tgm07acepfl6dn', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 3),
('bn1oh72ifg40tgm07acepfl6dn', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 3),
('bn1oh72ifg40tgm07acepfl6dn', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 4),
('bn1oh72ifg40tgm07acepfl6dn', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 2),
('bn1oh72ifg40tgm07acepfl6dn', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 3),
('bn1oh72ifg40tgm07acepfl6dn', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 4),
('bn1oh72ifg40tgm07acepfl6dn', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 3),
('bn1oh72ifg40tgm07acepfl6dn', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 4),
('g713921mjcep72gdc3dnetvv7i', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 2),
('g713921mjcep72gdc3dnetvv7i', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 2),
('g713921mjcep72gdc3dnetvv7i', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 2),
('g713921mjcep72gdc3dnetvv7i', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 2),
('g713921mjcep72gdc3dnetvv7i', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 2),
('g713921mjcep72gdc3dnetvv7i', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 2),
('g713921mjcep72gdc3dnetvv7i', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 2),
('g713921mjcep72gdc3dnetvv7i', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 2),
('g713921mjcep72gdc3dnetvv7i', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 2),
('v1u7c4i6bvj1frsnp8copn97h6', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 1),
('v1u7c4i6bvj1frsnp8copn97h6', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 1),
('v1u7c4i6bvj1frsnp8copn97h6', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 1),
('v1u7c4i6bvj1frsnp8copn97h6', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 1),
('v1u7c4i6bvj1frsnp8copn97h6', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 1),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 1),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 4),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 2),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 2),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 4),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 2),
('d3a42eg2ndirvqkoijp6ktt53q', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 4),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 1),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 1),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 0),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 2),
('d3a42eg2ndirvqkoijp6ktt53q', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 2),
('d3a42eg2ndirvqkoijp6ktt53q', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 3),
('7a0usn4rubmg2fagakrtfh03ui', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 3),
('7a0usn4rubmg2fagakrtfh03ui', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 0),
('7a0usn4rubmg2fagakrtfh03ui', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 3),
('7a0usn4rubmg2fagakrtfh03ui', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 3),
('7a0usn4rubmg2fagakrtfh03ui', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 4),
('7a0usn4rubmg2fagakrtfh03ui', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 4),
('7a0usn4rubmg2fagakrtfh03ui', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 3),
('7a0usn4rubmg2fagakrtfh03ui', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 4),
('7a0usn4rubmg2fagakrtfh03ui', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 3),
('7a0usn4rubmg2fagakrtfh03ui', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 3),
('7a0usn4rubmg2fagakrtfh03ui', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 3),
('2o2tb2jjhhiirs2lio846kjp4s', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 0),
('2o2tb2jjhhiirs2lio846kjp4s', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 0),
('2o2tb2jjhhiirs2lio846kjp4s', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 0),
('2o2tb2jjhhiirs2lio846kjp4s', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 0),
('2o2tb2jjhhiirs2lio846kjp4s', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 0),
('2o2tb2jjhhiirs2lio846kjp4s', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 0),
('2o2tb2jjhhiirs2lio846kjp4s', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 0),
('2o2tb2jjhhiirs2lio846kjp4s', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 0),
('2o2tb2jjhhiirs2lio846kjp4s', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 0),
('2o2tb2jjhhiirs2lio846kjp4s', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 1),
('lvmhnreknre0f31h266ng86gd1', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 0),
('lvmhnreknre0f31h266ng86gd1', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 0),
('lvmhnreknre0f31h266ng86gd1', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 0),
('lvmhnreknre0f31h266ng86gd1', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 0),
('lvmhnreknre0f31h266ng86gd1', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 0),
('lvmhnreknre0f31h266ng86gd1', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 2),
('lvmhnreknre0f31h266ng86gd1', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 0),
('lvmhnreknre0f31h266ng86gd1', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 0),
('lvmhnreknre0f31h266ng86gd1', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 0),
('lvmhnreknre0f31h266ng86gd1', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 3),
('lvmhnreknre0f31h266ng86gd1', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 2),
('lvmhnreknre0f31h266ng86gd1', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 0),
('lvmhnreknre0f31h266ng86gd1', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 0),
('lvmhnreknre0f31h266ng86gd1', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 0),
('lvmhnreknre0f31h266ng86gd1', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 0),
('lvmhnreknre0f31h266ng86gd1', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 0),
('lvmhnreknre0f31h266ng86gd1', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 0),
('lvmhnreknre0f31h266ng86gd1', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 0),
('lvmhnreknre0f31h266ng86gd1', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 0),
('lvmhnreknre0f31h266ng86gd1', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 2),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 2),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 0),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 0),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 0),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 0),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 0),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 0),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 0),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 0),
('ct23eivoadbmpqa9k4le3r6dsl', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 3),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 2),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 3),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 2),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 2),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 2),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 2),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 2),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 2),
('ct23eivoadbmpqa9k4le3r6dsl', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 0),
('ct23eivoadbmpqa9k4le3r6dsl', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 2),
('f6furuiiqtnaapslhne5d3ga2t', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 2),
('f6furuiiqtnaapslhne5d3ga2t', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 3),
('f6furuiiqtnaapslhne5d3ga2t', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 3),
('f6furuiiqtnaapslhne5d3ga2t', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 4),
('f6furuiiqtnaapslhne5d3ga2t', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 3),
('f6furuiiqtnaapslhne5d3ga2t', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 3),
('f6furuiiqtnaapslhne5d3ga2t', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 3),
('f6furuiiqtnaapslhne5d3ga2t', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 1),
('f6furuiiqtnaapslhne5d3ga2t', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 3),
('f6furuiiqtnaapslhne5d3ga2t', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 2),
('11o7mgjd7usc0i0lsgd0k92a9f', 5, 'Which of the following is a single global function defined in the jQuery library?', ' jQuery()', '$()', 'Queryanalysis()', 'None of the mentioned', 1, 2),
('11o7mgjd7usc0i0lsgd0k92a9f', 5, ' Which jQuery method is used to hide selected elements?\r\n \r\n ', '  hidden()', ' hide()', ' visible(false)', ' display(none) ', 2, 3),
('11o7mgjd7usc0i0lsgd0k92a9f', 5, 'Look at the following jQuery selector: $(â€œdiv#intro .headâ€). What does it select?', 'The first element with id=â€headâ€ inside any di', 'All elements with class=â€headâ€ inside the firs', 'All div elements with id=â€introâ€ or class=â€h', 'None', 3, 3),
('11o7mgjd7usc0i0lsgd0k92a9f', 5, ' $.foo() is equivalent to\r\n', 'javascript.foo()', 'document.foo()', 'jQuery.foo()', 'None of the above', 3, 4),
('11o7mgjd7usc0i0lsgd0k92a9f', 5, 'Which built-in method returns the character at the specified index?\r\n', 'characterAt()', 'getCharAt()', 'charAt()', ' None of the above', 3, 4),
('11o7mgjd7usc0i0lsgd0k92a9f', 5, ' Using ________ function, we can hold or release the execution of jQueryâ€™s ready event.', ' jQuery.holdReady()', ' jQuery.ready()', 'jQuery.hold()', 'jQuery.holdready()', 1, 3),
('11o7mgjd7usc0i0lsgd0k92a9f', 5, ' The â€¦â€¦â€¦. method is like offset(), except that it is a getter only and it returns element positions relative to their offset parent, rather to t', 'width()', 'position()', 'offsetparent()', ' setparent()', 2, 3),
('11o7mgjd7usc0i0lsgd0k92a9f', 5, ' Select all elements that contain the specified text.', 'contains()', ':selects()', 'Dazzler', ' None of these', 1, 3),
('11o7mgjd7usc0i0lsgd0k92a9f', 5, 'The______ method is used to represent an array or an object in serialize manner.', 'size()', ' length', 'param()', 'None of these', 3, 4),
('11o7mgjd7usc0i0lsgd0k92a9f', 5, ' Which sign does jQuery use as a shortcut for jQuery?', '. $ sign', ' % sign', '? Sign', 'None', 1, 4),
('11o7mgjd7usc0i0lsgd0k92a9f', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 2),
('11o7mgjd7usc0i0lsgd0k92a9f', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 3),
('11o7mgjd7usc0i0lsgd0k92a9f', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 1),
('11o7mgjd7usc0i0lsgd0k92a9f', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 3),
('11o7mgjd7usc0i0lsgd0k92a9f', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 2),
('11o7mgjd7usc0i0lsgd0k92a9f', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 3),
('11o7mgjd7usc0i0lsgd0k92a9f', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 4),
('11o7mgjd7usc0i0lsgd0k92a9f', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 3),
('11o7mgjd7usc0i0lsgd0k92a9f', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 3),
('11o7mgjd7usc0i0lsgd0k92a9f', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 4),
('tf6l4a6oapbq2lkhoce2b7afve', 8, 'The colour of the banana is		', 'red', 'green', 'yellow', 'orange', 3, 3),
('tf6l4a6oapbq2lkhoce2b7afve', 8, 'how much letters are there in the english alphabet?', '24', '30', '26', '22', 3, 3),
('4imvtmj5afpsk5bf5hqqd3hk2n', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 0),
('4imvtmj5afpsk5bf5hqqd3hk2n', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 0),
('4imvtmj5afpsk5bf5hqqd3hk2n', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 3),
('4imvtmj5afpsk5bf5hqqd3hk2n', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 3),
('4imvtmj5afpsk5bf5hqqd3hk2n', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 3),
('4imvtmj5afpsk5bf5hqqd3hk2n', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 3),
('4imvtmj5afpsk5bf5hqqd3hk2n', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 3),
('4imvtmj5afpsk5bf5hqqd3hk2n', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 3),
('4imvtmj5afpsk5bf5hqqd3hk2n', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 3),
('4imvtmj5afpsk5bf5hqqd3hk2n', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 3),
('ukmfd3o3fshe3bhfefe6rohg2k', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 0),
('ukmfd3o3fshe3bhfefe6rohg2k', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 0),
('n59i8sqbv23906gubanni0nme8', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 3),
('n59i8sqbv23906gubanni0nme8', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 3),
('n59i8sqbv23906gubanni0nme8', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 0),
('n59i8sqbv23906gubanni0nme8', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 0),
('n59i8sqbv23906gubanni0nme8', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 0),
('n59i8sqbv23906gubanni0nme8', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 0),
('n59i8sqbv23906gubanni0nme8', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 4),
('n59i8sqbv23906gubanni0nme8', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 4),
('n59i8sqbv23906gubanni0nme8', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 4),
('n59i8sqbv23906gubanni0nme8', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 4),
('n59i8sqbv23906gubanni0nme8', 4, 'Who is the father of PHP?', 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', ' List Barely', 1, 3),
('n59i8sqbv23906gubanni0nme8', 4, 'PHP files have a default file extension of.', '.html', '.xml', ' .php', '.ph', 3, 3),
('n59i8sqbv23906gubanni0nme8', 4, 'A PHP script should start with ___ and end with ___', '< php >', '< ?php ? >', '< ? ? >', '< php ?>', 2, 1),
('n59i8sqbv23906gubanni0nme8', 4, 'Which one of the following PHP functions can be used to find files?', 'glob()', ' file()', 'fold()', 'get_file()', 1, 1),
('n59i8sqbv23906gubanni0nme8', 4, 'Which one of the following PHP functions can be used to build a function that accepts any number of arguments?', 'func_get_argv()', 'func_get_argc()', ' get_argv()', 'get_argc()', 2, 4),
('n59i8sqbv23906gubanni0nme8', 4, 'The filesize() function returns the file size in ___.', 'bits', 'bytes', 'kilobytes', 'gigabytes', 2, 4),
('n59i8sqbv23906gubanni0nme8', 4, 'Which one of the following function is capable of reading a file into an array?', 'file()', 'arrfile()', ' arr_file()', 'file_arr()', 1, 2),
('n59i8sqbv23906gubanni0nme8', 4, 'How many functions does PHP offer for searching and modifying strings using Perl-compatible regular expressions.', '7', '8', '9', '10', 2, 2),
('n59i8sqbv23906gubanni0nme8', 4, 'Say we have two compare two strings which of the following function/functions can you use?', 'strcmp()', 'strcasecmp()', 'strspn()', 'None of the mentioned', 4, 3),
('n59i8sqbv23906gubanni0nme8', 4, ' Which one of the following functions will convert a string to all uppercase?', 'strtoupper()', 'uppercase()', 'str_uppercase()', 'struppercase()', 1, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_admin`
--
ALTER TABLE `mst_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mst_question`
--
ALTER TABLE `mst_question`
  ADD PRIMARY KEY (`que_id`);

--
-- Indexes for table `mst_subject`
--
ALTER TABLE `mst_subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `mst_test`
--
ALTER TABLE `mst_test`
  ADD PRIMARY KEY (`test_id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_admin`
--
ALTER TABLE `mst_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mst_question`
--
ALTER TABLE `mst_question`
  MODIFY `que_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `mst_subject`
--
ALTER TABLE `mst_subject`
  MODIFY `sub_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mst_test`
--
ALTER TABLE `mst_test`
  MODIFY `test_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
