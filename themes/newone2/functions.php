<?php

if(function_exists('register_sidebar'))
	register_sidebar(array('name'=>'Header')); // register sidebar
	register_sidebar(array('name'=>'Footer')); // register sidebar
	add_theme_support("post-thumbnails");
	set_post_thumbnail_size("550","400",FALSE);
	
?>