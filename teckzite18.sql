-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 01, 2020 at 10:11 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teckzite18-copy`
--

-- --------------------------------------------------------

--
-- Table structure for table `abstract_uploads`
--

CREATE TABLE `abstract_uploads` (
  `sno` int(50) NOT NULL,
  `eid` varchar(10) NOT NULL,
  `teamid` int(10) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `eventname` varchar(50) NOT NULL,
  `stuid` varchar(8) NOT NULL,
  `filepath` varchar(100) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `sqltime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `abstract_uploads_settings`
--

CREATE TABLE `abstract_uploads_settings` (
  `sno` int(10) NOT NULL,
  `eid` varchar(10) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `eventname` varchar(50) NOT NULL,
  `uploadsfolderpath` varchar(100) NOT NULL,
  `uploads` int(50) NOT NULL,
  `uploadsopen` varchar(10) NOT NULL DEFAULT 'opened',
  `visibility` int(2) NOT NULL DEFAULT 1,
  `added_by_id` varchar(10) NOT NULL,
  `added_by_name` varchar(100) NOT NULL,
  `added_by_ip` varchar(50) NOT NULL,
  `added_by_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appdownloads`
--

CREATE TABLE `appdownloads` (
  `downloads` int(5) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blockedips_bak`
--

CREATE TABLE `blockedips_bak` (
  `sno` int(10) NOT NULL,
  `user` varchar(73) NOT NULL DEFAULT 'Guest',
  `ip` varchar(50) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branch_categories`
--

CREATE TABLE `branch_categories` (
  `branch` varchar(50) NOT NULL,
  `displayname` varchar(40) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This cantnot be empty...';

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `sno` int(6) NOT NULL,
  `stuid` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `msg` text NOT NULL,
  `reply` varchar(200) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `sno` int(10) NOT NULL,
  `stuid` varchar(7) NOT NULL,
  `email` varchar(50) NOT NULL,
  `stuname` varchar(160) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `logins` int(10) DEFAULT 0,
  `edits` int(10) DEFAULT 0,
  `lastip` varchar(50) DEFAULT NULL,
  `lasttime` timestamp NULL DEFAULT current_timestamp(),
  `regfrom` enum('web','mobile','app') DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `eid` int(50) NOT NULL,
  `eventname` varchar(50) DEFAULT NULL,
  `imagename` varchar(50) DEFAULT NULL,
  `branch` varchar(50) DEFAULT NULL,
  `participants` int(10) DEFAULT NULL,
  `minparticipants` int(10) DEFAULT NULL,
  `isyearrestrictions` varchar(10) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `instructions` longtext DEFAULT NULL,
  `organizers` text DEFAULT NULL,
  `orgcount` int(5) DEFAULT 0,
  `schedule` text DEFAULT NULL,
  `prizes` text DEFAULT NULL,
  `winners` text DEFAULT NULL,
  `views` int(50) NOT NULL DEFAULT 0,
  `visibility` int(10) NOT NULL DEFAULT 1,
  `areregistrationson` varchar(10) NOT NULL DEFAULT 'on',
  `reg_stoppedby` varchar(50) DEFAULT NULL,
  `timestopped` varchar(50) DEFAULT NULL,
  `ipstopped` varchar(50) DEFAULT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events_schedule`
--

CREATE TABLE `events_schedule` (
  `id` int(11) NOT NULL,
  `event_name` varchar(150) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `start_time` varchar(100) DEFAULT NULL,
  `end_time` varchar(100) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `venue` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `visibility` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_registrations`
--

CREATE TABLE `event_registrations` (
  `sno` int(50) NOT NULL,
  `eid` int(10) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `eventname` varchar(50) NOT NULL,
  `teamid` int(10) NOT NULL,
  `ids` varchar(200) NOT NULL,
  `regdone_by` varchar(50) NOT NULL,
  `regdone_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `regdone_ip` varchar(50) NOT NULL,
  `visibility` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forget_data`
--

CREATE TABLE `forget_data` (
  `id` int(11) NOT NULL,
  `stu_id` varchar(7) NOT NULL,
  `stu_ip` varchar(50) NOT NULL,
  `reset_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `result` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `isyearrestrictions`
--

CREATE TABLE `isyearrestrictions` (
  `sno` int(10) NOT NULL,
  `eid` int(10) NOT NULL,
  `eventname` varchar(50) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `P1` int(10) NOT NULL,
  `P2` int(10) NOT NULL,
  `E1` int(10) NOT NULL,
  `E2` int(10) NOT NULL,
  `E3` int(10) NOT NULL,
  `E4` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `nid` int(10) NOT NULL,
  `eid` varchar(100) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `attachments` varchar(150) NOT NULL,
  `sd` varchar(50) NOT NULL,
  `views` int(10) NOT NULL,
  `visibility` int(2) NOT NULL DEFAULT 1,
  `added_by` varchar(150) NOT NULL,
  `role` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `added_date` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organizers`
--

CREATE TABLE `organizers` (
  `sno` int(50) NOT NULL,
  `orgid` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `orgpass` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `orgmob` varchar(10) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'Organizer',
  `eids` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'offline',
  `acc_status` enum('blocked','Access') NOT NULL DEFAULT 'Access'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This cantnot be empty...';

-- --------------------------------------------------------

--
-- Table structure for table `org_passlog`
--

CREATE TABLE `org_passlog` (
  `id` int(11) NOT NULL,
  `changed_by` varchar(20) NOT NULL,
  `changed_id` varchar(7) NOT NULL,
  `changed_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `changed_ip` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `changed_pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `paid`
--

CREATE TABLE `paid` (
  `id` varchar(8) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `paid_log`
--

CREATE TABLE `paid_log` (
  `id` int(11) NOT NULL,
  `added_by` varchar(20) NOT NULL,
  `paid_id` varchar(7) NOT NULL,
  `added_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `added_ip` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `partoorgmsg`
--

CREATE TABLE `partoorgmsg` (
  `sno` int(10) NOT NULL,
  `eid` int(3) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `reply` varchar(200) NOT NULL,
  `seen` int(2) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personal_msgs`
--

CREATE TABLE `personal_msgs` (
  `sno` int(10) NOT NULL,
  `stuid` varchar(40) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `frm` varchar(30) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_log`
--

CREATE TABLE `schedule_log` (
  `id` int(11) NOT NULL,
  `added_by` varchar(20) NOT NULL,
  `eventname` varchar(200) NOT NULL,
  `added_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `added_ip` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `sno` int(10) NOT NULL,
  `function` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL DEFAULT 'on'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(10) NOT NULL,
  `stuid` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tzid` varchar(20) NOT NULL,
  `stuname` varchar(160) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `year` varchar(10) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `clg_name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `accomodation` varchar(10) NOT NULL,
  `fees` int(10) NOT NULL,
  `paid` enum('yes','no') NOT NULL DEFAULT 'no',
  `eventsregcount` int(10) NOT NULL DEFAULT 0,
  `eventids` varchar(250) DEFAULT NULL,
  `logins` int(10) DEFAULT 0,
  `edits` int(10) DEFAULT 0,
  `lastip` varchar(50) DEFAULT NULL,
  `lasttime` timestamp NOT NULL DEFAULT current_timestamp(),
  `regfrom` enum('web','mobile','app') NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `visits950` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `webteammsg`
--

CREATE TABLE `webteammsg` (
  `sno` int(10) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `reply` varchar(200) NOT NULL,
  `seen` int(2) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `year_categories`
--

CREATE TABLE `year_categories` (
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abstract_uploads`
--
ALTER TABLE `abstract_uploads`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `abstract_uploads_settings`
--
ALTER TABLE `abstract_uploads_settings`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `eid` (`eid`);

--
-- Indexes for table `blockedips_bak`
--
ALTER TABLE `blockedips_bak`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `branch_categories`
--
ALTER TABLE `branch_categories`
  ADD UNIQUE KEY `branch` (`branch`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `events_schedule`
--
ALTER TABLE `events_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_registrations`
--
ALTER TABLE `event_registrations`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `forget_data`
--
ALTER TABLE `forget_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isyearrestrictions`
--
ALTER TABLE `isyearrestrictions`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `organizers`
--
ALTER TABLE `organizers`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `org_passlog`
--
ALTER TABLE `org_passlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paid_log`
--
ALTER TABLE `paid_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partoorgmsg`
--
ALTER TABLE `partoorgmsg`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `personal_msgs`
--
ALTER TABLE `personal_msgs`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `schedule_log`
--
ALTER TABLE `schedule_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `stuid` (`stuid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`visits950`);

--
-- Indexes for table `webteammsg`
--
ALTER TABLE `webteammsg`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `year_categories`
--
ALTER TABLE `year_categories`
  ADD PRIMARY KEY (`year`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abstract_uploads`
--
ALTER TABLE `abstract_uploads`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abstract_uploads_settings`
--
ALTER TABLE `abstract_uploads_settings`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blockedips_bak`
--
ALTER TABLE `blockedips_bak`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `sno` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16491;

--
-- AUTO_INCREMENT for table `events_schedule`
--
ALTER TABLE `events_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `event_registrations`
--
ALTER TABLE `event_registrations`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16223;

--
-- AUTO_INCREMENT for table `forget_data`
--
ALTER TABLE `forget_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=766;

--
-- AUTO_INCREMENT for table `isyearrestrictions`
--
ALTER TABLE `isyearrestrictions`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `nid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `organizers`
--
ALTER TABLE `organizers`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `org_passlog`
--
ALTER TABLE `org_passlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `paid_log`
--
ALTER TABLE `paid_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `partoorgmsg`
--
ALTER TABLE `partoorgmsg`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=991;

--
-- AUTO_INCREMENT for table `personal_msgs`
--
ALTER TABLE `personal_msgs`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21351;

--
-- AUTO_INCREMENT for table `schedule_log`
--
ALTER TABLE `schedule_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4781;

--
-- AUTO_INCREMENT for table `webteammsg`
--
ALTER TABLE `webteammsg`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
