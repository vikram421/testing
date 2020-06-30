-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 30, 2020 at 08:26 PM
-- Server version: 10.2.32-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `melbwebnet_cockpit_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `article_has_attachments`
--

CREATE TABLE `article_has_attachments` (
  `id` bigint(20) NOT NULL,
  `article_id` bigint(20) DEFAULT NULL,
  `filename` varchar(250) DEFAULT NULL,
  `savename` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `company_id` int(140) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(180) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `zipcode` varchar(30) DEFAULT NULL,
  `userpic` varchar(150) DEFAULT 'no-pic.png',
  `city` varchar(45) DEFAULT NULL,
  `hashed_password` varchar(255) DEFAULT NULL,
  `inactive` tinyint(4) DEFAULT 0,
  `access` varchar(150) DEFAULT '0',
  `last_active` varchar(50) DEFAULT NULL,
  `last_login` varchar(50) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `googleplus` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `reference` int(11) NOT NULL,
  `name` varchar(140) DEFAULT NULL,
  `client_id` varchar(140) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `zipcode` varchar(30) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `inactive` tinyint(4) DEFAULT 0,
  `website` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `vat` varchar(250) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `googleplus` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `terms` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `reference`, `name`, `client_id`, `phone`, `mobile`, `address`, `zipcode`, `city`, `inactive`, `website`, `country`, `vat`, `note`, `province`, `twitter`, `skype`, `linkedin`, `facebook`, `instagram`, `googleplus`, `youtube`, `pinterest`, `terms`) VALUES
(1, 41001, 'Ventia / Sydney Water', NULL, '2234234234', '0302032032', '24 wert st, 12 ters st', '300', 'Melbourne', 0, 'tet.com.au', 'Australia', '', NULL, 'VIC', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `company_has_admins`
--

CREATE TABLE `company_has_admins` (
  `id` int(10) NOT NULL,
  `company_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `access` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_has_admins`
--

INSERT INTO `company_has_admins` (`id`, `company_id`, `user_id`, `access`) VALUES
(1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core`
--

CREATE TABLE `core` (
  `id` int(11) NOT NULL,
  `version` char(10) NOT NULL DEFAULT '0',
  `domain` varchar(65) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `second_tax` varchar(5) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `autobackup` int(11) DEFAULT NULL,
  `cronjob` int(11) DEFAULT NULL,
  `last_cronjob` int(11) DEFAULT NULL,
  `last_autobackup` int(11) DEFAULT NULL,
  `invoice_terms` mediumtext DEFAULT NULL,
  `company_reference` int(6) DEFAULT NULL,
  `project_reference` int(6) DEFAULT NULL,
  `invoice_reference` int(6) DEFAULT NULL,
  `subscription_reference` int(6) DEFAULT NULL,
  `ticket_reference` int(10) DEFAULT NULL,
  `date_format` varchar(20) DEFAULT NULL,
  `date_time_format` varchar(20) DEFAULT NULL,
  `invoice_mail_subject` varchar(150) DEFAULT NULL,
  `pw_reset_mail_subject` varchar(150) DEFAULT NULL,
  `pw_reset_link_mail_subject` varchar(150) DEFAULT NULL,
  `credentials_mail_subject` varchar(150) DEFAULT NULL,
  `notification_mail_subject` varchar(150) DEFAULT NULL,
  `language` varchar(150) DEFAULT NULL,
  `invoice_address` varchar(200) DEFAULT NULL,
  `invoice_city` varchar(200) DEFAULT NULL,
  `invoice_contact` varchar(200) DEFAULT NULL,
  `invoice_tel` varchar(50) DEFAULT NULL,
  `subscription_mail_subject` varchar(250) DEFAULT NULL,
  `logo` varchar(150) DEFAULT NULL,
  `template` varchar(200) DEFAULT 'default',
  `paypal` varchar(5) DEFAULT '1',
  `paypal_currency` varchar(200) DEFAULT 'EUR',
  `paypal_account` varchar(200) DEFAULT 'luxsys@luxsys-apps.com',
  `invoice_logo` varchar(150) DEFAULT 'assets/blackline/img/invoice_logo.png',
  `pc` varchar(150) DEFAULT NULL,
  `vat` varchar(150) DEFAULT NULL,
  `ticket_email` varchar(250) DEFAULT NULL,
  `ticket_default_owner` int(10) DEFAULT 1,
  `ticket_default_queue` int(10) DEFAULT 1,
  `ticket_default_type` int(10) DEFAULT 1,
  `ticket_default_status` varchar(200) DEFAULT 'new',
  `ticket_config_host` varchar(250) DEFAULT NULL,
  `ticket_config_login` varchar(250) DEFAULT NULL,
  `ticket_config_pass` varchar(250) DEFAULT NULL,
  `ticket_config_port` varchar(250) DEFAULT NULL,
  `ticket_config_ssl` varchar(250) DEFAULT NULL,
  `ticket_config_email` varchar(250) DEFAULT NULL,
  `ticket_config_flags` varchar(250) DEFAULT '/notls',
  `ticket_config_search` varchar(250) DEFAULT 'UNSEEN',
  `ticket_config_timestamp` int(11) DEFAULT NULL,
  `ticket_config_mailbox` varchar(250) DEFAULT NULL,
  `ticket_config_delete` int(11) DEFAULT NULL,
  `ticket_config_active` int(11) DEFAULT NULL,
  `ticket_config_imap` int(11) DEFAULT 1,
  `stripe` int(11) DEFAULT 0,
  `stripe_key` varchar(250) DEFAULT NULL,
  `stripe_p_key` varchar(255) DEFAULT NULL,
  `bank_transfer` int(11) DEFAULT NULL,
  `bank_transfer_text` longtext DEFAULT NULL,
  `stripe_currency` varchar(255) NOT NULL DEFAULT 'USD',
  `estimate_terms` longtext DEFAULT NULL,
  `estimate_prefix` varchar(255) NOT NULL DEFAULT 'EST',
  `estimate_pdf_template` varchar(255) NOT NULL DEFAULT 'templates/estimate/default',
  `invoice_pdf_template` varchar(255) NOT NULL DEFAULT 'invoices/preview',
  `estimate_mail_subject` varchar(255) NOT NULL DEFAULT 'New Estimate #{estimate_id}',
  `money_currency_position` int(5) NOT NULL DEFAULT 1,
  `money_format` int(5) NOT NULL DEFAULT 1,
  `pdf_font` varchar(255) NOT NULL DEFAULT 'NotoSans',
  `pdf_path` int(10) NOT NULL DEFAULT 1,
  `registration` int(10) NOT NULL DEFAULT 0,
  `authorize_api_login_id` varchar(255) DEFAULT NULL,
  `authorize_api_transaction_key` varchar(255) DEFAULT NULL,
  `authorize_net` int(20) DEFAULT 0,
  `authorize_currency` varchar(30) DEFAULT NULL,
  `invoice_prefix` varchar(255) DEFAULT NULL,
  `company_prefix` varchar(255) DEFAULT NULL,
  `quotation_prefix` varchar(255) DEFAULT NULL,
  `project_prefix` varchar(255) DEFAULT NULL,
  `subscription_prefix` varchar(255) DEFAULT NULL,
  `calendar_google_api_key` varchar(255) DEFAULT NULL,
  `calendar_google_event_address` varchar(255) DEFAULT NULL,
  `default_client_modules` varchar(255) DEFAULT NULL,
  `estimate_reference` int(10) DEFAULT 0,
  `login_background` varchar(255) DEFAULT 'blur.jpg',
  `custom_colors` int(1) DEFAULT 1,
  `top_bar_background` varchar(60) DEFAULT '#FFFFFF',
  `top_bar_color` varchar(60) DEFAULT '#333333',
  `body_background` varchar(60) DEFAULT '#e3e6ed',
  `menu_background` varchar(60) DEFAULT '#173240',
  `menu_color` varchar(60) DEFAULT '#FFFFFF',
  `primary_color` varchar(60) DEFAULT '#356cc9',
  `twocheckout_seller_id` varchar(250) DEFAULT NULL,
  `twocheckout_publishable_key` varchar(250) DEFAULT NULL,
  `twocheckout_private_key` varchar(250) DEFAULT NULL,
  `twocheckout` int(11) DEFAULT 0,
  `twocheckout_currency` varchar(250) DEFAULT NULL,
  `login_logo` varchar(255) DEFAULT NULL,
  `login_style` varchar(255) DEFAULT 'left',
  `reference_lenght` int(20) DEFAULT NULL,
  `stripe_ideal` int(1) DEFAULT NULL,
  `zip_position` varchar(60) DEFAULT 'left',
  `timezone` varchar(255) DEFAULT NULL,
  `notifications` int(1) UNSIGNED DEFAULT 0,
  `last_notification` varchar(100) DEFAULT NULL,
  `receipt_mail_subject` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `core`
--

INSERT INTO `core` (`id`, `version`, `domain`, `email`, `company`, `tax`, `second_tax`, `currency`, `autobackup`, `cronjob`, `last_cronjob`, `last_autobackup`, `invoice_terms`, `company_reference`, `project_reference`, `invoice_reference`, `subscription_reference`, `ticket_reference`, `date_format`, `date_time_format`, `invoice_mail_subject`, `pw_reset_mail_subject`, `pw_reset_link_mail_subject`, `credentials_mail_subject`, `notification_mail_subject`, `language`, `invoice_address`, `invoice_city`, `invoice_contact`, `invoice_tel`, `subscription_mail_subject`, `logo`, `template`, `paypal`, `paypal_currency`, `paypal_account`, `invoice_logo`, `pc`, `vat`, `ticket_email`, `ticket_default_owner`, `ticket_default_queue`, `ticket_default_type`, `ticket_default_status`, `ticket_config_host`, `ticket_config_login`, `ticket_config_pass`, `ticket_config_port`, `ticket_config_ssl`, `ticket_config_email`, `ticket_config_flags`, `ticket_config_search`, `ticket_config_timestamp`, `ticket_config_mailbox`, `ticket_config_delete`, `ticket_config_active`, `ticket_config_imap`, `stripe`, `stripe_key`, `stripe_p_key`, `bank_transfer`, `bank_transfer_text`, `stripe_currency`, `estimate_terms`, `estimate_prefix`, `estimate_pdf_template`, `invoice_pdf_template`, `estimate_mail_subject`, `money_currency_position`, `money_format`, `pdf_font`, `pdf_path`, `registration`, `authorize_api_login_id`, `authorize_api_transaction_key`, `authorize_net`, `authorize_currency`, `invoice_prefix`, `company_prefix`, `quotation_prefix`, `project_prefix`, `subscription_prefix`, `calendar_google_api_key`, `calendar_google_event_address`, `default_client_modules`, `estimate_reference`, `login_background`, `custom_colors`, `top_bar_background`, `top_bar_color`, `body_background`, `menu_background`, `menu_color`, `primary_color`, `twocheckout_seller_id`, `twocheckout_publishable_key`, `twocheckout_private_key`, `twocheckout`, `twocheckout_currency`, `login_logo`, `login_style`, `reference_lenght`, `stripe_ideal`, `zip_position`, `timezone`, `notifications`, `last_notification`, `receipt_mail_subject`) VALUES
(1, '3.2.9', 'http://cockpit.melbourneweb.net.au/', 'local@localhost', 'My Company', '0', NULL, 'USD', 1, 1, 0, 0, 'Thank you for your business. We do expect payment within {due_date}, so please process this invoice within that time.', 41002, 51001, 31001, 61001, 10000, 'Y/m/d', 'g:i A', 'New Invoice', 'Password Reset', 'Password Reset', 'Login Details', 'Notification', 'english', '', '', '', '', 'New Subscription', 'assets/blueline/images/FC2_logo_light.png', 'blueline', '0', 'USD', '', 'assets/blueline/images/FC2_logo_dark.png', 'c51fedc5-0936-4a52-ad31-2e09ffc2a431', NULL, NULL, 1, 1, 1, 'new', NULL, NULL, NULL, NULL, NULL, NULL, '/notls', 'UNSEEN', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, 'USD', NULL, 'EST', 'templates/estimate/default', 'invoices/preview', 'New Estimate #{estimate_id}', 1, 1, 'NotoSans', 1, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20000, 'blur.jpg', 1, '#FFFFFF', '#333333', '#e3e6ed', '#173240', '#FFFFFF', '#356cc9', NULL, NULL, NULL, 0, NULL, NULL, 'left', NULL, NULL, 'left', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custom_quotations`
--

CREATE TABLE `custom_quotations` (
  `id` int(10) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `formcontent` longtext DEFAULT NULL,
  `inactive` int(250) DEFAULT 0,
  `user_id` int(11) DEFAULT NULL,
  `created` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custom_quotations`
--

INSERT INTO `custom_quotations` (`id`, `name`, `formcontent`, `inactive`, `user_id`, `created`) VALUES
(1, 'New Form', '{\"fields\":[{\"label\":\"Cleaner room neat\",\"field_type\":\"dropdown\",\"required\":true,\"field_options\":{\"options\":[{\"label\":\"Yes\",\"checked\":false},{\"label\":\"No\",\"checked\":false},{\"label\":\"Needs improvement \",\"checked\":false}],\"include_blank_option\":false},\"cid\":\"c2\"}]}', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `custom_quotation_requests`
--

CREATE TABLE `custom_quotation_requests` (
  `id` int(10) NOT NULL,
  `form` longtext DEFAULT NULL,
  `custom_quotation_id` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `allday` varchar(30) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT 0,
  `access` varchar(255) DEFAULT NULL,
  `reminder` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `value` float(20,2) DEFAULT 0.00,
  `vat` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT 0,
  `rebill` int(20) DEFAULT 0,
  `invoice_id` bigint(20) DEFAULT 0,
  `attachment` varchar(255) DEFAULT NULL,
  `attachment_description` varchar(255) DEFAULT NULL,
  `recurring` varchar(255) DEFAULT NULL,
  `recurring_until` varchar(255) DEFAULT NULL,
  `user_id` int(20) DEFAULT 0,
  `expense_id` int(20) DEFAULT 0,
  `next_payment` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `sum` float NOT NULL DEFAULT 0,
  `estimate_sent` varchar(255) NOT NULL DEFAULT '0',
  `estimate_status` varchar(255) NOT NULL DEFAULT '0',
  `project_id` int(11) DEFAULT 0,
  `reference` int(11) DEFAULT 0,
  `company_id` int(11) DEFAULT 0,
  `status` varchar(50) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `issue_date` varchar(20) DEFAULT NULL,
  `due_date` varchar(20) DEFAULT NULL,
  `sent_date` varchar(20) DEFAULT NULL,
  `paid_date` varchar(20) DEFAULT NULL,
  `terms` mediumtext DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `subscription_id` varchar(50) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `second_tax` varchar(5) DEFAULT NULL,
  `estimate` int(11) DEFAULT 0,
  `estimate_accepted_date` varchar(255) DEFAULT NULL,
  `paid` float DEFAULT 0,
  `outstanding` float DEFAULT NULL,
  `estimate_reference` int(10) DEFAULT 0,
  `po_number` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_has_items`
--

CREATE TABLE `invoice_has_items` (
  `id` int(10) NOT NULL,
  `invoice_id` int(11) DEFAULT 0,
  `item_id` int(11) DEFAULT 0,
  `amount` char(11) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `value` float DEFAULT 0,
  `name` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `task_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_has_payments`
--

CREATE TABLE `invoice_has_payments` (
  `id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) DEFAULT 0,
  `reference` varchar(255) DEFAULT NULL,
  `amount` float DEFAULT 0,
  `date` varchar(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `user_id` bigint(20) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `value` float DEFAULT 0,
  `type` varchar(45) DEFAULT NULL,
  `inactive` tinyint(4) DEFAULT 0,
  `description` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) DEFAULT 0,
  `source` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `state` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `zipcode` varchar(250) DEFAULT NULL,
  `language` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `mobile` varchar(250) DEFAULT NULL,
  `company` varchar(250) DEFAULT NULL,
  `tags` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `first_contact` varchar(250) DEFAULT NULL,
  `last_contact` varchar(250) DEFAULT NULL,
  `valid_until` varchar(250) DEFAULT NULL,
  `created` varchar(20) DEFAULT NULL,
  `modified` varchar(20) DEFAULT NULL,
  `private` varchar(20) DEFAULT '0',
  `custom` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT 0,
  `icon` varchar(255) DEFAULT NULL,
  `order` float DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lead_has_comments`
--

CREATE TABLE `lead_has_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `attachment_link` varchar(250) DEFAULT NULL,
  `datetime` varchar(250) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `user_id` bigint(20) DEFAULT 0,
  `lead_id` bigint(20) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lead_status`
--

CREATE TABLE `lead_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `order` float DEFAULT 0,
  `offset` bigint(200) DEFAULT 0,
  `limit` bigint(200) DEFAULT 50,
  `color` varchar(100) DEFAULT '#5071ab'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT 0,
  `media_id` int(11) DEFAULT 0,
  `from` varchar(120) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `datetime` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(41);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `icon` varchar(150) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `link`, `type`, `icon`, `sort`) VALUES
(1, 'Dashboard', 'dashboard', 'main', 'icon dripicons-meter', 1),
(2, 'Messages', 'messages', 'main', 'icon dripicons-message', 2),
(3, 'Projects', 'projects', 'main', 'icon dripicons-rocket', 3),
(4, 'Clients', 'clients', 'main', 'icon dripicons-user', 4),
(5, 'Invoices', 'invoices', 'main', 'icon dripicons-document', 5),
(6, 'Items', 'items', 'main', 'icon dripicons-shopping-bag', 7),
(7, 'Quotations', 'quotations', 'main', 'icon dripicons-blog', 8),
(8, 'Subscriptions', 'subscriptions', 'main', 'icon dripicons-retweet', 6),
(9, 'Settings', 'settings', 'main', 'icon dripicons-toggles', 20),
(10, 'QuickAccess', 'quickaccess', 'widget', '', 50),
(11, 'User Online', 'useronline', 'widget', '', 51),
(12, 'Estimates', 'estimates', 'main', 'icon dripicons-document-edit', 5),
(13, 'Expenses', 'expenses', 'main', 'icon dripicons-cart', 5),
(20, 'Calendar', 'calendar', 'main', 'icon dripicons-calendar', 8),
(33, 'Reports', 'reports', 'main', 'icon dripicons-graph-pie', 8),
(101, 'Projects', 'cprojects', 'client', 'icon dripicons-rocket', 2),
(102, 'Invoices', 'cinvoices', 'client', 'icon dripicons-document', 3),
(103, 'Messages', 'cmessages', 'client', 'icon dripicons-message', 1),
(104, 'Subscriptions', 'csubscriptions', 'client', 'icon dripicons-retweet', 4),
(105, 'Tickets', 'tickets', 'main', 'icon dripicons-ticket', 8),
(106, 'Tickets', 'ctickets', 'client', 'icon dripicons-ticket', 4),
(107, 'Estimates', 'cestimates', 'client', 'icon dripicons-document-edit', 3),
(108, 'Leads', 'leads', 'main', 'icon dripicons-phone', 4);

-- --------------------------------------------------------

--
-- Table structure for table `privatemessages`
--

CREATE TABLE `privatemessages` (
  `id` int(11) UNSIGNED NOT NULL,
  `status` varchar(150) DEFAULT NULL,
  `sender` varchar(250) DEFAULT NULL,
  `recipient` varchar(250) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `conversation` varchar(32) DEFAULT NULL,
  `deleted` int(11) DEFAULT 0,
  `attachment` varchar(255) DEFAULT NULL,
  `attachment_link` varchar(255) DEFAULT NULL,
  `receiver_delete` int(11) DEFAULT 0,
  `marked` int(1) DEFAULT 0,
  `read` int(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `reference` int(11) DEFAULT 0,
  `name` varchar(65) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start` varchar(20) DEFAULT NULL,
  `end` varchar(20) DEFAULT NULL,
  `progress` decimal(3,0) DEFAULT NULL,
  `phases` varchar(150) DEFAULT NULL,
  `tracking` int(11) DEFAULT 0,
  `time_spent` int(11) DEFAULT 0,
  `datetime` int(11) DEFAULT 0,
  `sticky` enum('1','0') DEFAULT '0',
  `category` varchar(150) DEFAULT NULL,
  `company_id` int(11) DEFAULT 0,
  `note` longtext DEFAULT NULL,
  `progress_calc` tinyint(4) DEFAULT 0,
  `hide_tasks` int(1) DEFAULT 0,
  `enable_client_tasks` int(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_has_activities`
--

CREATE TABLE `project_has_activities` (
  `id` bigint(20) NOT NULL,
  `project_id` bigint(20) DEFAULT 0,
  `user_id` bigint(20) DEFAULT 0,
  `client_id` bigint(20) DEFAULT 0,
  `datetime` varchar(250) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_has_files`
--

CREATE TABLE `project_has_files` (
  `id` int(10) NOT NULL,
  `project_id` int(10) DEFAULT 0,
  `user_id` int(10) DEFAULT 0,
  `client_id` int(10) DEFAULT 0,
  `type` varchar(80) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `filename` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `savename` varchar(200) DEFAULT NULL,
  `phase` varchar(100) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `download_counter` int(10) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_has_invoices`
--

CREATE TABLE `project_has_invoices` (
  `id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_has_milestones`
--

CREATE TABLE `project_has_milestones` (
  `id` int(11) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `due_date` varchar(255) DEFAULT NULL,
  `orderindex` int(11) DEFAULT 0,
  `start_date` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_has_tasks`
--

CREATE TABLE `project_has_tasks` (
  `id` int(10) NOT NULL,
  `project_id` int(10) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `public` int(10) DEFAULT NULL,
  `datetime` int(11) DEFAULT NULL,
  `due_date` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start_date` varchar(250) DEFAULT NULL,
  `value` float DEFAULT 0,
  `priority` smallint(6) DEFAULT 0,
  `time` int(11) DEFAULT NULL,
  `client_id` int(30) DEFAULT 0,
  `created_by_client` int(30) DEFAULT 0,
  `tracking` int(11) DEFAULT 0,
  `time_spent` int(11) DEFAULT 0,
  `milestone_id` int(11) DEFAULT 0,
  `invoice_id` int(60) DEFAULT 0,
  `milestone_order` int(11) DEFAULT 0,
  `task_order` int(11) DEFAULT 0,
  `progress` int(11) DEFAULT 0,
  `created_at` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_has_timesheets`
--

CREATE TABLE `project_has_timesheets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `time` varchar(250) DEFAULT '0',
  `task_id` int(11) DEFAULT 0,
  `client_id` int(11) DEFAULT 0,
  `start` varchar(250) DEFAULT '0',
  `end` varchar(250) DEFAULT '0',
  `invoice_id` int(11) DEFAULT 0,
  `description` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_has_workers`
--

CREATE TABLE `project_has_workers` (
  `id` int(10) NOT NULL,
  `project_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_reset`
--

CREATE TABLE `pw_reset` (
  `id` int(10) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `timestamp` varchar(250) DEFAULT NULL,
  `token` varchar(250) DEFAULT NULL,
  `user` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_reset`
--

INSERT INTO `pw_reset` (`id`, `email`, `timestamp`, `token`, `user`) VALUES
(7, 'm_lazarovski@hotmail.com', '1593464300', '8fe11e046472443a1ffc436a505869b8edc9868c97f8522bbff78e7ce521338b', 1);

-- --------------------------------------------------------

--
-- Table structure for table `queues`
--

CREATE TABLE `queues` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `inactive` tinyint(4) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queues`
--

INSERT INTO `queues` (`id`, `name`, `description`, `inactive`) VALUES
(1, 'Service', 'First service queue', 0),
(2, 'Second Level', 'Second Level Queue', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(11) NOT NULL,
  `q1` varchar(50) DEFAULT NULL,
  `q2` varchar(50) DEFAULT NULL,
  `q3` varchar(50) DEFAULT NULL,
  `q4` varchar(150) DEFAULT NULL,
  `q5` text DEFAULT NULL,
  `q6` varchar(50) DEFAULT NULL,
  `company` varchar(150) DEFAULT '-',
  `fullname` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(150) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `zip` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status` varchar(150) DEFAULT NULL,
  `user_id` int(50) DEFAULT 0,
  `replied` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module` varchar(250) DEFAULT NULL,
  `source_id` bigint(20) DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `email_notification` int(1) DEFAULT 0,
  `done` int(1) DEFAULT 0,
  `datetime` varchar(50) DEFAULT NULL,
  `sent_at` varchar(50) DEFAULT NULL,
  `user_id` int(20) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) NOT NULL,
  `reference` varchar(50) DEFAULT NULL,
  `company_id` int(10) DEFAULT 0,
  `status` varchar(50) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `issue_date` varchar(20) DEFAULT NULL,
  `end_date` varchar(20) DEFAULT NULL,
  `frequency` varchar(20) DEFAULT NULL,
  `next_payment` varchar(20) DEFAULT NULL,
  `terms` mediumtext DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `tax` varchar(250) DEFAULT NULL,
  `second_tax` varchar(255) DEFAULT NULL,
  `subscribed` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_has_items`
--

CREATE TABLE `subscription_has_items` (
  `id` int(10) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `amount` char(11) DEFAULT '0',
  `description` mediumtext DEFAULT NULL,
  `value` float DEFAULT 0,
  `name` varchar(250) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `task_has_comments`
--

CREATE TABLE `task_has_comments` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `datetime` varchar(20) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `attachment_link` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `text` text DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) NOT NULL,
  `from` varchar(250) DEFAULT NULL,
  `reference` varchar(250) DEFAULT NULL,
  `type_id` smallint(6) DEFAULT 1,
  `lock` smallint(6) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `client_id` int(11) DEFAULT 0,
  `company_id` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `escalation_time` int(11) DEFAULT 0,
  `priority` varchar(50) DEFAULT NULL,
  `created` int(11) DEFAULT 0,
  `queue_id` int(11) DEFAULT 0,
  `updated` tinyint(4) DEFAULT 0,
  `project_id` bigint(20) DEFAULT 0,
  `raw` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_has_articles`
--

CREATE TABLE `ticket_has_articles` (
  `id` bigint(20) NOT NULL,
  `ticket_id` int(11) DEFAULT 0,
  `from` varchar(250) NOT NULL,
  `reply_to` varchar(250) DEFAULT NULL,
  `to` varchar(250) DEFAULT NULL,
  `cc` varchar(250) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `datetime` varchar(250) DEFAULT NULL,
  `internal` int(10) DEFAULT 1,
  `user_id` bigint(20) DEFAULT 0,
  `note` int(1) DEFAULT 0,
  `raw` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_has_attachments`
--

CREATE TABLE `ticket_has_attachments` (
  `id` bigint(20) NOT NULL,
  `ticket_id` bigint(20) DEFAULT NULL,
  `filename` varchar(250) DEFAULT NULL,
  `savename` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `inactive` tinyint(4) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `description`, `inactive`) VALUES
(1, 'Service Request', 'Service Requests', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `firstname` varchar(120) DEFAULT NULL,
  `lastname` varchar(120) DEFAULT NULL,
  `hashed_password` varchar(128) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `status` enum('active','inactive','deleted') DEFAULT NULL,
  `admin` enum('0','1') DEFAULT '0',
  `created` timestamp NULL DEFAULT current_timestamp(),
  `userpic` varchar(250) DEFAULT 'no-pic.png',
  `title` varchar(150) DEFAULT NULL,
  `access` varchar(150) NOT NULL DEFAULT '1,2',
  `last_active` varchar(50) DEFAULT NULL,
  `last_login` varchar(50) DEFAULT NULL,
  `queue` bigint(20) DEFAULT 0,
  `token` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `hashed_password`, `email`, `status`, `admin`, `created`, `userpic`, `title`, `access`, `last_active`, `last_login`, `queue`, `token`, `language`, `signature`) VALUES
(1, 'Admin', 'Daniel', 'Graoroski', '67536c304e2d66634b44513b425421503867673a3030546d40476b3831623c4c62bce5775e73a3d7828b7ea22f054d4fd87e79948e6a136a25fd6ae4a225c55c', 'm_lazarovski@hotmail.com', 'active', '1', '2018-07-26 21:51:18', 'no-pic.png', 'Administrator', '1,2,3,4,108,5,12,13,8,6,7,20,33,105,9,10,11', '1588791204', '1588790440', 1, '45e95d96e3300b315aae5414f625a8a0', NULL, ''),
(3, 'chan', 'Chan', 'Chan', '7a4977292d6a434f246c212925393e2a5d2c54752f6f75642e4169665479376e93773f40d82eb392cb1478f6d3443c6a368bbaba056c7012e3ec77d28833bc3d', 'rsu2019dev@gmail.com', 'active', '1', '2020-05-06 18:42:45', 'no-pic.png', 'Mr', '1,2,3,4,108,5,12,13,8,6,7,20,33,105,9,10,11', '0', '1593163166', 1, '45e95d96e3300b315aae5414f625a8a0', NULL, ''),
(4, 'Matt', 'Matt', 'Lazarovski', '4c6926462e636e722e2d4467596d623b4a64407344792f717b784e55306b2556f6ea03aa9aa8e9f3186ec2d8f49ed12b9d13aa90361bbfe9b1abd01bf2277a1d', 'metodija.l@outlook.com', 'active', '1', '2020-05-06 18:47:44', 'no-pic.png', 'Mr', '1,2,3,4,108,5,12,13,8,6,7,20,33,105,9,10,11', '0', '1588791005', 1, NULL, NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article_has_attachments`
--
ALTER TABLE `article_has_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_has_admins`
--
ALTER TABLE `company_has_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core`
--
ALTER TABLE `core`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_quotations`
--
ALTER TABLE `custom_quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_quotation_requests`
--
ALTER TABLE `custom_quotation_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_has_items`
--
ALTER TABLE `invoice_has_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_has_payments`
--
ALTER TABLE `invoice_has_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_has_comments`
--
ALTER TABLE `lead_has_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lead_status`
--
ALTER TABLE `lead_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privatemessages`
--
ALTER TABLE `privatemessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_has_activities`
--
ALTER TABLE `project_has_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_has_files`
--
ALTER TABLE `project_has_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_has_invoices`
--
ALTER TABLE `project_has_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_has_milestones`
--
ALTER TABLE `project_has_milestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_has_tasks`
--
ALTER TABLE `project_has_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_has_timesheets`
--
ALTER TABLE `project_has_timesheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_has_workers`
--
ALTER TABLE `project_has_workers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_reset`
--
ALTER TABLE `pw_reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queues`
--
ALTER TABLE `queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_has_items`
--
ALTER TABLE `subscription_has_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_has_comments`
--
ALTER TABLE `task_has_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_has_articles`
--
ALTER TABLE `ticket_has_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_has_attachments`
--
ALTER TABLE `ticket_has_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article_has_attachments`
--
ALTER TABLE `article_has_attachments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_has_admins`
--
ALTER TABLE `company_has_admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core`
--
ALTER TABLE `core`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_quotations`
--
ALTER TABLE `custom_quotations`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_quotation_requests`
--
ALTER TABLE `custom_quotation_requests`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_has_items`
--
ALTER TABLE `invoice_has_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_has_payments`
--
ALTER TABLE `invoice_has_payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_has_comments`
--
ALTER TABLE `lead_has_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lead_status`
--
ALTER TABLE `lead_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `privatemessages`
--
ALTER TABLE `privatemessages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_has_activities`
--
ALTER TABLE `project_has_activities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_has_files`
--
ALTER TABLE `project_has_files`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_has_invoices`
--
ALTER TABLE `project_has_invoices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_has_milestones`
--
ALTER TABLE `project_has_milestones`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_has_tasks`
--
ALTER TABLE `project_has_tasks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_has_timesheets`
--
ALTER TABLE `project_has_timesheets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_has_workers`
--
ALTER TABLE `project_has_workers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_reset`
--
ALTER TABLE `pw_reset`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `queues`
--
ALTER TABLE `queues`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_has_items`
--
ALTER TABLE `subscription_has_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_has_comments`
--
ALTER TABLE `task_has_comments`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_has_articles`
--
ALTER TABLE `ticket_has_articles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_has_attachments`
--
ALTER TABLE `ticket_has_attachments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
