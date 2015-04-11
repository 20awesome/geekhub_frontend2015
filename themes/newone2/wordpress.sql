-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Хост: localhost
-- Время создания: Апр 11 2015 г., 16:24
-- Версия сервера: 5.0.51
-- Версия PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- База данных: `wordpress`
-- 

-- --------------------------------------------------------

-- 
-- Структура таблицы `wp_commentmeta`
-- 

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `comment_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `wp_commentmeta`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `wp_comments`
-- 

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL auto_increment,
  `comment_post_ID` bigint(20) unsigned NOT NULL default '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL default '',
  `comment_author_url` varchar(200) NOT NULL default '',
  `comment_author_IP` varchar(100) NOT NULL default '',
  `comment_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL default '0',
  `comment_approved` varchar(20) NOT NULL default '1',
  `comment_agent` varchar(255) NOT NULL default '',
  `comment_type` varchar(20) NOT NULL default '',
  `comment_parent` bigint(20) unsigned NOT NULL default '0',
  `user_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `wp_comments`
-- 

INSERT INTO `wp_comments` VALUES (1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-04-10 08:09:31', '2015-04-10 08:09:31', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

-- 
-- Структура таблицы `wp_links`
-- 

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL auto_increment,
  `link_url` varchar(255) NOT NULL default '',
  `link_name` varchar(255) NOT NULL default '',
  `link_image` varchar(255) NOT NULL default '',
  `link_target` varchar(25) NOT NULL default '',
  `link_description` varchar(255) NOT NULL default '',
  `link_visible` varchar(20) NOT NULL default 'Y',
  `link_owner` bigint(20) unsigned NOT NULL default '1',
  `link_rating` int(11) NOT NULL default '0',
  `link_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL default '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Дамп данных таблицы `wp_links`
-- 


-- --------------------------------------------------------

-- 
-- Структура таблицы `wp_options`
-- 

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL auto_increment,
  `option_name` varchar(64) NOT NULL default '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL default 'yes',
  PRIMARY KEY  (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=146 ;

-- 
-- Дамп данных таблицы `wp_options`
-- 

INSERT INTO `wp_options` VALUES (1, 'siteurl', 'http://localhost', 'yes');
INSERT INTO `wp_options` VALUES (2, 'home', 'http://localhost', 'yes');
INSERT INTO `wp_options` VALUES (3, 'blogname', 'localhost', 'yes');
INSERT INTO `wp_options` VALUES (4, 'blogdescription', 'Just another WordPress site', 'yes');
INSERT INTO `wp_options` VALUES (5, 'users_can_register', '0', 'yes');
INSERT INTO `wp_options` VALUES (6, 'admin_email', '20awesome@gmail.com', 'yes');
INSERT INTO `wp_options` VALUES (7, 'start_of_week', '1', 'yes');
INSERT INTO `wp_options` VALUES (8, 'use_balanceTags', '0', 'yes');
INSERT INTO `wp_options` VALUES (9, 'use_smilies', '1', 'yes');
INSERT INTO `wp_options` VALUES (10, 'require_name_email', '1', 'yes');
INSERT INTO `wp_options` VALUES (11, 'comments_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES (12, 'posts_per_rss', '10', 'yes');
INSERT INTO `wp_options` VALUES (13, 'rss_use_excerpt', '0', 'yes');
INSERT INTO `wp_options` VALUES (14, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO `wp_options` VALUES (15, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO `wp_options` VALUES (16, 'mailserver_pass', 'password', 'yes');
INSERT INTO `wp_options` VALUES (17, 'mailserver_port', '110', 'yes');
INSERT INTO `wp_options` VALUES (18, 'default_category', '1', 'yes');
INSERT INTO `wp_options` VALUES (19, 'default_comment_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES (20, 'default_ping_status', 'open', 'yes');
INSERT INTO `wp_options` VALUES (21, 'default_pingback_flag', '0', 'yes');
INSERT INTO `wp_options` VALUES (22, 'posts_per_page', '10', 'yes');
INSERT INTO `wp_options` VALUES (23, 'date_format', 'F j, Y', 'yes');
INSERT INTO `wp_options` VALUES (24, 'time_format', 'g:i a', 'yes');
INSERT INTO `wp_options` VALUES (25, 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO `wp_options` VALUES (26, 'comment_moderation', '0', 'yes');
INSERT INTO `wp_options` VALUES (27, 'moderation_notify', '1', 'yes');
INSERT INTO `wp_options` VALUES (28, 'permalink_structure', '', 'yes');
INSERT INTO `wp_options` VALUES (29, 'gzipcompression', '0', 'yes');
INSERT INTO `wp_options` VALUES (30, 'hack_file', '0', 'yes');
INSERT INTO `wp_options` VALUES (31, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO `wp_options` VALUES (32, 'moderation_keys', '', 'no');
INSERT INTO `wp_options` VALUES (33, 'active_plugins', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (34, 'category_base', '', 'yes');
INSERT INTO `wp_options` VALUES (35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO `wp_options` VALUES (36, 'advanced_edit', '0', 'yes');
INSERT INTO `wp_options` VALUES (37, 'comment_max_links', '2', 'yes');
INSERT INTO `wp_options` VALUES (38, 'gmt_offset', '0', 'yes');
INSERT INTO `wp_options` VALUES (39, 'default_email_category', '1', 'yes');
INSERT INTO `wp_options` VALUES (40, 'recently_edited', '', 'no');
INSERT INTO `wp_options` VALUES (41, 'template', 'newone2', 'yes');
INSERT INTO `wp_options` VALUES (42, 'stylesheet', 'newone2', 'yes');
INSERT INTO `wp_options` VALUES (43, 'comment_whitelist', '1', 'yes');
INSERT INTO `wp_options` VALUES (44, 'blacklist_keys', '', 'no');
INSERT INTO `wp_options` VALUES (45, 'comment_registration', '0', 'yes');
INSERT INTO `wp_options` VALUES (46, 'html_type', 'text/html', 'yes');
INSERT INTO `wp_options` VALUES (47, 'use_trackback', '0', 'yes');
INSERT INTO `wp_options` VALUES (48, 'default_role', 'subscriber', 'yes');
INSERT INTO `wp_options` VALUES (49, 'db_version', '30133', 'yes');
INSERT INTO `wp_options` VALUES (50, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO `wp_options` VALUES (51, 'upload_path', '', 'yes');
INSERT INTO `wp_options` VALUES (52, 'blog_public', '0', 'yes');
INSERT INTO `wp_options` VALUES (53, 'default_link_category', '2', 'yes');
INSERT INTO `wp_options` VALUES (54, 'show_on_front', 'posts', 'yes');
INSERT INTO `wp_options` VALUES (55, 'tag_base', '', 'yes');
INSERT INTO `wp_options` VALUES (56, 'show_avatars', '1', 'yes');
INSERT INTO `wp_options` VALUES (57, 'avatar_rating', 'G', 'yes');
INSERT INTO `wp_options` VALUES (58, 'upload_url_path', '', 'yes');
INSERT INTO `wp_options` VALUES (59, 'thumbnail_size_w', '150', 'yes');
INSERT INTO `wp_options` VALUES (60, 'thumbnail_size_h', '150', 'yes');
INSERT INTO `wp_options` VALUES (61, 'thumbnail_crop', '1', 'yes');
INSERT INTO `wp_options` VALUES (62, 'medium_size_w', '300', 'yes');
INSERT INTO `wp_options` VALUES (63, 'medium_size_h', '300', 'yes');
INSERT INTO `wp_options` VALUES (64, 'avatar_default', 'mystery', 'yes');
INSERT INTO `wp_options` VALUES (65, 'large_size_w', '1024', 'yes');
INSERT INTO `wp_options` VALUES (66, 'large_size_h', '1024', 'yes');
INSERT INTO `wp_options` VALUES (67, 'image_default_link_type', 'file', 'yes');
INSERT INTO `wp_options` VALUES (68, 'image_default_size', '', 'yes');
INSERT INTO `wp_options` VALUES (69, 'image_default_align', '', 'yes');
INSERT INTO `wp_options` VALUES (70, 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES (71, 'close_comments_days_old', '14', 'yes');
INSERT INTO `wp_options` VALUES (72, 'thread_comments', '1', 'yes');
INSERT INTO `wp_options` VALUES (73, 'thread_comments_depth', '5', 'yes');
INSERT INTO `wp_options` VALUES (74, 'page_comments', '0', 'yes');
INSERT INTO `wp_options` VALUES (75, 'comments_per_page', '50', 'yes');
INSERT INTO `wp_options` VALUES (76, 'default_comments_page', 'newest', 'yes');
INSERT INTO `wp_options` VALUES (77, 'comment_order', 'asc', 'yes');
INSERT INTO `wp_options` VALUES (78, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (79, 'widget_categories', 'a:2:{i:3;a:4:{s:5:"title";s:1:" ";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (80, 'widget_text', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (81, 'widget_rss', 'a:0:{}', 'yes');
INSERT INTO `wp_options` VALUES (82, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO `wp_options` VALUES (83, 'timezone_string', '', 'yes');
INSERT INTO `wp_options` VALUES (84, 'page_for_posts', '0', 'yes');
INSERT INTO `wp_options` VALUES (85, 'page_on_front', '0', 'yes');
INSERT INTO `wp_options` VALUES (86, 'default_post_format', '0', 'yes');
INSERT INTO `wp_options` VALUES (87, 'link_manager_enabled', '0', 'yes');
INSERT INTO `wp_options` VALUES (88, 'initial_db_version', '30133', 'yes');
INSERT INTO `wp_options` VALUES (89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes');
INSERT INTO `wp_options` VALUES (90, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (91, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (92, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (93, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (94, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` VALUES (95, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:12:"categories-3";}s:9:"sidebar-2";a:0:{}s:13:"array_version";i:3;}', 'yes');
INSERT INTO `wp_options` VALUES (96, 'cron', 'a:5:{i:1428781740;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1428782975;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1428826189;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1428841328;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes');
INSERT INTO `wp_options` VALUES (125, '_transient_timeout_plugin_slugs', '1428841137', 'no');
INSERT INTO `wp_options` VALUES (126, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no');
INSERT INTO `wp_options` VALUES (98, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.1.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.1.1.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.1.1-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.1.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.1.1";s:7:"version";s:5:"4.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1428754723;s:15:"version_checked";s:5:"4.1.1";s:12:"translations";a:0:{}}', 'yes');
INSERT INTO `wp_options` VALUES (99, '_transient_random_seed', 'df7040f86414a0de9a54f7c131ee6cdb', 'yes');
INSERT INTO `wp_options` VALUES (108, 'can_compress_scripts', '1', 'yes');
INSERT INTO `wp_options` VALUES (122, '_site_transient_timeout_theme_roots', '1428757169', 'yes');
INSERT INTO `wp_options` VALUES (123, '_site_transient_theme_roots', 'a:5:{s:6:"newone";s:7:"/themes";s:7:"newone2";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes');
INSERT INTO `wp_options` VALUES (104, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1428755370;s:7:"checked";a:5:{s:6:"newone";s:0:"";s:7:"newone2";s:0:"";s:13:"twentyfifteen";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.3";s:14:"twentythirteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes');
INSERT INTO `wp_options` VALUES (105, '_site_transient_timeout_browser_28a852a08789958a28a252919317792b', '1429258184', 'yes');
INSERT INTO `wp_options` VALUES (106, '_site_transient_browser_28a852a08789958a28a252919317792b', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"41.0.2272.118";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes');
INSERT INTO `wp_options` VALUES (124, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1428754725;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.1.1.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:57:"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}}}', 'yes');
INSERT INTO `wp_options` VALUES (127, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1428797937', 'no');
INSERT INTO `wp_options` VALUES (128, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: error:0D0C50A1:asn1 encoding routines:ASN1_item_verify:unknown message digest algorithm</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: error:0D0C50A1:asn1 encoding routines:ASN1_item_verify:unknown message digest algorithm</p></div><div class="rss-widget"><ul></ul></div>', 'no');
INSERT INTO `wp_options` VALUES (115, '_transient_twentyfifteen_categories', '1', 'yes');
INSERT INTO `wp_options` VALUES (116, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1428654406;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes');
INSERT INTO `wp_options` VALUES (117, 'current_theme', '', 'yes');
INSERT INTO `wp_options` VALUES (118, 'theme_mods_newone', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1428755375;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;}}}', 'yes');
INSERT INTO `wp_options` VALUES (119, 'theme_switched', '', 'yes');
INSERT INTO `wp_options` VALUES (130, 'theme_mods_newone2', 'a:1:{i:0;b:0;}', 'yes');
INSERT INTO `wp_options` VALUES (137, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

-- 
-- Структура таблицы `wp_postmeta`
-- 

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `post_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

-- 
-- Дамп данных таблицы `wp_postmeta`
-- 

INSERT INTO `wp_postmeta` VALUES (1, 2, '_wp_page_template', 'default');
INSERT INTO `wp_postmeta` VALUES (2, 2, '_wp_trash_meta_status', 'publish');
INSERT INTO `wp_postmeta` VALUES (3, 2, '_wp_trash_meta_time', '1428754922');
INSERT INTO `wp_postmeta` VALUES (4, 5, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (5, 5, '_edit_lock', '1428758050:1');
INSERT INTO `wp_postmeta` VALUES (6, 8, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (7, 8, '_edit_lock', '1428755929:1');
INSERT INTO `wp_postmeta` VALUES (8, 10, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (9, 10, '_edit_lock', '1428755935:1');
INSERT INTO `wp_postmeta` VALUES (10, 12, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (11, 12, '_edit_lock', '1428755945:1');
INSERT INTO `wp_postmeta` VALUES (12, 15, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (13, 15, '_edit_lock', '1428755968:1');
INSERT INTO `wp_postmeta` VALUES (14, 17, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (15, 17, '_edit_lock', '1428756389:1');
INSERT INTO `wp_postmeta` VALUES (16, 19, '_wp_attached_file', '2015/04/tetka.jpg');
INSERT INTO `wp_postmeta` VALUES (17, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:400;s:4:"file";s:17:"2015/04/tetka.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"tetka-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"tetka-300x218.jpg";s:5:"width";i:300;s:6:"height";i:218;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"tetka-550x400.jpg";s:5:"width";i:550;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}');
INSERT INTO `wp_postmeta` VALUES (18, 18, '_thumbnail_id', '19');
INSERT INTO `wp_postmeta` VALUES (19, 18, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (20, 18, '_edit_lock', '1428757255:1');
INSERT INTO `wp_postmeta` VALUES (22, 21, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (23, 21, '_edit_lock', '1428757732:1');
INSERT INTO `wp_postmeta` VALUES (24, 22, '_wp_attached_file', '2015/04/dog.jpg');
INSERT INTO `wp_postmeta` VALUES (25, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:402;s:4:"file";s:15:"2015/04/dog.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"dog-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"dog-300x219.jpg";s:5:"width";i:300;s:6:"height";i:219;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:15:"dog-547x400.jpg";s:5:"width";i:547;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}');
INSERT INTO `wp_postmeta` VALUES (26, 21, '_thumbnail_id', '22');
INSERT INTO `wp_postmeta` VALUES (29, 1, '_edit_lock', '1428756863:1');
INSERT INTO `wp_postmeta` VALUES (35, 25, '_edit_lock', '1428758427:1');
INSERT INTO `wp_postmeta` VALUES (34, 25, '_edit_last', '1');
INSERT INTO `wp_postmeta` VALUES (36, 25, 'author', 'John Wooden');

-- --------------------------------------------------------

-- 
-- Структура таблицы `wp_posts`
-- 

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `post_author` bigint(20) unsigned NOT NULL default '0',
  `post_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL default 'publish',
  `comment_status` varchar(20) NOT NULL default 'open',
  `ping_status` varchar(20) NOT NULL default 'open',
  `post_password` varchar(20) NOT NULL default '',
  `post_name` varchar(200) NOT NULL default '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL default '0',
  `guid` varchar(255) NOT NULL default '',
  `menu_order` int(11) NOT NULL default '0',
  `post_type` varchar(20) NOT NULL default 'post',
  `post_mime_type` varchar(100) NOT NULL default '',
  `comment_count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- 
-- Дамп данных таблицы `wp_posts`
-- 

INSERT INTO `wp_posts` VALUES (1, 1, '2015-04-10 08:09:31', '2015-04-10 08:09:31', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-04-10 08:09:31', '2015-04-10 08:09:31', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1);
INSERT INTO `wp_posts` VALUES (2, 1, '2015-04-10 08:09:31', '2015-04-10 08:09:31', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2015-04-11 12:22:02', '2015-04-11 12:22:02', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (3, 1, '2015-04-10 08:09:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-10 08:09:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=3', 0, 'post', '', 0);
INSERT INTO `wp_posts` VALUES (4, 1, '2015-04-11 12:22:02', '2015-04-11 12:22:02', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-11 12:22:02', '2015-04-11 12:22:02', '', 2, 'http://localhost/?p=4', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (5, 1, '2015-04-11 12:22:31', '2015-04-11 12:22:31', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-04-11 12:38:21', '2015-04-11 12:38:21', '', 0, 'http://localhost/?page_id=5', 1, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (6, 1, '2015-04-11 12:22:31', '2015-04-11 12:22:31', '', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-04-11 12:22:31', '2015-04-11 12:22:31', '', 5, 'http://localhost/?p=6', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (7, 1, '2015-04-11 12:22:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-11 12:22:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=7', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (8, 1, '2015-04-11 12:23:10', '2015-04-11 12:23:10', '', 'Portfolio', '', 'publish', 'open', 'closed', '', 'portfolio', '', '', '2015-04-11 12:38:49', '2015-04-11 12:38:49', '', 0, 'http://localhost/?page_id=8', 2, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (9, 1, '2015-04-11 12:23:10', '2015-04-11 12:23:10', '', 'Portfolio', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-11 12:23:10', '2015-04-11 12:23:10', '', 8, 'http://localhost/?p=9', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (10, 1, '2015-04-11 12:23:28', '2015-04-11 12:23:28', '', 'Blog', '', 'publish', 'open', 'closed', '', 'blog', '', '', '2015-04-11 12:38:55', '2015-04-11 12:38:55', '', 0, 'http://localhost/?page_id=10', 3, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (11, 1, '2015-04-11 12:23:28', '2015-04-11 12:23:28', '', 'Blog', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-04-11 12:23:28', '2015-04-11 12:23:28', '', 10, 'http://localhost/?p=11', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (12, 1, '2015-04-11 12:23:42', '2015-04-11 12:23:42', '', 'Abous us', '', 'publish', 'open', 'closed', '', 'abous-us', '', '', '2015-04-11 12:39:05', '2015-04-11 12:39:05', '', 0, 'http://localhost/?page_id=12', 4, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (13, 1, '2015-04-11 12:23:42', '2015-04-11 12:23:42', '', 'Abous us', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-11 12:23:42', '2015-04-11 12:23:42', '', 12, 'http://localhost/?p=13', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (14, 1, '2015-04-11 12:23:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-11 12:23:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/?page_id=14', 0, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (15, 1, '2015-04-11 12:24:09', '2015-04-11 12:24:09', '', 'Contact', '', 'publish', 'open', 'closed', '', 'contact', '', '', '2015-04-11 12:39:28', '2015-04-11 12:39:28', '', 0, 'http://localhost/?page_id=15', 5, 'page', '', 0);
INSERT INTO `wp_posts` VALUES (16, 1, '2015-04-11 12:24:09', '2015-04-11 12:24:09', '', 'Contact', '', 'inherit', 'open', 'open', '', '15-revision-v1', '', '', '2015-04-11 12:24:09', '2015-04-11 12:24:09', '', 15, 'http://localhost/?p=16', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (17, 1, '2015-04-11 12:46:29', '0000-00-00 00:00:00', '<h2>"Ability may get you to the top, but it takes character to keep you there."John Wooden</h2>\n<h2>John Wooden</h2>', 'citata', '', 'draft', 'open', 'open', '', '', '', '', '2015-04-11 12:46:29', '2015-04-11 12:46:29', '', 0, 'http://localhost/?p=17', 0, 'post', '', 0);
INSERT INTO `wp_posts` VALUES (18, 1, '2015-04-11 12:45:13', '2015-04-11 12:45:13', 'When it comes to parallax scrolling, the line that separates good and bad choices is pretty thin. A while back parallax was being used to deliver an explosion of elements floating around the screen.When it comes to parallax scrolling, the line that separates good and bad choices is pretty thin. A while back parallax was being used to deliver an explosion of elements floating around the screen.When it comes to parallax scrolling, the line that separates good and bad choices is pretty thin. A while back parallax was being used to deliver an explosion of elements floating around the screen.', '17 Inspiring Examples of Parallax  Scrolling Sites', 'When it comes to parallax scrolling, the line that separates good and \r\nbad choices is pretty thin. A while back parallax was being used to \r\ndeliver an explosion of elements floating around the screen.', 'publish', 'open', 'open', '', '17-inspiring-examples-of-parallax-scrolling-sites', '', '', '2015-04-11 13:03:17', '2015-04-11 13:03:17', '', 0, 'http://localhost/?p=18', 0, 'post', '', 0);
INSERT INTO `wp_posts` VALUES (19, 1, '2015-04-11 12:44:37', '2015-04-11 12:44:37', '', 'tetka', '', 'inherit', 'open', 'open', '', 'tetka', '', '', '2015-04-11 12:44:37', '2015-04-11 12:44:37', '', 18, 'http://localhost/wp-content/uploads/2015/04/tetka.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES (20, 1, '2015-04-11 12:45:13', '2015-04-11 12:45:13', 'When it comes to parallax scrolling, the line that separates good and bad choices is pretty thin. A while back parallax was being used to deliver an explosion of elements floating around the screen.When it comes to parallax scrolling, the line that separates good and bad choices is pretty thin. A while back parallax was being used to deliver an explosion of elements floating around the screen.When it comes to parallax scrolling, the line that separates good and bad choices is pretty thin. A while back parallax was being used to deliver an explosion of elements floating around the screen.', '17 Inspiring Examples of Parallax  Scrolling Sites', 'When it comes to parallax scrolling, the line that separates good and \r\nbad choices is pretty thin. A while back parallax was being used to \r\ndeliver an explosion of elements floating around the screen.', 'inherit', 'open', 'open', '', '18-revision-v1', '', '', '2015-04-11 12:45:13', '2015-04-11 12:45:13', '', 18, 'http://localhost/?p=20', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (21, 1, '2015-04-11 12:46:01', '2015-04-11 12:46:01', 'Getting started in the world of design can be both thrilling and intimidating. Sometimes, you feel like you just don’t have the tools or skills you need to complete even the most basic projects.', '20 Resources for Beginner Designers  & Developers', 'Getting started in the world of design can be both thrilling and \r\nintimidating. Sometimes, you feel like you just don’t have the tools \r\nor skills you need to complete even the most basic projects.', 'publish', 'open', 'open', '', '20-resources-for-beginner-designers-developers', '', '', '2015-04-11 13:03:28', '2015-04-11 13:03:28', '', 0, 'http://localhost/?p=21', 0, 'post', '', 0);
INSERT INTO `wp_posts` VALUES (22, 1, '2015-04-11 12:45:55', '2015-04-11 12:45:55', '', 'dog', '', 'inherit', 'open', 'open', '', 'dog', '', '', '2015-04-11 12:45:55', '2015-04-11 12:45:55', '', 21, 'http://localhost/wp-content/uploads/2015/04/dog.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` VALUES (23, 1, '2015-04-11 12:46:01', '2015-04-11 12:46:01', 'Getting started in the world of design can be both thrilling and intimidating. Sometimes, you feel like you just don’t have the tools or skills you need to complete even the most basic projects.', '20 Resources for Beginner Designers  & Developers', 'Getting started in the world of design can be both thrilling and \r\nintimidating. Sometimes, you feel like you just don’t have the tools \r\nor skills you need to complete even the most basic projects.', 'inherit', 'open', 'open', '', '21-revision-v1', '', '', '2015-04-11 12:46:01', '2015-04-11 12:46:01', '', 21, 'http://localhost/?p=23', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (24, 1, '2015-04-11 12:52:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-11 12:52:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=24', 0, 'post', '', 0);
INSERT INTO `wp_posts` VALUES (25, 1, '2015-04-11 13:17:26', '2015-04-11 13:17:26', '<h2>"Ability may get you to the top, but it takes character to keep you there."</h2>', 'citata', 'Ability may get you to the top, but it takes character to keep you there.', 'publish', 'open', 'open', '', 'citata', '', '', '2015-04-11 13:19:19', '2015-04-11 13:19:19', '', 0, 'http://localhost/?p=25', 0, 'post', '', 0);
INSERT INTO `wp_posts` VALUES (26, 1, '2015-04-11 13:17:26', '2015-04-11 13:17:26', '<h2>"Ability may get you to the top, but it takes character to keep you there."</h2>', 'citata', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-04-11 13:17:26', '2015-04-11 13:17:26', '', 25, 'http://localhost/?p=26', 0, 'revision', '', 0);
INSERT INTO `wp_posts` VALUES (27, 1, '2015-04-11 13:19:19', '2015-04-11 13:19:19', '<h2>"Ability may get you to the top, but it takes character to keep you there."</h2>', 'citata', 'Ability may get you to the top, but it takes character to keep you there.', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-04-11 13:19:19', '2015-04-11 13:19:19', '', 25, 'http://localhost/?p=27', 0, 'revision', '', 0);

-- --------------------------------------------------------

-- 
-- Структура таблицы `wp_terms`
-- 

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `slug` varchar(200) NOT NULL default '',
  `term_group` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Дамп данных таблицы `wp_terms`
-- 

INSERT INTO `wp_terms` VALUES (1, 'Uncategorized', 'uncategorized', 0);
INSERT INTO `wp_terms` VALUES (2, 'HTML', 'html', 0);
INSERT INTO `wp_terms` VALUES (3, 'CSS', 'css', 0);
INSERT INTO `wp_terms` VALUES (4, 'NEWS', 'news', 0);
INSERT INTO `wp_terms` VALUES (5, 'Mobile', 'mobile', 0);
INSERT INTO `wp_terms` VALUES (6, 'Marketing', 'marketing', 0);
INSERT INTO `wp_terms` VALUES (7, 'Inspiration', 'inspiration', 0);

-- --------------------------------------------------------

-- 
-- Структура таблицы `wp_term_relationships`
-- 

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL default '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL default '0',
  `term_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- Дамп данных таблицы `wp_term_relationships`
-- 

INSERT INTO `wp_term_relationships` VALUES (1, 1, 0);
INSERT INTO `wp_term_relationships` VALUES (17, 1, 0);
INSERT INTO `wp_term_relationships` VALUES (18, 3, 0);
INSERT INTO `wp_term_relationships` VALUES (18, 4, 0);
INSERT INTO `wp_term_relationships` VALUES (21, 4, 0);
INSERT INTO `wp_term_relationships` VALUES (21, 3, 0);
INSERT INTO `wp_term_relationships` VALUES (25, 1, 0);

-- --------------------------------------------------------

-- 
-- Структура таблицы `wp_term_taxonomy`
-- 

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL auto_increment,
  `term_id` bigint(20) unsigned NOT NULL default '0',
  `taxonomy` varchar(32) NOT NULL default '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL default '0',
  `count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Дамп данных таблицы `wp_term_taxonomy`
-- 

INSERT INTO `wp_term_taxonomy` VALUES (1, 1, 'category', '', 0, 2);
INSERT INTO `wp_term_taxonomy` VALUES (2, 2, 'category', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (3, 3, 'category', '', 0, 2);
INSERT INTO `wp_term_taxonomy` VALUES (4, 4, 'category', '', 0, 2);
INSERT INTO `wp_term_taxonomy` VALUES (5, 5, 'category', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (6, 6, 'category', '', 0, 0);
INSERT INTO `wp_term_taxonomy` VALUES (7, 7, 'category', '', 0, 0);

-- --------------------------------------------------------

-- 
-- Структура таблицы `wp_usermeta`
-- 

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL auto_increment,
  `user_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- Дамп данных таблицы `wp_usermeta`
-- 

INSERT INTO `wp_usermeta` VALUES (1, 1, 'nickname', 'admin');
INSERT INTO `wp_usermeta` VALUES (2, 1, 'first_name', '');
INSERT INTO `wp_usermeta` VALUES (3, 1, 'last_name', '');
INSERT INTO `wp_usermeta` VALUES (4, 1, 'description', '');
INSERT INTO `wp_usermeta` VALUES (5, 1, 'rich_editing', 'true');
INSERT INTO `wp_usermeta` VALUES (6, 1, 'comment_shortcuts', 'false');
INSERT INTO `wp_usermeta` VALUES (7, 1, 'admin_color', 'fresh');
INSERT INTO `wp_usermeta` VALUES (8, 1, 'use_ssl', '0');
INSERT INTO `wp_usermeta` VALUES (9, 1, 'show_admin_bar_front', 'true');
INSERT INTO `wp_usermeta` VALUES (10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}');
INSERT INTO `wp_usermeta` VALUES (11, 1, 'wp_user_level', '10');
INSERT INTO `wp_usermeta` VALUES (12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets');
INSERT INTO `wp_usermeta` VALUES (13, 1, 'show_welcome_panel', '1');
INSERT INTO `wp_usermeta` VALUES (14, 1, 'session_tokens', 'a:2:{s:64:"256b59d706d81af4ece5a2e498a41234caf5dced52707171dea8edc3a9ee7ba4";a:4:{s:10:"expiration";i:1428826181;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428653381;}s:64:"8b62045cbe215660ff611d595fc1ced7d5855cbe3567191fcde6f1f18a7e3801";a:4:{s:10:"expiration";i:1428927531;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428754731;}}');
INSERT INTO `wp_usermeta` VALUES (15, 1, 'wp_dashboard_quick_press_last_post_id', '3');
INSERT INTO `wp_usermeta` VALUES (16, 1, 'closedpostboxes_post', 'a:0:{}');
INSERT INTO `wp_usermeta` VALUES (17, 1, 'metaboxhidden_post', 'a:4:{i:0;s:13:"trackbacksdiv";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}');
INSERT INTO `wp_usermeta` VALUES (18, 1, 'wp_user-settings', 'libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (19, 1, 'wp_user-settings-time', '1428756309');

-- --------------------------------------------------------

-- 
-- Структура таблицы `wp_users`
-- 

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `user_login` varchar(60) NOT NULL default '',
  `user_pass` varchar(64) NOT NULL default '',
  `user_nicename` varchar(50) NOT NULL default '',
  `user_email` varchar(100) NOT NULL default '',
  `user_url` varchar(100) NOT NULL default '',
  `user_registered` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL default '',
  `user_status` int(11) NOT NULL default '0',
  `display_name` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Дамп данных таблицы `wp_users`
-- 

INSERT INTO `wp_users` VALUES (1, 'admin', '$P$BUSYUlaxNzu0/YuKisZ.blPcjVwO/z0', 'admin', '20awesome@gmail.com', '', '2015-04-10 08:09:31', '', 0, 'admin');
