-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 29, 2022 at 02:40 PM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizizy`
--
CREATE DATABASE IF NOT EXISTS `quizizy` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `quizizy`;

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
CREATE TABLE IF NOT EXISTS `answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question_id` int NOT NULL,
  `answer` text NOT NULL,
  `type` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `type`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`) VALUES
(1, 1, 'Amazon EC2 costs are billed on a monthly basis.', 0, '2022-12-29 14:18:49', '2022-12-29 14:18:49', NULL, NULL, NULL),
(2, 1, 'Users retain full administrative access to their Amazon EC2 instances.', 0, '2022-12-29 14:18:49', '2022-12-29 14:18:49', NULL, NULL, NULL),
(3, 1, 'Amazon EC2 instances can be launched on demand when needed.', 1, '2022-12-29 14:18:49', '2022-12-29 14:18:49', NULL, NULL, NULL),
(4, 1, 'Users can permanently run enough instances to handle peak workloads.', 0, '2022-12-29 14:18:49', '2022-12-29 14:18:49', NULL, NULL, NULL),
(5, 2, 'AWS Storage Gateway', 0, '2022-12-29 14:23:45', '2022-12-29 14:23:45', NULL, NULL, NULL),
(6, 2, 'AWS Database Migration Service (AWS DMS)', 1, '2022-12-29 14:23:45', '2022-12-29 14:23:45', NULL, NULL, NULL),
(7, 2, 'Amazon EC2', 0, '2022-12-29 14:23:45', '2022-12-29 14:23:45', NULL, NULL, NULL),
(8, 2, 'Amazon AppStream 2.0', 0, '2022-12-29 14:23:45', '2022-12-29 14:23:45', NULL, NULL, NULL),
(9, 3, 'AWS Config', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(10, 3, 'AWS OpsWorks', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(11, 3, 'AWS SDK', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(12, 3, 'AWS Marketplace', 1, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(13, 4, 'AWS Config', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(14, 4, 'Amazon Route 53', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(15, 4, 'AWS Direct Connect', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(16, 4, 'Amazon Virtual Private Cloud (Amazon VPC)', 1, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(17, 5, 'Configuring third-party applications', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(18, 5, 'Maintaining physical hardware ', 1, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(19, 5, 'Securing application access and data', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(20, 5, 'Managing guest operating systems', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(21, 6, 'AWS Regions', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(22, 6, 'Edge locations', 1, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(23, 6, 'Availability Zones', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(24, 6, 'Virtual Private Cloud (VPC)', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(25, 7, 'Use Amazon Cloud Directory', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(26, 7, 'Audit AWS Identity and Access Management (IAM) roles', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(27, 7, 'Enable multi-factor authentication', 1, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(28, 7, 'Enable AWS CloudTrail', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(29, 8, 'AWS Trusted Advisor', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(30, 8, 'AWS CloudTrail', 1, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(31, 8, 'AWS X-Ray', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(32, 8, 'AWS Identity and Access Management (AWS IAM)', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(33, 9, 'Amazon Simple Notification Service (Amazon SNS)', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(34, 9, 'AWS CloudTrail', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(35, 9, 'AWS Trusted Advisor', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(36, 9, 'Amazon Route 53', 1, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(37, 10, 'AWS Trusted Advisor', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(38, 10, 'AWS Identity and Access Management (IAM)', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(39, 10, 'AWS Billing Console', 0, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL),
(40, 10, 'AWS Acceptable Use Policy', 1, '2022-12-29 14:34:39', '2022-12-29 14:34:39', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int NOT NULL,
  `question` text NOT NULL,
  `justify` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `quiz_id`, `question`, `justify`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`) VALUES
(1, 1, 'Why is AWS more economical than traditional data centers for applications with varying compute workloads?', 'The ability to launch instances on demand when needed allows users to launch and terminate instances in response to a varying workload. This is a more economical practice than purchasing enough on-premises servers to handle the peak load.', '2022-12-29 14:14:13', '2022-12-29 14:14:13', NULL, NULL, NULL),
(2, 1, 'Which AWS service would simplify the migration of a database to AWS?', 'AWS DMS helps users migrate databases to AWS quickly and securely. The source database remains fully operational during the migration, minimizing downtime to applications that rely on the database. AWS DMS can migrate data to and from most widely used commercial and open-source databases.', '2022-12-29 14:14:13', '2022-12-29 14:14:13', NULL, NULL, NULL),
(3, 1, 'Which AWS offering enables users to find, buy, and immediately start using software solutions in their AWS environment?', 'AWS Marketplace is a digital catalog with thousands of software listings from independent software vendors that makes it easy to find, test, buy, and deploy software that runs on AWS.', '2022-12-29 14:14:13', '2022-12-29 14:14:13', NULL, NULL, NULL),
(4, 1, 'Which AWS networking service enables a company to create a virtual network within AWS?', 'Amazon VPC lets users provision a logically isolated section of the AWS Cloud where users can launch AWS resources in a virtual network that they define.', '2022-12-29 14:14:13', '2022-12-29 14:14:13', NULL, NULL, NULL),
(5, 1, 'Which of the following is an AWS responsibility under the AWS shared responsibility model?', 'Maintaining physical hardware is an AWS responsibility under the AWS shared responsibility model.', '2022-12-29 14:14:13', '2022-12-29 14:14:13', NULL, NULL, NULL),
(6, 1, 'Which component of the AWS global infrastructure does Amazon CloudFront use to ensure low-latency delivery?', 'To deliver content to users with lower latency, Amazon CloudFront uses a global network of points of presence (edge locations and regional edge caches) worldwide.', '2022-12-29 14:14:13', '2022-12-29 14:14:13', NULL, NULL, NULL),
(7, 1, 'How would a system administrator add an additional layer of login security to a user\'s AWS Management Console?', 'Multi-factor authentication (MFA) is a simple best practice that adds an extra layer of protection on top of a username and password. With MFA enabled, when a user signs in to an AWS Management Console, they will be prompted for their username and password (the first factor—what they know), as well as for an authentication code from their MFA device (the second factor—what they have). Taken together, these multiple factors provide increased security for AWS account settings and resources.', '2022-12-29 14:14:13', '2022-12-29 14:14:13', NULL, NULL, NULL),
(8, 1, 'Which service can identify the user that made the API call when an Amazon EC2 instance is terminated?', 'AWS CloudTrail helps users enable governance, compliance, and operational and risk auditing of their AWS accounts. Actions taken by a user, role, or an AWS service are recorded as events in CloudTrail. Events include actions taken in the AWS Management Console, AWS Command Line Interface (CLI), and AWS SDKs and APIs.', '2022-12-29 14:14:13', '2022-12-29 14:14:13', NULL, NULL, NULL),
(9, 1, 'Which service would be used to send alerts based on Amazon CloudWatch alarms?', 'Amazon SNS and Amazon CloudWatch are integrated so users can collect, view, and analyze metrics for every active SNS. Once users have configured CloudWatch for Amazon SNS, they can gain better insight into the performance of their Amazon SNS topics, push notifications, and SMS deliveries.', '2022-12-29 14:14:13', '2022-12-29 14:14:13', NULL, NULL, NULL),
(10, 1, 'Where can a user find information about prohibited actions on the AWS infrastructure?', 'The AWS Acceptable Use Policy provides information regarding prohibited actions on the AWS infrastructure.', '2022-12-29 14:14:13', '2022-12-29 14:14:13', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

DROP TABLE IF EXISTS `quizzes`;
CREATE TABLE IF NOT EXISTS `quizzes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `image` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_at`) VALUES
(1, 'AWS Cloud Practitioner Knowledge', '', '', '2022-12-29 14:16:12', '2022-12-29 14:16:12', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
