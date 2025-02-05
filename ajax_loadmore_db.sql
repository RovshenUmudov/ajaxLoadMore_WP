-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 16, 2022 at 02:24 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ajax_loadmore_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-04-14 09:35:49', '2022-04-14 09:35:49', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://ajax-load-more', 'yes'),
(2, 'home', 'http://ajax-load-more', 'yes'),
(3, 'blogname', 'Ajax Load More', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'fokkewolf190@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:97:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:32:\"duplicate-page/duplicatepage.php\";i:2;s:37:\"post-types-order/post-types-order.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wp-starter-theme', 'yes'),
(41, 'stylesheet', 'wp-starter-theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
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
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:39:\"copy-delete-posts/copy-delete-posts.php\";a:2:{i:0;s:15:\"Account\\Account\";i:1;s:25:\"onUninstallPluginListener\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '9', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1665480949', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"njt_duplicate_page\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"njt_duplicate_page\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1650105350;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1650144950;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1650188150;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1650188161;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1650188163;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1650620150;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'nonce_key', 'DHWwKw.9.5$XKG,RlwK?*eC`ye;+B3g-x7ewsK82O^9Klgt6_U;1V?p5rBL/R+~K', 'no'),
(115, 'nonce_salt', 'Ib,9Ek+>VoDU#Tg@bsq_Oy=HK9;ew^KE:p(#~S,`n,IT7&8jit vHUaC~nXks=8/', 'no'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(122, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.3\";s:7:\"version\";s:5:\"5.9.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1650101811;s:15:\"version_checked\";s:5:\"5.9.3\";s:12:\"translations\";a:0:{}}', 'no'),
(127, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1650099334;s:7:\"checked\";a:1:{s:16:\"wp-starter-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(128, 'auth_key', '6B)jy!=JFJbrT$xapHsvG5za:U1N:+Hs5JKOvv~8kM%nJ:hz-1x~&.=O&UROLM}6', 'no'),
(129, 'auth_salt', 'C9o=BbGB|F{{)bHAYbR{+d+l|glA[EV8nw|yfw!Ky.q_FE,7<&p@?.H1~zk(O:|`', 'no'),
(130, 'logged_in_key', '*1h}bA!XNHZ8#Gz28|!N0PT0CSq-cH9==Mfpxx>F*zy`?bMVH{w9 J?OY|~HC$A2', 'no'),
(131, 'logged_in_salt', 'L<.<Wp5Y60z)V%2~cT&egkJKw2HZ#W4n.1a0<tvATf/QNA{@!BBK-Xv5+%=@yUEQ', 'no'),
(132, '_site_transient_timeout_browser_8ffec38781748c07c6d2e71b451e2e28', '1650533762', 'no'),
(133, '_site_transient_browser_8ffec38781748c07c6d2e71b451e2e28', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"96.0.4664.110\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(134, '_site_transient_timeout_php_check_db560599daec4dc914fe3cee88686df3', '1650533763', 'no'),
(135, '_site_transient_php_check_db560599daec4dc914fe3cee88686df3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(137, 'can_compress_scripts', '1', 'no'),
(150, 'finished_updating_comment_type', '1', 'yes'),
(151, '_site_transient_timeout_php_check_12edeb5890095749089987982a1404ce', '1650533866', 'no'),
(152, '_site_transient_php_check_12edeb5890095749089987982a1404ce', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(153, 'theme_mods_twentytwentytwo', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1649929071;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(154, 'current_theme', 'Starter theme', 'yes'),
(155, 'theme_mods_wp-starter-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(159, 'recently_activated', 'a:2:{s:39:\"copy-delete-posts/copy-delete-posts.php\";i:1649930985;s:39:\"wp-duplicate-page/wp-duplicate-page.php\";i:1649930888;}', 'yes'),
(160, 'acf_version', '5.8.9', 'yes'),
(190, '_transient_timeout_acf_plugin_updates', '1650103668', 'no'),
(191, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.9.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";}}', 'no'),
(197, 'analyst_cache', 's:6:\"a:0:{}\";', 'yes'),
(199, '_cdp_review', 'a:2:{s:9:\"installed\";i:1649930941;s:5:\"users\";a:0:{}}', 'yes'),
(200, '_cdp_globals', 'a:1:{s:6:\"others\";a:13:{s:17:\"cdp-content-pages\";s:4:\"true\";s:17:\"cdp-content-posts\";s:4:\"true\";s:18:\"cdp-content-custom\";s:4:\"true\";s:17:\"cdp-display-posts\";s:4:\"true\";s:16:\"cdp-display-edit\";s:4:\"true\";s:17:\"cdp-display-admin\";s:4:\"true\";s:16:\"cdp-display-bulk\";s:4:\"true\";s:21:\"cdp-display-gutenberg\";s:4:\"true\";s:19:\"cdp-references-post\";s:5:\"false\";s:19:\"cdp-references-edit\";s:5:\"false\";s:18:\"cdp-premium-import\";s:5:\"false\";s:24:\"cdp-premium-hide-tooltip\";s:5:\"false\";s:20:\"cdp-menu-in-settings\";s:5:\"false\";}}', 'yes'),
(201, '_cdp_profiles', 'a:1:{s:7:\"default\";a:25:{s:5:\"title\";s:4:\"true\";s:4:\"date\";s:5:\"false\";s:6:\"status\";s:5:\"false\";s:4:\"slug\";s:4:\"true\";s:7:\"excerpt\";s:4:\"true\";s:7:\"content\";s:4:\"true\";s:7:\"f_image\";s:4:\"true\";s:8:\"template\";s:4:\"true\";s:6:\"format\";s:4:\"true\";s:6:\"author\";s:4:\"true\";s:8:\"password\";s:4:\"true\";s:11:\"attachments\";s:5:\"false\";s:8:\"children\";s:5:\"false\";s:8:\"comments\";s:5:\"false\";s:10:\"menu_order\";s:4:\"true\";s:8:\"category\";s:4:\"true\";s:8:\"post_tag\";s:4:\"true\";s:8:\"taxonomy\";s:4:\"true\";s:8:\"nav_menu\";s:4:\"true\";s:13:\"link_category\";s:4:\"true\";s:12:\"all_metadata\";s:5:\"false\";s:5:\"names\";a:5:{s:6:\"prefix\";s:0:\"\";s:6:\"suffix\";s:10:\"#[Counter]\";s:6:\"format\";s:1:\"1\";s:6:\"custom\";s:5:\"m/d/Y\";s:7:\"display\";s:7:\"Default\";}s:9:\"usmplugin\";s:5:\"false\";s:5:\"yoast\";s:5:\"false\";s:3:\"woo\";s:5:\"false\";}}', 'yes'),
(202, '_cdp_default_setup', '1', 'yes'),
(203, '_irb_h_bn_review', 'a:2:{s:5:\"users\";a:0:{}s:17:\"copy-delete-posts\";i:1649930941;}', 'yes'),
(204, '_cdp_preselections', 'a:1:{i:1;s:7:\"default\";}', 'yes'),
(207, 'duplicate_page_options', 'a:4:{s:21:\"duplicate_post_status\";s:5:\"draft\";s:23:\"duplicate_post_redirect\";s:7:\"to_list\";s:21:\"duplicate_post_suffix\";s:0:\"\";s:21:\"duplicate_post_editor\";s:7:\"classic\";}', 'yes'),
(208, 'analyst_accounts_data', 's:422:\"O:26:\"Account\\AccountDataFactory\":1:{s:11:\"\0*\0accounts\";a:1:{i:0;O:19:\"Account\\AccountData\":7:{s:5:\"\0*\0id\";s:16:\"ovgxe3xq075ladbp\";s:9:\"\0*\0secret\";s:40:\"b4de5ed2ba7be687e233d152ec1e8fd116052ab0\";s:7:\"\0*\0path\";s:99:\"/Applications/MAMP/htdocs/ajax-load-more/wp-content/plugins/copy-delete-posts/copy-delete-posts.php\";s:14:\"\0*\0isInstalled\";b:0;s:12:\"\0*\0isOptedIn\";b:0;s:11:\"\0*\0isSigned\";b:0;s:20:\"\0*\0isInstallResolved\";N;}}}\";', 'yes'),
(211, 'cpto_options', 'a:7:{s:23:\"show_reorder_interfaces\";a:4:{s:4:\"post\";s:4:\"show\";s:10:\"attachment\";s:4:\"show\";s:8:\"wp_block\";s:4:\"show\";s:13:\"wp_navigation\";s:4:\"show\";}s:8:\"autosort\";i:1;s:9:\"adminsort\";i:1;s:18:\"use_query_ASC_DESC\";s:0:\"\";s:17:\"archive_drag_drop\";i:1;s:10:\"capability\";s:14:\"manage_options\";s:21:\"navigation_sort_apply\";i:1;}', 'yes'),
(212, 'CPT_configured', 'TRUE', 'yes'),
(439, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":5,\"critical\":1}', 'yes'),
(548, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1650101811;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:6:\"5.12.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.9.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:32:\"duplicate-page/duplicatepage.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-page\";s:4:\"slug\";s:14:\"duplicate-page\";s:6:\"plugin\";s:32:\"duplicate-page/duplicatepage.php\";s:11:\"new_version\";s:5:\"4.4.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-page/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/duplicate-page.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-page/assets/icon-128x128.jpg?rev=1412874\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-page/assets/banner-772x250.jpg?rev=1410328\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.4\";}s:37:\"post-types-order/post-types-order.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/post-types-order\";s:4:\"slug\";s:16:\"post-types-order\";s:6:\"plugin\";s:37:\"post-types-order/post-types-order.php\";s:11:\"new_version\";s:5:\"1.9.8\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/post-types-order/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/post-types-order.1.9.8.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/post-types-order/assets/icon-128x128.png?rev=1226428\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/post-types-order/assets/banner-1544x500.png?rev=1675574\";s:2:\"1x\";s:71:\"https://ps.w.org/post-types-order/assets/banner-772x250.png?rev=1429949\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.8\";}}s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";s:32:\"duplicate-page/duplicatepage.php\";s:5:\"4.4.8\";s:37:\"post-types-order/post-types-order.php\";s:5:\"1.9.8\";}}', 'no'),
(581, '_site_transient_timeout_wp_remote_block_patterns_0016c578e9a734997641495c72b2dfaa', '1650107454', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(582, '_site_transient_wp_remote_block_patterns_0016c578e9a734997641495c72b2dfaa', 'a:13:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";i:184;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:7:\"Heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:509:\"\n<h2 class=\"alignwide\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">We&#8217;re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:17:\"large text, title\";s:16:\"wpop_description\";s:12:\"Heading text\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:621:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">We\'re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n<!-- /wp:heading -->\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";i:185;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with left-aligned text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2153:\"\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n\n\n\n<div class=\"wp-container-3 wp-block-columns alignwide\">\n<div class=\"wp-container-1 wp-block-column\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n</div>\n<style>.wp-container-1 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-1 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-1 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-1 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-1 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-2 wp-block-column\"></div>\n<style>.wp-container-2 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-2 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-2 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-2 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-2 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-3 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-3 > * { margin: 0; }</style></div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Cover image with quote on top\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1610:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":330} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";i:186;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with text and a button\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2363:\"\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n\n\n\n<div class=\"wp-container-7 wp-block-columns alignwide\">\n<div class=\"wp-container-5 wp-block-column\" style=\"flex-basis:60%\">\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n\n\n\n<div class=\"wp-container-4 wp-block-buttons\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n</div>\n<style>.wp-container-4 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;}.wp-container-4 > * { margin: 0; }</style></div>\n<style>.wp-container-5 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-5 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-5 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-5 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-5 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-6 wp-block-column\"></div>\n<style>.wp-container-6 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-6 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-6 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-6 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-6 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-7 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-7 > * { margin: 0; }</style></div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:62:\"Large header with background image and text and button on top.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1865:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/art-01.jpg\",\"hasParallax\":true,\"dimRatio\":40,\"customOverlayColor\":\"#000000\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.2\"}},\"className\":\"alignwide has-white-color has-text-color\"} -->\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"60%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:60%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffffff\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"borderRadius\":0,\"style\":{\"color\":{\"text\":\"#ffffff\",\"background\":\"#000000\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";i:196;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:41:\"Media and text in a full height container\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1368:\"\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What&#8217;s the problem?</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n\n\n\n<div class=\"wp-container-8 wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n</div>\n<style>.wp-container-8 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;}.wp-container-8 > * { margin: 0; }</style></div></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Media and text block with image to the left and text and button to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1858:\"<!-- wp:cover {\"customOverlayColor\":\"#ffffff\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:media-text {\"mediaLink\":\"https://s.w.org/images/core/5.8/soil.jpg\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"imageFill\":true} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"32px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What\'s the problem?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:media-text --></div></div>\n<!-- /wp:cover -->\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";i:192;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Media and text with image on the left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:520:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the left and text to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:827:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";i:195;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:38:\"Media and text with image on the right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:685:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n</div></div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the right and text to the left.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1138:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"#\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"17px\"},\"color\":{\"text\":\"#636363\"}}} -->\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";i:27;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Quote\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:656:\"\n<hr class=\"wp-block-separator is-style-default\" />\n\n\n\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n\n\n\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>&#8220;Contributing makes me feel like I&#8217;m being useful to the planet.&#8221;</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n\n\n\n<hr class=\"wp-block-separator is-style-default\" />\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:10:\"core/quote\";}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1012:\"<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>\"Contributing makes me feel like I\'m being useful to the planet.\"</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";i:200;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Three columns of text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2429:\"\n<div class=\"wp-container-12 wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-container-9 wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n\n\n\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n</div>\n<style>.wp-container-9 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-9 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-9 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-9 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-9 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-10 wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n\n\n\n<p>Stay updated and see our current exhibitions here.</p>\n</div>\n<style>.wp-container-10 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-10 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-10 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-10 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-10 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-11 wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n\n\n\n<p>Get to know our opening times, ticket prices and discounts.</p>\n</div>\n<style>.wp-container-11 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-11 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-11 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-11 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-11 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-12 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-12 > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:22:\"Three columns of text.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1496:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Stay updated and see our current exhibitions here.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get to know our opening times, ticket prices and discounts.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";i:199;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Three columns with images and text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:6506:\"\n<div class=\"wp-container-22 wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\">\n<div class=\"wp-container-14 wp-block-columns alignwide\">\n<div class=\"wp-container-13 wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h6 class=\"has-text-color\" id=\"ecosystem\" style=\"color:#000000\">ECOSYSTEM</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n\n\n\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n<style>.wp-container-13 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-13 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-13 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-13 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-13 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-14 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-14 > * { margin: 0; }</style>\n\n\n<div class=\"wp-container-18 wp-block-columns alignwide\">\n<div class=\"wp-container-15 wp-block-column\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n<style>.wp-container-15 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-15 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-15 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-15 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-15 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-16 wp-block-column\" style=\"flex-basis:33%\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest.\" /></figure>\n</div>\n<style>.wp-container-16 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-16 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-16 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-16 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-16 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-17 wp-block-column\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n</div>\n<style>.wp-container-17 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-17 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-17 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-17 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-17 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-18 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-18 > * { margin: 0; }</style>\n\n\n<div class=\"wp-container-21 wp-block-columns alignwide\">\n<div class=\"wp-container-19 wp-block-column\" style=\"flex-basis:67%\">\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n</div>\n<style>.wp-container-19 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-19 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-19 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-19 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-19 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-20 wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man&#8217;s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n</div>\n<style>.wp-container-20 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-20 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-20 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-20 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-20 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-21 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-21 > * { margin: 0; }</style></div>\n<style>.wp-container-22 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-22 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-22 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-22 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-22 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Three columns with images and text, with vertical spacing for an offset look.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3990:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f8f4e4\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h6 class=\"has-text-color\" id=\"ecosystem\" style=\"color:#000000\">ECOSYSTEM</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"5vw\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"5px\"} -->\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"67%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:67%\"><!-- wp:image {\"align\":\"right\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man\'s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\";}i:9;O:8:\"stdClass\":7:{s:2:\"id\";i:201;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:32:\"Three columns with offset images\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2711:\"\n<div class=\"wp-container-26 wp-block-columns alignwide\">\n<div class=\"wp-container-23 wp-block-column\" style=\"flex-basis:25%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n</div>\n<style>.wp-container-23 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-23 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-23 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-23 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-23 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-24 wp-block-column\" style=\"flex-basis:25%\">\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n</div>\n<style>.wp-container-24 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-24 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-24 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-24 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-24 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-25 wp-block-column\" style=\"flex-basis:45%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n\n\n\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n<style>.wp-container-25 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-25 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-25 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-25 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-25 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-26 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-26 > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:33:\"Three columns with offset images.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"gallery\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1753:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:spacer {\"height\":500} -->\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":150} -->\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"45%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:45%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":285} -->\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:10;O:8:\"stdClass\":7:{s:2:\"id\";i:29;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:29:\"Two columns of text and title\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2486:\"\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n\n\n\n<div class=\"wp-container-29 wp-block-columns\">\n<div class=\"wp-container-27 wp-block-column\">\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n</div>\n<style>.wp-container-27 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-27 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-27 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-27 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-27 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-28 wp-block-column\">\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband&#8217;s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n</div>\n<style>.wp-container-28 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-28 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-28 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-28 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-28 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-29 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-29 > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:47:\"Two columns of text preceded by a long heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1711:\"<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":38,\"lineHeight\":\"1.4\"}}} -->\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband\'s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:11;O:8:\"stdClass\":7:{s:2:\"id\";i:197;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:39:\"Two columns of text with offset heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:5105:\"\n<div class=\"wp-container-37 wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\">\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-container-32 wp-block-columns alignwide are-vertically-aligned-center\">\n<div class=\"wp-container-30 wp-block-column\" style=\"flex-basis:50%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n</div>\n<style>.wp-container-30 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-30 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-30 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-30 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-30 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-31 wp-block-column\" style=\"flex-basis:50%\">\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n</div>\n<style>.wp-container-31 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-31 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-31 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-31 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-31 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-32 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-32 > * { margin: 0; }</style>\n\n\n<div class=\"wp-container-36 wp-block-columns alignwide\">\n<div class=\"wp-container-33 wp-block-column\"></div>\n<style>.wp-container-33 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-33 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-33 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-33 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-33 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-34 wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n</div>\n<style>.wp-container-34 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-34 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-34 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-34 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-34 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-35 wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n</div>\n<style>.wp-container-35 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-35 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-35 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-35 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-35 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-36 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-36 > * { margin: 0; }</style>\n\n\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n<style>.wp-container-37 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-37 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-37 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-37 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-37 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:43:\"Two columns of text with an offset heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2837:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f2f0e9\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><!-- wp:spacer {\"height\":70} -->\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"30px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:12;O:8:\"stdClass\":7:{s:2:\"id\";i:19;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:23:\"Two images side by side\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:855:\"\n<figure class=\"wp-container-38 wp-block-gallery-625a95c779cc0 wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n<style>.wp-container-38 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;}.wp-container-38 > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:41:\"An image gallery with two example images.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:737:\"<!-- wp:gallery {\"ids\":[null,null],\"linkTo\":\"none\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n<!-- /wp:gallery -->\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(583, '_site_transient_timeout_wp_remote_block_patterns_31c1499bbf8d730fc28243de69e5bf13', '1650107455', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(584, '_site_transient_wp_remote_block_patterns_31c1499bbf8d730fc28243de69e5bf13', 'a:14:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";i:591;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Event\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2130:\"\n<div class=\"wp-elements-4 wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-top has-text-color has-background has-link-color\" style=\"background-color:#121c1c;color:#fffdc7;grid-template-columns:auto 60%\"><figure class=\"wp-block-media-text__media\"><img loading=\"lazy\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" alt=\"\" class=\"wp-image-590 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg 1024w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-300x300.jpg 300w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-150x150.jpg 150w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-768x768.jpg 768w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1536x1536.jpg 1536w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1.jpg 1572w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure><div class=\"wp-block-media-text__content\">\n<div class=\"wp-elements-3 wp-container-2 wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 style=\"font-size:48px;font-weight:700;line-height:1.15\">Opening <br>Party</h2>\n\n\n\n<p class=\"wp-elements-1 has-text-color has-link-color\" style=\"color:#fffdc7\"><strong><a href=\"#\">RSVP →</a></strong></p>\n<style>.wp-elements-1 a{color: #fffdc7;}</style></div>\n<style>.wp-container-2 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-2 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-2 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-2 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-2 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style><style>.wp-elements-3 a{color: #fffdc7;}</style></div></div>\n<style>.wp-elements-4 a{color: #fffdc7;}</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"header\";i:2;s:6:\"images\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:1592:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaId\":590,\"mediaLink\":\"https://wordpress.org/patterns/image-from-rawpixel-id-430289-jpeg-1/\",\"mediaType\":\"image\",\"mediaWidth\":60,\"verticalAlignment\":\"top\",\"style\":{\"color\":{\"background\":\"#121c1c\",\"text\":\"#fffdc7\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-top has-text-color has-background has-link-color\" style=\"background-color:#121c1c;color:#fffdc7;grid-template-columns:auto 60%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" alt=\"\" class=\"wp-image-590 size-full\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"700\",\"fontSize\":\"48px\",\"lineHeight\":\"1.15\"}}} -->\n<h2 style=\"font-size:48px;font-weight:700;line-height:1.15\">Opening <br>Party</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}},\"color\":{\"text\":\"#fffdc7\"}}} -->\n<p class=\"has-text-color has-link-color\" style=\"color:#fffdc7\"><strong><a href=\"#\">RSVP →</a></strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:media-text -->\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";i:566;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:30:\"Event announcement and details\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:4225:\"\n<div class=\"wp-elements-12 wp-container-11 wp-block-group alignfull has-black-color has-text-color has-background has-link-color\" style=\"background-color:#d2cdc7\">\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h2 class=\"alignwide\" style=\"font-size:46px;font-weight:400;line-height:1.1\">HÉLÈNE DUMAS<br><em>FRAGMENTS</em></h2>\n\n\n\n<h3 class=\"alignwide\" style=\"font-size:46px;font-weight:400;line-height:1.1\">20/4 — 9/9/2021<br>SOUTH LONDON ART GALLERY</h3>\n\n\n\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-container-7 wp-block-columns alignwide\">\n<div class=\"wp-container-5 wp-block-column\" style=\"flex-basis:25%\"></div>\n<style>.wp-container-5 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-5 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-5 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-5 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-5 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-6 wp-block-column\" style=\"flex-basis:75%\">\n<figure class=\"wp-block-image size-full\"><img src=\"https://mywptesting.site/wp-content/uploads/2021/06/Histoire_naturelle_..._-fragments-_-_Upper_cover_C108eee15-1.jpg\" alt=\"\" class=\"wp-image-3173\" /></figure>\n</div>\n<style>.wp-container-6 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-6 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-6 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-6 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-6 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-7 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-7 > * { margin: 0; }</style>\n\n\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-container-10 wp-block-columns alignwide\">\n<div class=\"wp-container-8 wp-block-column\">\n<p style=\"font-size:25px\">MORE INFO AT: WP.ORG · +44 21 1234 5678</p>\n</div>\n<style>.wp-container-8 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-8 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-8 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-8 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-8 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-9 wp-block-column\">\n<p class=\"has-text-align-right\" style=\"font-size:25px\">INSTAGRAM · <a href=\"#\">TICKETS</a></p>\n</div>\n<style>.wp-container-9 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-9 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-9 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-9 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-9 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-10 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-10 > * { margin: 0; }</style>\n\n\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n<style>.wp-container-11 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-11 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-11 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-11 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-11 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style><style>.wp-elements-12 a{color: var(--wp--preset--color--black);}</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"images\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:2622:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#d2cdc7\"},\"elements\":{\"link\":{\"color\":{\"text\":\"var:preset|color|black\"}}}},\"textColor\":\"black\"} -->\n<div class=\"wp-block-group alignfull has-black-color has-text-color has-background has-link-color\" style=\"background-color:#d2cdc7\"><!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"46px\",\"lineHeight\":\"1.1\",\"fontWeight\":\"400\"}}} -->\n<h2 class=\"alignwide\" style=\"font-size:46px;font-weight:400;line-height:1.1\">HÉLÈNE DUMAS<br><em>FRAGMENTS</em></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3,\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"46px\",\"lineHeight\":\"1.1\",\"fontWeight\":\"400\"}}} -->\n<h3 class=\"alignwide\" style=\"font-size:46px;font-weight:400;line-height:1.1\">20/4 — 9/9/2021<br>SOUTH LONDON ART GALLERY</h3>\n<!-- /wp:heading -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"75%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:75%\"><!-- wp:image {\"id\":3173,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"https://mywptesting.site/wp-content/uploads/2021/06/Histoire_naturelle_..._-fragments-_-_Upper_cover_C108eee15-1.jpg\" alt=\"\" class=\"wp-image-3173\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"25px\"}}} -->\n<p style=\"font-size:25px\">MORE INFO AT: WP.ORG · +44 21 1234 5678</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"align\":\"right\",\"style\":{\"typography\":{\"fontSize\":\"25px\"}}} -->\n<p class=\"has-text-align-right\" style=\"font-size:25px\">INSTAGRAM · <a href=\"#\">TICKETS</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";i:502;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:13:\"Event details\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3212:\"\n<figure class=\"wp-block-image alignwide size-full\"><img loading=\"lazy\" width=\"2560\" height=\"1227\" src=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg\" alt=\"Image of a woman being carried through the air by swans.\" class=\"wp-image-501\" srcset=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg 2560w, https://s.w.org/patterns/files/2021/06/Group-17-300x144.jpg 300w, https://s.w.org/patterns/files/2021/06/Group-17-1024x491.jpg 1024w, https://s.w.org/patterns/files/2021/06/Group-17-768x368.jpg 768w, https://s.w.org/patterns/files/2021/06/Group-17-1536x736.jpg 1536w, https://s.w.org/patterns/files/2021/06/Group-17-2048x981.jpg 2048w\" sizes=\"(max-width: 2560px) 100vw, 2560px\" /></figure>\n\n\n\n<div class=\"wp-container-17 wp-block-columns alignwide are-vertically-aligned-center\">\n<div class=\"wp-container-13 wp-block-column is-vertically-aligned-center\">\n<p style=\"line-height:2\"><strong>Location:</strong><br>82 Main St. Brooklyn, NY</p>\n</div>\n<style>.wp-container-13 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-13 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-13 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-13 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-13 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-14 wp-block-column is-vertically-aligned-center\">\n<p style=\"line-height:2\"><strong>Date:</strong><br>October 24, 2021</p>\n</div>\n<style>.wp-container-14 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-14 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-14 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-14 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-14 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-16 wp-block-column is-vertically-aligned-center\">\n<div class=\"wp-container-15 wp-block-buttons\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#262626;color:#efefef\">Purchase Tickets</a></div>\n</div>\n<style>.wp-container-15 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;}.wp-container-15 > * { margin: 0; }</style></div>\n<style>.wp-container-16 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-16 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-16 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-16 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-16 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-17 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-17 > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:14:\"Event details.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:1624:\"<!-- wp:image {\"align\":\"wide\",\"id\":501,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image alignwide size-full\"><img src=\"https://s.w.org/patterns/files/2021/06/Group-17-scaled.jpg\" alt=\"Image of a woman being carried through the air by swans.\" class=\"wp-image-501\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"2\"}}} -->\n<p style=\"line-height:2\"><strong>Location:</strong><br>82 Main St. Brooklyn, NY</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"2\"}}} -->\n<p style=\"line-height:2\"><strong>Date:</strong><br>October 24, 2021</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"width\":100,\"style\":{\"color\":{\"background\":\"#262626\",\"text\":\"#efefef\"}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"background-color:#262626;color:#efefef\">Purchase Tickets</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";i:184;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:7:\"Heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:509:\"\n<h2 class=\"alignwide\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">We&#8217;re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:17:\"large text, title\";s:16:\"wpop_description\";s:12:\"Heading text\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:621:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" id=\"we-re-a-studio-in-berlin-with-an-international-practice-in-architecture-urban-planning-and-interior-design-we-believe-in-sharing-knowledge-and-promoting-dialogue-to-increase-the-creative-potential-of-collaboration\" style=\"font-size:48px;line-height:1.1\">We\'re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n<!-- /wp:heading -->\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";i:669;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:31:\"Image and quote on a background\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3127:\"\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#f1f5c7\"><figure class=\"wp-block-media-text__media\"><img loading=\"lazy\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png\" alt=\"\" class=\"wp-image-5263 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png 1024w, https://s.w.org/patterns/files/2021/06/pear-1-300x300.png 300w, https://s.w.org/patterns/files/2021/06/pear-1-150x150.png 150w, https://s.w.org/patterns/files/2021/06/pear-1-768x768.png 768w, https://s.w.org/patterns/files/2021/06/pear-1.png 1300w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure><div class=\"wp-block-media-text__content\">\n<div class=\"wp-container-18 wp-block-group\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<p style=\"font-size:36px;line-height:1.2\"><strong>Even the bitterest fruit has sugar in it.</strong></p>\n\n\n\n<p class=\"has-extra-small-font-size\">– Terry a O&#8217;Neal</p>\n</div>\n<style>.wp-container-18 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-18 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-18 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-18 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-18 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div></div>\n\n\n\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#fffdea\"><figure class=\"wp-block-media-text__media\"><img loading=\"lazy\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png\" alt=\"\" class=\"wp-image-673 size-full\" srcset=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png 1024w, https://s.w.org/patterns/files/2021/06/pear-half-300x300.png 300w, https://s.w.org/patterns/files/2021/06/pear-half-150x150.png 150w, https://s.w.org/patterns/files/2021/06/pear-half-768x768.png 768w, https://s.w.org/patterns/files/2021/06/pear-half.png 1300w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure><div class=\"wp-block-media-text__content\">\n<div class=\"wp-container-19 wp-block-group\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<p style=\"font-size:36px;line-height:1.2\"><strong>The trees that are slow to grow bear the best fruit.</strong></p>\n\n\n\n<p class=\"has-extra-small-font-size\">– Molière</p>\n</div>\n<style>.wp-container-19 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-19 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-19 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-19 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-19 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:221:\"Two media and text blocks. The top one has a pale green background. The text is on the left and contains a quote, and the image is on the right. The next block underneath has the image on the left, and quote on the right.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"images\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:2404:\"<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":5263,\"mediaLink\":\"https://wordpress.org/patterns/pattern/image-and-quote-on-a-background/pear-3/\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\",\"style\":{\"color\":{\"background\":\"#f1f5c7\"}}} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#f1f5c7\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/pear-1-1024x1024.png\" alt=\"\" class=\"wp-image-5263 size-full\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.2\",\"fontSize\":\"36px\"}}} -->\n<p style=\"font-size:36px;line-height:1.2\"><strong>Even the bitterest fruit has sugar in it.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"extra-small\"} -->\n<p class=\"has-extra-small-font-size\">– Terry a O\'Neal</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":673,\"mediaLink\":\"https://wordpress.org/patterns/pear-half/\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\",\"style\":{\"color\":{\"background\":\"#fffdea\"}}} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center has-background\" style=\"background-color:#fffdea\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/patterns/files/2021/06/pear-half-1024x1024.png\" alt=\"\" class=\"wp-image-673 size-full\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-group\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.2\",\"fontSize\":\"36px\"}}} -->\n<p style=\"font-size:36px;line-height:1.2\"><strong>The trees that are slow to grow bear the best fruit.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"extra-small\"} -->\n<p class=\"has-extra-small-font-size\">– Molière</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:media-text -->\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";i:573;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Image on solid color with description\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:3317:\"\n<div class=\"wp-container-24 wp-block-columns alignfull\">\n<div class=\"wp-container-20 wp-block-column\" style=\"flex-basis:50%\">\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#f6f6f6;min-height:600px\"><div class=\"wp-block-cover__inner-container\">\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-medium\"><img loading=\"lazy\" width=\"263\" height=\"300\" src=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg\" alt=\"\" class=\"wp-image-571\" srcset=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg 263w, https://s.w.org/patterns/files/2021/06/wire-sculpture-898x1024.jpg 898w, https://s.w.org/patterns/files/2021/06/wire-sculpture-768x875.jpg 768w, https://s.w.org/patterns/files/2021/06/wire-sculpture-1347x1536.jpg 1347w, https://s.w.org/patterns/files/2021/06/wire-sculpture.jpg 1658w\" sizes=\"(max-width: 263px) 100vw, 263px\" /></figure></div>\n</div></div>\n</div>\n<style>.wp-container-20 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-20 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-20 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-20 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-20 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-23 wp-block-column is-vertically-aligned-center\" style=\"padding-top:1em;padding-right:1em;padding-bottom:1em;padding-left:1em\">\n<div class=\"wp-container-22 wp-block-columns\">\n<div class=\"wp-container-21 wp-block-column\" style=\"flex-basis:320px\">\n<p class=\"has-small-font-size\" style=\"line-height:1.6\"><strong>Airplane</strong></p>\n\n\n\n<p class=\"has-small-font-size\" style=\"line-height:1.6\">Copper wire, wood base. I created this piece in late 2008. For this work, I aimed to convey both the industrial heaviness of an airplane, but also the cloudlike floating quality you feel when you’re in one.</p>\n</div>\n<style>.wp-container-21 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-21 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-21 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-21 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-21 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-22 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-22 > * { margin: 0; }</style></div>\n<style>.wp-container-23 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-23 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-23 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-23 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-23 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-24 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-24 > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:38:\"Image on solid color with description.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:6:\"images\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:1826:\"<!-- wp:columns {\"align\":\"full\"} -->\n<div class=\"wp-block-columns alignfull\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:cover {\"customOverlayColor\":\"#f6f6f6\",\"minHeight\":600} -->\n<div class=\"wp-block-cover has-background-dim\" style=\"background-color:#f6f6f6;min-height:600px\"><div class=\"wp-block-cover__inner-container\"><!-- wp:image {\"align\":\"center\",\"id\":571,\"sizeSlug\":\"medium\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"aligncenter size-medium\"><img src=\"https://s.w.org/patterns/files/2021/06/wire-sculpture-263x300.jpg\" alt=\"\" class=\"wp-image-571\" /></figure></div>\n<!-- /wp:image --></div></div>\n<!-- /wp:cover --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"style\":{\"spacing\":{\"padding\":{\"top\":\"1em\",\"right\":\"1em\",\"bottom\":\"1em\",\"left\":\"1em\"}}}} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"padding-top:1em;padding-right:1em;padding-bottom:1em;padding-left:1em\"><!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"320px\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:320px\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\" style=\"line-height:1.6\"><strong>Airplane</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.6\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-small-font-size\" style=\"line-height:1.6\">Copper wire, wood base. I created this piece in late 2008. For this work, I aimed to convey both the industrial heaviness of an airplane, but also the cloudlike floating quality you feel when you’re in one.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";i:521;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:45:\"Image with description below and to the right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:4514:\"\n<div class=\"wp-container-29 wp-block-columns\">\n<div class=\"wp-container-25 wp-block-column\" style=\"flex-basis:10%\"></div>\n<style>.wp-container-25 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-25 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-25 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-25 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-25 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-26 wp-block-column\">\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"1024\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg\" alt=\"Vintage Cupid Illustration\" class=\"wp-image-522\" srcset=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg 1024w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-300x300.jpg 300w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-150x150.jpg 150w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-768x768.jpg 768w, https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1.jpg 1510w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /></figure>\n</div>\n<style>.wp-container-26 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-26 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-26 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-26 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-26 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-27 wp-block-column\"></div>\n<style>.wp-container-27 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-27 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-27 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-27 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-27 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-28 wp-block-column\" style=\"flex-basis:10%\"></div>\n<style>.wp-container-28 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-28 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-28 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-28 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-28 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-29 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-29 > * { margin: 0; }</style>\n\n\n<div class=\"wp-container-32 wp-block-columns\">\n<div class=\"wp-container-30 wp-block-column\"></div>\n<style>.wp-container-30 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-30 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-30 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-30 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-30 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-31 wp-block-column\">\n<p style=\"font-size:14px\"><strong>Cupid in Flight</strong><br>48” x 48” Giclee print on archival paper.</p>\n</div>\n<style>.wp-container-31 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-31 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-31 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-31 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-31 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-32 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-32 > * { margin: 0; }</style>\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:46:\"Image with description below and to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:1241:\"<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column {\"width\":\"10%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:10%\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":522,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-539759-jpeg-1-1024x1024.jpg\" alt=\"Vintage Cupid Illustration\" class=\"wp-image-522\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"10%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:10%\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} -->\n<p style=\"font-size:14px\"><strong>Cupid in Flight</strong><br>48” x 48” Giclee print on archival paper.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";i:185;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with left-aligned text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2168:\"\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n\n\n\n<div class=\"wp-container-35 wp-block-columns alignwide\">\n<div class=\"wp-container-33 wp-block-column\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n</div>\n<style>.wp-container-33 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-33 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-33 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-33 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-33 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-34 wp-block-column\"></div>\n<style>.wp-container-34 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-34 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-34 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-34 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-34 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-35 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-35 > * { margin: 0; }</style></div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Cover image with quote on top\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1610:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":330} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";i:192;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Media and text with image on the left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:520:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the left and text to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:8:\"featured\";i:1;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:827:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:9;O:8:\"stdClass\":7:{s:2:\"id\";i:526;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:32:\"Offset images with descriptions.\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2808:\"\n<div class=\"wp-container-38 wp-block-columns\">\n<div class=\"wp-container-36 wp-block-column\">\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"793\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg\" alt=\"\" class=\"wp-image-525\" srcset=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg 793w, https://s.w.org/patterns/files/2021/06/Iris-232x300.jpg 232w, https://s.w.org/patterns/files/2021/06/Iris-768x992.jpg 768w, https://s.w.org/patterns/files/2021/06/Iris-1189x1536.jpg 1189w, https://s.w.org/patterns/files/2021/06/Iris-1586x2048.jpg 1586w, https://s.w.org/patterns/files/2021/06/Iris.jpg 1920w\" sizes=\"(max-width: 793px) 100vw, 793px\" /></figure>\n\n\n\n<p style=\"font-size:14px\"><strong>White Irises</strong><br>Ogawa Kazumasa</p>\n</div>\n<style>.wp-container-36 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-36 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-36 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-36 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-36 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-37 wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p style=\"font-size:14px\"><strong>Cherry Blossom</strong><br>Ogawa Kazumasa</p>\n\n\n\n<figure class=\"wp-block-image size-large\"><img loading=\"lazy\" width=\"707\" height=\"1024\" src=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg\" alt=\"\" class=\"wp-image-524\" srcset=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg 707w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-207x300.jpg 207w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-768x1112.jpg 768w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-1061x1536.jpg 1061w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-1414x2048.jpg 1414w, https://s.w.org/patterns/files/2021/06/Cherry-Blossom-scaled.jpg 1768w\" sizes=\"(max-width: 707px) 100vw, 707px\" /></figure>\n</div>\n<style>.wp-container-37 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-37 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-37 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-37 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-37 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-38 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-38 > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:32:\"Offset images with descriptions.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:8:\"featured\";i:1;s:7:\"gallery\";i:2;s:6:\"images\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:1175:\"<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:image {\"id\":525,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/patterns/files/2021/06/Iris-793x1024.jpg\" alt=\"\" class=\"wp-image-525\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} -->\n<p style=\"font-size:14px\"><strong>White Irises</strong><br>Ogawa Kazumasa</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} -->\n<p style=\"font-size:14px\"><strong>Cherry Blossom</strong><br>Ogawa Kazumasa</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":524,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/patterns/files/2021/06/Cherry-Blossom-707x1024.jpg\" alt=\"\" class=\"wp-image-524\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:10;O:8:\"stdClass\":7:{s:2:\"id\";i:678;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:13:\"Pricing table\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:5254:\"\n<div class=\"wp-container-48 wp-block-columns alignwide\">\n<div class=\"wp-elements-41 wp-container-40 wp-block-column has-text-color has-background has-link-color\" style=\"background-color:#ffe97d;color:#000000;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 id=\"single\" style=\"font-size:40px\"><strong>Single</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Enrich our growing community.</strong> </p>\n\n\n\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n\n\n\n<ul class=\"has-normal-font-size\"><li>General admission and member discounts for one adult</li><li>One free ticket per special exhibition</li><li>Two single-use guest passes per year</li></ul>\n\n\n\n<div class=\"wp-container-39 wp-block-buttons alignfull\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius\" style=\"background-color:#000000\">$110 / year</a></div>\n</div>\n<style>.wp-container-39 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;justify-content: center;}.wp-container-39 > * { margin: 0; }</style></div>\n<style>.wp-container-40 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-40 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-40 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-40 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-40 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style><style>.wp-elements-41 a{color: #000000;}</style>\n\n\n<div class=\"wp-elements-44 wp-container-43 wp-block-column has-text-color has-background has-link-color\" style=\"background-color:#d1d1e1;color:#000000;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 id=\"family\" style=\"font-size:40px\"><strong>Family</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Support special exhibitions.</strong></p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<ul class=\"has-normal-font-size\"><li>General admission and member discounts for two adults</li><li>Four free tickets per special exhibition</li><li>Four single-use guest passes per year</li></ul>\n\n\n\n<div class=\"wp-container-42 wp-block-buttons alignfull\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-fill\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius\" style=\"background-color:#000000\">$200 / year</a></div>\n</div>\n<style>.wp-container-42 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;justify-content: center;}.wp-container-42 > * { margin: 0; }</style></div>\n<style>.wp-container-43 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-43 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-43 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-43 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-43 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style><style>.wp-elements-44 a{color: #000000;}</style>\n\n\n<div class=\"wp-elements-47 wp-container-46 wp-block-column has-text-color has-background has-link-color\" style=\"background-color:#c0ebf1;color:#000000;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\">\n<h2 id=\"patron\" style=\"font-size:40px\"><strong>Patron</strong></h2>\n\n\n\n<p class=\"has-normal-font-size\"><strong>Take support to the next level.</strong></p>\n\n\n\n<hr class=\"wp-block-separator is-style-wide\" />\n\n\n\n<ul class=\"has-normal-font-size\"><li>General admission and member discounts for two adults</li><li>Five free tickets per special exhibition</li><li>Six single-use guest passes per year</li></ul>\n\n\n\n<div class=\"wp-container-45 wp-block-buttons alignfull\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius\" style=\"background-color:#000000\">$400 / year</a></div>\n</div>\n<style>.wp-container-45 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;justify-content: center;}.wp-container-45 > * { margin: 0; }</style></div>\n<style>.wp-container-46 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-46 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-46 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-46 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-46 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style><style>.wp-elements-47 a{color: #000000;}</style></div>\n<style>.wp-container-48 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-48 > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:272:\"Three equal-width columns set up as a pricing table. The left column has a yellow background, the middle column has a light purple background, and the right column has a light blue background. Each column contains a heading, subheading, separator, list, and then a button.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"buttons\";i:1;s:7:\"columns\";i:2;s:8:\"featured\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:5340:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"style\":{\"color\":{\"background\":\"#ffe97d\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"background-color:#ffe97d;color:#000000;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}}} -->\n<h2 id=\"single\" style=\"font-size:40px\"><strong>Single</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.5\"}},\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Enrich our growing community.</strong> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><li>General admission and member discounts for one adult</li><li>One free ticket per special exhibition</li><li>Two single-use guest passes per year</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius\" style=\"background-color:#000000\">$110 / year</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"style\":{\"color\":{\"background\":\"#d1d1e1\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"background-color:#d1d1e1;color:#000000;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}}} -->\n<h2 id=\"family\" style=\"font-size:40px\"><strong>Family</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.5\"}},\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\" style=\"line-height:1.5\"><strong>Support special exhibitions.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator is-style-wide\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><li>General admission and member discounts for two adults</li><li>Four free tickets per special exhibition</li><li>Four single-use guest passes per year</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}},\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100 is-style-fill\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius\" style=\"background-color:#000000\">$200 / year</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"style\":{\"color\":{\"background\":\"#c0ebf1\",\"text\":\"#000000\"},\"elements\":{\"link\":{\"color\":{\"text\":\"#000000\"}}},\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}}}} -->\n<div class=\"wp-block-column has-text-color has-background has-link-color\" style=\"background-color:#c0ebf1;color:#000000;padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"40px\"}}} -->\n<h2 id=\"patron\" style=\"font-size:40px\"><strong>Patron</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"fontSize\":\"normal\"} -->\n<p class=\"has-normal-font-size\"><strong>Take support to the next level.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator {\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator is-style-wide\" />\n<!-- /wp:separator -->\n\n<!-- wp:list {\"fontSize\":\"normal\"} -->\n<ul class=\"has-normal-font-size\"><li>General admission and member discounts for two adults</li><li>Five free tickets per special exhibition</li><li>Six single-use guest passes per year</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:buttons {\"align\":\"full\",\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons alignfull\"><!-- wp:button {\"textColor\":\"white\",\"width\":100,\"style\":{\"color\":{\"background\":\"#000000\"},\"border\":{\"radius\":0}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-100\"><a class=\"wp-block-button__link has-white-color has-text-color has-background no-border-radius\" style=\"background-color:#000000\">$400 / year</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:11;O:8:\"stdClass\":7:{s:2:\"id\";i:732;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Simple call to action\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1477:\"\n<div class=\"wp-container-50 wp-block-group alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-align-center has-small-font-size\" style=\"line-height:.9\"><strong>GET IN TOUCH</strong></p>\n\n\n\n<h2 class=\"has-text-align-center\" id=\"schedule-a-visit\" style=\"font-size:59px;line-height:1.15\"><strong>Schedule a Visit</strong></h2>\n\n\n\n<div class=\"wp-container-49 wp-block-buttons\">\n<div class=\"wp-block-button has-custom-width wp-block-button__width-50\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:50px;background-color:#000000;color:#ffffff\">Contact us</a></div>\n</div>\n<style>.wp-container-49 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: wrap;align-items: center;justify-content: center;}.wp-container-49 > * { margin: 0; }</style>\n\n\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n<style>.wp-container-50 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-50 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-50 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-50 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-50 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:89:\"A container with a white background. Inside is a centered paragraph, heading, and button.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"buttons\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:0:{}s:15:\"pattern_content\";s:1506:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-group alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:spacer {\"height\":64} -->\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"style\":{\"typography\":{\"lineHeight\":\".9\"}},\"fontSize\":\"small\"} -->\n<p class=\"has-text-align-center has-small-font-size\" style=\"line-height:.9\"><strong>GET IN TOUCH</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"textAlign\":\"center\",\"style\":{\"typography\":{\"fontSize\":59,\"lineHeight\":\"1.15\"}}} -->\n<h2 class=\"has-text-align-center\" id=\"schedule-a-visit\" style=\"font-size:59px;line-height:1.15\"><strong>Schedule a Visit</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\",\"orientation\":\"horizontal\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"width\":50,\"style\":{\"color\":{\"background\":\"#000000\",\"text\":\"#ffffff\"},\"border\":{\"radius\":\"50px\"}}} -->\n<div class=\"wp-block-button has-custom-width wp-block-button__width-50\"><a class=\"wp-block-button__link has-text-color has-background\" style=\"border-radius:50px;background-color:#000000;color:#ffffff\">Contact us</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:spacer {\"height\":64} -->\n<div style=\"height:64px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:12;O:8:\"stdClass\":7:{s:2:\"id\";i:200;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Three columns of text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2435:\"\n<div class=\"wp-container-54 wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-container-51 wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n\n\n\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n</div>\n<style>.wp-container-51 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-51 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-51 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-51 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-51 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-52 wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n\n\n\n<p>Stay updated and see our current exhibitions here.</p>\n</div>\n<style>.wp-container-52 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-52 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-52 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-52 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-52 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-53 wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n\n\n\n<p>Get to know our opening times, ticket prices and discounts.</p>\n</div>\n<style>.wp-container-53 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-53 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-53 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-53 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-53 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-54 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-54 > * { margin: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:22:\"Three columns of text.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:3:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";i:2;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1496:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Stay updated and see our current exhibitions here.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get to know our opening times, ticket prices and discounts.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:13;O:8:\"stdClass\":7:{s:2:\"id\";i:199;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Three columns with images and text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:6506:\"\n<div class=\"wp-container-64 wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\">\n<div class=\"wp-container-56 wp-block-columns alignwide\">\n<div class=\"wp-container-55 wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h6 class=\"has-text-color\" id=\"ecosystem\" style=\"color:#000000\">ECOSYSTEM</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n\n\n\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n<style>.wp-container-55 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-55 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-55 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-55 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-55 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-56 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-56 > * { margin: 0; }</style>\n\n\n<div class=\"wp-container-60 wp-block-columns alignwide\">\n<div class=\"wp-container-57 wp-block-column\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n<style>.wp-container-57 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-57 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-57 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-57 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-57 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-58 wp-block-column\" style=\"flex-basis:33%\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest.\" /></figure>\n</div>\n<style>.wp-container-58 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-58 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-58 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-58 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-58 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-59 wp-block-column\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n</div>\n<style>.wp-container-59 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-59 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-59 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-59 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-59 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-60 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-60 > * { margin: 0; }</style>\n\n\n<div class=\"wp-container-63 wp-block-columns alignwide\">\n<div class=\"wp-container-61 wp-block-column\" style=\"flex-basis:67%\">\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n</div>\n<style>.wp-container-61 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-61 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-61 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-61 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-61 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\n\n\n<div class=\"wp-container-62 wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man&#8217;s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n</div>\n<style>.wp-container-62 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-62 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-62 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-62 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-62 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style></div>\n<style>.wp-container-63 {display: flex;gap: var( --wp--style--block-gap, 0.5em );flex-wrap: nowrap;align-items: center;}.wp-container-63 > * { margin: 0; }</style></div>\n<style>.wp-container-64 > .alignleft { float: left; margin-inline-start: 0; margin-inline-end: 2em; }.wp-container-64 > .alignright { float: right; margin-inline-start: 2em; margin-inline-end: 0; }.wp-container-64 > .aligncenter { margin-left: auto !important; margin-right: auto !important; }.wp-container-64 > * { margin-block-start: 0; margin-block-end: 0; }.wp-container-64 > * + * { margin-block-start: var( --wp--style--block-gap ); margin-block-end: 0; }</style>\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":6:{s:10:\"spay_email\";s:0:\"\";s:13:\"wpop_keywords\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Three columns with images and text, with vertical spacing for an offset look.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:8:\"featured\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3990:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f8f4e4\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h6 class=\"has-text-color\" id=\"ecosystem\" style=\"color:#000000\">ECOSYSTEM</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"5vw\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":\"5px\"} -->\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"67%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:67%\"><!-- wp:image {\"align\":\"right\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man\'s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(585, '_site_transient_timeout_theme_roots', '1650105655', 'no'),
(586, '_site_transient_theme_roots', 'a:1:{s:16:\"wp-starter-theme\";s:7:\"/themes\";}', 'no'),
(601, '_transient_timeout_global_styles_wp-starter-theme', '1650104666', 'no'),
(602, '_transient_global_styles_wp-starter-theme', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1650103630:1'),
(8, 9, '_edit_lock', '1650104635:1'),
(9, 9, '_wp_page_template', 'page_builder.php'),
(10, 9, '_edit_last', '1'),
(11, 9, 'page_builder_0_title', 'Works List'),
(12, 9, '_page_builder_0_title', 'field_6257ece0908f7'),
(13, 9, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(14, 9, '_page_builder', 'field_6257ecc0908f6'),
(15, 12, 'page_builder_0_title', ''),
(16, 12, '_page_builder_0_title', 'field_6257ece0908f7'),
(17, 12, 'page_builder', 'a:1:{i:0;s:23:\"section_ajax_posts_list\";}'),
(18, 12, '_page_builder', 'field_6257ecc0908f6'),
(19, 13, 'page_builder_0_title', ''),
(20, 13, '_page_builder_0_title', 'field_6257ece0908f7'),
(21, 13, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(22, 13, '_page_builder', 'field_6257ecc0908f6'),
(23, 14, 'page_builder_0_title', 'Posts List'),
(24, 14, '_page_builder_0_title', 'field_6257ece0908f7'),
(25, 14, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(26, 14, '_page_builder', 'field_6257ecc0908f6'),
(27, 16, '_edit_last', '1'),
(28, 16, '_edit_lock', '1650104406:1'),
(29, 17, '_edit_last', '1'),
(30, 17, '_edit_lock', '1650104155:1'),
(33, 16, 'image', '80'),
(34, 16, '_image', 'field_6257f1a89e6a5'),
(35, 16, 'content', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(36, 16, '_content', 'field_6257f1c59e6a6'),
(37, 22, '_edit_last', '1'),
(38, 22, '_edit_lock', '1650104382:1'),
(39, 22, 'image', '80'),
(40, 22, '_image', 'field_6257f1a89e6a5'),
(41, 22, 'content', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(42, 22, '_content', 'field_6257f1c59e6a6'),
(44, 23, '_edit_last', '1'),
(45, 23, '_edit_lock', '1650104372:1'),
(46, 23, 'image', '80'),
(47, 23, '_image', 'field_6257f1a89e6a5'),
(48, 23, 'content', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(49, 23, '_content', 'field_6257f1c59e6a6'),
(51, 24, '_edit_last', '1'),
(52, 24, '_edit_lock', '1650104363:1'),
(53, 24, 'image', '80'),
(54, 24, '_image', 'field_6257f1a89e6a5'),
(55, 24, 'content', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(56, 24, '_content', 'field_6257f1c59e6a6'),
(58, 25, '_edit_last', '1'),
(59, 25, '_edit_lock', '1650104353:1'),
(60, 25, 'image', '80'),
(61, 25, '_image', 'field_6257f1a89e6a5'),
(62, 25, 'content', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(63, 25, '_content', 'field_6257f1c59e6a6'),
(65, 26, '_edit_last', '1'),
(66, 26, '_edit_lock', '1650104343:1'),
(67, 26, 'image', '80'),
(68, 26, '_image', 'field_6257f1a89e6a5'),
(69, 26, 'content', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(70, 26, '_content', 'field_6257f1c59e6a6'),
(72, 27, '_edit_last', '1'),
(73, 27, '_edit_lock', '1650104334:1'),
(74, 27, 'image', '80'),
(75, 27, '_image', 'field_6257f1a89e6a5'),
(76, 27, 'content', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(77, 27, '_content', 'field_6257f1c59e6a6'),
(79, 28, '_edit_last', '1'),
(80, 28, '_edit_lock', '1650104320:1'),
(81, 28, 'image', '80'),
(82, 28, '_image', 'field_6257f1a89e6a5'),
(83, 28, 'content', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(84, 28, '_content', 'field_6257f1c59e6a6'),
(86, 29, '_edit_last', '1'),
(87, 29, '_edit_lock', '1650104310:1'),
(88, 29, 'image', '80'),
(89, 29, '_image', 'field_6257f1a89e6a5'),
(90, 29, 'content', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(91, 29, '_content', 'field_6257f1c59e6a6'),
(93, 30, '_edit_last', '1'),
(94, 30, '_edit_lock', '1650104300:1'),
(95, 30, 'image', '80'),
(96, 30, '_image', 'field_6257f1a89e6a5'),
(97, 30, 'content', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
(98, 30, '_content', 'field_6257f1c59e6a6'),
(100, 9, 'page_builder_0_load_posts', '2'),
(101, 9, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(102, 9, 'page_builder_0_load_more_text', 'Load More'),
(103, 9, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(104, 33, 'page_builder_0_title', 'Works List'),
(105, 33, '_page_builder_0_title', 'field_6257ece0908f7'),
(106, 33, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(107, 33, '_page_builder', 'field_6257ecc0908f6'),
(108, 33, 'page_builder_0_load_posts', '2'),
(109, 33, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(110, 33, 'page_builder_0_load_more_text', 'Load More'),
(111, 33, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(112, 9, 'page_builder_0_default_number', '2'),
(113, 9, '_page_builder_0_default_number', 'field_625812a26be15'),
(114, 9, 'page_builder_0_request_items', '3'),
(115, 9, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(116, 35, 'page_builder_0_title', 'Works List'),
(117, 35, '_page_builder_0_title', 'field_6257ece0908f7'),
(118, 35, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(119, 35, '_page_builder', 'field_6257ecc0908f6'),
(120, 35, 'page_builder_0_load_posts', '2'),
(121, 35, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(122, 35, 'page_builder_0_load_more_text', 'Load More'),
(123, 35, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(124, 35, 'page_builder_0_default_number', '0'),
(125, 35, '_page_builder_0_default_number', 'field_625812a26be15'),
(126, 35, 'page_builder_0_request_items', '2'),
(127, 35, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(128, 36, 'page_builder_0_title', 'Works List'),
(129, 36, '_page_builder_0_title', 'field_6257ece0908f7'),
(130, 36, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(131, 36, '_page_builder', 'field_6257ecc0908f6'),
(132, 36, 'page_builder_0_load_posts', '2'),
(133, 36, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(134, 36, 'page_builder_0_load_more_text', 'Load More'),
(135, 36, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(136, 36, 'page_builder_0_default_number', '14'),
(137, 36, '_page_builder_0_default_number', 'field_625812a26be15'),
(138, 36, 'page_builder_0_request_items', '2'),
(139, 36, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(140, 37, 'page_builder_0_title', 'Works List'),
(141, 37, '_page_builder_0_title', 'field_6257ece0908f7'),
(142, 37, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(143, 37, '_page_builder', 'field_6257ecc0908f6'),
(144, 37, 'page_builder_0_load_posts', '2'),
(145, 37, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(146, 37, 'page_builder_0_load_more_text', 'Load More'),
(147, 37, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(148, 37, 'page_builder_0_default_number', '1'),
(149, 37, '_page_builder_0_default_number', 'field_625812a26be15'),
(150, 37, 'page_builder_0_request_items', '999'),
(151, 37, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(152, 38, 'page_builder_0_title', 'Works List'),
(153, 38, '_page_builder_0_title', 'field_6257ece0908f7'),
(154, 38, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(155, 38, '_page_builder', 'field_6257ecc0908f6'),
(156, 38, 'page_builder_0_load_posts', '2'),
(157, 38, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(158, 38, 'page_builder_0_load_more_text', 'Load More'),
(159, 38, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(160, 38, 'page_builder_0_default_number', '1'),
(161, 38, '_page_builder_0_default_number', 'field_625812a26be15'),
(162, 38, 'page_builder_0_request_items', '1'),
(163, 38, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(164, 39, 'page_builder_0_title', 'Works List'),
(165, 39, '_page_builder_0_title', 'field_6257ece0908f7'),
(166, 39, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(167, 39, '_page_builder', 'field_6257ecc0908f6'),
(168, 39, 'page_builder_0_load_posts', '2'),
(169, 39, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(170, 39, 'page_builder_0_load_more_text', 'Load More'),
(171, 39, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(172, 39, 'page_builder_0_default_number', '4'),
(173, 39, '_page_builder_0_default_number', 'field_625812a26be15'),
(174, 39, 'page_builder_0_request_items', '2'),
(175, 39, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(176, 40, 'page_builder_0_title', 'Works List'),
(177, 40, '_page_builder_0_title', 'field_6257ece0908f7'),
(178, 40, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(179, 40, '_page_builder', 'field_6257ecc0908f6'),
(180, 40, 'page_builder_0_load_posts', '2'),
(181, 40, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(182, 40, 'page_builder_0_load_more_text', 'Load More'),
(183, 40, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(184, 40, 'page_builder_0_default_number', '4'),
(185, 40, '_page_builder_0_default_number', 'field_625812a26be15'),
(186, 40, 'page_builder_0_request_items', '3'),
(187, 40, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(188, 41, 'page_builder_0_title', 'Works List'),
(189, 41, '_page_builder_0_title', 'field_6257ece0908f7'),
(190, 41, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(191, 41, '_page_builder', 'field_6257ecc0908f6'),
(192, 41, 'page_builder_0_load_posts', '2'),
(193, 41, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(194, 41, 'page_builder_0_load_more_text', 'Load More'),
(195, 41, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(196, 41, 'page_builder_0_default_number', '4'),
(197, 41, '_page_builder_0_default_number', 'field_625812a26be15'),
(198, 41, 'page_builder_0_request_items', '399'),
(199, 41, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(200, 42, 'page_builder_0_title', 'Works List'),
(201, 42, '_page_builder_0_title', 'field_6257ece0908f7'),
(202, 42, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(203, 42, '_page_builder', 'field_6257ecc0908f6'),
(204, 42, 'page_builder_0_load_posts', '2'),
(205, 42, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(206, 42, 'page_builder_0_load_more_text', 'Load More'),
(207, 42, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(208, 42, 'page_builder_0_default_number', '4'),
(209, 42, '_page_builder_0_default_number', 'field_625812a26be15'),
(210, 42, 'page_builder_0_request_items', '10'),
(211, 42, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(212, 43, 'page_builder_0_title', 'Works List'),
(213, 43, '_page_builder_0_title', 'field_6257ece0908f7'),
(214, 43, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(215, 43, '_page_builder', 'field_6257ecc0908f6'),
(216, 43, 'page_builder_0_load_posts', '2'),
(217, 43, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(218, 43, 'page_builder_0_load_more_text', 'Load More'),
(219, 43, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(220, 43, 'page_builder_0_default_number', '4'),
(221, 43, '_page_builder_0_default_number', 'field_625812a26be15'),
(222, 43, 'page_builder_0_request_items', '999'),
(223, 43, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(224, 44, 'page_builder_0_title', 'Works List'),
(225, 44, '_page_builder_0_title', 'field_6257ece0908f7'),
(226, 44, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(227, 44, '_page_builder', 'field_6257ecc0908f6'),
(228, 44, 'page_builder_0_load_posts', '2'),
(229, 44, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(230, 44, 'page_builder_0_load_more_text', 'Load More'),
(231, 44, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(232, 44, 'page_builder_0_default_number', '4'),
(233, 44, '_page_builder_0_default_number', 'field_625812a26be15'),
(234, 44, 'page_builder_0_request_items', '2'),
(235, 44, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(236, 45, 'page_builder_0_title', 'Works List'),
(237, 45, '_page_builder_0_title', 'field_6257ece0908f7'),
(238, 45, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(239, 45, '_page_builder', 'field_6257ecc0908f6'),
(240, 45, 'page_builder_0_load_posts', '2'),
(241, 45, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(242, 45, 'page_builder_0_load_more_text', 'Load More'),
(243, 45, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(244, 45, 'page_builder_0_default_number', '4'),
(245, 45, '_page_builder_0_default_number', 'field_625812a26be15'),
(246, 45, 'page_builder_0_request_items', '3'),
(247, 45, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(248, 46, 'page_builder_0_title', 'Works List'),
(249, 46, '_page_builder_0_title', 'field_6257ece0908f7'),
(250, 46, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(251, 46, '_page_builder', 'field_6257ecc0908f6'),
(252, 46, 'page_builder_0_load_posts', '2'),
(253, 46, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(254, 46, 'page_builder_0_load_more_text', 'Load More'),
(255, 46, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(256, 46, 'page_builder_0_default_number', '3'),
(257, 46, '_page_builder_0_default_number', 'field_625812a26be15'),
(258, 46, 'page_builder_0_request_items', '3'),
(259, 46, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(260, 47, 'page_builder_0_title', 'Works List'),
(261, 47, '_page_builder_0_title', 'field_6257ece0908f7'),
(262, 47, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(263, 47, '_page_builder', 'field_6257ecc0908f6'),
(264, 47, 'page_builder_0_load_posts', '2'),
(265, 47, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(266, 47, 'page_builder_0_load_more_text', 'Load More'),
(267, 47, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(268, 47, 'page_builder_0_default_number', '3'),
(269, 47, '_page_builder_0_default_number', 'field_625812a26be15'),
(270, 47, 'page_builder_0_request_items', '999'),
(271, 47, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(272, 48, 'page_builder_0_title', 'Works List'),
(273, 48, '_page_builder_0_title', 'field_6257ece0908f7'),
(274, 48, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(275, 48, '_page_builder', 'field_6257ecc0908f6'),
(276, 48, 'page_builder_0_load_posts', '2'),
(277, 48, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(278, 48, 'page_builder_0_load_more_text', 'Load More'),
(279, 48, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(280, 48, 'page_builder_0_default_number', '3'),
(281, 48, '_page_builder_0_default_number', 'field_625812a26be15'),
(282, 48, 'page_builder_0_request_items', '3'),
(283, 48, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(284, 49, 'page_builder_0_title', 'Works List'),
(285, 49, '_page_builder_0_title', 'field_6257ece0908f7'),
(286, 49, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(287, 49, '_page_builder', 'field_6257ecc0908f6'),
(288, 49, 'page_builder_0_load_posts', '2'),
(289, 49, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(290, 49, 'page_builder_0_load_more_text', 'Load More'),
(291, 49, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(292, 49, 'page_builder_0_default_number', '3'),
(293, 49, '_page_builder_0_default_number', 'field_625812a26be15'),
(294, 49, 'page_builder_0_request_items', '333'),
(295, 49, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(296, 50, 'page_builder_0_title', 'Works List'),
(297, 50, '_page_builder_0_title', 'field_6257ece0908f7'),
(298, 50, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(299, 50, '_page_builder', 'field_6257ecc0908f6'),
(300, 50, 'page_builder_0_load_posts', '2'),
(301, 50, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(302, 50, 'page_builder_0_load_more_text', 'Load More'),
(303, 50, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(304, 50, 'page_builder_0_default_number', '3'),
(305, 50, '_page_builder_0_default_number', 'field_625812a26be15'),
(306, 50, 'page_builder_0_request_items', '3'),
(307, 50, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(308, 51, 'page_builder_0_title', 'Works List'),
(309, 51, '_page_builder_0_title', 'field_6257ece0908f7'),
(310, 51, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(311, 51, '_page_builder', 'field_6257ecc0908f6'),
(312, 51, 'page_builder_0_load_posts', '2'),
(313, 51, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(314, 51, 'page_builder_0_load_more_text', 'Load More'),
(315, 51, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(316, 51, 'page_builder_0_default_number', '23'),
(317, 51, '_page_builder_0_default_number', 'field_625812a26be15'),
(318, 51, 'page_builder_0_request_items', '3'),
(319, 51, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(320, 52, 'page_builder_0_title', 'Works List'),
(321, 52, '_page_builder_0_title', 'field_6257ece0908f7'),
(322, 52, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(323, 52, '_page_builder', 'field_6257ecc0908f6'),
(324, 52, 'page_builder_0_load_posts', '2'),
(325, 52, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(326, 52, 'page_builder_0_load_more_text', 'Load More'),
(327, 52, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(328, 52, 'page_builder_0_default_number', '2'),
(329, 52, '_page_builder_0_default_number', 'field_625812a26be15'),
(330, 52, 'page_builder_0_request_items', '3'),
(331, 52, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(332, 53, 'page_builder_0_title', 'Works List'),
(333, 53, '_page_builder_0_title', 'field_6257ece0908f7'),
(334, 53, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(335, 53, '_page_builder', 'field_6257ecc0908f6'),
(336, 53, 'page_builder_0_load_posts', '2'),
(337, 53, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(338, 53, 'page_builder_0_load_more_text', 'Load More'),
(339, 53, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(340, 53, 'page_builder_0_default_number', '2'),
(341, 53, '_page_builder_0_default_number', 'field_625812a26be15'),
(342, 53, 'page_builder_0_request_items', '3'),
(343, 53, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(344, 9, 'page_builder_0_default_items', '4'),
(345, 9, '_page_builder_0_default_items', 'field_625812a26be15'),
(346, 9, 'page_builder_0_items_per_page', '2'),
(347, 9, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(348, 53, 'page_builder_0_default_items', '3'),
(349, 53, '_page_builder_0_default_items', 'field_625812a26be15'),
(350, 53, 'page_builder_0_items_per_page', '2'),
(351, 53, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(352, 54, 'page_builder_0_title', 'Works List'),
(353, 54, '_page_builder_0_title', 'field_6257ece0908f7'),
(354, 54, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(355, 54, '_page_builder', 'field_6257ecc0908f6'),
(356, 54, 'page_builder_0_load_posts', '2'),
(357, 54, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(358, 54, 'page_builder_0_load_more_text', 'Load More'),
(359, 54, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(360, 54, 'page_builder_0_default_number', '2'),
(361, 54, '_page_builder_0_default_number', 'field_625812a26be15'),
(362, 54, 'page_builder_0_request_items', '3'),
(363, 54, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(364, 54, 'page_builder_0_default_items', '3'),
(365, 54, '_page_builder_0_default_items', 'field_625812a26be15'),
(366, 54, 'page_builder_0_items_per_page', '999'),
(367, 54, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(368, 55, 'page_builder_0_title', 'Works List'),
(369, 55, '_page_builder_0_title', 'field_6257ece0908f7'),
(370, 55, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(371, 55, '_page_builder', 'field_6257ecc0908f6'),
(372, 55, 'page_builder_0_load_posts', '2'),
(373, 55, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(374, 55, 'page_builder_0_load_more_text', 'Load More'),
(375, 55, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(376, 55, 'page_builder_0_default_number', '2'),
(377, 55, '_page_builder_0_default_number', 'field_625812a26be15'),
(378, 55, 'page_builder_0_request_items', '3'),
(379, 55, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(380, 55, 'page_builder_0_default_items', '3546'),
(381, 55, '_page_builder_0_default_items', 'field_625812a26be15'),
(382, 55, 'page_builder_0_items_per_page', '999'),
(383, 55, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(384, 56, 'page_builder_0_title', 'Works List'),
(385, 56, '_page_builder_0_title', 'field_6257ece0908f7'),
(386, 56, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(387, 56, '_page_builder', 'field_6257ecc0908f6'),
(388, 56, 'page_builder_0_load_posts', '2'),
(389, 56, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(390, 56, 'page_builder_0_load_more_text', 'Load More'),
(391, 56, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(392, 56, 'page_builder_0_default_number', '2'),
(393, 56, '_page_builder_0_default_number', 'field_625812a26be15'),
(394, 56, 'page_builder_0_request_items', '3'),
(395, 56, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(396, 56, 'page_builder_0_default_items', '3'),
(397, 56, '_page_builder_0_default_items', 'field_625812a26be15'),
(398, 56, 'page_builder_0_items_per_page', '2'),
(399, 56, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(400, 57, 'page_builder_0_title', 'Works List'),
(401, 57, '_page_builder_0_title', 'field_6257ece0908f7'),
(402, 57, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(403, 57, '_page_builder', 'field_6257ecc0908f6'),
(404, 57, 'page_builder_0_load_posts', '2'),
(405, 57, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(406, 57, 'page_builder_0_load_more_text', 'Load More'),
(407, 57, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(408, 57, 'page_builder_0_default_number', '2'),
(409, 57, '_page_builder_0_default_number', 'field_625812a26be15'),
(410, 57, 'page_builder_0_request_items', '3'),
(411, 57, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(412, 57, 'page_builder_0_default_items', '3'),
(413, 57, '_page_builder_0_default_items', 'field_625812a26be15'),
(414, 57, 'page_builder_0_items_per_page', '5'),
(415, 57, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(416, 58, 'page_builder_0_title', 'Works List'),
(417, 58, '_page_builder_0_title', 'field_6257ece0908f7'),
(418, 58, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(419, 58, '_page_builder', 'field_6257ecc0908f6'),
(420, 58, 'page_builder_0_load_posts', '2'),
(421, 58, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(422, 58, 'page_builder_0_load_more_text', 'Load More'),
(423, 58, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(424, 58, 'page_builder_0_default_number', '2'),
(425, 58, '_page_builder_0_default_number', 'field_625812a26be15'),
(426, 58, 'page_builder_0_request_items', '3'),
(427, 58, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(428, 58, 'page_builder_0_default_items', '5'),
(429, 58, '_page_builder_0_default_items', 'field_625812a26be15'),
(430, 58, 'page_builder_0_items_per_page', '5'),
(431, 58, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(432, 59, 'page_builder_0_title', 'Works List'),
(433, 59, '_page_builder_0_title', 'field_6257ece0908f7'),
(434, 59, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(435, 59, '_page_builder', 'field_6257ecc0908f6'),
(436, 59, 'page_builder_0_load_posts', '2'),
(437, 59, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(438, 59, 'page_builder_0_load_more_text', 'Load More'),
(439, 59, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(440, 59, 'page_builder_0_default_number', '2'),
(441, 59, '_page_builder_0_default_number', 'field_625812a26be15'),
(442, 59, 'page_builder_0_request_items', '3'),
(443, 59, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(444, 59, 'page_builder_0_default_items', '5'),
(445, 59, '_page_builder_0_default_items', 'field_625812a26be15'),
(446, 59, 'page_builder_0_items_per_page', '2'),
(447, 59, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(448, 60, 'page_builder_0_title', 'Works List'),
(449, 60, '_page_builder_0_title', 'field_6257ece0908f7'),
(450, 60, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(451, 60, '_page_builder', 'field_6257ecc0908f6'),
(452, 60, 'page_builder_0_load_posts', '2'),
(453, 60, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(454, 60, 'page_builder_0_load_more_text', 'Load More'),
(455, 60, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(456, 60, 'page_builder_0_default_number', '2'),
(457, 60, '_page_builder_0_default_number', 'field_625812a26be15'),
(458, 60, 'page_builder_0_request_items', '3'),
(459, 60, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(460, 60, 'page_builder_0_default_items', '4'),
(461, 60, '_page_builder_0_default_items', 'field_625812a26be15'),
(462, 60, 'page_builder_0_items_per_page', '2'),
(463, 60, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(464, 61, 'page_builder_0_title', 'Works List Works ListWorks ListWorks ListWorks ListWorks ListWorks ListWorks ListWorks List Works ListWorks ListWorks ListWorks ListWorks List'),
(465, 61, '_page_builder_0_title', 'field_6257ece0908f7'),
(466, 61, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(467, 61, '_page_builder', 'field_6257ecc0908f6'),
(468, 61, 'page_builder_0_load_posts', '2'),
(469, 61, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(470, 61, 'page_builder_0_load_more_text', 'Load More'),
(471, 61, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(472, 61, 'page_builder_0_default_number', '2'),
(473, 61, '_page_builder_0_default_number', 'field_625812a26be15'),
(474, 61, 'page_builder_0_request_items', '3'),
(475, 61, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(476, 61, 'page_builder_0_default_items', '4'),
(477, 61, '_page_builder_0_default_items', 'field_625812a26be15'),
(478, 61, 'page_builder_0_items_per_page', '2'),
(479, 61, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(480, 9, 'page_builder_0_infinity_scroll', '0'),
(481, 9, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(482, 63, 'page_builder_0_title', 'Works List Works ListWorks ListWorks ListWorks ListWorks ListWorks ListWorks ListWorks List Works ListWorks ListWorks ListWorks ListWorks List'),
(483, 63, '_page_builder_0_title', 'field_6257ece0908f7'),
(484, 63, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(485, 63, '_page_builder', 'field_6257ecc0908f6'),
(486, 63, 'page_builder_0_load_posts', '2'),
(487, 63, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(488, 63, 'page_builder_0_load_more_text', 'Load More'),
(489, 63, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(490, 63, 'page_builder_0_default_number', '2'),
(491, 63, '_page_builder_0_default_number', 'field_625812a26be15'),
(492, 63, 'page_builder_0_request_items', '3'),
(493, 63, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(494, 63, 'page_builder_0_default_items', '4'),
(495, 63, '_page_builder_0_default_items', 'field_625812a26be15'),
(496, 63, 'page_builder_0_items_per_page', '2'),
(497, 63, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(498, 63, 'page_builder_0_infinity_scroll', '1'),
(499, 63, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(500, 64, 'page_builder_0_title', 'Works List Works ListWorks ListWorks ListWorks ListWorks ListWorks ListWorks ListWorks List Works ListWorks ListWorks ListWorks ListWorks List'),
(501, 64, '_page_builder_0_title', 'field_6257ece0908f7'),
(502, 64, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(503, 64, '_page_builder', 'field_6257ecc0908f6'),
(504, 64, 'page_builder_0_load_posts', '2'),
(505, 64, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(506, 64, 'page_builder_0_load_more_text', 'Load More'),
(507, 64, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(508, 64, 'page_builder_0_default_number', '2'),
(509, 64, '_page_builder_0_default_number', 'field_625812a26be15'),
(510, 64, 'page_builder_0_request_items', '3'),
(511, 64, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(512, 64, 'page_builder_0_default_items', '4'),
(513, 64, '_page_builder_0_default_items', 'field_625812a26be15'),
(514, 64, 'page_builder_0_items_per_page', '3'),
(515, 64, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(516, 64, 'page_builder_0_infinity_scroll', '1'),
(517, 64, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(518, 65, 'page_builder_0_title', 'Works List <br> Works List <br> Works List <br> Works List <br> Works List <br> Works List'),
(519, 65, '_page_builder_0_title', 'field_6257ece0908f7'),
(520, 65, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(521, 65, '_page_builder', 'field_6257ecc0908f6'),
(522, 65, 'page_builder_0_load_posts', '2'),
(523, 65, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(524, 65, 'page_builder_0_load_more_text', 'Load More'),
(525, 65, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(526, 65, 'page_builder_0_default_number', '2'),
(527, 65, '_page_builder_0_default_number', 'field_625812a26be15'),
(528, 65, 'page_builder_0_request_items', '3'),
(529, 65, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(530, 65, 'page_builder_0_default_items', '4'),
(531, 65, '_page_builder_0_default_items', 'field_625812a26be15'),
(532, 65, 'page_builder_0_items_per_page', '3'),
(533, 65, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(534, 65, 'page_builder_0_infinity_scroll', '1'),
(535, 65, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(536, 66, 'page_builder_0_title', 'Works List <br> Works List <br> Works List <br> Works List <br> Works List <br> Works List <br> Works List <br> Works List <br> Works List'),
(537, 66, '_page_builder_0_title', 'field_6257ece0908f7'),
(538, 66, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(539, 66, '_page_builder', 'field_6257ecc0908f6'),
(540, 66, 'page_builder_0_load_posts', '2'),
(541, 66, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(542, 66, 'page_builder_0_load_more_text', 'Load More'),
(543, 66, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(544, 66, 'page_builder_0_default_number', '2'),
(545, 66, '_page_builder_0_default_number', 'field_625812a26be15'),
(546, 66, 'page_builder_0_request_items', '3'),
(547, 66, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(548, 66, 'page_builder_0_default_items', '4'),
(549, 66, '_page_builder_0_default_items', 'field_625812a26be15'),
(550, 66, 'page_builder_0_items_per_page', '3'),
(551, 66, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(552, 66, 'page_builder_0_infinity_scroll', '1'),
(553, 66, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(554, 67, 'page_builder_0_title', 'Works List <br> Works List <br> Works List <br> Works List <br> Works List <br> Works List <br> Works List <br> Works List <br> Works List'),
(555, 67, '_page_builder_0_title', 'field_6257ece0908f7'),
(556, 67, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(557, 67, '_page_builder', 'field_6257ecc0908f6'),
(558, 67, 'page_builder_0_load_posts', '2'),
(559, 67, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(560, 67, 'page_builder_0_load_more_text', 'Load More'),
(561, 67, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(562, 67, 'page_builder_0_default_number', '2'),
(563, 67, '_page_builder_0_default_number', 'field_625812a26be15'),
(564, 67, 'page_builder_0_request_items', '3'),
(565, 67, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(566, 67, 'page_builder_0_default_items', '4'),
(567, 67, '_page_builder_0_default_items', 'field_625812a26be15'),
(568, 67, 'page_builder_0_items_per_page', '2'),
(569, 67, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(570, 67, 'page_builder_0_infinity_scroll', '1'),
(571, 67, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(572, 68, 'page_builder_0_title', 'Works List'),
(573, 68, '_page_builder_0_title', 'field_6257ece0908f7'),
(574, 68, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(575, 68, '_page_builder', 'field_6257ecc0908f6'),
(576, 68, 'page_builder_0_load_posts', '2'),
(577, 68, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(578, 68, 'page_builder_0_load_more_text', 'Load More'),
(579, 68, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(580, 68, 'page_builder_0_default_number', '2'),
(581, 68, '_page_builder_0_default_number', 'field_625812a26be15'),
(582, 68, 'page_builder_0_request_items', '3'),
(583, 68, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(584, 68, 'page_builder_0_default_items', '4'),
(585, 68, '_page_builder_0_default_items', 'field_625812a26be15'),
(586, 68, 'page_builder_0_items_per_page', '2'),
(587, 68, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(588, 68, 'page_builder_0_infinity_scroll', '1'),
(589, 68, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(590, 69, 'page_builder_0_title', 'Works List'),
(591, 69, '_page_builder_0_title', 'field_6257ece0908f7'),
(592, 69, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(593, 69, '_page_builder', 'field_6257ecc0908f6'),
(594, 69, 'page_builder_0_load_posts', '2'),
(595, 69, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(596, 69, 'page_builder_0_load_more_text', 'Load More'),
(597, 69, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(598, 69, 'page_builder_0_default_number', '2'),
(599, 69, '_page_builder_0_default_number', 'field_625812a26be15'),
(600, 69, 'page_builder_0_request_items', '3'),
(601, 69, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(602, 69, 'page_builder_0_default_items', '4'),
(603, 69, '_page_builder_0_default_items', 'field_625812a26be15'),
(604, 69, 'page_builder_0_items_per_page', '2'),
(605, 69, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(606, 69, 'page_builder_0_infinity_scroll', '0'),
(607, 69, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(608, 70, 'page_builder_0_title', 'Works List'),
(609, 70, '_page_builder_0_title', 'field_6257ece0908f7'),
(610, 70, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(611, 70, '_page_builder', 'field_6257ecc0908f6'),
(612, 70, 'page_builder_0_load_posts', '2'),
(613, 70, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(614, 70, 'page_builder_0_load_more_text', 'Load More'),
(615, 70, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(616, 70, 'page_builder_0_default_number', '2'),
(617, 70, '_page_builder_0_default_number', 'field_625812a26be15'),
(618, 70, 'page_builder_0_request_items', '3'),
(619, 70, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(620, 70, 'page_builder_0_default_items', '3'),
(621, 70, '_page_builder_0_default_items', 'field_625812a26be15'),
(622, 70, 'page_builder_0_items_per_page', '2'),
(623, 70, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(624, 70, 'page_builder_0_infinity_scroll', '1'),
(625, 70, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(626, 71, 'page_builder_0_title', 'Works List'),
(627, 71, '_page_builder_0_title', 'field_6257ece0908f7'),
(628, 71, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(629, 71, '_page_builder', 'field_6257ecc0908f6'),
(630, 71, 'page_builder_0_load_posts', '2'),
(631, 71, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(632, 71, 'page_builder_0_load_more_text', 'Load More'),
(633, 71, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(634, 71, 'page_builder_0_default_number', '2'),
(635, 71, '_page_builder_0_default_number', 'field_625812a26be15'),
(636, 71, 'page_builder_0_request_items', '3'),
(637, 71, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(638, 71, 'page_builder_0_default_items', '4'),
(639, 71, '_page_builder_0_default_items', 'field_625812a26be15'),
(640, 71, 'page_builder_0_items_per_page', '2'),
(641, 71, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(642, 71, 'page_builder_0_infinity_scroll', '1'),
(643, 71, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(697, 78, 'page_builder_0_title', 'Works List'),
(698, 78, '_page_builder_0_title', 'field_6257ece0908f7'),
(699, 78, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(700, 78, '_page_builder', 'field_6257ecc0908f6'),
(701, 78, 'page_builder_0_load_posts', '2'),
(702, 78, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(703, 78, 'page_builder_0_load_more_text', 'Load More'),
(704, 78, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(705, 78, 'page_builder_0_default_number', '2'),
(706, 78, '_page_builder_0_default_number', 'field_625812a26be15'),
(707, 78, 'page_builder_0_request_items', '3'),
(708, 78, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(709, 78, 'page_builder_0_default_items', '4'),
(710, 78, '_page_builder_0_default_items', 'field_625812a26be15'),
(711, 78, 'page_builder_0_items_per_page', '2'),
(712, 78, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(713, 78, 'page_builder_0_infinity_scroll', '0'),
(714, 78, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(715, 79, 'page_builder_0_title', 'Works List'),
(716, 79, '_page_builder_0_title', 'field_6257ece0908f7'),
(717, 79, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(718, 79, '_page_builder', 'field_6257ecc0908f6'),
(719, 79, 'page_builder_0_load_posts', '2'),
(720, 79, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(721, 79, 'page_builder_0_load_more_text', 'Load More'),
(722, 79, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(723, 79, 'page_builder_0_default_number', '2'),
(724, 79, '_page_builder_0_default_number', 'field_625812a26be15'),
(725, 79, 'page_builder_0_request_items', '3'),
(726, 79, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(727, 79, 'page_builder_0_default_items', '4'),
(728, 79, '_page_builder_0_default_items', 'field_625812a26be15'),
(729, 79, 'page_builder_0_items_per_page', '2'),
(730, 79, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(731, 79, 'page_builder_0_infinity_scroll', '1'),
(732, 79, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(733, 80, '_wp_attached_file', '2022/04/image.png'),
(734, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:17:\"2022/04/image.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(735, 81, 'page_builder_0_title', 'Works List'),
(736, 81, '_page_builder_0_title', 'field_6257ece0908f7'),
(737, 81, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(738, 81, '_page_builder', 'field_6257ecc0908f6'),
(739, 81, 'page_builder_0_load_posts', '2'),
(740, 81, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(741, 81, 'page_builder_0_load_more_text', 'Load More'),
(742, 81, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(743, 81, 'page_builder_0_default_number', '2'),
(744, 81, '_page_builder_0_default_number', 'field_625812a26be15'),
(745, 81, 'page_builder_0_request_items', '3'),
(746, 81, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(747, 81, 'page_builder_0_default_items', '4'),
(748, 81, '_page_builder_0_default_items', 'field_625812a26be15'),
(749, 81, 'page_builder_0_items_per_page', '2'),
(750, 81, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(751, 81, 'page_builder_0_infinity_scroll', '0'),
(752, 81, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(753, 82, 'page_builder_0_title', 'Works List'),
(754, 82, '_page_builder_0_title', 'field_6257ece0908f7'),
(755, 82, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(756, 82, '_page_builder', 'field_6257ecc0908f6'),
(757, 82, 'page_builder_0_load_posts', '2'),
(758, 82, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(759, 82, 'page_builder_0_load_more_text', 'Load More'),
(760, 82, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(761, 82, 'page_builder_0_default_number', '2'),
(762, 82, '_page_builder_0_default_number', 'field_625812a26be15'),
(763, 82, 'page_builder_0_request_items', '3'),
(764, 82, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(765, 82, 'page_builder_0_default_items', '4'),
(766, 82, '_page_builder_0_default_items', 'field_625812a26be15'),
(767, 82, 'page_builder_0_items_per_page', '3'),
(768, 82, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(769, 82, 'page_builder_0_infinity_scroll', '0'),
(770, 82, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(771, 83, 'page_builder_0_title', 'Works List'),
(772, 83, '_page_builder_0_title', 'field_6257ece0908f7'),
(773, 83, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(774, 83, '_page_builder', 'field_6257ecc0908f6'),
(775, 83, 'page_builder_0_load_posts', '2'),
(776, 83, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(777, 83, 'page_builder_0_load_more_text', 'Load More'),
(778, 83, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(779, 83, 'page_builder_0_default_number', '2'),
(780, 83, '_page_builder_0_default_number', 'field_625812a26be15'),
(781, 83, 'page_builder_0_request_items', '3'),
(782, 83, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(783, 83, 'page_builder_0_default_items', '4'),
(784, 83, '_page_builder_0_default_items', 'field_625812a26be15'),
(785, 83, 'page_builder_0_items_per_page', '2'),
(786, 83, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(787, 83, 'page_builder_0_infinity_scroll', '0'),
(788, 83, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(789, 84, 'page_builder_0_title', 'Works List'),
(790, 84, '_page_builder_0_title', 'field_6257ece0908f7'),
(791, 84, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(792, 84, '_page_builder', 'field_6257ecc0908f6'),
(793, 84, 'page_builder_0_load_posts', '2'),
(794, 84, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(795, 84, 'page_builder_0_load_more_text', 'Load More'),
(796, 84, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(797, 84, 'page_builder_0_default_number', '2'),
(798, 84, '_page_builder_0_default_number', 'field_625812a26be15'),
(799, 84, 'page_builder_0_request_items', '3'),
(800, 84, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(801, 84, 'page_builder_0_default_items', '2'),
(802, 84, '_page_builder_0_default_items', 'field_625812a26be15'),
(803, 84, 'page_builder_0_items_per_page', '2'),
(804, 84, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(805, 84, 'page_builder_0_infinity_scroll', '0'),
(806, 84, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(807, 85, 'page_builder_0_title', 'Works List'),
(808, 85, '_page_builder_0_title', 'field_6257ece0908f7'),
(809, 85, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(810, 85, '_page_builder', 'field_6257ecc0908f6'),
(811, 85, 'page_builder_0_load_posts', '2'),
(812, 85, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(813, 85, 'page_builder_0_load_more_text', 'Load More'),
(814, 85, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(815, 85, 'page_builder_0_default_number', '2'),
(816, 85, '_page_builder_0_default_number', 'field_625812a26be15'),
(817, 85, 'page_builder_0_request_items', '3'),
(818, 85, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(819, 85, 'page_builder_0_default_items', '2'),
(820, 85, '_page_builder_0_default_items', 'field_625812a26be15'),
(821, 85, 'page_builder_0_items_per_page', '2'),
(822, 85, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(823, 85, 'page_builder_0_infinity_scroll', '1'),
(824, 85, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(825, 86, 'page_builder_0_title', 'Works List'),
(826, 86, '_page_builder_0_title', 'field_6257ece0908f7'),
(827, 86, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(828, 86, '_page_builder', 'field_6257ecc0908f6'),
(829, 86, 'page_builder_0_load_posts', '2'),
(830, 86, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(831, 86, 'page_builder_0_load_more_text', 'Load More'),
(832, 86, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(833, 86, 'page_builder_0_default_number', '2'),
(834, 86, '_page_builder_0_default_number', 'field_625812a26be15'),
(835, 86, 'page_builder_0_request_items', '3'),
(836, 86, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(837, 86, 'page_builder_0_default_items', '4'),
(838, 86, '_page_builder_0_default_items', 'field_625812a26be15'),
(839, 86, 'page_builder_0_items_per_page', '2'),
(840, 86, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(841, 86, 'page_builder_0_infinity_scroll', '1'),
(842, 86, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79'),
(843, 87, 'page_builder_0_title', 'Works List'),
(844, 87, '_page_builder_0_title', 'field_6257ece0908f7'),
(845, 87, 'page_builder', 'a:1:{i:0;s:15:\"ajax_posts_list\";}'),
(846, 87, '_page_builder', 'field_6257ecc0908f6'),
(847, 87, 'page_builder_0_load_posts', '2'),
(848, 87, '_page_builder_0_load_posts', 'field_6257f40572d1b'),
(849, 87, 'page_builder_0_load_more_text', 'Load More'),
(850, 87, '_page_builder_0_load_more_text', 'field_6257f44272d1c'),
(851, 87, 'page_builder_0_default_number', '2'),
(852, 87, '_page_builder_0_default_number', 'field_625812a26be15'),
(853, 87, 'page_builder_0_request_items', '3'),
(854, 87, '_page_builder_0_request_items', 'field_6257f40572d1b'),
(855, 87, 'page_builder_0_default_items', '4'),
(856, 87, '_page_builder_0_default_items', 'field_625812a26be15'),
(857, 87, 'page_builder_0_items_per_page', '2'),
(858, 87, '_page_builder_0_items_per_page', 'field_6257f40572d1b'),
(859, 87, 'page_builder_0_infinity_scroll', '0'),
(860, 87, '_page_builder_0_infinity_scroll', 'field_625a87a8d9c79');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-04-14 09:35:49', '2022-04-14 09:35:49', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2022-04-14 09:35:49', '2022-04-14 09:35:49', '', 0, 'http://ajax-load-more/?p=1', 0, 'post', '', 1),
(4, 1, '2022-04-14 09:36:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-04-14 09:36:03', '0000-00-00 00:00:00', '', 0, 'http://ajax-load-more/?p=4', 0, 'post', '', 0),
(5, 1, '2022-04-14 09:44:22', '2022-04-14 09:44:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page_builder.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Page Builder', 'page-builder', 'publish', 'closed', 'closed', '', 'group_6257ecb806273', '', '', '2022-04-16 09:10:00', '2022-04-16 09:10:00', '', 0, 'http://ajax-load-more/?post_type=acf-field-group&#038;p=5', 0, 'acf-field-group', '', 0),
(6, 1, '2022-04-14 09:44:22', '2022-04-14 09:44:22', 'a:9:{s:4:\"type\";s:16:\"flexible_content\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"layouts\";a:1:{s:20:\"layout_6257ecc74efbf\";a:6:{s:3:\"key\";s:20:\"layout_6257ecc74efbf\";s:5:\"label\";s:15:\"Ajax Posts List\";s:4:\"name\";s:15:\"ajax_posts_list\";s:7:\"display\";s:5:\"block\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}}s:12:\"button_label\";s:7:\"Add Row\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";}', 'Page Builder', 'page_builder', 'publish', 'closed', 'closed', '', 'field_6257ecc0908f6', '', '', '2022-04-14 09:47:42', '2022-04-14 09:47:42', '', 5, 'http://ajax-load-more/?post_type=acf-field&#038;p=6', 0, 'acf-field', '', 0),
(7, 1, '2022-04-14 09:44:22', '2022-04-14 09:44:22', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6257ecc74efbf\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_6257ece0908f7', '', '', '2022-04-14 09:44:22', '2022-04-14 09:44:22', '', 6, 'http://ajax-load-more/?post_type=acf-field&p=7', 0, 'acf-field', '', 0),
(9, 1, '2022-04-14 09:44:56', '2022-04-14 09:44:56', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-04-16 10:23:54', '2022-04-16 10:23:54', '', 0, 'http://ajax-load-more/?page_id=9', 0, 'page', '', 0),
(10, 1, '2022-04-14 09:44:33', '2022-04-14 09:44:33', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-wp-starter-theme', '', '', '2022-04-14 09:44:33', '2022-04-14 09:44:33', '', 0, 'http://ajax-load-more/2022/04/14/wp-global-styles-wp-starter-theme/', 0, 'wp_global_styles', '', 0),
(11, 1, '2022-04-14 09:44:56', '2022-04-14 09:44:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 09:44:56', '2022-04-14 09:44:56', '', 9, 'http://ajax-load-more/?p=11', 0, 'revision', '', 0),
(12, 1, '2022-04-14 09:46:36', '2022-04-14 09:46:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 09:46:36', '2022-04-14 09:46:36', '', 9, 'http://ajax-load-more/?p=12', 0, 'revision', '', 0),
(13, 1, '2022-04-14 09:47:56', '2022-04-14 09:47:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 09:47:56', '2022-04-14 09:47:56', '', 9, 'http://ajax-load-more/?p=13', 0, 'revision', '', 0),
(14, 1, '2022-04-14 09:49:20', '2022-04-14 09:49:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 09:49:20', '2022-04-14 09:49:20', '', 9, 'http://ajax-load-more/?p=14', 0, 'revision', '', 0),
(15, 1, '2022-04-14 10:03:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-04-14 10:03:48', '0000-00-00 00:00:00', '', 0, 'http://ajax-load-more/?post_type=works&p=15', 0, 'works', '', 0),
(16, 1, '2022-04-14 10:04:08', '2022-04-14 10:04:08', '', 'Work 1', '', 'publish', 'closed', 'closed', '', 'work-1', '', '', '2022-04-16 10:22:14', '2022-04-16 10:22:14', '', 0, 'http://ajax-load-more/?post_type=works&#038;p=16', 12, 'works', '', 0),
(17, 1, '2022-04-14 10:04:20', '2022-04-14 10:04:20', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"works\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Works', 'works', 'publish', 'closed', 'closed', '', 'group_6257f19c959cb', '', '', '2022-04-14 10:05:10', '2022-04-14 10:05:10', '', 0, 'http://ajax-load-more/?post_type=acf-field-group&#038;p=17', 0, 'acf-field-group', '', 0),
(18, 1, '2022-04-14 10:05:10', '2022-04-14 10:05:10', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_6257f1a89e6a5', '', '', '2022-04-14 10:05:10', '2022-04-14 10:05:10', '', 17, 'http://ajax-load-more/?post_type=acf-field&p=18', 0, 'acf-field', '', 0),
(19, 1, '2022-04-14 10:05:10', '2022-04-14 10:05:10', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_6257f1c59e6a6', '', '', '2022-04-14 10:05:10', '2022-04-14 10:05:10', '', 17, 'http://ajax-load-more/?post_type=acf-field&p=19', 1, 'acf-field', '', 0),
(22, 1, '2022-04-14 10:10:12', '2022-04-14 10:10:12', '', 'Work 2', '', 'publish', 'closed', 'closed', '', 'work-2', '', '', '2022-04-16 10:22:05', '2022-04-16 10:22:05', '', 0, 'http://ajax-load-more/?post_type=works&#038;p=22', 11, 'works', '', 0),
(23, 1, '2022-04-14 10:10:39', '2022-04-14 10:10:39', '', 'Work 3', '', 'publish', 'closed', 'closed', '', 'work-3', '', '', '2022-04-16 10:21:55', '2022-04-16 10:21:55', '', 0, 'http://ajax-load-more/?post_type=works&#038;p=23', 10, 'works', '', 0),
(24, 1, '2022-04-14 10:10:53', '2022-04-14 10:10:53', '', 'Work 4', '', 'publish', 'closed', 'closed', '', 'work-4', '', '', '2022-04-16 10:21:45', '2022-04-16 10:21:45', '', 0, 'http://ajax-load-more/?post_type=works&#038;p=24', 9, 'works', '', 0),
(25, 1, '2022-04-14 10:11:08', '2022-04-14 10:11:08', '', 'Work 5', '', 'publish', 'closed', 'closed', '', 'work-5', '', '', '2022-04-16 10:21:36', '2022-04-16 10:21:36', '', 0, 'http://ajax-load-more/?post_type=works&#038;p=25', 8, 'works', '', 0),
(26, 1, '2022-04-14 10:11:27', '2022-04-14 10:11:27', '', 'Work 6', '', 'publish', 'closed', 'closed', '', 'work-6', '', '', '2022-04-16 10:21:26', '2022-04-16 10:21:26', '', 0, 'http://ajax-load-more/?post_type=works&#038;p=26', 7, 'works', '', 0),
(27, 1, '2022-04-14 10:11:43', '2022-04-14 10:11:43', '', 'Work 7', '', 'publish', 'closed', 'closed', '', 'work-7', '', '', '2022-04-16 10:21:12', '2022-04-16 10:21:12', '', 0, 'http://ajax-load-more/?post_type=works&#038;p=27', 6, 'works', '', 0),
(28, 1, '2022-04-14 10:12:10', '2022-04-14 10:12:10', '', 'Work 8', '', 'publish', 'closed', 'closed', '', 'work-8', '', '', '2022-04-16 10:21:03', '2022-04-16 10:21:03', '', 0, 'http://ajax-load-more/?post_type=works&#038;p=28', 5, 'works', '', 0),
(29, 1, '2022-04-14 10:12:24', '2022-04-14 10:12:24', '', 'Work 9', '', 'publish', 'closed', 'closed', '', 'work-9', '', '', '2022-04-16 10:20:53', '2022-04-16 10:20:53', '', 0, 'http://ajax-load-more/?post_type=works&#038;p=29', 4, 'works', '', 0),
(30, 1, '2022-04-14 10:12:39', '2022-04-14 10:12:39', '', 'Work 10', '', 'publish', 'closed', 'closed', '', 'work-10', '', '', '2022-04-16 10:20:36', '2022-04-16 10:20:36', '', 0, 'http://ajax-load-more/?post_type=works&#038;p=30', 3, 'works', '', 0),
(31, 1, '2022-04-14 10:16:26', '2022-04-14 10:16:26', 'a:13:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6257ecc74efbf\";s:13:\"default_value\";i:2;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Items Per Page', 'items_per_page', 'publish', 'closed', 'closed', '', 'field_6257f40572d1b', '', '', '2022-04-15 11:35:34', '2022-04-15 11:35:34', '', 6, 'http://ajax-load-more/?post_type=acf-field&#038;p=31', 2, 'acf-field', '', 0),
(33, 1, '2022-04-14 10:16:51', '2022-04-14 10:16:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 10:16:51', '2022-04-14 10:16:51', '', 9, 'http://ajax-load-more/?p=33', 0, 'revision', '', 0),
(34, 1, '2022-04-14 12:25:35', '2022-04-14 12:25:35', 'a:13:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6257ecc74efbf\";s:13:\"default_value\";i:3;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Default Items', 'default_items', 'publish', 'closed', 'closed', '', 'field_625812a26be15', '', '', '2022-04-15 11:35:34', '2022-04-15 11:35:34', '', 6, 'http://ajax-load-more/?post_type=acf-field&#038;p=34', 1, 'acf-field', '', 0),
(35, 1, '2022-04-14 13:32:57', '2022-04-14 13:32:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 13:32:57', '2022-04-14 13:32:57', '', 9, 'http://ajax-load-more/?p=35', 0, 'revision', '', 0),
(36, 1, '2022-04-14 13:33:56', '2022-04-14 13:33:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 13:33:56', '2022-04-14 13:33:56', '', 9, 'http://ajax-load-more/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-04-14 13:38:14', '2022-04-14 13:38:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 13:38:14', '2022-04-14 13:38:14', '', 9, 'http://ajax-load-more/?p=37', 0, 'revision', '', 0),
(38, 1, '2022-04-14 13:39:48', '2022-04-14 13:39:48', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 13:39:48', '2022-04-14 13:39:48', '', 9, 'http://ajax-load-more/?p=38', 0, 'revision', '', 0),
(39, 1, '2022-04-14 13:40:16', '2022-04-14 13:40:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 13:40:16', '2022-04-14 13:40:16', '', 9, 'http://ajax-load-more/?p=39', 0, 'revision', '', 0),
(40, 1, '2022-04-14 18:11:04', '2022-04-14 18:11:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 18:11:04', '2022-04-14 18:11:04', '', 9, 'http://ajax-load-more/?p=40', 0, 'revision', '', 0),
(41, 1, '2022-04-14 18:11:22', '2022-04-14 18:11:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 18:11:22', '2022-04-14 18:11:22', '', 9, 'http://ajax-load-more/?p=41', 0, 'revision', '', 0),
(42, 1, '2022-04-14 19:09:38', '2022-04-14 19:09:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 19:09:38', '2022-04-14 19:09:38', '', 9, 'http://ajax-load-more/?p=42', 0, 'revision', '', 0),
(43, 1, '2022-04-14 19:13:44', '2022-04-14 19:13:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 19:13:44', '2022-04-14 19:13:44', '', 9, 'http://ajax-load-more/?p=43', 0, 'revision', '', 0),
(44, 1, '2022-04-14 19:13:56', '2022-04-14 19:13:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-14 19:13:56', '2022-04-14 19:13:56', '', 9, 'http://ajax-load-more/?p=44', 0, 'revision', '', 0),
(45, 1, '2022-04-15 09:00:19', '2022-04-15 09:00:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 09:00:19', '2022-04-15 09:00:19', '', 9, 'http://ajax-load-more/?p=45', 0, 'revision', '', 0),
(46, 1, '2022-04-15 09:00:45', '2022-04-15 09:00:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 09:00:45', '2022-04-15 09:00:45', '', 9, 'http://ajax-load-more/?p=46', 0, 'revision', '', 0),
(47, 1, '2022-04-15 09:14:01', '2022-04-15 09:14:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 09:14:01', '2022-04-15 09:14:01', '', 9, 'http://ajax-load-more/?p=47', 0, 'revision', '', 0),
(48, 1, '2022-04-15 09:18:37', '2022-04-15 09:18:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 09:18:37', '2022-04-15 09:18:37', '', 9, 'http://ajax-load-more/?p=48', 0, 'revision', '', 0),
(49, 1, '2022-04-15 09:24:11', '2022-04-15 09:24:11', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 09:24:11', '2022-04-15 09:24:11', '', 9, 'http://ajax-load-more/?p=49', 0, 'revision', '', 0),
(50, 1, '2022-04-15 09:25:57', '2022-04-15 09:25:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 09:25:57', '2022-04-15 09:25:57', '', 9, 'http://ajax-load-more/?p=50', 0, 'revision', '', 0),
(51, 1, '2022-04-15 09:26:52', '2022-04-15 09:26:52', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 09:26:52', '2022-04-15 09:26:52', '', 9, 'http://ajax-load-more/?p=51', 0, 'revision', '', 0),
(52, 1, '2022-04-15 09:27:21', '2022-04-15 09:27:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 09:27:21', '2022-04-15 09:27:21', '', 9, 'http://ajax-load-more/?p=52', 0, 'revision', '', 0),
(53, 1, '2022-04-15 09:44:57', '2022-04-15 09:44:57', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 09:44:57', '2022-04-15 09:44:57', '', 9, 'http://ajax-load-more/?p=53', 0, 'revision', '', 0),
(54, 1, '2022-04-15 11:36:09', '2022-04-15 11:36:09', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 11:36:09', '2022-04-15 11:36:09', '', 9, 'http://ajax-load-more/?p=54', 0, 'revision', '', 0),
(55, 1, '2022-04-15 11:36:36', '2022-04-15 11:36:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 11:36:36', '2022-04-15 11:36:36', '', 9, 'http://ajax-load-more/?p=55', 0, 'revision', '', 0),
(56, 1, '2022-04-15 11:36:46', '2022-04-15 11:36:46', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 11:36:46', '2022-04-15 11:36:46', '', 9, 'http://ajax-load-more/?p=56', 0, 'revision', '', 0),
(57, 1, '2022-04-15 12:06:25', '2022-04-15 12:06:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 12:06:25', '2022-04-15 12:06:25', '', 9, 'http://ajax-load-more/?p=57', 0, 'revision', '', 0),
(58, 1, '2022-04-15 14:51:55', '2022-04-15 14:51:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 14:51:55', '2022-04-15 14:51:55', '', 9, 'http://ajax-load-more/?p=58', 0, 'revision', '', 0),
(59, 1, '2022-04-15 14:52:12', '2022-04-15 14:52:12', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 14:52:12', '2022-04-15 14:52:12', '', 9, 'http://ajax-load-more/?p=59', 0, 'revision', '', 0),
(60, 1, '2022-04-15 14:53:23', '2022-04-15 14:53:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-15 14:53:23', '2022-04-15 14:53:23', '', 9, 'http://ajax-load-more/?p=60', 0, 'revision', '', 0),
(61, 1, '2022-04-16 09:01:20', '2022-04-16 09:01:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 09:01:20', '2022-04-16 09:01:20', '', 9, 'http://ajax-load-more/?p=61', 0, 'revision', '', 0),
(62, 1, '2022-04-16 09:10:00', '2022-04-16 09:10:00', 'a:11:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"parent_layout\";s:20:\"layout_6257ecc74efbf\";s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Infinity Scroll', 'infinity_scroll', 'publish', 'closed', 'closed', '', 'field_625a87a8d9c79', '', '', '2022-04-16 09:10:00', '2022-04-16 09:10:00', '', 6, 'http://ajax-load-more/?post_type=acf-field&p=62', 3, 'acf-field', '', 0),
(63, 1, '2022-04-16 09:12:10', '2022-04-16 09:12:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 09:12:10', '2022-04-16 09:12:10', '', 9, 'http://ajax-load-more/?p=63', 0, 'revision', '', 0),
(64, 1, '2022-04-16 09:32:53', '2022-04-16 09:32:53', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 09:32:53', '2022-04-16 09:32:53', '', 9, 'http://ajax-load-more/?p=64', 0, 'revision', '', 0),
(65, 1, '2022-04-16 09:33:15', '2022-04-16 09:33:15', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 09:33:15', '2022-04-16 09:33:15', '', 9, 'http://ajax-load-more/?p=65', 0, 'revision', '', 0),
(66, 1, '2022-04-16 09:33:32', '2022-04-16 09:33:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 09:33:32', '2022-04-16 09:33:32', '', 9, 'http://ajax-load-more/?p=66', 0, 'revision', '', 0),
(67, 1, '2022-04-16 09:33:51', '2022-04-16 09:33:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 09:33:51', '2022-04-16 09:33:51', '', 9, 'http://ajax-load-more/?p=67', 0, 'revision', '', 0),
(68, 1, '2022-04-16 09:34:22', '2022-04-16 09:34:22', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 09:34:22', '2022-04-16 09:34:22', '', 9, 'http://ajax-load-more/?p=68', 0, 'revision', '', 0),
(69, 1, '2022-04-16 09:56:39', '2022-04-16 09:56:39', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 09:56:39', '2022-04-16 09:56:39', '', 9, 'http://ajax-load-more/?p=69', 0, 'revision', '', 0),
(70, 1, '2022-04-16 09:57:08', '2022-04-16 09:57:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 09:57:08', '2022-04-16 09:57:08', '', 9, 'http://ajax-load-more/?p=70', 0, 'revision', '', 0),
(71, 1, '2022-04-16 09:57:23', '2022-04-16 09:57:23', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 09:57:23', '2022-04-16 09:57:23', '', 9, 'http://ajax-load-more/?p=71', 0, 'revision', '', 0),
(78, 1, '2022-04-16 10:11:00', '2022-04-16 10:11:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 10:11:00', '2022-04-16 10:11:00', '', 9, 'http://ajax-load-more/?p=78', 0, 'revision', '', 0),
(79, 1, '2022-04-16 10:18:27', '2022-04-16 10:18:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 10:18:27', '2022-04-16 10:18:27', '', 9, 'http://ajax-load-more/?p=79', 0, 'revision', '', 0),
(80, 1, '2022-04-16 10:20:32', '2022-04-16 10:20:32', '', 'image', '', 'inherit', 'open', 'closed', '', 'image', '', '', '2022-04-16 10:20:32', '2022-04-16 10:20:32', '', 30, 'http://ajax-load-more/wp-content/uploads/2022/04/image.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2022-04-16 10:22:45', '2022-04-16 10:22:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 10:22:45', '2022-04-16 10:22:45', '', 9, 'http://ajax-load-more/?p=81', 0, 'revision', '', 0),
(82, 1, '2022-04-16 10:23:03', '2022-04-16 10:23:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 10:23:03', '2022-04-16 10:23:03', '', 9, 'http://ajax-load-more/?p=82', 0, 'revision', '', 0),
(83, 1, '2022-04-16 10:23:19', '2022-04-16 10:23:19', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 10:23:19', '2022-04-16 10:23:19', '', 9, 'http://ajax-load-more/?p=83', 0, 'revision', '', 0),
(84, 1, '2022-04-16 10:23:25', '2022-04-16 10:23:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 10:23:25', '2022-04-16 10:23:25', '', 9, 'http://ajax-load-more/?p=84', 0, 'revision', '', 0),
(85, 1, '2022-04-16 10:23:41', '2022-04-16 10:23:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 10:23:41', '2022-04-16 10:23:41', '', 9, 'http://ajax-load-more/?p=85', 0, 'revision', '', 0),
(86, 1, '2022-04-16 10:23:51', '2022-04-16 10:23:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 10:23:51', '2022-04-16 10:23:51', '', 9, 'http://ajax-load-more/?p=86', 0, 'revision', '', 0),
(87, 1, '2022-04-16 10:23:54', '2022-04-16 10:23:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2022-04-16 10:23:54', '2022-04-16 10:23:54', '', 9, 'http://ajax-load-more/?p=87', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'wp-starter-theme', 'wp-starter-theme', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"3556fbd1f82bb82f4b617240ebd32e3b29c27123a9b6776f8698f2e5f37d75b2\";a:4:{s:10:\"expiration\";i:1651138561;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36\";s:5:\"login\";i:1649928961;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(19, 1, 'metaboxhidden_dashboard', 'a:6:{i:0;s:17:\"dashboard_php_nag\";i:1;s:21:\"dashboard_site_health\";i:2;s:19:\"dashboard_right_now\";i:3;s:18:\"dashboard_activity\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse'),
(21, 1, 'wp_user-settings-time', '1649930820');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B0IMJkpqJGVcxEhOgQOZkRE2jqtVXI0', 'admin', 'fokkewolf190@gmail.com', 'http://ajax-load-more', '2022-04-14 09:35:49', '', 0, 'admin');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=603;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=861;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
