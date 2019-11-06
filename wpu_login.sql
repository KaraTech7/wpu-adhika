-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2019 at 08:32 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(16, 'McCarrelduigi', 'adhika@gmail.com', 'user-lg.jpg', '$2y$10$plEipe4q0Nzeg6lqIKEwFeFn5fXmYRQPIwwip6AjY1xoHWFSBDkL6', 1, 1, 1570001768),
(17, 'Naurah', 'winona10@gmail.com', 'download2.jpg', '$2y$10$Dte.lpT9sTskFGhcuu3sdekcWBpNZgRbgXsi00ulChjuuLKg/2S6m', 2, 1, 1573022285);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(9, 1, 1),
(10, 1, 2),
(11, 2, 2),
(12, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(5, 'awdawd');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(6, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(7, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'aacc35131@gmail.com', '1fFXJbxJRS402k29aAb8mEMONnJOANEyMHC+cMlLL0U=', 1570604160),
(2, 'aacc35131@gmail.com', 'hMtSMksUZW5xAHDBfLhB0xE1lucSjb8Yw3Liraeq9kc=', 1570604286),
(3, 'aacc35131@gmail.com', '1YUZDroYWf5qYItjyf9l6h91ELadLGyfaSOcj71WoII=', 1570604371),
(4, 'aacc35131@gmail.com', 'jNShImJkO2iE5vxTFz+D5vLZ1qIHxO59E8+Q1aBSHCw=', 1570604426),
(5, 'aacc35131@gmail.com', 'nsqSUyDzf96fabwmurJ9W2xIBL+oOdTpzJhyW7v/SdM=', 1570604506),
(6, 'saya@gmail.com', 'I+jAcMrHlBfONlHmYiljvs93tTnKn8kEX3oYAvloiz4=', 1570605579),
(7, 'saya@gmail.com', 'aZ79JcOTG+K8Vh+lAOFb7u/eni8aXsXswyAM3eFWO5A=', 1570605932),
(8, 'akuganteng@gmail.com', 'av3IXJNCxVoCkUJaUYFoQmfCB4a9hO0Ja6mLf0WNvhg=', 1570606126),
(9, 'akuganteng@gmail.com', 'ZYaMjLa9kYpEtalYGDBD3ilRfuqX5tFFlJ3UxNcoM+Y=', 1570606354),
(10, 'adik@gmail.com', 'vLhC4EJ47DPcSn0sJD8Tkvp8qgAqldBAYSHjgsEdwSg=', 1570606503),
(11, 'adhik@gmail.com', '5ox7Izv8toPkTw/4apufHkYecDHQl+cHJShdpiw7WoI=', 1571188715),
(12, 'adhika@gmail.com', '1w5SN0Of9dmeszkMa0KYM4G8ErM8KWiC2ZM4iGP6I/U=', 1571188754),
(13, 'adhik@gmail.com', 'sGDWOt8OgRhhv6pUAYzq+AeCTHc/ZCwSD77n4mArOp0=', 1571188763),
(14, 'adhik@gmail.com', '0pwOsrn3PMFZ8iO+XX9gQgw3Upkm0tCltEsahCy7yX4=', 1571188929),
(15, 'adhika@gmail.com', 'Gh2UKTiXUAx2mxaoNUVUIc3VNVOpclA4DeLa0xHoJhI=', 1571200053),
(16, 'adhika@gmail.com', 'ud8HU24aL4sj44p22SwcCDBHH1k+R0Q9LOYLX73UEBY=', 1571208479),
(17, 'adhika@gmail.com', 'e/PhlywI4fKK/Nm122uG+LM0kadMthNWm9k2a6YG8/Q=', 1571208530),
(18, 'adhika@gmail.com', 'o/060kOffMCC/NcORmXidgMTbuieSnC13lA6CXglwrE=', 1571208552),
(19, 'adhika@gmail.com', 'A6rk5z4bpCsWZyMUrgV0j6DHX+JhLEiE+bZAR7+UCq8=', 1571208647),
(20, 'adhik@gmail.com', 'mP1wwufxMhVSjiSEgchsvMoFipsUSOtNQY2wVfofn4M=', 1571208685),
(21, 'adhika@gmail.com', '98SMwzfr5abmPakuhvWVLqYKSIEl9k3GK4ZB9IpXtH0=', 1571209565),
(22, 'adhika@gmail.com', 'dPsgCmY+RJJTnKdLsR+Du8JZtBE+bTDkUIYPAJJeo00=', 1571210201),
(23, 'adhika@gmail.com', 'ttRq0zMqDmXIs+TOJ4Fs0sk/SSzK19YVwrtl+aBb9Pw=', 1571210343),
(24, 'adhikacandra990@yahoo.co.id', 'yWPj9BAiu+MfuMlG4vOw+ZOrbBZMy+P7Z37tGF+UWIM=', 1571210948),
(25, 'adhika@gmail.com', '2EdUXO14i2KlJSXG3B/R4arv5+1vE7GilnuIgbWP7vU=', 1571211175),
(26, 'af_zalurrizal@yahoo.com', 'NYcpA4YWplr6qTtipDZjPnIwH0IxyazJUx9gz7huZQo=', 1571211252),
(27, 'adhikacandra990@yahoo.co.id', '8E99lwXNlszO4OqvTZZcqy4QSnQRFLooQHo5siBgyZI=', 1571211471),
(28, 'adhikacandra990@yahoo.co.id', 'aTKy1QBI66+hWO4XYrwr33jVWiGm/X47sQ33va/wEdw=', 1571211973),
(29, 'aku@yahoo.com', '7g3azNjyupKjM8n9eIBx8CwTySd0BkWtDn9gz1bsL+4=', 1571213460),
(30, 'aku@yahoo.com', 'ZaJFbKwMrHw8BGdpN69bMtcIj9u0y9YG1DleZa4bmPw=', 1571213574),
(31, 'aku@yahoo.com', 'VLiWYseW3L5A7NN7DiDjaMVkmSoTuK5CZ1vkGE8s59g=', 1571213648),
(33, 'winona10@gmail.com', 'nFm0TgvqY9Uz4hpYNRtt3jcBjXrz1/GeGZVOfXPLSs0=', 1573022440);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
