-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2021 at 10:57 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawongan`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-06-28 07:30:39', '2021-06-28 07:30:39', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'LA-wongan', 'yes'),
(4, 'blogdescription', 'Cari Pekerjaan Sesuai Passionmu!', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'hilmyddr@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:136:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:17:\"jm-ajax/([^/]*)/?\";s:29:\"index.php?jm-ajax=$matches[1]\";s:27:\"index.php/jm-ajax/([^/]*)/?\";s:29:\"index.php?jm-ajax=$matches[1]\";s:56:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:51:\"category/(.+?)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:53:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:48:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:54:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:49:\"type/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:66:\"portfolio-category/(.+?)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:64:\"index.php?rara_portfolio_categories=$matches[1]&feed=$matches[2]\";s:61:\"portfolio-category/(.+?)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:64:\"index.php?rara_portfolio_categories=$matches[1]&feed=$matches[2]\";s:33:\"portfolio-category/(.+?)/embed/?$\";s:58:\"index.php?rara_portfolio_categories=$matches[1]&embed=true\";s:45:\"portfolio-category/(.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?rara_portfolio_categories=$matches[1]&paged=$matches[2]\";s:27:\"portfolio-category/(.+?)/?$\";s:47:\"index.php?rara_portfolio_categories=$matches[1]\";s:31:\"job/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"job/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"job/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"job/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"job/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"job/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"job/([^/]+)/embed/?$\";s:44:\"index.php?job_listing=$matches[1]&embed=true\";s:24:\"job/([^/]+)/trackback/?$\";s:38:\"index.php?job_listing=$matches[1]&tb=1\";s:32:\"job/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?job_listing=$matches[1]&paged=$matches[2]\";s:39:\"job/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?job_listing=$matches[1]&cpage=$matches[2]\";s:28:\"job/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?job_listing=$matches[1]&page=$matches[2]\";s:20:\"job/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"job/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"job/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"job/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"job/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"job/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:47:\"index.php?rara-portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:41:\"index.php?rara-portfolio=$matches[1]&tb=1\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?rara-portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?rara-portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?rara-portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:41:\"feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:36:\"(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:50:\"comments/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:45:\"comments/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:53:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:48:\"search/(.+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:56:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:51:\"author/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:78:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:73:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:65:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:60:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:52:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:47:\"([0-9]{4})/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:97:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:92:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:86:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:81:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:86:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:81:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:49:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:44:\"(.?.+?)/(feed|rdf|rss|rss2|atom|job_feed)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";i:1;s:43:\"raratheme-companion/raratheme-companion.php\";i:2;s:33:\"wp-job-manager/wp-job-manager.php\";i:3;s:39:\"wpjm-extra-fields/wpjm-extra-fields.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'jobscout', 'yes'),
(41, 'stylesheet', 'jobscout', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:4:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:4;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:1;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:516:\"<img class=\"size-full wp-image-31 alignnone\" src=\"http://rarathemesdemo.com/job-board-pro/wp-content/uploads/sites/91/2019/01/logo-15.png\" alt=\"\" width=\"64\" height=\"64\" />\r\n\r\n\r\nA job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment. Many people have multiple jobs. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '15', 'yes'),
(82, 'page_on_front', '13', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '66', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '0', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1640417439', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:79:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:19:\"manage_job_listings\";b:1;s:16:\"edit_job_listing\";b:1;s:16:\"read_job_listing\";b:1;s:18:\"delete_job_listing\";b:1;s:17:\"edit_job_listings\";b:1;s:24:\"edit_others_job_listings\";b:1;s:20:\"publish_job_listings\";b:1;s:25:\"read_private_job_listings\";b:1;s:19:\"delete_job_listings\";b:1;s:27:\"delete_private_job_listings\";b:1;s:29:\"delete_published_job_listings\";b:1;s:26:\"delete_others_job_listings\";b:1;s:25:\"edit_private_job_listings\";b:1;s:27:\"edit_published_job_listings\";b:1;s:24:\"manage_job_listing_terms\";b:1;s:22:\"edit_job_listing_terms\";b:1;s:24:\"delete_job_listing_terms\";b:1;s:24:\"assign_job_listing_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"employer\";a:2:{s:4:\"name\";s:8:\"Employer\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:10:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:13:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";i:6;s:27:\"raratheme_featured_widget-1\";i:7;s:12:\"categories-3\";i:8;s:24:\"raratheme_popular_post-1\";i:9;s:30:\"rtc_pro_twitter_feeds_widget-1\";i:10;s:18:\"rtc_social_links-1\";i:11;s:13:\"custom_html-1\";i:12;s:26:\"rtc_contact_social_links-1\";}s:3:\"cta\";a:1:{i:0;s:32:\"raratheme_companion_cta_widget-1\";}s:11:\"testimonial\";a:4:{i:0;s:25:\"rrtc_testimonial_widget-1\";i:1;s:25:\"rrtc_testimonial_widget-2\";i:2;s:25:\"rrtc_testimonial_widget-3\";i:3;s:25:\"rrtc_testimonial_widget-4\";}s:6:\"client\";a:1:{i:0;s:30:\"raratheme_client_logo_widget-1\";}s:10:\"footer-one\";a:1:{i:0;s:6:\"text-1\";}s:10:\"footer-two\";a:1:{i:0;s:24:\"raratheme_popular_post-2\";}s:12:\"footer-three\";a:1:{i:0;s:12:\"categories-4\";}s:11:\"footer-four\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:10:{i:1624959040;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1624959257;a:1:{s:34:\"job_manager_check_for_expired_jobs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1624995040;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1625038240;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625038260;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625038263;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625038457;a:2:{s:31:\"job_manager_delete_old_previews\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:31:\"job_manager_email_daily_notices\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1625556640;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1626161659;a:1:{s:42:\"job_manager_usage_tracking_send_usage_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:36:\"job_manager_usage_tracking_two_weeks\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'nonce_key', 'X;B~!`sSaU8X}@<`SxH5NCsh7=*0NabB+^TG).3!?vAH/8..HikKLy1;4uUxk1+i', 'no'),
(115, 'nonce_salt', 'kpSP9j&A8CH.a!DMKq$Oo^&$/*{R6@1/Kb?lL_HR*mEFTCy/u<X4q5tHzfkRBX6j', 'no'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:2:{i:1;a:2:{s:5:\"title\";s:0:\"\";s:7:\"content\";s:353:\"<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3531.89857119439!2d85.33659901559545!3d27.72041778278659!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb196dcf0d2733%3A0xfbfefe8e6ac65654!2sCodewing+Solutions!5e0!3m2!1sen!2snp!4v1543223725024\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1624865538;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.7.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.7.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.7.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1624954498;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:0:{}}', 'no'),
(130, 'logged_in_key', 'l&uA`R%k+t!n F`{-MvI&1mYX&{14)U4U/{wL9+Q(f?2Hyk{aQraJdVtxc-PnO%d', 'no'),
(131, 'logged_in_salt', 'G;0%gRi#tz$g/PlyWTQ^G^X{dp{v7SaI(2GOykUAYsy8$q4)!FeP=oSt-m_xk%}1', 'no'),
(132, 'auth_key', 'D^;k;vFIi)32Q=;Y$:I0BFwFP zzY8W;@gPgw;>^rz2jM?]9%v;6B)6W!jlYC/Ff', 'no'),
(133, 'auth_salt', '/O<I;r6y<]wQ<Q5fwsaa(YML&b/<G(cPJ3Eh9e$6xIzl/Ov>x1x,Bs,!)7ppFBEf', 'no'),
(134, '_site_transient_timeout_browser_d57bf7af33bc5b7923c68ca46271944f', '1625470261', 'no'),
(135, '_site_transient_browser_d57bf7af33bc5b7923c68ca46271944f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"91.0.4472.114\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(136, '_site_transient_timeout_php_check_4fc3448ce51aace1ce89be1213761296', '1625470262', 'no'),
(137, '_site_transient_php_check_4fc3448ce51aace1ce89be1213761296', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(141, 'can_compress_scripts', '1', 'no'),
(154, 'finished_updating_comment_type', '1', 'yes'),
(158, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1624954500;s:7:\"checked\";a:4:{s:8:\"jobscout\";s:5:\"1.1.2\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:8:\"jobscout\";a:6:{s:5:\"theme\";s:8:\"jobscout\";s:11:\"new_version\";s:5:\"1.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/themes/jobscout/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/theme/jobscout.1.1.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:3:\"5.6\";}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(159, 'current_theme', 'JobScout', 'yes'),
(160, 'theme_mods_jobscout', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:26;s:9:\"secondary\";i:27;}s:18:\"custom_css_post_id\";i:-1;s:12:\"post_job_url\";s:38:\"http://localhost/wordpress/post-a-job/\";}', 'yes'),
(161, 'theme_switched', '', 'yes'),
(169, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1624954500;s:7:\"checked\";a:6:{s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";s:5:\"1.2.9\";s:43:\"raratheme-companion/raratheme-companion.php\";s:5:\"1.3.7\";s:39:\"wpjm-extra-fields/wpjm-extra-fields.php\";s:5:\"1.3.0\";s:33:\"wp-job-manager/wp-job-manager.php\";s:6:\"1.35.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/rara-one-click-demo-import\";s:4:\"slug\";s:26:\"rara-one-click-demo-import\";s:6:\"plugin\";s:57:\"rara-one-click-demo-import/rara-one-click-demo-import.php\";s:11:\"new_version\";s:5:\"1.2.9\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/rara-one-click-demo-import/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/rara-one-click-demo-import.1.2.9.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/rara-one-click-demo-import/assets/icon-128x128.png?rev=1939066\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/rara-one-click-demo-import/assets/banner-772x250.png?rev=1939071\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"raratheme-companion/raratheme-companion.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/raratheme-companion\";s:4:\"slug\";s:19:\"raratheme-companion\";s:6:\"plugin\";s:43:\"raratheme-companion/raratheme-companion.php\";s:11:\"new_version\";s:5:\"1.3.7\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/raratheme-companion/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/raratheme-companion.1.3.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/raratheme-companion/assets/icon-256x256.png?rev=1858916\";s:2:\"1x\";s:72:\"https://ps.w.org/raratheme-companion/assets/icon-128x128.png?rev=1858915\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/raratheme-companion/assets/banner-1544x500.png?rev=1858912\";s:2:\"1x\";s:74:\"https://ps.w.org/raratheme-companion/assets/banner-772x250.png?rev=1858911\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"wpjm-extra-fields/wpjm-extra-fields.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/wpjm-extra-fields\";s:4:\"slug\";s:17:\"wpjm-extra-fields\";s:6:\"plugin\";s:39:\"wpjm-extra-fields/wpjm-extra-fields.php\";s:11:\"new_version\";s:5:\"1.3.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/wpjm-extra-fields/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wpjm-extra-fields.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wpjm-extra-fields/assets/icon-256x256.png?rev=2289131\";s:2:\"1x\";s:70:\"https://ps.w.org/wpjm-extra-fields/assets/icon-256x256.png?rev=2289131\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wpjm-extra-fields/assets/banner-772x250.png?rev=2289131\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wp-job-manager/wp-job-manager.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-job-manager\";s:4:\"slug\";s:14:\"wp-job-manager\";s:6:\"plugin\";s:33:\"wp-job-manager/wp-job-manager.php\";s:11:\"new_version\";s:6:\"1.35.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-job-manager/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-job-manager.1.35.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-job-manager/assets/icon-256x256.png?rev=1035478\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-job-manager/assets/icon-128x128.png?rev=1035478\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/wp-job-manager/assets/banner-772x250.png?rev=1035478\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(170, 'rtc_queue_flush_rewrite_rules', 'no', 'yes'),
(171, 'widget_raratheme_companion_cta_widget', 'a:2:{i:1;a:11:{s:5:\"title\";s:22:\"Build Your Online Team\";s:7:\"content\";s:84:\"We\'ll help you find it. We\'re your first step to becoming everything you want to be.\";s:13:\"button_number\";s:1:\"1\";s:16:\"button_alignment\";s:8:\"centered\";s:11:\"button1_url\";s:52:\"https://rarathemes.com/wordpress-themes/jobscout-pro\";s:11:\"button2_url\";s:0:\"\";s:12:\"button1_text\";s:10:\"Learn More\";s:12:\"button2_text\";s:0:\"\";s:15:\"widget-bg-color\";s:7:\"#2ace5e\";s:15:\"widget-bg-image\";s:2:\"21\";s:6:\"target\";s:1:\"1\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(172, 'widget_rtc_contact_social_links', 'a:2:{i:1;a:7:{s:5:\"title\";s:12:\"Get in Touch\";s:6:\"target\";N;s:4:\"size\";N;s:11:\"description\";s:49:\"For more information use the information below.\r\n\";s:5:\"phone\";s:14:\"4 456 921 5544\";s:5:\"email\";s:17:\"jobboard@mail.com\";s:7:\"address\";s:33:\"1234 Madeup Street, Hometown, USA\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(173, 'widget_raratheme_featured_widget', 'a:2:{i:1;a:3:{s:8:\"readmore\";s:9:\"Read More\";s:9:\"post_list\";i:109;s:14:\"show_thumbnail\";i:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(174, 'widget_rrtc_icon_text_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(175, 'widget_raratheme_image_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(176, 'widget_raratheme_companion_stat_counter_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(177, 'widget_raratheme_popular_post', 'a:3:{i:1;a:8:{s:5:\"title\";s:13:\"Popular Posts\";s:8:\"num_post\";i:3;s:14:\"show_thumbnail\";i:1;s:13:\"show_postdate\";s:0:\"\";s:8:\"based_on\";s:5:\"views\";s:11:\"comment_num\";s:0:\"\";s:10:\"view_count\";s:0:\"\";s:6:\"target\";s:0:\"\";}i:2;a:8:{s:5:\"title\";s:13:\"Popular Posts\";s:8:\"num_post\";i:3;s:14:\"show_thumbnail\";i:1;s:13:\"show_postdate\";i:1;s:8:\"based_on\";s:5:\"views\";s:11:\"comment_num\";s:0:\"\";s:10:\"view_count\";s:0:\"\";s:6:\"target\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(178, 'widget_raratheme_recent_post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(179, 'widget_rtc_social_links', 'a:2:{i:1;a:5:{s:5:\"title\";s:20:\"Subscribe and Follow\";s:6:\"target\";N;s:4:\"size\";N;s:6:\"social\";a:6:{i:1;s:32:\"https://facebook.com/rarathemehq\";i:2;s:31:\"https://twitter.com/rarathemehq\";i:3;s:20:\"https://linkedin.com\";i:4;s:21:\"https://pinterest.com\";i:5;s:25:\"https://google-plus-g.com\";i:6;s:21:\"https://instagram.com\";}s:14:\"social_profile\";a:6:{i:1;s:8:\"facebook\";i:2;s:7:\"twitter\";i:3;s:8:\"linkedin\";i:4;s:9:\"pinterest\";i:5;s:13:\"google-plus-g\";i:6;s:9:\"instagram\";}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(180, 'widget_rrtc_testimonial_widget', 'a:5:{i:1;a:4:{s:4:\"name\";s:15:\"Teressa Jackson\";s:11:\"testimonial\";s:210:\"We never thought of finding to stand alone, we\'ll never let you fall. Don\'t need permission to decide what you believe. You gotta learn something when we meet you after school. I said jump, down on Jump Street.\";s:5:\"image\";s:2:\"48\";s:11:\"designation\";s:13:\"Art Direction\";}i:2;a:4:{s:4:\"name\";s:10:\"Ben Parker\";s:11:\"testimonial\";s:249:\"Dance your cares away, worry\'s for another day. Let the music play, down at Fraggle Rock! Work you cares away, dancing\'s for another day. Let the Fraggles play, We\'re Gobo, Mokey, Wembley, Boober, Red! Dance your cares away, worry\'s for another day.\";s:5:\"image\";s:2:\"50\";s:11:\"designation\";s:20:\"Marketing Superviser\";}i:3;a:4:{s:4:\"name\";s:15:\"Amelie Anderson\";s:11:\"testimonial\";s:249:\"An endorsement is typically a well-known influencer giving their public support for a brand. But a testimonial is from a customer or client. They may be an unknown person to the reader, but they have personal experience with the product or service. \";s:5:\"image\";s:2:\"52\";s:11:\"designation\";s:18:\"CEO of XYZ Company\";}i:4;a:4:{s:4:\"name\";s:14:\"Thomas Walters\";s:11:\"testimonial\";s:265:\"Such a review may evaluate the book on the basis of personal taste. Reviewers may use the occasion of a book review for an extended essay that can be closely or loosely related to the subject of the book, or to promulgate their own ideas on the topic of a fiction .\";s:5:\"image\";s:2:\"53\";s:11:\"designation\";s:16:\"Developer at ABC\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(181, 'widget_rrtc_description_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(182, 'widget_raratheme_client_logo_widget', 'a:2:{i:1;a:5:{s:5:\"title\";s:0:\"\";s:10:\"display_bw\";s:0:\"\";s:6:\"target\";s:0:\"\";s:5:\"image\";a:6:{i:1;s:2:\"65\";i:2;s:2:\"64\";i:3;s:2:\"63\";i:4;s:2:\"62\";i:5;s:2:\"61\";i:6;s:2:\"60\";}s:4:\"link\";a:6:{i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";i:4;s:1:\"#\";i:5;s:1:\"#\";i:6;s:1:\"#\";}}s:12:\"_multiwidget\";i:1;}', 'yes'),
(183, 'widget_raratheme_companion_faqs_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(184, 'widget_raratheme_featured_page_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(185, 'widget_rtc_pro_twitter_feeds_widget', 'a:2:{i:1;a:7:{s:5:\"title\";s:12:\"Follow Us On\";s:8:\"username\";s:12:\"@rarathemeHQ\";s:9:\"widget-bg\";s:9:\"#ccc00333\";s:11:\"widget-link\";s:9:\"#00000000\";s:5:\"width\";i:400;s:12:\"tweetstoshow\";i:1;s:5:\"theme\";s:5:\"light\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(186, 'widget_rara_posts_category_slider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(187, 'widget_raratheme_advertisement_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(188, 'widget_raratheme_author_bio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(189, 'widget_raratheme_custom_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(190, 'widget_raratheme_facebook_page_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(191, 'widget_raratheme_snapcode_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(192, 'widget_raratheme_pinterest_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(193, 'widget_raratheme_image_text_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(194, 'job_manager_permalinks', '{\"jobs_archive\":\"\"}', 'yes'),
(195, '_transient_jm_get_job_listing_type-transient-version', '1624866258', 'yes'),
(201, 'job_manager_installed_terms', '1', 'yes'),
(202, 'job_manager_admin_notices', '[\"core_setup\"]', 'no'),
(203, 'wp_job_manager_version', '1.35.1', 'yes'),
(204, 'widget_widget_recent_jobs', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(205, 'widget_widget_featured_jobs', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(207, 'job_manager_date_format', 'relative', 'yes'),
(208, 'job_manager_google_maps_api_key', '', 'yes'),
(209, 'job_manager_delete_data_on_uninstall', '0', 'yes'),
(210, 'job_manager_usage_tracking_enabled', '0', 'yes'),
(211, 'job_manager_per_page', '10', 'yes'),
(212, 'job_manager_hide_filled_positions', '0', 'yes'),
(213, 'job_manager_hide_expired', '0', 'yes'),
(214, 'job_manager_hide_expired_content', '1', 'yes'),
(215, 'job_manager_enable_categories', '0', 'yes'),
(216, 'job_manager_enable_default_category_multiselect', '0', 'yes'),
(217, 'job_manager_category_filter_type', 'any', 'yes'),
(218, 'job_manager_enable_types', '1', 'yes'),
(219, 'job_manager_multi_job_type', '0', 'yes'),
(220, 'job_manager_user_requires_account', '1', 'yes'),
(221, 'job_manager_enable_registration', '0', 'yes'),
(222, 'job_manager_generate_username_from_email', '1', 'yes'),
(223, 'job_manager_use_standard_password_setup_email', '1', 'yes'),
(224, 'job_manager_registration_role', 'employer', 'yes'),
(225, 'job_manager_submission_requires_approval', '1', 'yes'),
(226, 'job_manager_user_can_edit_pending_submissions', '0', 'yes'),
(227, 'job_manager_user_edit_published_submissions', 'yes', 'yes'),
(228, 'job_manager_submission_duration', '30', 'yes'),
(229, 'job_manager_allowed_application_method', '', 'yes'),
(230, 'job_manager_recaptcha_label', 'Are you human?', 'yes'),
(231, 'job_manager_recaptcha_site_key', '', 'yes'),
(232, 'job_manager_recaptcha_secret_key', '', 'yes'),
(233, 'job_manager_enable_recaptcha_job_submission', '0', 'yes'),
(234, 'job_manager_submit_job_form_page_id', '', 'yes'),
(235, 'job_manager_job_dashboard_page_id', '', 'yes'),
(236, 'job_manager_jobs_page_id', '', 'yes'),
(237, 'job_manager_email_admin_new_job', 'a:2:{s:7:\"enabled\";s:1:\"1\";s:10:\"plain_text\";s:1:\"0\";}', 'yes'),
(238, 'job_manager_email_admin_updated_job', 'a:2:{s:7:\"enabled\";s:1:\"1\";s:10:\"plain_text\";s:1:\"0\";}', 'yes'),
(239, 'job_manager_email_admin_expiring_job', 'a:3:{s:7:\"enabled\";s:1:\"0\";s:10:\"plain_text\";s:1:\"0\";s:18:\"notice_period_days\";s:1:\"1\";}', 'yes'),
(240, 'job_manager_email_employer_expiring_job', 'a:3:{s:7:\"enabled\";s:1:\"0\";s:10:\"plain_text\";s:1:\"0\";s:18:\"notice_period_days\";s:1:\"1\";}', 'yes'),
(241, '_transient_timeout_jm_pending_job_listing_count_user_1', '1625470460', 'no'),
(242, '_transient_jm_pending_job_listing_count_user_1', '0', 'no'),
(243, '_transient_jm_get_category-transient-version', '1624866259', 'yes'),
(244, '_transient_jm_get_rara_portfolio_categories-transient-version', '1624866259', 'yes'),
(245, '_transient_jm_get_nav_menu-transient-version', '1624866258', 'yes'),
(248, '_transient_get_job_listings-transient-version', '1624866257', 'yes'),
(249, 'category_children', 'a:0:{}', 'yes'),
(250, 'rara_portfolio_categories_children', 'a:0:{}', 'yes'),
(251, 'job_listing_type_children', 'a:0:{}', 'yes'),
(252, 'woocommerce_demo_store', 'no', 'yes'),
(253, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'yes'),
(254, 'woocommerce_shop_page_display', '', 'yes'),
(255, 'woocommerce_category_archive_display', '', 'yes'),
(256, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(257, 'woocommerce_catalog_columns', '4', 'yes'),
(258, 'woocommerce_catalog_rows', '4', 'yes'),
(259, 'woocommerce_single_image_width', '600', 'yes'),
(260, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(261, 'woocommerce_thumbnail_cropping', '1:1', 'yes'),
(262, 'woocommerce_thumbnail_cropping_custom_width', '4', 'yes'),
(263, 'woocommerce_thumbnail_cropping_custom_height', '3', 'yes'),
(264, 'woocommerce_checkout_company_field', 'optional', 'yes'),
(265, 'woocommerce_checkout_address_2_field', 'optional', 'yes'),
(266, 'woocommerce_checkout_phone_field', 'required', 'yes'),
(267, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(268, 'woocommerce_checkout_terms_and_conditions_checkbox_text', 'I have read and agree to the website [terms]', 'yes'),
(269, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(270, 'woocommerce_terms_page_id', '', 'yes'),
(271, 'nav_menus_created_posts', 'a:0:{}', 'yes'),
(284, '_transient_timeout_jm_d00f8bc78bac379e8d1009e0cb944f881624866257', '1625040897', 'no'),
(285, '_transient_jm_d00f8bc78bac379e8d1009e0cb944f881624866257', '{\"posts\":[{\"ID\":74,\"post_author\":\"1\",\"post_date\":\"2019-01-23 06:12:23\",\"post_date_gmt\":\"2019-01-23 06:12:23\",\"post_content\":\"A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \\\"for a living\\\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\\r\\n\\r\\nAn activity that requires a person\'s mental or physical effort is work as in \\\"a day\'s work\\\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\\r\\n\\r\\nTypes of jobs\\r\\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\\r\\n\\r\\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\\r\\n\\r\\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\\r\\n\\r\\nSome jobs require specific training or an academic degree.\\r\\n\\r\\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\\r\\n\\r\\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\\r\\n\\r\\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.\",\"post_title\":\"C Developer (Senior) C.Net\",\"post_excerpt\":\"\",\"post_status\":\"publish\",\"comment_status\":\"closed\",\"ping_status\":\"closed\",\"post_password\":\"\",\"post_name\":\"c-developer-senior-c-net\",\"to_ping\":\"\",\"pinged\":\"\",\"post_modified\":\"2019-01-23 06:12:23\",\"post_modified_gmt\":\"2019-01-23 06:12:23\",\"post_content_filtered\":\"\",\"post_parent\":0,\"guid\":\"http:\\/\\/rarathemesdemo.com\\/jobscout-pro\\/?post_type=job_listing&amp;p=74\",\"menu_order\":-1,\"post_type\":\"job_listing\",\"post_mime_type\":\"\",\"comment_count\":\"0\",\"filter\":\"raw\"},{\"ID\":45,\"post_author\":\"1\",\"post_date\":\"2019-01-22 10:33:57\",\"post_date_gmt\":\"2019-01-22 10:33:57\",\"post_content\":\"A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \\\"for a living\\\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\\r\\n\\r\\nAn activity that requires a person\'s mental or physical effort is work as in \\\"a day\'s work\\\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\\r\\n\\r\\nTypes of jobs\\r\\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\\r\\n\\r\\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\\r\\n\\r\\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\\r\\n\\r\\nSome jobs require specific training or an academic degree.\\r\\n\\r\\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\\r\\n\\r\\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\\r\\n\\r\\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.\",\"post_title\":\"Web Designer\\/Developer\",\"post_excerpt\":\"\",\"post_status\":\"publish\",\"comment_status\":\"closed\",\"ping_status\":\"closed\",\"post_password\":\"\",\"post_name\":\"web-designer-developer\",\"to_ping\":\"\",\"pinged\":\"\",\"post_modified\":\"2019-01-22 10:33:57\",\"post_modified_gmt\":\"2019-01-22 10:33:57\",\"post_content_filtered\":\"\",\"post_parent\":0,\"guid\":\"http:\\/\\/rarathemesdemo.com\\/jobscout-pro\\/?post_type=job_listing&amp;p=45\",\"menu_order\":-1,\"post_type\":\"job_listing\",\"post_mime_type\":\"\",\"comment_count\":\"0\",\"filter\":\"raw\"},{\"ID\":928,\"post_author\":\"1\",\"post_date\":\"2019-01-24 11:39:11\",\"post_date_gmt\":\"2019-01-24 11:39:11\",\"post_content\":\"A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \\\"for a living\\\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\\r\\n\\r\\nAn activity that requires a person\'s mental or physical effort is work as in \\\"a day\'s work\\\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\\r\\n\\r\\nTypes of jobs\\r\\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\\r\\n\\r\\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\\r\\n\\r\\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\\r\\n\\r\\nSome jobs require specific training or an academic degree.\\r\\n\\r\\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\\r\\n\\r\\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\\r\\n\\r\\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.\",\"post_title\":\"Administrative Assistant\",\"post_excerpt\":\"\",\"post_status\":\"publish\",\"comment_status\":\"closed\",\"ping_status\":\"closed\",\"post_password\":\"\",\"post_name\":\"administrative-assistant\",\"to_ping\":\"\",\"pinged\":\"\",\"post_modified\":\"2019-01-24 11:39:11\",\"post_modified_gmt\":\"2019-01-24 11:39:11\",\"post_content_filtered\":\"\",\"post_parent\":0,\"guid\":\"http:\\/\\/rarathemesdemo.com\\/jobscout-pro\\/?post_type=job_listing&amp;p=928\",\"menu_order\":0,\"post_type\":\"job_listing\",\"post_mime_type\":\"\",\"comment_count\":\"0\",\"filter\":\"raw\"},{\"ID\":923,\"post_author\":\"1\",\"post_date\":\"2019-01-24 11:33:47\",\"post_date_gmt\":\"2019-01-24 11:33:47\",\"post_content\":\"A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \\\"for a living\\\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\\r\\n\\r\\nAn activity that requires a person\'s mental or physical effort is work as in \\\"a day\'s work\\\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\\r\\n\\r\\nTypes of jobs\\r\\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\\r\\n\\r\\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\\r\\n\\r\\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\\r\\n\\r\\nSome jobs require specific training or an academic degree.\\r\\n\\r\\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\\r\\n\\r\\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\\r\\n\\r\\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.\",\"post_title\":\"House Manager And Personal Assistant\",\"post_excerpt\":\"\",\"post_status\":\"publish\",\"comment_status\":\"closed\",\"ping_status\":\"closed\",\"post_password\":\"\",\"post_name\":\"house-manager-and-personal-assistant\",\"to_ping\":\"\",\"pinged\":\"\",\"post_modified\":\"2019-01-24 11:33:47\",\"post_modified_gmt\":\"2019-01-24 11:33:47\",\"post_content_filtered\":\"\",\"post_parent\":0,\"guid\":\"http:\\/\\/rarathemesdemo.com\\/jobscout-pro\\/?post_type=job_listing&amp;p=923\",\"menu_order\":0,\"post_type\":\"job_listing\",\"post_mime_type\":\"\",\"comment_count\":\"0\",\"filter\":\"raw\"},{\"ID\":922,\"post_author\":\"1\",\"post_date\":\"2019-01-24 11:28:27\",\"post_date_gmt\":\"2019-01-24 11:28:27\",\"post_content\":\"A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \\\"for a living\\\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\\r\\n\\r\\nAn activity that requires a person\'s mental or physical effort is work as in \\\"a day\'s work\\\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\\r\\n\\r\\nTypes of jobs\\r\\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\\r\\n\\r\\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\\r\\n\\r\\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\\r\\n\\r\\nSome jobs require specific training or an academic degree.\\r\\n\\r\\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\\r\\n\\r\\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\\r\\n\\r\\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.\",\"post_title\":\"Us Post Office Job Openings\",\"post_excerpt\":\"\",\"post_status\":\"publish\",\"comment_status\":\"closed\",\"ping_status\":\"closed\",\"post_password\":\"\",\"post_name\":\"us-post-office-job-openings\",\"to_ping\":\"\",\"pinged\":\"\",\"post_modified\":\"2019-01-24 11:28:27\",\"post_modified_gmt\":\"2019-01-24 11:28:27\",\"post_content_filtered\":\"\",\"post_parent\":0,\"guid\":\"http:\\/\\/rarathemesdemo.com\\/jobscout-pro\\/?post_type=job_listing&amp;p=922\",\"menu_order\":0,\"post_type\":\"job_listing\",\"post_mime_type\":\"\",\"comment_count\":\"0\",\"filter\":\"raw\"},{\"ID\":921,\"post_author\":\"1\",\"post_date\":\"2019-01-24 11:24:13\",\"post_date_gmt\":\"2019-01-24 11:24:13\",\"post_content\":\"A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \\\"for a living\\\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\\r\\n\\r\\nAn activity that requires a person\'s mental or physical effort is work as in \\\"a day\'s work\\\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\\r\\n\\r\\nTypes of jobs\\r\\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\\r\\n\\r\\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\\r\\n\\r\\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\\r\\n\\r\\nSome jobs require specific training or an academic degree.\\r\\n\\r\\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\\r\\n\\r\\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\\r\\n\\r\\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.\",\"post_title\":\"Clerk I - Base Post Office\",\"post_excerpt\":\"\",\"post_status\":\"publish\",\"comment_status\":\"closed\",\"ping_status\":\"closed\",\"post_password\":\"\",\"post_name\":\"clerk-i-base-post-office\",\"to_ping\":\"\",\"pinged\":\"\",\"post_modified\":\"2019-01-24 11:24:13\",\"post_modified_gmt\":\"2019-01-24 11:24:13\",\"post_content_filtered\":\"\",\"post_parent\":0,\"guid\":\"http:\\/\\/rarathemesdemo.com\\/jobscout-pro\\/?post_type=job_listing&amp;p=921\",\"menu_order\":0,\"post_type\":\"job_listing\",\"post_mime_type\":\"\",\"comment_count\":\"0\",\"filter\":\"raw\"},{\"ID\":79,\"post_author\":\"1\",\"post_date\":\"2019-01-23 06:46:54\",\"post_date_gmt\":\"2019-01-23 06:46:54\",\"post_content\":\"A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \\\"for a living\\\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\\r\\n\\r\\nAn activity that requires a person\'s mental or physical effort is work as in \\\"a day\'s work\\\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\\r\\n\\r\\nTypes of jobs\\r\\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\\r\\n\\r\\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\\r\\n\\r\\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\\r\\n\\r\\nSome jobs require specific training or an academic degree.\\r\\n\\r\\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\\r\\n\\r\\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\\r\\n\\r\\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.\",\"post_title\":\"Post of the CEO Doctorate Researcher Office\",\"post_excerpt\":\"\",\"post_status\":\"publish\",\"comment_status\":\"closed\",\"ping_status\":\"closed\",\"post_password\":\"\",\"post_name\":\"post-of-the-ceo-doctorate-researcher-office\",\"to_ping\":\"\",\"pinged\":\"\",\"post_modified\":\"2019-01-23 06:46:54\",\"post_modified_gmt\":\"2019-01-23 06:46:54\",\"post_content_filtered\":\"\",\"post_parent\":0,\"guid\":\"http:\\/\\/rarathemesdemo.com\\/jobscout-pro\\/?post_type=job_listing&amp;p=79\",\"menu_order\":0,\"post_type\":\"job_listing\",\"post_mime_type\":\"\",\"comment_count\":\"0\",\"filter\":\"raw\"},{\"ID\":78,\"post_author\":\"1\",\"post_date\":\"2019-01-23 06:43:42\",\"post_date_gmt\":\"2019-01-23 06:43:42\",\"post_content\":\"A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \\\"for a living\\\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\\r\\n\\r\\nAn activity that requires a person\'s mental or physical effort is work as in \\\"a day\'s work\\\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\\r\\n\\r\\nTypes of jobs\\r\\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\\r\\n\\r\\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\\r\\n\\r\\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\\r\\n\\r\\nSome jobs require specific training or an academic degree.\\r\\n\\r\\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\\r\\n\\r\\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\\r\\n\\r\\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.\",\"post_title\":\"Physician Assistant at ABC Institute\",\"post_excerpt\":\"\",\"post_status\":\"publish\",\"comment_status\":\"closed\",\"ping_status\":\"closed\",\"post_password\":\"\",\"post_name\":\"physician-assistant-at-abc-institute\",\"to_ping\":\"\",\"pinged\":\"\",\"post_modified\":\"2019-01-23 06:43:42\",\"post_modified_gmt\":\"2019-01-23 06:43:42\",\"post_content_filtered\":\"\",\"post_parent\":0,\"guid\":\"http:\\/\\/rarathemesdemo.com\\/jobscout-pro\\/?post_type=job_listing&amp;p=78\",\"menu_order\":0,\"post_type\":\"job_listing\",\"post_mime_type\":\"\",\"comment_count\":\"0\",\"filter\":\"raw\"},{\"ID\":77,\"post_author\":\"1\",\"post_date\":\"2019-01-23 06:40:21\",\"post_date_gmt\":\"2019-01-23 06:40:21\",\"post_content\":\"A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \\\"for a living\\\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\\r\\n\\r\\nAn activity that requires a person\'s mental or physical effort is work as in \\\"a day\'s work\\\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\\r\\n\\r\\nTypes of jobs\\r\\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\\r\\n\\r\\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\\r\\n\\r\\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\\r\\n\\r\\nSome jobs require specific training or an academic degree.\\r\\n\\r\\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\\r\\n\\r\\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\\r\\n\\r\\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.\",\"post_title\":\"Car Financed Required For Bank\",\"post_excerpt\":\"\",\"post_status\":\"publish\",\"comment_status\":\"closed\",\"ping_status\":\"closed\",\"post_password\":\"\",\"post_name\":\"car-financed-required-for-bank\",\"to_ping\":\"\",\"pinged\":\"\",\"post_modified\":\"2019-01-23 06:40:21\",\"post_modified_gmt\":\"2019-01-23 06:40:21\",\"post_content_filtered\":\"\",\"post_parent\":0,\"guid\":\"http:\\/\\/rarathemesdemo.com\\/jobscout-pro\\/?post_type=job_listing&amp;p=77\",\"menu_order\":0,\"post_type\":\"job_listing\",\"post_mime_type\":\"\",\"comment_count\":\"0\",\"filter\":\"raw\"},{\"ID\":73,\"post_author\":\"1\",\"post_date\":\"2019-01-23 06:08:30\",\"post_date_gmt\":\"2019-01-23 06:08:30\",\"post_content\":\"A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \\\"for a living\\\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\\r\\n\\r\\nAn activity that requires a person\'s mental or physical effort is work as in \\\"a day\'s work\\\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\\r\\n\\r\\nTypes of jobs\\r\\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\\r\\n\\r\\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\\r\\n\\r\\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\\r\\n\\r\\nSome jobs require specific training or an academic degree.\\r\\n\\r\\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\\r\\n\\r\\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\\r\\n\\r\\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.\",\"post_title\":\"Application Developer for Android\",\"post_excerpt\":\"\",\"post_status\":\"publish\",\"comment_status\":\"closed\",\"ping_status\":\"closed\",\"post_password\":\"\",\"post_name\":\"application-developer-for-android\",\"to_ping\":\"\",\"pinged\":\"\",\"post_modified\":\"2019-01-23 06:08:30\",\"post_modified_gmt\":\"2019-01-23 06:08:30\",\"post_content_filtered\":\"\",\"post_parent\":0,\"guid\":\"http:\\/\\/rarathemesdemo.com\\/jobscout-pro\\/?post_type=job_listing&amp;p=73\",\"menu_order\":0,\"post_type\":\"job_listing\",\"post_mime_type\":\"\",\"comment_count\":\"0\",\"filter\":\"raw\"}],\"found_posts\":10,\"max_num_pages\":1}', 'no'),
(287, '_site_transient_timeout_theme_roots', '1624956299', 'no'),
(288, '_site_transient_theme_roots', 'a:4:{s:8:\"jobscout\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(289, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":5,\"critical\":1}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(7, 7, '_wp_attached_file', '2021/06/log_file_2021-06-28__07-40-31.txt'),
(8, 20, '_wp_attached_file', '2019/01/laptop-desk-computer-writing-apple-table-693727-pxhere.com-2.jpg'),
(9, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:1200;s:4:\"file\";s:72:\"2019/01/laptop-desk-computer-writing-apple-table-693727-pxhere.com-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 21, '_wp_attached_file', '2019/01/interview-business-communication-conversation-collaboration-businessperson-1446003-pxhere.com-1.jpg'),
(11, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:107:\"2019/01/interview-business-communication-conversation-collaboration-businessperson-1446003-pxhere.com-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 25, '_wp_attached_file', '2019/01/icon-6-1.png'),
(13, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:20:\"2019/01/icon-6-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 26, '_wp_attached_file', '2019/01/icon-7.png'),
(15, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:18:\"2019/01/icon-7.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 27, '_wp_attached_file', '2019/01/icon-8.png'),
(17, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:18:\"2019/01/icon-8.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 28, '_wp_attached_file', '2019/01/icon-1.png'),
(19, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:18:\"2019/01/icon-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 29, '_wp_attached_file', '2019/01/icon-2-1.png'),
(21, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:20:\"2019/01/icon-2-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(22, 30, '_wp_attached_file', '2019/01/favicon-7.png'),
(23, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:21:\"2019/01/favicon-7.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 31, '_wp_attached_file', '2019/01/logo-15.png'),
(25, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"file\";s:19:\"2019/01/logo-15.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 35, '_wp_attached_file', '2019/01/icon-3-1.png'),
(27, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:20:\"2019/01/icon-3-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 36, '_wp_attached_file', '2019/01/icon-4-1.png'),
(29, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:20:\"2019/01/icon-4-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 37, '_wp_attached_file', '2019/01/icon-5-2.png'),
(31, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:160;s:6:\"height\";i:160;s:4:\"file\";s:20:\"2019/01/icon-5-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(32, 39, '_wp_attached_file', '2019/01/logo-6.png'),
(33, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2019/01/logo-6.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(34, 40, '_wp_attached_file', '2019/01/logo-1.png'),
(35, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2019/01/logo-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 41, '_wp_attached_file', '2019/01/logo-2.png'),
(37, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2019/01/logo-2.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 42, '_wp_attached_file', '2019/01/logo-3.png'),
(39, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2019/01/logo-3.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 43, '_wp_attached_file', '2019/01/logo-4.png'),
(41, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2019/01/logo-4.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 44, '_wp_attached_file', '2019/01/logo-5.png'),
(43, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:18:\"2019/01/logo-5.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 48, '_wp_attached_file', '2019/01/woman-3083396_1920-1.jpg'),
(45, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1279;s:4:\"file\";s:32:\"2019/01/woman-3083396_1920-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 49, '_wp_attached_file', '2019/01/fezbot2000-365718-unsplash-2.jpg'),
(47, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:2737;s:4:\"file\";s:40:\"2019/01/fezbot2000-365718-unsplash-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 50, '_wp_attached_file', '2019/01/brooke-cagle-274465-unsplash-1.jpg'),
(50, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:42:\"2019/01/brooke-cagle-274465-unsplash-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 52, '_wp_attached_file', '2019/01/girl-919048_1920-1.jpg'),
(52, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:30:\"2019/01/girl-919048_1920-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 53, '_wp_attached_file', '2019/01/pexels-photo-247917-1.jpeg'),
(54, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:34:\"2019/01/pexels-photo-247917-1.jpeg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 55, '_wp_attached_file', '2019/01/portrait-2865605_1920-1.jpg'),
(57, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:35:\"2019/01/portrait-2865605_1920-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 60, '_wp_attached_file', '2019/01/ztos.png'),
(59, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:75;s:6:\"height\";i:30;s:4:\"file\";s:16:\"2019/01/ztos.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 61, '_wp_attached_file', '2019/01/earth-2.0.png'),
(61, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:126;s:6:\"height\";i:30;s:4:\"file\";s:21:\"2019/01/earth-2.0.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 62, '_wp_attached_file', '2019/01/goldline.png'),
(63, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:129;s:6:\"height\";i:30;s:4:\"file\";s:20:\"2019/01/goldline.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(64, 63, '_wp_attached_file', '2019/01/treva.png'),
(65, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:108;s:6:\"height\";i:30;s:4:\"file\";s:17:\"2019/01/treva.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 64, '_wp_attached_file', '2019/01/velocity-9.png'),
(67, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:117;s:6:\"height\";i:30;s:4:\"file\";s:22:\"2019/01/velocity-9.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 65, '_wp_attached_file', '2019/01/zoo-tv.png'),
(69, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:96;s:6:\"height\";i:30;s:4:\"file\";s:18:\"2019/01/zoo-tv.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 66, '_wp_attached_file', '2019/01/cropped-favicon-7.png'),
(71, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2019/01/cropped-favicon-7.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 66, '_wp_attachment_context', 'site-icon'),
(73, 85, '_wp_attached_file', '2019/01/desk-notebook-writing-work-hand-working-1325885-pxhere.com-1.jpg'),
(74, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:72:\"2019/01/desk-notebook-writing-work-hand-working-1325885-pxhere.com-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(76, 88, '_wp_attached_file', '2019/01/computer-hand-man-working-person-technology-1076173-pxhere.com-1.jpg'),
(77, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1631;s:6:\"height\";i:1080;s:4:\"file\";s:76:\"2019/01/computer-hand-man-working-person-technology-1076173-pxhere.com-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 91, '_wp_attached_file', '2019/01/african-american-african-descent-afro-american-analyzing-beverage-1450225-pxhere.com-1.jpg'),
(80, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1444;s:6:\"height\";i:1080;s:4:\"file\";s:98:\"2019/01/african-american-african-descent-afro-american-analyzing-beverage-1450225-pxhere.com-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 95, '_wp_attached_file', '2019/01/StockSnap_RNGXYOKIBT-1.jpg'),
(83, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:5000;s:6:\"height\";i:3333;s:4:\"file\";s:34:\"2019/01/StockSnap_RNGXYOKIBT-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 98, '_wp_attached_file', '2019/01/laptop-notebook-computer-smartphone-mobile-work-796340-pxhere.com-1.jpg'),
(86, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:79:\"2019/01/laptop-notebook-computer-smartphone-mobile-work-796340-pxhere.com-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 101, '_wp_attached_file', '2019/01/achievement-african-african-american-arms-raised-bangkok-black-1456381-pxhere.com-1.jpg'),
(89, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:95:\"2019/01/achievement-african-african-american-arms-raised-bangkok-black-1456381-pxhere.com-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 104, '_wp_attached_file', '2019/01/african-american-african-descent-afro-agency-american-analyzing-1435997-pxhere.com-1.jpg'),
(92, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1620;s:6:\"height\";i:1080;s:4:\"file\";s:96:\"2019/01/african-american-african-descent-afro-agency-american-analyzing-1435997-pxhere.com-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 107, '_wp_attached_file', '2019/01/StockSnap_64EKVZ4V2B-1.jpg'),
(95, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4948;s:6:\"height\";i:3303;s:4:\"file\";s:34:\"2019/01/StockSnap_64EKVZ4V2B-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 110, '_wp_attached_file', '2019/01/girl-young-business-businesswoman-office-negotiation-1456587-pxhere.com-1.jpg'),
(98, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:1200;s:4:\"file\";s:85:\"2019/01/girl-young-business-businesswoman-office-negotiation-1456587-pxhere.com-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 113, '_wp_attached_file', '2019/01/laptop-computer-work-man-table-person-707060-pxhere.com-1.jpg'),
(101, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1605;s:6:\"height\";i:1080;s:4:\"file\";s:69:\"2019/01/laptop-computer-work-man-table-person-707060-pxhere.com-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 114, '_wp_attached_file', '2019/01/StockSnap_E5GUBD8MWN-1.jpg'),
(104, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:7680;s:6:\"height\";i:5120;s:4:\"file\";s:34:\"2019/01/StockSnap_E5GUBD8MWN-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 882, '_wp_attached_file', '2017/12/album-1.jpg'),
(107, 882, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2017/12/album-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 882, '_wxr_import_parent', '881'),
(109, 883, '_wp_attached_file', '2017/12/beanie-2.jpg'),
(110, 883, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2017/12/beanie-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 883, '_wxr_import_parent', '880'),
(112, 884, '_wp_attached_file', '2017/12/beanie-with-logo-1.jpg'),
(113, 884, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2017/12/beanie-with-logo-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 884, '_wxr_import_parent', '879'),
(115, 885, '_wp_attached_file', '2017/12/belt-2.jpg'),
(116, 885, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2017/12/belt-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 885, '_wxr_import_parent', '878'),
(118, 886, '_wp_attached_file', '2017/12/cap-2-600x600-1.jpg'),
(119, 886, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:27:\"2017/12/cap-2-600x600-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 886, '_wxr_import_parent', '877'),
(121, 887, '_wp_attached_file', '2017/12/hoodie-with-logo-2.jpg'),
(122, 887, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2017/12/hoodie-with-logo-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 887, '_wxr_import_parent', '876'),
(124, 888, '_wp_attached_file', '2017/12/hoodie-2-600x600-1.jpg'),
(125, 888, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:30:\"2017/12/hoodie-2-600x600-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 888, '_wxr_import_parent', '876'),
(127, 889, '_wp_attached_file', '2017/12/hoodie-with-zipper-2-600x600-1.jpg'),
(128, 889, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:42:\"2017/12/hoodie-with-zipper-2-600x600-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 889, '_wxr_import_parent', '874'),
(130, 890, '_wp_attached_file', '2017/12/logo-1.jpg'),
(131, 890, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:799;s:4:\"file\";s:18:\"2017/12/logo-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 890, '_wxr_import_parent', '874'),
(133, 891, '_wp_attached_file', '2017/12/polo-2.jpg'),
(134, 891, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2017/12/polo-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 891, '_wxr_import_parent', '872'),
(136, 892, '_wp_attached_file', '2017/12/single-1.jpg'),
(137, 892, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2017/12/single-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 892, '_wxr_import_parent', '872'),
(139, 894, '_wp_attached_file', '2017/12/long-sleeve-tee-2.jpg'),
(140, 894, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:29:\"2017/12/long-sleeve-tee-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 894, '_wxr_import_parent', '870'),
(142, 895, '_wp_attached_file', '2017/12/sunglasses-2.jpg'),
(143, 895, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:24:\"2017/12/sunglasses-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 895, '_wxr_import_parent', '869'),
(145, 896, '_wp_attached_file', '2017/12/tshirt-2.jpg'),
(146, 896, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2017/12/tshirt-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 896, '_wxr_import_parent', '868'),
(153, 898, '_wp_attached_file', '2017/12/pennant-1-300x300-1.jpg'),
(154, 898, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:31:\"2017/12/pennant-1-300x300-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 898, '_wxr_import_parent', '866'),
(156, 900, '_wp_attached_file', '2017/12/vneck-tee-2.jpg'),
(157, 900, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2017/12/vneck-tee-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 900, '_wxr_import_parent', '864'),
(159, 966, '_wp_attached_file', '2019/04/woocommerce-placeholder.png'),
(160, 966, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:35:\"2019/04/woocommerce-placeholder.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 45, '_tracked_submitted', '1624866254'),
(162, 45, '_filled', '0'),
(163, 45, '_featured', '0'),
(164, 45, '_featured', '1'),
(165, 45, '_thumbnail_id', '40'),
(166, 45, '_job_expires', '2022-02-21'),
(167, 45, '_job_location', 'Fresno, California'),
(168, 45, '_job_important_info', 'Bachelor Degree Qualification'),
(169, 45, '_application', 'example@domain.com'),
(170, 45, '_company_name', 'Codewing Solutions'),
(171, 45, '_company_website', 'http://xyz@mail.com'),
(172, 45, '_job_salary', '$15 - $500/per hourly'),
(173, 45, '_company_tagline', 'Important rite of passage'),
(174, 45, '_company_twitter', '@xyzdemo'),
(175, 45, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(176, 73, '_tracked_submitted', '1624866254'),
(177, 73, '_filled', '0'),
(178, 73, '_featured', '0'),
(179, 73, '_thumbnail_id', '44'),
(180, 73, '_job_expires', '2022-02-22'),
(181, 73, '_job_location', 'Prague, Czech Republic'),
(182, 73, '_job_important_info', 'Bachelor Degree Qualification'),
(183, 73, '_application', 'example@domain.com'),
(184, 73, '_company_name', 'XYZ Solutions'),
(185, 73, '_company_website', 'http://xyz@mail.com'),
(186, 73, '_job_salary', '$19 - $600/per hourly'),
(187, 73, '_company_tagline', 'Important rite of passage'),
(188, 73, '_company_twitter', '@xyzdemo'),
(189, 73, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(190, 74, '_tracked_submitted', '1624866255'),
(191, 74, '_filled', '0'),
(192, 74, '_featured', '0'),
(193, 74, '_featured', '1'),
(194, 74, '_thumbnail_id', '43'),
(195, 74, '_job_expires', '2022-02-22'),
(196, 74, '_job_location', 'Manhattan, US'),
(197, 74, '_job_important_info', 'Bachelor Degree Qualification'),
(198, 74, '_application', 'example@domain.com'),
(199, 74, '_company_name', 'Codewing Solutions'),
(200, 74, '_company_website', 'http://xyz@mail.com'),
(201, 74, '_job_salary', '$15 - $500/per hourly'),
(202, 74, '_company_tagline', 'Important rite of passage'),
(203, 74, '_company_twitter', '@xyzdemo'),
(204, 74, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(205, 77, '_tracked_submitted', '1624866255'),
(206, 77, '_filled', '0'),
(207, 77, '_featured', '0'),
(208, 77, '_thumbnail_id', '42'),
(209, 77, '_job_expires', '2022-02-22'),
(210, 77, '_job_location', 'Chelsea, UK'),
(211, 77, '_job_important_info', 'Bachelor Degree Qualification'),
(212, 77, '_application', 'example@domain.com'),
(213, 77, '_company_name', 'ABC Solutions'),
(214, 77, '_company_website', 'http://xyz@mail.com'),
(215, 77, '_job_salary', '$20 - $500/per hourly'),
(216, 77, '_company_tagline', 'Important rite of passage'),
(217, 77, '_company_twitter', '@xyzdemo'),
(218, 77, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(219, 78, '_tracked_submitted', '1624866256'),
(220, 78, '_filled', '0'),
(221, 78, '_featured', '0'),
(222, 78, '_thumbnail_id', '41'),
(223, 78, '_job_expires', '2022-02-22'),
(224, 78, '_job_location', 'New York, US'),
(225, 78, '_job_important_info', 'Bachelor Degree Qualification'),
(226, 78, '_application', 'example@domain.com'),
(227, 78, '_company_name', 'RMP Solutions'),
(228, 78, '_company_website', 'http://xyz@mail.com'),
(229, 78, '_job_salary', '$15 - $500/per hourly'),
(230, 78, '_company_tagline', 'Important rite of passage'),
(231, 78, '_company_twitter', '@xyzdemo'),
(232, 78, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(233, 79, '_tracked_submitted', '1624866256'),
(234, 79, '_filled', '0'),
(235, 79, '_featured', '0'),
(236, 79, '_thumbnail_id', '39'),
(237, 79, '_job_expires', '2022-02-22'),
(238, 79, '_job_location', 'Warsaw, Poland'),
(239, 79, '_job_important_info', 'Bachelor Degree Qualification'),
(240, 79, '_application', 'example@domain.com'),
(241, 79, '_company_name', 'Ace University'),
(242, 79, '_company_website', 'http://xyz@mail.com'),
(243, 79, '_job_salary', '$15 - $500/per hourly'),
(244, 79, '_company_tagline', 'Important rite of passage'),
(245, 79, '_company_twitter', '@xyzdemo'),
(246, 79, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(247, 130, '_menu_item_type', 'post_type'),
(248, 130, '_menu_item_object_id', '13'),
(249, 130, '_menu_item_object', 'page'),
(250, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(252, 131, '_menu_item_type', 'post_type'),
(253, 131, '_menu_item_menu_item_parent', '144'),
(254, 131, '_menu_item_object_id', '15'),
(255, 131, '_menu_item_object', 'page'),
(256, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(258, 132, '_menu_item_type', 'post_type'),
(259, 132, '_menu_item_menu_item_parent', '925'),
(260, 132, '_menu_item_object_id', '9'),
(261, 132, '_menu_item_object', 'page'),
(262, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(264, 133, '_menu_item_type', 'post_type'),
(265, 133, '_menu_item_object_id', '6'),
(266, 133, '_menu_item_object', 'page'),
(267, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(269, 144, '_menu_item_type', 'post_type'),
(270, 144, '_menu_item_object_id', '140'),
(271, 144, '_menu_item_object', 'page'),
(272, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(274, 145, '_menu_item_type', 'taxonomy'),
(275, 145, '_menu_item_menu_item_parent', '144'),
(276, 145, '_menu_item_object_id', '10'),
(277, 145, '_menu_item_object', 'category'),
(278, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(279, 146, '_menu_item_type', 'post_type'),
(280, 146, '_menu_item_menu_item_parent', '144'),
(281, 146, '_menu_item_object_id', '140'),
(282, 146, '_menu_item_object', 'page'),
(283, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(285, 151, '_menu_item_type', 'post_type'),
(286, 151, '_menu_item_object_id', '149'),
(287, 151, '_menu_item_object', 'page'),
(288, 151, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(290, 152, '_menu_item_type', 'custom'),
(291, 152, '_menu_item_menu_item_parent', '144'),
(292, 152, '_menu_item_object_id', '152'),
(293, 152, '_menu_item_object', 'custom'),
(294, 152, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(295, 152, '_menu_item_url', 'http://rarathemesdemo.com/jobscout/?s=job'),
(296, 153, '_menu_item_type', 'custom'),
(297, 153, '_menu_item_menu_item_parent', '144'),
(298, 153, '_menu_item_object_id', '153'),
(299, 153, '_menu_item_object', 'custom'),
(300, 153, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(301, 153, '_menu_item_url', 'http://rarathemesdemo.com/jobscout/404'),
(302, 921, '_tracked_submitted', '1624866257'),
(303, 921, '_filled', '0'),
(304, 921, '_featured', '0'),
(305, 921, '_thumbnail_id', '44'),
(306, 921, '_job_expires', '2022-02-23'),
(307, 921, '_job_location', 'Prague, Czech Republic'),
(308, 921, '_application', 'example@domain.com'),
(309, 921, '_company_name', 'RNM University'),
(310, 921, '_job_salary', '$15 - $500/per hourly'),
(311, 921, '_company_website', 'http://xyz@mail.com'),
(312, 921, '_job_important_info', 'Bachelor Degree Qualification'),
(313, 921, '_company_twitter', '@xyzdemo'),
(314, 922, '_tracked_submitted', '1624866257'),
(315, 922, '_filled', '0'),
(316, 922, '_featured', '0'),
(317, 922, '_thumbnail_id', '41'),
(318, 922, '_job_expires', '2022-02-23'),
(319, 922, '_job_location', 'Warsaw, Poland'),
(320, 922, '_application', 'example@domain.com'),
(321, 922, '_company_name', 'Ace University'),
(322, 922, '_job_salary', '$15 - $500/per hourly'),
(323, 922, '_company_website', 'http://xyz@mail.com'),
(324, 922, '_job_important_info', 'Bachelor Degree Qualification'),
(325, 922, '_company_tagline', 'Important rite of passage'),
(326, 922, '_company_twitter', '@xyzdemo'),
(327, 922, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(328, 923, '_tracked_submitted', '1624866257'),
(329, 923, '_filled', '0'),
(330, 923, '_featured', '0'),
(331, 923, '_thumbnail_id', '42'),
(332, 923, '_job_expires', '2022-02-23'),
(333, 923, '_job_location', 'San Carlos, CA'),
(334, 923, '_application', 'example@domain.com'),
(335, 923, '_company_name', 'LA University'),
(336, 923, '_job_salary', '$15 - $500/per hourly'),
(337, 923, '_company_website', 'http://xyz@mail.com'),
(338, 923, '_job_important_info', 'Bachelor Degree Qualification'),
(339, 923, '_company_tagline', 'Important rite of passage'),
(340, 923, '_company_twitter', '@xyzdemo'),
(341, 923, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(342, 928, '_tracked_submitted', '1624866257'),
(343, 928, '_filled', '0'),
(344, 928, '_featured', '0'),
(345, 928, '_thumbnail_id', '39'),
(346, 928, '_job_expires', '2022-02-23'),
(347, 928, '_job_location', 'Kathmandu, Nepal'),
(348, 928, '_application', 'example@domain.com'),
(349, 928, '_company_name', 'CA University'),
(350, 928, '_job_salary', '$20 - $500/per hourly'),
(351, 928, '_company_website', 'http://xyz@mail.com'),
(352, 928, '_job_important_info', 'Bachelor Degree Qualification'),
(353, 928, '_company_tagline', 'Important rite of passage'),
(354, 928, '_company_twitter', '@xyzdemo'),
(355, 928, '_company_video', 'https://youtu.be/gdY_9ifwEDA'),
(356, 967, '_wp_page_template', 'default'),
(357, 6, '_wp_page_template', 'default'),
(358, 6, '_jobscout_sidebar_layout', 'default-sidebar'),
(359, 968, '_wp_page_template', 'templates/portfolio.php'),
(360, 8, '_wp_page_template', 'default'),
(361, 8, '_jobscout_sidebar_layout', 'default-sidebar'),
(362, 13, '_wp_page_template', 'default'),
(363, 154, '_menu_item_type', 'post_type'),
(364, 154, '_menu_item_menu_item_parent', '144'),
(365, 154, '_menu_item_object_id', '103'),
(366, 154, '_menu_item_object', 'post'),
(367, 154, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(369, 861, '_menu_item_type', 'post_type'),
(370, 861, '_menu_item_object_id', '147'),
(371, 861, '_menu_item_object', 'page'),
(372, 861, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(374, 907, '_menu_item_type', 'post_type'),
(375, 907, '_menu_item_menu_item_parent', '908'),
(376, 907, '_menu_item_object_id', '903'),
(377, 907, '_menu_item_object', 'page'),
(378, 907, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(380, 908, '_menu_item_type', 'post_type'),
(381, 908, '_menu_item_object_id', '901'),
(382, 908, '_menu_item_object', 'page'),
(383, 908, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(385, 909, '_menu_item_type', 'post_type'),
(386, 909, '_menu_item_menu_item_parent', '908'),
(387, 909, '_menu_item_object_id', '905'),
(388, 909, '_menu_item_object', 'page'),
(389, 909, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(391, 916, '_menu_item_type', 'post_type'),
(392, 916, '_menu_item_menu_item_parent', '908'),
(393, 916, '_menu_item_object_id', '913'),
(394, 916, '_menu_item_object', 'page'),
(395, 916, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(397, 917, '_menu_item_type', 'post_type'),
(398, 917, '_menu_item_object_id', '901'),
(399, 917, '_menu_item_object', 'page'),
(400, 917, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(402, 918, '_menu_item_type', 'post_type'),
(403, 918, '_menu_item_object_id', '149'),
(404, 918, '_menu_item_object', 'page'),
(405, 918, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(407, 919, '_menu_item_type', 'post_type'),
(408, 919, '_menu_item_object_id', '140'),
(409, 919, '_menu_item_object', 'page'),
(410, 919, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(412, 920, '_menu_item_type', 'post_type'),
(413, 920, '_menu_item_object_id', '15'),
(414, 920, '_menu_item_object', 'page'),
(415, 920, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(417, 924, '_menu_item_type', 'post_type'),
(418, 924, '_menu_item_object_id', '9'),
(419, 924, '_menu_item_object', 'page'),
(420, 924, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(421, 925, '_menu_item_type', 'post_type'),
(422, 925, '_menu_item_object_id', '10'),
(423, 925, '_menu_item_object', 'page'),
(424, 925, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(425, 926, '_menu_item_type', 'post_type'),
(426, 926, '_menu_item_menu_item_parent', '925'),
(427, 926, '_menu_item_object_id', '8'),
(428, 926, '_menu_item_object', 'page'),
(429, 926, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(430, 15, '_wp_page_template', 'default'),
(431, 15, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(432, 15, '_job_board_pro_sidebar', 'default-sidebar'),
(435, 84, '_thumbnail_id', '113'),
(436, 84, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(437, 84, '_job_board_pro_sidebar', 'default-sidebar'),
(438, 84, '_raratheme_view_count', '112'),
(441, 87, '_thumbnail_id', '88'),
(442, 87, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(443, 87, '_job_board_pro_sidebar', 'default-sidebar'),
(444, 87, '_raratheme_view_count', '161'),
(447, 90, '_thumbnail_id', '114'),
(448, 90, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(449, 90, '_job_board_pro_sidebar', 'default-sidebar'),
(450, 90, '_raratheme_view_count', '159'),
(451, 90, '_job_board_pro_post_like', '1'),
(452, 90, '_job_board_pro_post_like_ip', 'a:1:{i:0;s:13:\"27.34.105.132\";}'),
(455, 94, '_thumbnail_id', '95'),
(456, 94, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(457, 94, '_job_board_pro_sidebar', 'default-sidebar'),
(458, 94, '_raratheme_view_count', '216'),
(461, 97, '_thumbnail_id', '98'),
(462, 97, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(463, 97, '_job_board_pro_sidebar', 'default-sidebar'),
(464, 97, '_raratheme_view_count', '142'),
(467, 100, '_thumbnail_id', '101'),
(468, 100, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(469, 100, '_job_board_pro_sidebar', 'default-sidebar'),
(470, 100, '_raratheme_view_count', '182'),
(471, 100, '_job_board_pro_post_like', '1'),
(472, 100, '_job_board_pro_post_like_ip', 'a:1:{i:0;s:13:\"27.34.105.132\";}'),
(475, 103, '_thumbnail_id', '104'),
(476, 103, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(477, 103, '_job_board_pro_sidebar', 'default-sidebar'),
(478, 103, '_raratheme_view_count', '909'),
(481, 106, '_thumbnail_id', '107'),
(482, 106, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(483, 106, '_job_board_pro_sidebar', 'default-sidebar'),
(484, 106, '_raratheme_view_count', '288'),
(487, 109, '_thumbnail_id', '110'),
(488, 109, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(489, 109, '_job_board_pro_sidebar', 'default-sidebar'),
(490, 109, '_raratheme_view_count', '334'),
(493, 112, '_thumbnail_id', '85'),
(494, 112, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(495, 112, '_job_board_pro_sidebar', 'default-sidebar'),
(496, 112, '_raratheme_view_count', '512'),
(497, 140, '_thumbnail_id', '48'),
(498, 140, '_wp_page_template', 'default'),
(499, 140, '_job_board_pro_sidebar_layout', 'no-sidebar'),
(500, 140, '_job_board_pro_sidebar', 'default-sidebar'),
(501, 140, '_jobscout_sidebar_layout', 'no-sidebar'),
(502, 140, '_wxr_import_has_attachment_refs', '1'),
(503, 147, '_wp_page_template', 'templates/portfolio.php'),
(504, 149, '_thumbnail_id', '21'),
(505, 149, '_wp_page_template', 'default'),
(506, 149, '_wxr_import_has_attachment_refs', '1'),
(507, 901, '_wp_page_template', 'default'),
(508, 903, '_wp_page_template', 'default'),
(509, 903, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(510, 903, '_job_board_pro_sidebar', 'default-sidebar'),
(511, 905, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(512, 905, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(513, 905, '_job_board_pro_sidebar', 'default-sidebar'),
(514, 913, '_wp_page_template', 'default'),
(515, 913, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(516, 913, '_job_board_pro_sidebar', 'default-sidebar'),
(517, 936, '_wp_page_template', 'templates/login-registration.php'),
(518, 936, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(519, 936, '_job_board_pro_sidebar', 'default-sidebar'),
(520, 954, '_wp_page_template', 'default'),
(523, 116, '_thumbnail_id', '91'),
(524, 116, '_job_board_pro_sidebar_layout', 'default-sidebar'),
(525, 116, '_job_board_pro_sidebar', 'default-sidebar'),
(526, 116, '_raratheme_view_count', '657'),
(527, 838, '_thumbnail_id', '107'),
(528, 844, '_thumbnail_id', '110'),
(529, 845, '_thumbnail_id', '104'),
(530, 846, '_thumbnail_id', '95'),
(531, 847, '_thumbnail_id', '91'),
(532, 853, '_thumbnail_id', '50'),
(533, 855, '_thumbnail_id', '85'),
(534, 857, '_thumbnail_id', '114'),
(535, 860, '_thumbnail_id', '101'),
(536, 969, '_wp_trash_meta_status', 'publish'),
(537, 969, '_wp_trash_meta_time', '1624866580'),
(538, 970, '_edit_lock', '1624866701:1'),
(539, 970, '_wp_trash_meta_status', 'publish'),
(540, 970, '_wp_trash_meta_time', '1624866707'),
(541, 971, '_wp_trash_meta_status', 'publish'),
(542, 971, '_wp_trash_meta_time', '1624866724'),
(543, 972, '_wp_trash_meta_status', 'publish'),
(544, 972, '_wp_trash_meta_time', '1624866766');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-06-28 07:30:39', '2021-06-28 07:30:39', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-06-28 07:30:39', '2021-06-28 07:30:39', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2021-06-28 07:30:39', '2021-06-28 07:30:39', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-06-28 07:30:39', '2021-06-28 07:30:39', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-06-28 07:30:39', '2021-06-28 07:30:39', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-06-28 07:30:39', '2021-06-28 07:30:39', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-06-28 07:31:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-06-28 07:31:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(6, 1, '2019-01-22 08:29:47', '2019-01-22 08:29:47', '[contact-form-7 id=\"135\" title=\"Contact\"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-01-22 08:29:47', '2019-01-22 08:29:47', '', 0, 'http://rarathemesdemo.com/jobscout-pro/contact/', 0, 'page', '', 0),
(7, 1, '2021-06-28 07:40:31', '2021-06-28 07:40:31', '', 'Rara One Click Demo Import - log_file_2021-06-28__07-40-31', '', 'inherit', 'open', 'closed', '', 'rara-one-click-demo-import-log_file_2021-06-28__07-40-31', '', '', '2021-06-28 07:40:31', '2021-06-28 07:40:31', '', 0, 'http://localhost/wordpress/wp-content/uploads/2021/06/log_file_2021-06-28__07-40-31.txt', 0, 'attachment', 'text/plain', 0),
(8, 1, '2019-01-22 08:31:09', '2019-01-22 08:31:09', '[submit_job_form]', 'Post a Job', '', 'private', 'closed', 'closed', '', 'post-a-job', '', '', '2019-01-22 08:31:09', '2019-01-22 08:31:09', '', 0, 'http://rarathemesdemo.com/jobscout-pro/post-a-job/', 0, 'page', '', 0),
(9, 1, '2019-01-22 08:31:09', '2019-01-22 08:31:09', '[job_dashboard]', 'Job Dashboard', '', 'publish', 'closed', 'closed', '', 'job-dashboard', '', '', '2019-01-22 08:31:09', '2019-01-22 08:31:09', '', 0, 'http://rarathemesdemo.com/jobscout-pro/job-dashboard/', 0, 'page', '', 0),
(10, 1, '2019-01-22 08:31:09', '2019-01-22 08:31:09', '[jobs]', 'Jobs', '', 'publish', 'closed', 'closed', '', 'jobs', '', '', '2019-01-22 08:31:09', '2019-01-22 08:31:09', '', 0, 'http://rarathemesdemo.com/jobscout-pro/jobs/', 0, 'page', '', 0),
(13, 1, '2019-01-22 08:54:17', '2019-01-22 08:54:17', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-01-22 08:54:17', '2019-01-22 08:54:17', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=13', 0, 'page', '', 0),
(15, 1, '2019-01-22 08:54:27', '2019-01-22 08:54:27', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-01-22 08:54:27', '2019-01-22 08:54:27', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=15', 0, 'page', '', 0),
(20, 1, '2019-01-22 09:09:20', '2019-01-22 09:09:20', '', 'laptop-desk-computer-writing-apple-table-693727-pxhere.com (2)', '', 'inherit', 'open', 'closed', '', 'laptop-desk-computer-writing-apple-table-693727-pxhere-com-2', '', '', '2019-01-22 09:09:20', '2019-01-22 09:09:20', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/laptop-desk-computer-writing-apple-table-693727-pxhere.com-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2019-01-22 09:21:40', '2019-01-22 09:21:40', '', 'interview-business-communication-conversation-collaboration-businessperson-1446003-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'interview-business-communication-conversation-collaboration-businessperson-1446003-pxhere-com-1', '', '', '2019-01-22 09:21:40', '2019-01-22 09:21:40', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/interview-business-communication-conversation-collaboration-businessperson-1446003-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2019-01-22 09:29:07', '2019-01-22 09:29:07', '', 'icon-6 (1)', '', 'inherit', 'open', 'closed', '', 'icon-6-1', '', '', '2019-01-22 09:29:07', '2019-01-22 09:29:07', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-6-1.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2019-01-22 09:29:08', '2019-01-22 09:29:08', '', 'icon-7', '', 'inherit', 'open', 'closed', '', 'icon-7', '', '', '2019-01-22 09:29:08', '2019-01-22 09:29:08', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-7.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2019-01-22 09:29:09', '2019-01-22 09:29:09', '', 'icon-8', '', 'inherit', 'open', 'closed', '', 'icon-8', '', '', '2019-01-22 09:29:09', '2019-01-22 09:29:09', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-8.png', 0, 'attachment', 'image/png', 0),
(28, 1, '2019-01-22 09:29:10', '2019-01-22 09:29:10', '', 'icon-1', '', 'inherit', 'open', 'closed', '', 'icon-1', '', '', '2019-01-22 09:29:10', '2019-01-22 09:29:10', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-1.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2019-01-22 09:29:13', '2019-01-22 09:29:13', '', 'icon-2 (1)', '', 'inherit', 'open', 'closed', '', 'icon-2-1', '', '', '2019-01-22 09:29:13', '2019-01-22 09:29:13', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-2-1.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2019-01-22 09:29:14', '2019-01-22 09:29:14', '', 'favicon (7)', '', 'inherit', 'open', 'closed', '', 'favicon-7', '', '', '2019-01-22 09:29:14', '2019-01-22 09:29:14', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/favicon-7.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2019-01-22 09:29:15', '2019-01-22 09:29:15', '', 'logo (15)', '', 'inherit', 'open', 'closed', '', 'logo-15', '', '', '2019-01-22 09:29:15', '2019-01-22 09:29:15', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/logo-15.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2019-01-22 09:37:20', '2019-01-22 09:37:20', '', 'icon-3 (1)', '', 'inherit', 'open', 'closed', '', 'icon-3-1', '', '', '2019-01-22 09:37:20', '2019-01-22 09:37:20', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-3-1.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2019-01-22 09:37:21', '2019-01-22 09:37:21', '', 'icon-4 (1)', '', 'inherit', 'open', 'closed', '', 'icon-4-1', '', '', '2019-01-22 09:37:21', '2019-01-22 09:37:21', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-4-1.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2019-01-22 09:37:22', '2019-01-22 09:37:22', '', 'icon-5 (2)', '', 'inherit', 'open', 'closed', '', 'icon-5-2', '', '', '2019-01-22 09:37:22', '2019-01-22 09:37:22', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/icon-5-2.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2019-01-22 09:53:42', '2019-01-22 09:53:42', '', 'logo-6', '', 'inherit', 'open', 'closed', '', 'logo-6', '', '', '2019-01-22 09:53:42', '2019-01-22 09:53:42', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/logo-6.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2019-01-22 09:53:43', '2019-01-22 09:53:43', '', 'logo-1', '', 'inherit', 'open', 'closed', '', 'logo-1', '', '', '2019-01-22 09:53:43', '2019-01-22 09:53:43', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/logo-1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2019-01-22 09:53:44', '2019-01-22 09:53:44', '', 'logo-2', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2019-01-22 09:53:44', '2019-01-22 09:53:44', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/logo-2.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2019-01-22 09:53:45', '2019-01-22 09:53:45', '', 'logo-3', '', 'inherit', 'open', 'closed', '', 'logo-3', '', '', '2019-01-22 09:53:45', '2019-01-22 09:53:45', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/logo-3.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2019-01-22 09:53:46', '2019-01-22 09:53:46', '', 'logo-4', '', 'inherit', 'open', 'closed', '', 'logo-4', '', '', '2019-01-22 09:53:46', '2019-01-22 09:53:46', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/logo-4.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2019-01-22 09:53:47', '2019-01-22 09:53:47', '', 'logo-5', '', 'inherit', 'open', 'closed', '', 'logo-5', '', '', '2019-01-22 09:53:47', '2019-01-22 09:53:47', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/logo-5.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2019-01-22 10:33:57', '2019-01-22 10:33:57', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Web Designer/Developer', '', 'publish', 'closed', 'closed', '', 'web-designer-developer', '', '', '2019-01-22 10:33:57', '2019-01-22 10:33:57', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&amp;p=45', -1, 'job_listing', '', 0),
(48, 1, '2019-01-22 10:54:12', '2019-01-22 10:54:12', '', 'woman-3083396_1920 (1)', '', 'inherit', 'open', 'closed', '', 'woman-3083396_1920-1', '', '', '2019-01-22 10:54:12', '2019-01-22 10:54:12', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/woman-3083396_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-01-22 10:54:21', '2019-01-22 10:54:21', '', 'fezbot2000-365718-unsplash (2)', '', 'inherit', 'open', 'closed', '', 'fezbot2000-365718-unsplash-2', '', '', '2021-06-28 07:44:19', '2021-06-28 07:44:19', '', 149, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/fezbot2000-365718-unsplash-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2019-01-22 10:57:47', '2019-01-22 10:57:47', '', 'brooke-cagle-274465-unsplash (1)', '', 'inherit', 'open', 'closed', '', 'brooke-cagle-274465-unsplash-1', '', '', '2019-01-22 10:57:47', '2019-01-22 10:57:47', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/brooke-cagle-274465-unsplash-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2019-01-22 11:00:37', '2019-01-22 11:00:37', '', 'girl-919048_1920 (1)', '', 'inherit', 'open', 'closed', '', 'girl-919048_1920-1', '', '', '2019-01-22 11:00:37', '2019-01-22 11:00:37', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/girl-919048_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2019-01-22 11:00:56', '2019-01-22 11:00:56', '', 'pexels-photo-247917 (1)', '', 'inherit', 'open', 'closed', '', 'pexels-photo-247917-1', '', '', '2021-06-28 07:44:19', '2021-06-28 07:44:19', '', 149, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/pexels-photo-247917-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2019-01-22 11:01:06', '2019-01-22 11:01:06', '', 'portrait-2865605_1920 (1)', '', 'inherit', 'open', 'closed', '', 'portrait-2865605_1920-1', '', '', '2019-01-22 11:01:06', '2019-01-22 11:01:06', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/portrait-2865605_1920-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2019-01-22 11:11:51', '2019-01-22 11:11:51', '', 'ztos', '', 'inherit', 'open', 'closed', '', 'ztos', '', '', '2019-01-22 11:11:51', '2019-01-22 11:11:51', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/ztos.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2019-01-22 11:11:52', '2019-01-22 11:11:52', '', 'earth-2.0', '', 'inherit', 'open', 'closed', '', 'earth-2-0', '', '', '2019-01-22 11:11:52', '2019-01-22 11:11:52', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/earth-2.0.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2019-01-22 11:11:53', '2019-01-22 11:11:53', '', 'goldline', '', 'inherit', 'open', 'closed', '', 'goldline', '', '', '2019-01-22 11:11:53', '2019-01-22 11:11:53', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/goldline.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2019-01-22 11:11:54', '2019-01-22 11:11:54', '', 'treva', '', 'inherit', 'open', 'closed', '', 'treva', '', '', '2019-01-22 11:11:54', '2019-01-22 11:11:54', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/treva.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2019-01-22 11:11:55', '2019-01-22 11:11:55', '', 'velocity-9', '', 'inherit', 'open', 'closed', '', 'velocity-9', '', '', '2019-01-22 11:11:55', '2019-01-22 11:11:55', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/velocity-9.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2019-01-22 11:11:56', '2019-01-22 11:11:56', '', 'zoo-tv', '', 'inherit', 'open', 'closed', '', 'zoo-tv', '', '', '2019-01-22 11:11:56', '2019-01-22 11:11:56', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/zoo-tv.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2019-01-22 11:14:21', '2019-01-22 11:14:21', 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/cropped-favicon-7.png', 'cropped-favicon-7.png', '', 'inherit', 'open', 'closed', '', 'cropped-favicon-7-png', '', '', '2019-01-22 11:14:21', '2019-01-22 11:14:21', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/cropped-favicon-7.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2019-01-23 06:08:30', '2019-01-23 06:08:30', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Application Developer for Android', '', 'publish', 'closed', 'closed', '', 'application-developer-for-android', '', '', '2019-01-23 06:08:30', '2019-01-23 06:08:30', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&amp;p=73', 0, 'job_listing', '', 0),
(74, 1, '2019-01-23 06:12:23', '2019-01-23 06:12:23', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'C Developer (Senior) C.Net', '', 'publish', 'closed', 'closed', '', 'c-developer-senior-c-net', '', '', '2019-01-23 06:12:23', '2019-01-23 06:12:23', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&amp;p=74', -1, 'job_listing', '', 0),
(77, 1, '2019-01-23 06:40:21', '2019-01-23 06:40:21', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Car Financed Required For Bank', '', 'publish', 'closed', 'closed', '', 'car-financed-required-for-bank', '', '', '2019-01-23 06:40:21', '2019-01-23 06:40:21', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&amp;p=77', 0, 'job_listing', '', 0),
(78, 1, '2019-01-23 06:43:42', '2019-01-23 06:43:42', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Physician Assistant at ABC Institute', '', 'publish', 'closed', 'closed', '', 'physician-assistant-at-abc-institute', '', '', '2019-01-23 06:43:42', '2019-01-23 06:43:42', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&amp;p=78', 0, 'job_listing', '', 0),
(79, 1, '2019-01-23 06:46:54', '2019-01-23 06:46:54', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Post of the CEO Doctorate Researcher Office', '', 'publish', 'closed', 'closed', '', 'post-of-the-ceo-doctorate-researcher-office', '', '', '2019-01-23 06:46:54', '2019-01-23 06:46:54', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&amp;p=79', 0, 'job_listing', '', 0),
(84, 1, '2019-01-23 07:43:05', '2019-01-23 07:43:05', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Every single Machine Learning course on the internet, ranked by your reviews', '', 'publish', 'closed', 'closed', '', 'every-single-machine-learning-course-on-the-internet-ranked-by-your-reviews', '', '', '2019-01-23 07:43:05', '2019-01-23 07:43:05', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=84', 0, 'post', '', 0),
(85, 1, '2019-01-23 07:42:59', '2019-01-23 07:42:59', '', 'desk-notebook-writing-work-hand-working-1325885-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'desk-notebook-writing-work-hand-working-1325885-pxhere-com-1', '', '', '2021-06-28 07:44:19', '2021-06-28 07:44:19', '', 84, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/desk-notebook-writing-work-hand-working-1325885-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2019-01-23 07:44:58', '2019-01-23 07:44:58', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Want to know how Deep Learning works? Heres a quick guide for everyone', '', 'publish', 'closed', 'closed', '', 'want-to-know-how-deep-learning-works-heres-a-quick-guide-for-everyone', '', '', '2019-01-23 07:44:58', '2019-01-23 07:44:58', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=87', 0, 'post', '', 0),
(88, 1, '2019-01-23 07:44:54', '2019-01-23 07:44:54', '', 'computer-hand-man-working-person-technology-1076173-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'computer-hand-man-working-person-technology-1076173-pxhere-com-1', '', '', '2021-06-28 07:44:19', '2021-06-28 07:44:19', '', 87, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/computer-hand-man-working-person-technology-1076173-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2019-01-23 07:49:08', '2019-01-23 07:49:08', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Understanding Capsule Networks AI’s Alluring New Architecture', '', 'publish', 'closed', 'closed', '', 'understanding-capsule-networks-ais-alluring-new-architecture', '', '', '2019-01-23 07:49:08', '2019-01-23 07:49:08', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=90', 0, 'post', '', 0),
(91, 1, '2019-01-23 07:49:01', '2019-01-23 07:49:01', '', 'african-american-african-descent-afro-american-analyzing-beverage-1450225-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'african-american-african-descent-afro-american-analyzing-beverage-1450225-pxhere-com-1', '', '', '2021-06-28 07:44:19', '2021-06-28 07:44:19', '', 90, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/african-american-african-descent-afro-american-analyzing-beverage-1450225-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2019-01-23 07:54:41', '2019-01-23 07:54:41', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Machine Learning is Fun! Part 4: Modern Face Recognition with Deep Learning', '', 'publish', 'closed', 'closed', '', 'machine-learning-is-fun-part-4-modern-face-recognition-with-deep-learning', '', '', '2019-01-23 07:54:41', '2019-01-23 07:54:41', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=94', 0, 'post', '', 0),
(95, 1, '2019-01-23 07:54:34', '2019-01-23 07:54:34', '', 'StockSnap_RNGXYOKIBT (1)', '', 'inherit', 'open', 'closed', '', 'stocksnap_rngxyokibt-1', '', '', '2021-06-28 07:44:19', '2021-06-28 07:44:19', '', 94, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/StockSnap_RNGXYOKIBT-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2019-01-23 09:01:25', '2019-01-23 09:01:25', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Categorized by the level of experience required', '', 'publish', 'closed', 'closed', '', 'categorized-by-the-level-of-experience-required', '', '', '2019-01-23 09:01:25', '2019-01-23 09:01:25', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=97', 0, 'post', '', 0),
(98, 1, '2019-01-23 09:00:54', '2019-01-23 09:00:54', '', 'laptop-notebook-computer-smartphone-mobile-work-796340-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'laptop-notebook-computer-smartphone-mobile-work-796340-pxhere-com-1', '', '', '2021-06-28 07:44:19', '2021-06-28 07:44:19', '', 97, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/laptop-notebook-computer-smartphone-mobile-work-796340-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2019-01-23 09:08:41', '2019-01-23 09:08:41', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Job Posting Sites In USA - Check it now', '', 'publish', 'closed', 'closed', '', 'job-posting-sites-in-usa-check-it-now', '', '', '2019-01-23 09:08:41', '2019-01-23 09:08:41', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=100', 0, 'post', '', 0),
(101, 1, '2019-01-23 09:08:33', '2019-01-23 09:08:33', '', 'achievement-african-african-american-arms-raised-bangkok-black-1456381-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'achievement-african-african-american-arms-raised-bangkok-black-1456381-pxhere-com-1', '', '', '2021-06-28 07:44:19', '2021-06-28 07:44:19', '', 100, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/achievement-african-african-american-arms-raised-bangkok-black-1456381-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(103, 1, '2019-01-23 09:14:25', '2019-01-23 09:14:25', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'JobWorker - Post your Resume/CV', '', 'publish', 'closed', 'closed', '', 'jobworker-post-your-resume-cv', '', '', '2019-01-23 09:14:25', '2019-01-23 09:14:25', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=103', 0, 'post', '', 0),
(104, 1, '2019-01-23 09:14:21', '2019-01-23 09:14:21', '', 'african-american-african-descent-afro-agency-american-analyzing-1435997-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'african-american-african-descent-afro-agency-american-analyzing-1435997-pxhere-com-1', '', '', '2021-06-28 07:44:19', '2021-06-28 07:44:19', '', 103, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/african-american-african-descent-afro-agency-american-analyzing-1435997-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2019-01-23 09:23:15', '2019-01-23 09:23:15', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Technology leader for your needs.', '', 'publish', 'closed', 'closed', '', 'technology-leader-for-your-needs', '', '', '2019-01-23 09:23:15', '2019-01-23 09:23:15', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=106', 0, 'post', '', 0),
(107, 1, '2019-01-23 09:23:04', '2019-01-23 09:23:04', '', 'StockSnap_64EKVZ4V2B (1)', '', 'inherit', 'open', 'closed', '', 'stocksnap_64ekvz4v2b-1', '', '', '2021-06-28 07:44:19', '2021-06-28 07:44:19', '', 106, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/StockSnap_64EKVZ4V2B-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2019-01-23 09:33:53', '2019-01-23 09:33:53', 'Self-employment is the state of working for oneself rather than an employer.\r\n\r\nGenerally, tax authorities will view a person as self-employed if the person chooses to be recognized as such, or is generating income such that the person is required to file a tax return under legislation in the relevant jurisdiction. In the real world, the critical issue for the taxing authorities is not that the person is trading but is whether the person is profitable and hence potentially taxable. In other words, the activity of trading is likely to be ignored if no profit is present, so occasional and hobby- or enthusiast-based economic activity is generally ignored by authorities.\r\n\r\nSelf-employed people generally find their own work rather than being provided with work by an employer, earning income from a trade or business that they operate.\r\n\r\nIn some countries governments (the United States and United Kingdom, for example) are placing more emphasis on clarifying whether an individual is self-employed or engaged in disguised employment, often described as the pretense of a contractual intra-business relationship to hide what is otherwise a simple employer-employee relationship.\r\n\r\nAlthough the common perception is that self-employment is concentrated in a few service sector industries, like sales people and insurance agents, research by the Small Business Administration has shown that self-employment occurs across a wide segment of the U.S. economy.Furthermore, industries that are not commonly associated as a natural fit for self-employment, such as manufacturing, have in fact been shown to have a large proportion of self-employed individuals and home-based businesses.\r\n\r\nIn the United States, any person is considered self-employed for tax purposes if that person is running a business as a sole proprietorship, independent contractor, as a member of a partnership, or as a member of a limited liability company that does not elect to be treated as a corporation. In addition to income taxes, these individuals must pay Social Security and Medicare taxes in the form of a SECA (Self-Employment Contributions Act) tax.', 'State of working for oneself', '', 'publish', 'closed', 'closed', '', 'state-of-working-for-oneself', '', '', '2019-01-23 09:33:53', '2019-01-23 09:33:53', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=109', 0, 'post', '', 0),
(110, 1, '2019-01-23 09:33:40', '2019-01-23 09:33:40', '', 'girl-young-business-businesswoman-office-negotiation-1456587-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'girl-young-business-businesswoman-office-negotiation-1456587-pxhere-com-1', '', '', '2021-06-28 07:44:19', '2021-06-28 07:44:19', '', 109, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/girl-young-business-businesswoman-office-negotiation-1456587-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2019-01-23 10:19:08', '2019-01-23 10:19:08', 'Self-employment is the state of working for oneself rather than an employer.\r\n\r\nGenerally, tax authorities will view a person as self-employed if the person chooses to be recognized as such, or is generating income such that the person is required to file a tax return under legislation in the relevant jurisdiction. In the real world, the critical issue for the taxing authorities is not that the person is trading but is whether the person is profitable and hence potentially taxable. In other words, the activity of trading is likely to be ignored if no profit is present, so occasional and hobby- or enthusiast-based economic activity is generally ignored by authorities.\r\n\r\nSelf-employed people generally find their own work rather than being provided with work by an employer, earning income from a trade or business that they operate.\r\n\r\nIn some countries governments (the United States and United Kingdom, for example) are placing more emphasis on clarifying whether an individual is self-employed or engaged in disguised employment, often described as the pretense of a contractual intra-business relationship to hide what is otherwise a simple employer-employee relationship.\r\n\r\nAlthough the common perception is that self-employment is concentrated in a few service sector industries, like sales people and insurance agents, research by the Small Business Administration has shown that self-employment occurs across a wide segment of the U.S. economy.Furthermore, industries that are not commonly associated as a natural fit for self-employment, such as manufacturing, have in fact been shown to have a large proportion of self-employed individuals and home-based businesses.\r\n\r\nIn the United States, any person is considered self-employed for tax purposes if that person is running a business as a sole proprietorship, independent contractor, as a member of a partnership, or as a member of a limited liability company that does not elect to be treated as a corporation. In addition to income taxes, these individuals must pay Social Security and Medicare taxes in the form of a SECA (Self-Employment Contributions Act) tax.', 'Self-employed individuals and home-based businesses.', '', 'publish', 'closed', 'closed', '', 'self-employed-individuals-and-home-based-businesses', '', '', '2019-01-23 10:19:08', '2019-01-23 10:19:08', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=112', 0, 'post', '', 0),
(113, 1, '2019-01-23 10:18:11', '2019-01-23 10:18:11', '', 'laptop-computer-work-man-table-person-707060-pxhere.com (1)', '', 'inherit', 'open', 'closed', '', 'laptop-computer-work-man-table-person-707060-pxhere-com-1', '', '', '2021-06-28 07:44:19', '2021-06-28 07:44:19', '', 112, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/laptop-computer-work-man-table-person-707060-pxhere.com-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2019-01-23 10:18:13', '2019-01-23 10:18:13', '', 'StockSnap_E5GUBD8MWN (1)', '', 'inherit', 'open', 'closed', '', 'stocksnap_e5gubd8mwn-1', '', '', '2021-06-28 07:44:19', '2021-06-28 07:44:19', '', 112, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/StockSnap_E5GUBD8MWN-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2019-01-23 10:27:30', '2019-01-23 10:27:30', 'Self-employment is the state of working for oneself rather than an employer.\r\n\r\nGenerally, tax authorities will view a person as self-employed if the person chooses to be recognized as such, or is generating income such that the person is required to file a tax return under legislation in the relevant jurisdiction. In the real world, the critical issue for the taxing authorities is not that the person is trading but is whether the person is profitable and hence potentially taxable. In other words, the activity of trading is likely to be ignored if no profit is present, so occasional and hobby- or enthusiast-based economic activity is generally ignored by authorities.\r\n\r\nSelf-employed people generally find their own work rather than being provided with work by an employer, earning income from a trade or business that they operate.\r\n\r\nIn some countries governments (the United States and United Kingdom, for example) are placing more emphasis on clarifying whether an individual is self-employed or engaged in disguised employment, often described as the pretense of a contractual intra-business relationship to hide what is otherwise a simple employer-employee relationship.\r\n\r\nAlthough the common perception is that self-employment is concentrated in a few service sector industries, like sales people and insurance agents, research by the Small Business Administration has shown that self-employment occurs across a wide segment of the U.S. economy.Furthermore, industries that are not commonly associated as a natural fit for self-employment, such as manufacturing, have in fact been shown to have a large proportion of self-employed individuals and home-based businesses.\r\n\r\nIn the United States, any person is considered self-employed for tax purposes if that person is running a business as a sole proprietorship, independent contractor, as a member of a partnership, or as a member of a limited liability company that does not elect to be treated as a corporation. In addition to income taxes, these individuals must pay Social Security and Medicare taxes in the form of a SECA (Self-Employment Contributions Act) tax.', 'Commonly associated as a natural fit', '', 'publish', 'closed', 'closed', '', 'commonly-associated-as-a-natural-fit', '', '', '2019-01-23 10:27:30', '2019-01-23 10:27:30', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=116', 0, 'post', '', 0),
(130, 1, '2019-01-24 09:34:00', '2019-01-24 09:34:00', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2019-01-24 09:34:00', '2019-01-24 09:34:00', '', 0, 'http://rarathemesdemo.com/jobscout-pro/2019/01/24/130/', 1, 'nav_menu_item', '', 0),
(131, 1, '2019-01-24 09:34:00', '2019-01-24 09:34:00', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2019-01-24 09:34:00', '2019-01-24 09:34:00', '', 0, 'http://rarathemesdemo.com/jobscout-pro/2019/01/24/131/', 9, 'nav_menu_item', '', 0),
(132, 1, '2019-01-24 09:34:00', '2019-01-24 09:34:00', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2019-01-24 09:34:00', '2019-01-24 09:34:00', '', 0, 'http://rarathemesdemo.com/jobscout-pro/2019/01/24/132/', 3, 'nav_menu_item', '', 0),
(133, 1, '2019-01-24 09:34:00', '2019-01-24 09:34:00', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2019-01-24 09:34:00', '2019-01-24 09:34:00', '', 0, 'http://rarathemesdemo.com/jobscout-pro/2019/01/24/133/', 18, 'nav_menu_item', '', 0),
(140, 1, '2019-01-24 09:47:03', '2019-01-24 09:47:03', 'Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. Their new technique, described in a study published on Thursday in the journal Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone.\r\n\r\nIt’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n\r\nAn absolutely amazing and exciting paper,” added David Reich, a genetics professor. Harvard who focuses on ancient DNA. Until recently, the only way to study the genes of ancient humans like the Neanderthals and their cousins, the Denisovans, was to recover DNA from fossil bones.\r\n\r\nBut they are scarce and hard to find, which has greatly limited research into where early humans lived and how widely they ranged. The only Denisovan bones and teeth that scientists have, for example, come from a single cave in Siberia.\r\n<h1>Heading 1: How Retail Brands Can Cash in on Content Marketing</h1>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<h2>Heading 2: How Retail Brands Can Cash in on Content Marketing</h2>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<h3>Heading 3: How Retail Brands Can Cash in on Content Marketing</h3>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<blockquote>“I\'ve missed more than 9000 shots in my career. I\'ve lost almost 300 games. 26 times I\'ve been trusted to take the game winning shot and missed. I\'ve failed over and over and over again in my life. And that is why I succeed.” - MICHAEL JORDAN, Chicago Bulls</blockquote>\r\n<h4>Heading 4: How Retail Brands Can Cash in on Content Marketing</h4>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<h5>Heading 5: How Retail Brands Can Cash in on Content Marketing</h5>\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<h6>Heading 6: How Retail Brands Can Cash in on Content Marketing</h6>\r\n<img class=\"alignleft size-medium wp-image-114\" src=\"http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/StockSnap_E5GUBD8MWN-1-300x200.jpg\" alt=\"\" width=\"300\" height=\"200\" />Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n\r\n“The goal of a designer is to listen, observe, understand, sympathize, empathize, synthesize, and glean insights that enable him or her to ‘make the invisible visible.”\r\n\r\nSifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Sifting through teaspoons of clay and sand scraped from the floors of caves, German researchers have managed to isolate ancient human DNA — without turning up a single bone. It’s a bit like discovering that you can extract gold dust from the air,” said Adam Siepel, a population geneticist at Cold Spring Harbor Laboratory.\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>Name</th>\r\n<th>Position</th>\r\n<th>Office</th>\r\n<th>Cities</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Erica Romaguera</td>\r\n<td>Coach</td>\r\n<td>Audi</td>\r\n<td>New York City</td>\r\n</tr>\r\n<tr>\r\n<td>Caleigh Jerde</td>\r\n<td>Lawyer</td>\r\n<td>Pizza Hut</td>\r\n<td>Los Angeles</td>\r\n</tr>\r\n<tr>\r\n<td>Lucas Schultz</td>\r\n<td>Librarian</td>\r\n<td>Burberry</td>\r\n<td>Beijing</td>\r\n</tr>\r\n<tr>\r\n<td>Carole Marvin</td>\r\n<td>Educator</td>\r\n<td>Starbucks</td>\r\n<td>Istanbul</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2>Հայերեն</h2>\r\nLorem Ipsum-ը տպագրության և տպագրական արդյունաբերության համար նախատեսված մոդելային տեքստ է: Սկսած 1500-ականներից` Lorem Ipsum-ը հանդիսացել է տպագրական արդյունաբերության ստանդարտ մոդելային տեքստ, ինչը մի անհայտ տպագրիչի կողմից տարբեր տառատեսակների օրինակների գիրք ստեղծելու ջանքերի արդյունք է: Այս տեքստը ոչ միայն կարողացել է գոյատևել հինգ դարաշրջան, այլև ներառվել է էլեկտրոնային տպագրության մեջ` մնալով էապես անփոփոխ: Այն հայտնի է դարձել 1960-ականներին Lorem Ipsum բովանդակող Letraset էջերի թողարկման արդյունքում, իսկ ավելի ուշ համակարգչային տպագրության այնպիսի ծրագրերի թողարկման հետևանքով, ինչպիսին է Aldus PageMaker-ը, որը ներառում է Lorem Ipsum-ի տարատեսակներ:\r\n<h2>Български</h2>\r\nLorem Ipsum е елементарен примерен текст, използван в печатарската и типографската индустрия. Lorem Ipsum е индустриален стандарт от около 1500 година, когато неизвестен печатар взема няколко печатарски букви и ги разбърква, за да напечата с тях книга с примерни шрифтове. Този начин не само е оцелял повече от 5 века, но е навлязъл и в публикуването на електронни издания като е запазен почти без промяна. Популяризиран е през 60те години на 20ти век със издаването на Letraset листи, съдържащи Lorem Ipsum пасажи, популярен е и в наши дни във софтуер за печатни издания като Aldus PageMaker, който включва различни версии на Lorem Ipsum.\r\n<h2>Català</h2>\r\nLorem Ipsum és un text de farciment usat per la indústria de la tipografia i la impremta. Lorem Ipsum ha estat el text estàndard de la indústria des de l’any 1500, quan un impressor desconegut va fer servir una galerada de text i la va mesclar per crear un llibre de mostres tipogràfiques. No només ha sobreviscut cinc segles, sinó que ha fet el salt cap a la creació de tipus de lletra electrònics, romanent essencialment sense canvis. Es va popularitzar l’any 1960 amb el llançament de fulls Letraset que contenien passatges de Lorem Ipsum, i més recentment amb programari d’autoedició com Aldus Pagemaker que inclou versions de Lorem Ipsum.\r\n<h2>Hrvatski</h2>\r\nLorem Ipsum je jednostavno probni tekst koji se koristi u tiskarskoj i slovoslagarskoj industriji. Lorem Ipsum postoji kao industrijski standard još od 16-og stoljeća, kada je nepoznati tiskar uzeo tiskarsku galiju slova i posložio ih da bi napravio knjigu s uzorkom tiska. Taj je tekst ne samo preživio pet stoljeća, već se i vinuo u svijet elektronskog slovoslagarstva, ostajući u suštini nepromijenjen. Postao je popularan tijekom 1960-ih s pojavom Letraset listova s odlomcima Lorem Ipsum-a, a u skorije vrijeme sa software-om za stolno izdavaštvo kao što je Aldus PageMaker koji također sadrži varijante Lorem Ipsum-a.\r\n<h2>Česky</h2>\r\nLorem Ipsum je demonstrativní výplňový text používaný v tiskařském a knihařském průmyslu. Lorem Ipsum je považováno za standard v této oblasti už od začátku 16. století, kdy dnes neznámý tiskař vzal kusy textu a na jejich základě vytvořil speciální vzorovou knihu. Jeho odkaz nevydržel pouze pět století, on přežil i nástup elektronické sazby v podstatě beze změny. Nejvíce popularizováno bylo Lorem Ipsum v šedesátých letech 20. století, kdy byly vydávány speciální vzorníky s jeho pasážemi a později pak díky počítačovým DTP programům jako Aldus PageMaker.\r\n<h2>Româna</h2>\r\nLorem Ipsum este pur şi simplu o machetă pentru text a industriei tipografice. Lorem Ipsum a fost macheta standard a industriei încă din secolul al XVI-lea, când un tipograf anonim a luat o planşetă de litere şi le-a amestecat pentru a crea o carte demonstrativă pentru literele respective. Nu doar că a supravieţuit timp de cinci secole, dar şi a facut saltul în tipografia electronică practic neschimbată. A fost popularizată în anii ’60 odată cu ieşirea colilor Letraset care conţineau pasaje Lorem Ipsum, iar mai recent, prin programele de publicare pentru calculator, ca Aldus PageMaker care includeau versiuni de Lorem Ipsum.\r\n<h2>Српски</h2>\r\nLorem Ipsum је једноставно модел текста који се користи у штампарској и словослагачкој индустрији. Lorem ipsum је био стандард за модел текста још од 1500. године, када је непознати штампар узео кутију са словима и сложио их како би направио узорак књиге. Не само што је овај модел опстао пет векова, него је чак почео да се користи и у електронским медијима, непроменивши се. Популаризован је шездесетих година двадесетог века заједно са листовима летерсета који су садржали Lorem Ipsum пасусе, а данас са софтверским пакетом за прелом као што је Aldus PageMaker који је садржао Lorem Ipsum верзије.', 'Full Width', '', 'publish', 'closed', 'closed', '', 'full-width', '', '', '2019-01-24 09:47:03', '2019-01-24 09:47:03', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=140', 0, 'page', '', 0),
(144, 1, '2019-01-24 09:50:14', '2019-01-24 09:50:14', '', 'Pages', '', 'publish', 'closed', 'closed', '', 'pages', '', '', '2019-01-24 09:50:14', '2019-01-24 09:50:14', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=144', 7, 'nav_menu_item', '', 0),
(145, 1, '2019-01-24 09:50:14', '2019-01-24 09:50:14', '', 'Category Page', '', 'publish', 'closed', 'closed', '', '145', '', '', '2019-01-24 09:50:14', '2019-01-24 09:50:14', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=145', 10, 'nav_menu_item', '', 0),
(146, 1, '2019-01-24 09:50:14', '2019-01-24 09:50:14', ' ', '', '', 'publish', 'closed', 'closed', '', '146', '', '', '2019-01-24 09:50:14', '2019-01-24 09:50:14', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=146', 8, 'nav_menu_item', '', 0),
(147, 1, '2019-01-24 09:50:33', '2019-01-24 09:50:33', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio-2', '', '', '2019-01-24 09:50:33', '2019-01-24 09:50:33', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=147', 0, 'page', '', 0),
(149, 1, '2019-01-24 09:52:17', '2019-01-24 09:52:17', 'The style guide provides you with a blueprint of Paperback’s default post and page styles. The style guide is also a great reference for suggested typographic treatment and styles for your content.\r\n\r\n<hr />\r\n\r\n<h4>Right Aligned Image</h4>\r\n<img class=\"size-medium wp-image-53 alignright\" src=\"http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/pexels-photo-247917-1-300x200.jpeg\" alt=\"\" width=\"300\" height=\"200\" />Images may be two-dimensional, such as a photograph, screen display, and as well as a three-dimensional, such as a statue or hologram. They may be captured by optical devices – such as cameras, mirrors, lenses, telescopes, microscopes, etc. and natural objects and phenomena, such as the human eye or water surfaces. The word image is also used in the broader sense of any two-dimensional figure such as a map, a graph, a pie chart, or an abstract painting. The word image is also used in the broader sense of any two-dimensional figure such as a map, a graph, a pie chart, or an abstract painting. The word image is also used in the broader sense of any two-dimensional figure such as a map, a graph, a pie chart, or an abstract painting.\r\n\r\n<hr />\r\n\r\n<h4>Left Aligned Image</h4>\r\n<img class=\"alignleft size-medium wp-image-49\" src=\"http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/01/fezbot2000-365718-unsplash-2-210x300.jpg\" alt=\"\" width=\"210\" height=\"300\" />The word image is also used in the broader sense of any two-dimensional figure such as a map, a graph, a pie chart, or an abstract painting. In this wider sense, images can also be rendered manually, such as by drawing, painting, carving, rendered automatically by printing or computer graphics technology, or developed by a combination of methods. Images may be two-dimensional, such as a photograph, screen display, and as well as a three-dimensional, such as a statue or hologram.\r\n\r\nA volatile image is one that exists only for a short period of time. This may be a reflection of an object by a mirror, a projection of a camera obscura, or a scene displayed on a cathode ray tube. A fixed image, also called a hard copy.\r\n\r\n<hr />\r\n\r\n<div class=\"tiled-gallery type-rectangular\">\r\n<div class=\"gallery-row\">\r\n<div class=\"gallery-group images-1\">\r\n<div id=\"gallery-1\" class=\"gallery galleryid-265 gallery-columns-2 gallery-size-full\">\r\n<figure class=\"gallery-item\">\r\n<div class=\"gallery-icon landscape\"></div></figure>\r\n</div>\r\n</div>\r\n<div class=\"gallery-group images-3\"></div>\r\n</div>\r\n</div>\r\n<h1>Heading One</h1>\r\n<h2>Heading Two</h2>\r\n<h3>Heading Three</h3>\r\n<h4>Heading Four</h4>\r\n<h5>Heading Five</h5>\r\n<h6>Heading Six</h6>\r\n<h6></h6>\r\n\r\n<hr />\r\n\r\n<h3>Blockquote</h3>\r\n<blockquote>The greatest gift of life is friendship, and I have received it.</blockquote>\r\n<h3 id=\"pull-quotes\">Typography Styles</h3>\r\n<span id=\"dropcap\" class=\"dropcap\">A</span>drop cap is a decorative element typically used in documents at the start of a section or chapter. It’s a large capital letter at the beginning or a paragraph or text block that has the depth of two or more lines of normal text. You can easily add a dropcap to any paragraph by adding the class <strong>dropcap</strong> as seen below:\r\n<pre>&lt;span class=\"dropcap\"&gt;T&lt;/span&gt;his is how you add a dropcap.</pre>\r\n\r\n<hr />\r\n\r\n<h3>Table Styles</h3>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>BEATLE</th>\r\n<th>INSTRUMENT</th>\r\n<th>SONG</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr class=\"odd\">\r\n<td>John Lennon</td>\r\n<td>Guitar</td>\r\n<td>A Day In the Life</td>\r\n</tr>\r\n<tr class=\"even\">\r\n<td>George Harrison</td>\r\n<td>Guitar</td>\r\n<td>Old Brown Shoe</td>\r\n</tr>\r\n<tr class=\"odd\">\r\n<td>Paul McCartney</td>\r\n<td>Bass</td>\r\n<td>Helter Skelter</td>\r\n</tr>\r\n<tr class=\"even\">\r\n<td>Ringo Starr</td>\r\n<td>Drums</td>\r\n<td>Don’t Pass Me By</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n\r\n<hr />\r\n\r\n<h3>Code Formatting</h3>\r\n<pre>pre {\r\n    position: relative;\r\n    background: #f7f7f7;\r\n    font-family: \"Courier 10 Pitch\", Courier, monospace;\r\n    font-size: 15px;\r\n    font-size: 1.5rem;\r\n    line-height: 1.6;\r\n    margin-bottom: 1.6em;\r\n    padding: 1.6em;\r\n    overflow: auto;\r\n    max-width: 100%;\r\n    tab-size: 4;\r\n}</pre>\r\n\r\n<hr />\r\n\r\n<h3>Mixed List Items</h3>\r\n<ul>\r\n 	<li>Unordered list item one</li>\r\n 	<li>Unordered list item two\r\n<ol>\r\n 	<li>Ordered list item one</li>\r\n 	<li>Ordered list item two\r\n<ul>\r\n 	<li>Unordered list item one</li>\r\n 	<li>Unordered list item two\r\n<ol>\r\n 	<li>Ordered list item one</li>\r\n 	<li>Ordered list item two</li>\r\n 	<li>Ordered list item three</li>\r\n</ol>\r\n</li>\r\n 	<li>Unordered list item three</li>\r\n</ul>\r\n</li>\r\n 	<li>Ordered list item three</li>\r\n</ol>\r\n</li>\r\n 	<li>Unordered list item three</li>\r\n</ul>', 'Style Guide', '', 'publish', 'closed', 'closed', '', 'style-guide', '', '', '2019-01-24 09:52:17', '2019-01-24 09:52:17', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=149', 0, 'page', '', 0),
(151, 1, '2019-01-24 09:52:31', '2019-01-24 09:52:31', ' ', '', '', 'publish', 'closed', 'closed', '', '151', '', '', '2019-01-24 09:52:31', '2019-01-24 09:52:31', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=151', 6, 'nav_menu_item', '', 0),
(152, 1, '2019-01-24 09:55:25', '2019-01-24 09:55:25', '', 'Search Page', '', 'publish', 'closed', 'closed', '', 'search-page', '', '', '2019-01-24 09:55:25', '2019-01-24 09:55:25', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=152', 12, 'nav_menu_item', '', 0),
(153, 1, '2019-01-24 09:55:25', '2019-01-24 09:55:25', '', '404 Error Page', '', 'publish', 'closed', 'closed', '', '404-error-page', '', '', '2019-01-24 09:55:25', '2019-01-24 09:55:25', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=153', 13, 'nav_menu_item', '', 0),
(154, 1, '2019-01-24 09:55:25', '2019-01-24 09:55:25', '', 'Post Page', '', 'publish', 'closed', 'closed', '', 'post-page', '', '', '2019-01-24 09:55:25', '2019-01-24 09:55:25', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=154', 11, 'nav_menu_item', '', 0),
(838, 1, '2018-12-26 06:24:05', '2018-12-26 06:24:05', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Van MockUp PSD 6 Angles', '', 'publish', 'closed', 'closed', '', 'van-mockup-psd-6-angles', '', '', '2018-12-26 06:24:05', '2018-12-26 06:24:05', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=838', 0, 'rara-portfolio', '', 0),
(844, 1, '2018-12-26 06:28:26', '2018-12-26 06:28:26', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Water Bottle MockUp', '', 'publish', 'closed', 'closed', '', 'water-bottle-mockup', '', '', '2018-12-26 06:28:26', '2018-12-26 06:28:26', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=844', 0, 'rara-portfolio', '', 0),
(845, 1, '2018-12-26 06:28:56', '2018-12-26 06:28:56', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Epsilon Powerpoint Template Free', '', 'publish', 'closed', 'closed', '', 'epsilon-powerpoint-template-free', '', '', '2018-12-26 06:28:56', '2018-12-26 06:28:56', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=845', 0, 'rara-portfolio', '', 0),
(846, 1, '2018-12-26 06:29:52', '2018-12-26 06:29:52', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Flatlay Business Photos', '', 'publish', 'closed', 'closed', '', 'flatlay-business-photos', '', '', '2018-12-26 06:29:52', '2018-12-26 06:29:52', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=846', 0, 'rara-portfolio', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(847, 1, '2018-12-26 06:31:16', '2018-12-26 06:31:16', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Phoenix Startup UI Kit Free Sample', '', 'publish', 'closed', 'closed', '', 'phoenix-startup-ui-kit-free-sample', '', '', '2018-12-26 06:31:16', '2018-12-26 06:31:16', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=847', 0, 'rara-portfolio', '', 0),
(853, 1, '2018-12-26 06:35:26', '2018-12-26 06:35:26', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Modern Office Photos', '', 'publish', 'closed', 'closed', '', 'modern-office-photos', '', '', '2018-12-26 06:35:26', '2018-12-26 06:35:26', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=853', 0, 'rara-portfolio', '', 0),
(855, 1, '2018-12-26 06:37:52', '2018-12-26 06:37:52', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Fashion eCommerce Templates', '', 'publish', 'closed', 'closed', '', 'fashion-ecommerce-templates', '', '', '2018-12-26 06:37:52', '2018-12-26 06:37:52', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=855', 0, 'rara-portfolio', '', 0),
(857, 1, '2018-12-26 06:43:43', '2018-12-26 06:43:43', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Dlex ECommerce UI Kit', '', 'publish', 'closed', 'closed', '', 'dlex-ecommerce-ui-kit', '', '', '2018-12-26 06:43:43', '2018-12-26 06:43:43', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=857', 0, 'rara-portfolio', '', 0),
(860, 1, '2018-12-26 06:51:24', '2018-12-26 06:51:24', 'A web designer is someone who is both creative and technically inclined, and uses both these attributes to build or redesign websites. The web designer has the ability to understand what is needed to make a website functional and easy to use, but at the same time make it aesthetically appealing to the user.\r\n\r\nCoaching is a form of development in which a person called a coach supports a learner or client in achieving a specific personal or professional goal by providing training and guidance.The learner is sometimes called a coachee. Occasionally, coaching may mean an informal relationship between two people, of whom one has more experience and expertise than the other and offers advice and guidance as the latter learns; but coaching differs from mentoring in focusing on specific tasks or objectives, as opposed to more general goals or overall development.\r\n\r\nThe first use of the term “coach” in connection with an instructor or trainer arose around 1830 in Oxford University slang for a tutor who “carried” a student through an exam.The word “coaching” thus identified a process used to transport people from where they are to where they want to be. The first use of the term in relation to sports came in 1861. Historically the development of coaching has been influenced by many fields of activity, including adult education, the Human Potential Movement, large-group awareness training (LGAT) groups such as “est”, leadership studies, personal development, and psychology.\r\n\r\nProfessional coaching uses a range of communication skills (such as targeted restatements, listening, questioning, clarifying etc.) to help clients shift their perspectives and thereby discover different approaches to achieve their goals.These skills can be used in almost all types of coaching. In this sense, coaching is a form of “meta-profession” that can apply to supporting clients in any human endeavor, ranging from their concerns in health, personal, professional, sport, social, family, political, spiritual dimensions, etc. There may be some overlap between certain types of coaching activities.\r\n\r\nThe concept of ADHD coaching was first introduced in 1994 by psychiatrists Edward M. Hallowell and John J. Ratey in their book Driven to Distraction.ADHD coaching is a specialized type of life coaching that uses specific techniques designed to assist individuals with attention-deficit hyperactivity disorder. The goal of ADHD coaching is to mitigate the effects of executive function deficit, which is a typical impairment for people with ADHD. Coaches work with clients to help them better manage time, organize, set goals and complete projects. In addition to helping clients understand the impact ADHD has had on their lives, coaches can help clients develop “work-around” strategies to deal with specific challenges, and determine and use individual strengths. Coaches also help clients get a better grasp of what reasonable expectations are for them as individuals, since people with ADHD “brain wiring” often seem to need external mirrors for accurate self-awareness about their potential despite their impairment.', 'Personal Free HTML Template', '', 'publish', 'closed', 'closed', '', 'personal-free-html-template', '', '', '2018-12-26 06:51:24', '2018-12-26 06:51:24', '', 0, 'http://rarathemesdemo.com/digital-download/?post_type=rara-portfolio&amp;p=860', 0, 'rara-portfolio', '', 0),
(861, 1, '2019-01-24 10:08:29', '2019-01-24 10:08:29', ' ', '', '', 'publish', 'closed', 'closed', '', '861', '', '', '2019-01-24 10:08:29', '2019-01-24 10:08:29', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=861', 5, 'nav_menu_item', '', 0),
(882, 1, '2019-01-24 10:29:55', '2019-01-24 10:29:55', '', 'album-1', '', 'inherit', 'open', 'closed', '', 'album-1', '', '', '2019-01-24 10:29:55', '2019-01-24 10:29:55', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/album-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(883, 1, '2019-01-24 10:31:23', '2019-01-24 10:31:23', '', 'beanie-2', '', 'inherit', 'open', 'closed', '', 'beanie-2', '', '', '2019-01-24 10:31:23', '2019-01-24 10:31:23', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/beanie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(884, 1, '2019-01-24 10:32:10', '2019-01-24 10:32:10', '', 'beanie-with-logo-1', '', 'inherit', 'open', 'closed', '', 'beanie-with-logo-1', '', '', '2019-01-24 10:32:10', '2019-01-24 10:32:10', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/beanie-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(885, 1, '2019-01-24 10:33:11', '2019-01-24 10:33:11', '', 'belt-2', '', 'inherit', 'open', 'closed', '', 'belt-2', '', '', '2019-01-24 10:33:11', '2019-01-24 10:33:11', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/belt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(886, 1, '2019-01-24 10:33:54', '2019-01-24 10:33:54', '', 'cap-2-600x600', '', 'inherit', 'open', 'closed', '', 'cap-2-600x600', '', '', '2019-01-24 10:33:54', '2019-01-24 10:33:54', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/cap-2-600x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(887, 1, '2019-01-24 10:34:52', '2019-01-24 10:34:52', '', 'hoodie-with-logo-2', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-2', '', '', '2019-01-24 10:34:52', '2019-01-24 10:34:52', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/hoodie-with-logo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(888, 1, '2019-01-24 10:34:53', '2019-01-24 10:34:53', '', 'hoodie-2-600x600', '', 'inherit', 'open', 'closed', '', 'hoodie-2-600x600', '', '', '2019-01-24 10:34:53', '2019-01-24 10:34:53', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/hoodie-2-600x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(889, 1, '2019-01-24 10:36:01', '2019-01-24 10:36:01', '', 'hoodie-with-zipper-2-600x600', '', 'inherit', 'open', 'closed', '', 'hoodie-with-zipper-2-600x600', '', '', '2019-01-24 10:36:01', '2019-01-24 10:36:01', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/hoodie-with-zipper-2-600x600.jpg', 0, 'attachment', 'image/jpeg', 0),
(890, 1, '2019-01-24 10:36:03', '2019-01-24 10:36:03', '', 'logo-1', '', 'inherit', 'open', 'closed', '', 'logo-1-2', '', '', '2019-01-24 10:36:03', '2019-01-24 10:36:03', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(891, 1, '2019-01-24 10:37:24', '2019-01-24 10:37:24', '', 'polo-2', '', 'inherit', 'open', 'closed', '', 'polo-2', '', '', '2019-01-24 10:37:24', '2019-01-24 10:37:24', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/polo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(892, 1, '2019-01-24 10:37:26', '2019-01-24 10:37:26', '', 'single-1', '', 'inherit', 'open', 'closed', '', 'single-1', '', '', '2019-01-24 10:37:26', '2019-01-24 10:37:26', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/single-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(894, 1, '2019-01-24 10:38:30', '2019-01-24 10:38:30', '', 'long-sleeve-tee-2', '', 'inherit', 'open', 'closed', '', 'long-sleeve-tee-2', '', '', '2019-01-24 10:38:30', '2019-01-24 10:38:30', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/long-sleeve-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(895, 1, '2019-01-24 10:39:15', '2019-01-24 10:39:15', '', 'sunglasses-2', '', 'inherit', 'open', 'closed', '', 'sunglasses-2', '', '', '2019-01-24 10:39:15', '2019-01-24 10:39:15', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/sunglasses-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(896, 1, '2019-01-24 10:39:31', '2019-01-24 10:39:31', '', 'tshirt-2', '', 'inherit', 'open', 'closed', '', 'tshirt-2', '', '', '2019-01-24 10:39:31', '2019-01-24 10:39:31', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/tshirt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(898, 1, '2019-01-24 10:40:28', '2019-01-24 10:40:28', '', 'pennant-1-300x300', '', 'inherit', 'open', 'closed', '', 'pennant-1-300x300', '', '', '2019-01-24 10:40:28', '2019-01-24 10:40:28', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/pennant-1-300x300.jpg', 0, 'attachment', 'image/jpeg', 0),
(900, 1, '2019-01-24 10:43:13', '2019-01-24 10:43:13', '', 'vneck-tee-2', '', 'inherit', 'open', 'closed', '', 'vneck-tee-2', '', '', '2019-01-24 10:43:13', '2019-01-24 10:43:13', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2017/12/vneck-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(901, 1, '2019-01-24 10:43:44', '2019-01-24 10:43:44', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2019-01-24 10:43:44', '2019-01-24 10:43:44', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=901', 0, 'page', '', 0),
(903, 1, '2019-01-24 10:43:54', '2019-01-24 10:43:54', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2019-01-24 10:43:54', '2019-01-24 10:43:54', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=903', 0, 'page', '', 0),
(905, 1, '2019-01-24 10:46:42', '2019-01-24 10:46:42', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2019-01-24 10:46:42', '2019-01-24 10:46:42', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=905', 0, 'page', '', 0),
(907, 1, '2019-01-24 10:46:22', '2019-01-24 10:46:22', ' ', '', '', 'publish', 'closed', 'closed', '', '907', '', '', '2019-01-24 10:46:22', '2019-01-24 10:46:22', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=907', 15, 'nav_menu_item', '', 0),
(908, 1, '2019-01-24 10:46:22', '2019-01-24 10:46:22', ' ', '', '', 'publish', 'closed', 'closed', '', '908', '', '', '2019-01-24 10:46:22', '2019-01-24 10:46:22', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=908', 14, 'nav_menu_item', '', 0),
(909, 1, '2019-01-24 10:46:53', '2019-01-24 10:46:53', ' ', '', '', 'publish', 'closed', 'closed', '', '909', '', '', '2019-01-24 10:46:53', '2019-01-24 10:46:53', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=909', 16, 'nav_menu_item', '', 0),
(913, 1, '2019-01-24 10:50:21', '2019-01-24 10:50:21', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2019-01-24 10:50:21', '2019-01-24 10:50:21', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=913', 0, 'page', '', 0),
(916, 1, '2019-01-24 10:51:45', '2019-01-24 10:51:45', ' ', '', '', 'publish', 'closed', 'closed', '', '916', '', '', '2019-01-24 10:51:45', '2019-01-24 10:51:45', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=916', 17, 'nav_menu_item', '', 0),
(917, 1, '2019-01-24 10:53:19', '2019-01-24 10:53:19', '', 'Products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2019-01-24 10:53:19', '2019-01-24 10:53:19', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=917', 2, 'nav_menu_item', '', 0),
(918, 1, '2019-01-24 10:53:19', '2019-01-24 10:53:19', ' ', '', '', 'publish', 'closed', 'closed', '', '918', '', '', '2019-01-24 10:53:19', '2019-01-24 10:53:19', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=918', 3, 'nav_menu_item', '', 0),
(919, 1, '2019-01-24 10:53:19', '2019-01-24 10:53:19', ' ', '', '', 'publish', 'closed', 'closed', '', '919', '', '', '2019-01-24 10:53:19', '2019-01-24 10:53:19', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=919', 4, 'nav_menu_item', '', 0),
(920, 1, '2019-01-24 10:53:19', '2019-01-24 10:53:19', ' ', '', '', 'publish', 'closed', 'closed', '', '920', '', '', '2019-01-24 10:53:19', '2019-01-24 10:53:19', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=920', 1, 'nav_menu_item', '', 0),
(921, 1, '2019-01-24 11:24:13', '2019-01-24 11:24:13', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Clerk I - Base Post Office', '', 'publish', 'closed', 'closed', '', 'clerk-i-base-post-office', '', '', '2019-01-24 11:24:13', '2019-01-24 11:24:13', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&amp;p=921', 0, 'job_listing', '', 0),
(922, 1, '2019-01-24 11:28:27', '2019-01-24 11:28:27', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Us Post Office Job Openings', '', 'publish', 'closed', 'closed', '', 'us-post-office-job-openings', '', '', '2019-01-24 11:28:27', '2019-01-24 11:28:27', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&amp;p=922', 0, 'job_listing', '', 0),
(923, 1, '2019-01-24 11:33:47', '2019-01-24 11:33:47', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'House Manager And Personal Assistant', '', 'publish', 'closed', 'closed', '', 'house-manager-and-personal-assistant', '', '', '2019-01-24 11:33:47', '2019-01-24 11:33:47', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&amp;p=923', 0, 'job_listing', '', 0),
(924, 1, '2019-01-24 11:30:55', '2019-01-24 11:30:55', ' ', '', '', 'publish', 'closed', 'closed', '', '924', '', '', '2019-01-24 11:30:55', '2019-01-24 11:30:55', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=924', 5, 'nav_menu_item', '', 0),
(925, 1, '2019-01-24 11:31:19', '2019-01-24 11:31:19', ' ', '', '', 'publish', 'closed', 'closed', '', '925', '', '', '2019-01-24 11:31:19', '2019-01-24 11:31:19', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=925', 2, 'nav_menu_item', '', 0),
(926, 1, '2019-01-24 11:32:08', '2019-01-24 11:32:08', ' ', '', '', 'publish', 'closed', 'closed', '', '926', '', '', '2019-01-24 11:32:08', '2019-01-24 11:32:08', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?p=926', 4, 'nav_menu_item', '', 0),
(928, 1, '2019-01-24 11:39:11', '2019-01-24 11:39:11', 'A job, or occupation, is a person\'s role in society. More specifically, a job is an activity, often regular and often performed in exchange for payment \"for a living\"Many people have multiple jobs e.g., parent, homemaker, and employee. A person can begin a job by becoming an employee, volunteering, starting a business, or becoming a parent. The duration of a job may range from temporary e.g., hourly odd jobs to a lifetime e.g., judges.\r\n\r\nAn activity that requires a person\'s mental or physical effort is work as in \"a day\'s work\". If a person is trained for a certain type of job, they may have a profession. Typically, a job would be a subset of someone\'s career. The two may differ in that one usually retires from their career, versus resignation or termination from a job.\r\n\r\nTypes of jobs\r\nJobs can be categorized, by the hours per week, into full time or part time. They can be categorized as temporary, odd jobs, seasonal, self-employment, consulting, or contract employment.\r\n\r\nJobs can be categorized as paid or unpaid. Examples of unpaid jobs include volunteer, homemaker, mentor, student, and sometimes intern.\r\n\r\nJobs can be categorized by the level of experience required: entry level, intern, and co-op.\r\n\r\nSome jobs require specific training or an academic degree.\r\n\r\nThose without paid full-time employment may be categorized as unemployed or underemployed if they are seeking a full-time paid job.\r\n\r\nMoonlighting is the practice of holding an additional job or jobs, often at night, in addition to one\'s main job, usually to earn extra income. A person who moonlights may have little time left for sleep or leisure activities.\r\n\r\nThe Office for National Statistics in the United Kingdom lists 27,966 different job titles, within a website published 2015.', 'Administrative Assistant', '', 'publish', 'closed', 'closed', '', 'administrative-assistant', '', '', '2019-01-24 11:39:11', '2019-01-24 11:39:11', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?post_type=job_listing&amp;p=928', 0, 'job_listing', '', 0),
(936, 1, '2019-02-20 12:43:47', '2019-02-20 12:43:47', '', 'Login and Registration', '', 'publish', 'closed', 'closed', '', 'login-and-registration', '', '', '2019-02-20 12:43:47', '2019-02-20 12:43:47', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=936', 0, 'page', '', 0),
(954, 1, '2019-03-18 10:48:49', '2019-03-18 10:48:49', '<!-- wp:heading -->\r\n<h2>Who we are</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Our website address is: http://rarathemesdemo.com/jobscout.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>What personal data we collect and why we collect it</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Comments</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Media</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Contact forms</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Cookies</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Embedded content from other websites</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Analytics</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Who we share your data with</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>How long we retain your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>What rights you have over your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Where we send your data</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Visitor comments may be checked through an automated spam detection service.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Your contact information</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading -->\r\n<h2>Additional information</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>How we protect your data</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>What data breach procedures we have in place</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>What third parties we receive data from</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>What automated decision making and/or profiling we do with user data</h3>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:heading {\"level\":3} -->\r\n<h3>Industry regulatory disclosure requirements</h3>\r\n<!-- /wp:heading -->', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy-2', '', '', '2019-03-18 10:48:49', '2019-03-18 10:48:49', '', 0, 'http://rarathemesdemo.com/jobscout/?page_id=954', 0, 'page', '', 0),
(966, 1, '2019-04-18 07:17:08', '2019-04-18 07:17:08', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-04-18 07:17:08', '2019-04-18 07:17:08', '', 0, 'http://rarathemesdemo.com/jobscout/wp-content/uploads/sites/97/2019/04/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(967, 1, '2019-01-16 04:52:01', '2019-01-16 04:52:01', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://rarathemesdemo.com/jobscout-pro/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page-2', '', '', '2019-01-16 04:52:01', '2019-01-16 04:52:01', '', 0, 'http://rarathemesdemo.com/jobscout-pro/?page_id=2', 0, 'page', '', 0),
(968, 1, '2019-01-22 08:29:47', '2019-01-22 08:29:47', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2019-01-22 08:29:47', '2019-01-22 08:29:47', '', 0, 'http://rarathemesdemo.com/jobscout-pro/portfolio/', 0, 'page', '', 0),
(969, 1, '2021-06-28 07:49:40', '2021-06-28 07:49:40', '{\n    \"blogdescription\": {\n        \"value\": \"Cari Pekerjaan Sesuai Passionmu!\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-28 07:49:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8d55ecdb-3b85-4ff3-bbd1-5be60c5d791d', '', '', '2021-06-28 07:49:40', '2021-06-28 07:49:40', '', 0, 'http://localhost/wordpress/2021/06/28/8d55ecdb-3b85-4ff3-bbd1-5be60c5d791d/', 0, 'customize_changeset', '', 0),
(970, 1, '2021-06-28 07:51:47', '2021-06-28 07:51:47', '{\n    \"jobscout::post_job_url\": {\n        \"value\": \"/post-a-job\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-28 07:51:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7f41aaa8-7432-45df-b75d-2faa32f53713', '', '', '2021-06-28 07:51:47', '2021-06-28 07:51:47', '', 0, 'http://localhost/wordpress/?p=970', 0, 'customize_changeset', '', 0),
(971, 1, '2021-06-28 07:52:04', '2021-06-28 07:52:04', '{\n    \"jobscout::post_job_url\": {\n        \"value\": \"wordpress/post-a-job\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-28 07:52:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1c3895a5-3e37-4870-8593-9883feb256f0', '', '', '2021-06-28 07:52:04', '2021-06-28 07:52:04', '', 0, 'http://localhost/wordpress/2021/06/28/1c3895a5-3e37-4870-8593-9883feb256f0/', 0, 'customize_changeset', '', 0),
(972, 1, '2021-06-28 07:52:46', '2021-06-28 07:52:46', '{\n    \"jobscout::post_job_url\": {\n        \"value\": \"http://localhost/wordpress/post-a-job/\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-28 07:52:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e2a481ff-5573-4e5e-a123-329522466f3e', '', '', '2021-06-28 07:52:46', '2021-06-28 07:52:46', '', 0, 'http://localhost/wordpress/2021/06/28/e2a481ff-5573-4e5e-a123-329522466f3e/', 0, 'customize_changeset', '', 0),
(973, 1, '2021-06-28 14:56:09', '0000-00-00 00:00:00', '{\n    \"jobscout::banner_title\": {\n        \"value\": \"Welcome\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-28 14:56:09\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '28d3d661-09f2-4181-8c0f-5aece8c835d9', '', '', '2021-06-28 14:56:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=973', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'employment_type', 'FULL_TIME'),
(2, 3, 'employment_type', 'PART_TIME'),
(3, 4, 'employment_type', 'TEMPORARY'),
(4, 5, 'employment_type', 'CONTRACTOR'),
(5, 6, 'employment_type', 'INTERN'),
(6, 12, 'category-image-id', '28'),
(7, 13, 'category-image-id', '35'),
(8, 14, 'category-image-id', '36'),
(9, 15, 'category-image-id', '27'),
(10, 17, 'category-image-id', '37'),
(11, 18, 'category-image-id', '29'),
(12, 20, 'category-image-id', '26'),
(13, 25, 'category-image-id', '25');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Full Time', 'full-time', 0),
(3, 'Part Time', 'part-time', 0),
(4, 'Temporary', 'temporary', 0),
(5, 'Freelance', 'freelance', 0),
(6, 'Internship', 'internship', 0),
(7, 'Festival', 'festival', 0),
(8, 'Hotel', 'hotel', 0),
(9, 'Restaurant', 'restaurant', 0),
(10, 'Spa and Salon', 'spa-and-salon', 0),
(11, 'Travel', 'travel', 0),
(12, 'Accounting / Finance', 'accounting-finance', 0),
(13, 'Construction Facilities', 'construction-facilities', 0),
(14, 'Education Training', 'education-training', 0),
(15, 'Food &amp; Restaurant', 'food-restaurant', 0),
(16, 'GRAPHIC', 'graphic', 0),
(17, 'Health Care', 'health-care', 0),
(18, 'Human Resource', 'human-resource', 0),
(19, 'ILLUSTRATION', 'illustration', 0),
(20, 'IT Services', 'it-services', 0),
(21, 'MOCKUP', 'mockup', 0),
(22, 'PHOTOGRAPHY', 'photography', 0),
(23, 'UI/UX', 'ui-ux', 0),
(24, 'WEB', 'web', 0),
(25, 'Web &amp; Marketing', 'web-and-marketing', 0),
(26, 'Primary', 'primary', 0),
(27, 'Secondary', 'secondary', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(45, 20, 0),
(73, 25, 0),
(74, 17, 0),
(77, 18, 0),
(78, 14, 0),
(79, 18, 0),
(84, 11, 0),
(87, 9, 0),
(90, 7, 0),
(94, 10, 0),
(97, 8, 0),
(100, 7, 0),
(103, 8, 0),
(106, 9, 0),
(109, 10, 0),
(112, 10, 0),
(116, 11, 0),
(130, 26, 0),
(131, 26, 0),
(132, 26, 0),
(133, 26, 0),
(144, 26, 0),
(145, 26, 0),
(146, 26, 0),
(151, 26, 0),
(152, 26, 0),
(153, 26, 0),
(154, 26, 0),
(838, 21, 0),
(844, 22, 0),
(845, 16, 0),
(846, 23, 0),
(847, 24, 0),
(853, 19, 0),
(855, 16, 0),
(855, 19, 0),
(855, 21, 0),
(857, 21, 0),
(857, 22, 0),
(857, 24, 0),
(860, 16, 0),
(860, 23, 0),
(860, 24, 0),
(861, 26, 0),
(907, 26, 0),
(908, 26, 0),
(909, 26, 0),
(916, 26, 0),
(917, 27, 0),
(918, 27, 0),
(919, 27, 0),
(920, 27, 0),
(921, 13, 0),
(922, 15, 0),
(923, 12, 0),
(924, 27, 0),
(925, 26, 0),
(926, 26, 0),
(928, 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'job_listing_type', '', 0, 0),
(3, 3, 'job_listing_type', '', 0, 0),
(4, 4, 'job_listing_type', '', 0, 0),
(5, 5, 'job_listing_type', '', 0, 0),
(6, 6, 'job_listing_type', '', 0, 0),
(7, 7, 'category', '', 0, 2),
(8, 8, 'category', '', 0, 2),
(9, 9, 'category', '', 0, 2),
(10, 10, 'category', '', 0, 3),
(11, 11, 'category', '', 0, 2),
(12, 12, 'job_listing_type', '', 0, 1),
(13, 13, 'job_listing_type', '', 0, 2),
(14, 14, 'job_listing_type', '', 0, 1),
(15, 15, 'job_listing_type', '', 0, 1),
(16, 16, 'rara_portfolio_categories', '', 0, 3),
(17, 17, 'job_listing_type', '', 0, 1),
(18, 18, 'job_listing_type', '', 0, 2),
(19, 19, 'rara_portfolio_categories', '', 0, 2),
(20, 20, 'job_listing_type', '', 0, 1),
(21, 21, 'rara_portfolio_categories', '', 0, 3),
(22, 22, 'rara_portfolio_categories', '', 0, 2),
(23, 23, 'rara_portfolio_categories', '', 0, 2),
(24, 24, 'rara_portfolio_categories', '', 0, 3),
(25, 25, 'job_listing_type', '', 0, 1),
(26, 26, 'nav_menu', '', 0, 18),
(27, 27, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'drwise_gtr'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"8a1aab441aa2a5a8a37a3669036c5d7c274bf473779caf4b4f592332fb679128\";a:4:{s:10:\"expiration\";i:1626075060;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36\";s:5:\"login\";i:1624865460;}}'),
(17, 1, 'wp_user-settings', 'editor=tinymce'),
(18, 1, 'wp_user-settings-time', '1624865457'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'drwise_gtr', '$P$BQh9TQwusDuzhxKRVqQpsg48uh5vxq0', 'drwise_gtr', 'hilmyddr@gmail.com', 'http://localhost/wordpress', '2021-06-28 07:30:39', '', 0, 'drwise_gtr');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=974;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
