<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 7) | !(IE 8) ]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->
<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta name="viewport" content="width=device-width">
    <title><?php wp_title( '|', true, 'right' ); ?></title>
    <link rel="profile" href="http://gmpg.org/xfn/11">
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
    <link rel='stylesheet' id='main-style'  href='<?php echo get_stylesheet_uri(); ?>' type='text/css' media='all' />

    <?php wp_head(); ?>
</head>


<body>


<div class="wrapper">
<div class="wrapper-for-back">
	<div class="header ">
		<div class="header-wrap">
			<h1><p>Skokov</p><a href="/"><img src="<?php bloginfo( 'template_url' ); ?>/images/star-h.png" alt="Logo"/></a></h1>
			<ul>
			<?php wp_list_pages("title_li="); ?>

			</ul>
		
		</div>
		
	</div>
	<div class="bar">
		
    </div>
    <div class="content">

		
<div class="left-news">		
		<div class="citata">
		
		
		
		
		
<?php if (have_posts()) : ?> 
<?php query_posts('p=25'); ?>
<?php while (have_posts()): the_post(); ?>
<?php the_post_thumbnail(); ?>
<h2><?php the_excerpt(); ?><span><?php $key="author"; echo get_post_meta($post->ID, $key, true); ?></span><h2>

<?php endwhile; ?>
<?php endif; ?>


		</div>
		
<div class="news">

<?php if (have_posts()) : ?> 
<?php query_posts('category_name=news&showposts=2'); ?>
<?php while (have_posts()): the_post(); ?>
<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
<div class="body-news">
<a href="<?php the_permalink(); ?>"><h3><?php the_title(); ?></h3></a>
<p class="text-news"><?php the_excerpt(); ?></p>
<div class="news-footer"><img src="<?php bloginfo( 'template_url' ); ?>/images/heart.jpg" alt="Back"/> 15<a href="/"><p>by <?php the_author(); ?>   /  <?php comments_number( '0 comments', '1 comment', '% comments' ); ?>  /  <?php the_date('j F Y | '); ?></p></a></div>
<?php endwhile; ?>
<?php endif; ?>
</div>
</div>



</div>



</div>


<div class="center-news">	


<div class="news">
<?php if (have_posts()) : ?> 
<?php query_posts('category_name=css&showposts=1'); ?>
<?php while (have_posts()): the_post(); ?>
<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
<div class="body-news">
<a href="<?php the_permalink(); ?>"><h3><?php the_title(); ?></h3></a>
<p class="text-news"><?php the_excerpt(); ?></p>
<div class="news-footer"><img src="<?php bloginfo( 'template_url' ); ?>/images/heart.jpg" alt="Back"/> 15<a href="/"><p>by <?php the_author(); ?>   /  <?php comments_number( '0 comments', '1 comment', '% comments' ); ?>  /  <?php the_date('j F Y | '); ?></p></a></div>
<?php endwhile; ?>
<?php endif; ?>
</div>
</div>



</div>

<div class="sidebar">	

<div class="search">	
<div class="search-form">
<form method="get" action="/" id="search" method="get" >
  <input name="s" type="text" size="40" placeholder="Search..." name="s" value="<?php the_search_query();?>"/>
</form>
</div>
</div>




<div class="categories">
<h2>categories</h2>
<div class="categories-all">
<div class="categories-first">
<ul>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span><?php if(!function_exists("dynamic_sidebar") || !dynamic_sidebar("Header"))	:?><p>Text unless no widgets<p><?php endif; ?></a></li>
</ul>
</div>
<div class="categories-second">
<ul>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
</ul>
</div>
</div>


</div>




<div class="categories">
<h2>archive</h2>
<div class="categories-all">
<div class="categories-first">
<ul>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
</ul>
</div>
<div class="categories-second">
<ul>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
<li class="for-li-cat"><a class="" href="#"><span><img src="<?php bloginfo( 'template_url' ); ?>/images/arrow.jpg" alt="Wooman"/></span>web design</a></li>
</ul>
</div>
</div>


</div>


<div class="news-lists">

<h2>Popular posts</h2>
			<ul>
				<li><img src="<?php bloginfo( 'template_url' ); ?>/images/tetka.jpg" alt=""><p><a href="#">15 Fresh Examples of Clean and Minimal Web Designs</a></p>
					<span class="likes"><a href="#">Dec 14, 2013</a><img src="<?php bloginfo( 'template_url' ); ?>/images/heart2.png" title="likes" alt=""/>16</span>
				</li>
				<div class="clear"></div>

								<li><img src="<?php bloginfo( 'template_url' ); ?>/images/tetka.jpg" alt=""><p><a href="#">15 Fresh Examples of Clean and Minimal Web Designs</a></p>
					<span class="likes"><a href="#">Dec 14, 2013</a><img src="<?php bloginfo( 'template_url' ); ?>/images/heart2.png" title="likes" alt=""/>16</span>
				</li>
				<div class="clear"></div>
				
								<li><img src="<?php bloginfo( 'template_url' ); ?>/images/tetka.jpg" alt=""><p><a href="#">15 Fresh Examples of Clean and Minimal Web Designs</a></p>
					<span class="likes"><a href="#">Dec 14, 2013</a><img src="<?php bloginfo( 'template_url' ); ?>/images/heart2.png" title="likes" alt=""/>16</span>
				</li>
				<div class="clear"></div>
				
								<li><img src="<?php bloginfo( 'template_url' ); ?>/images/tetka.jpg" alt=""><p><a href="#">15 Fresh Examples of Clean and Minimal Web Designs</a></p>
					<span class="likes"><a href="#">Dec 14, 2013</a><img src="<?php bloginfo( 'template_url' ); ?>/images/heart2.png" title="likes" alt=""/>16</span>
				</li>
				<div class="clear"></div>
				
				
								<li><img src="<?php bloginfo( 'template_url' ); ?>/images/tetka.jpg" alt=""><p><a href="#">15 Fresh Examples of Clean and Minimal Web Designs</a></p>
					<span class="likes"><a href="#">Dec 14, 2013</a><img src="<?php bloginfo( 'template_url' ); ?>/images/heart2.png" title="likes" alt=""/>&nbsp16</span>
				</li>
				<div class="clear"></div>
</div>

<div class="tags">
<h2>Tags</h2>

			<ul>

				<li><a href="#">TAG</a></li>
				<li><a href="#">TAG</a></li>
				<li><a href="#">TAG</a></li>
				<li><a href="#">TAG</a></li>
				<li><a href="#">TAG</a></li>
				<li><a href="#">TAG</a></li>
				<li><a href="#">TAG</a></li>
				
								<li><a href="#">TAG</a></li>
				<li><a href="#">TAG</a></li>
				<li><a href="#">TAG</a></li>
								<li><a href="#">TAG</a></li>
				<li><a href="#">TAG</a></li>
				<li><a href="#">TAG</a></li>
			</ul>

	</div>



	
</div>
</div>

	<div class="clear"></div>
  <div class="footer">
	<div class="footer-top">
	   <div class="wrap">
		   <div class="section group">
				<div class="col_1_of_3 span_1_of_3">
					<h3>About Us</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
					<button class="btn1 btn-8 btn-8b">Learn more</button>
					<h4>Photo Stream</h4>
					<div class="gallery">
						<ul>
							<li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="<?php bloginfo( 'template_url' ); ?>/images/footer-1.jpg" alt=""/></a></li>
							<li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="<?php bloginfo( 'template_url' ); ?>/images/footer-2.jpg" alt=""/></a></li>
							<li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="<?php bloginfo( 'template_url' ); ?>/images/footer-3.jpg" alt=""/></a></li>
							<li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="<?php bloginfo( 'template_url' ); ?>/images/footer-4.jpg" alt=""/></a></li>
							<li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="<?php bloginfo( 'template_url' ); ?>/images/footer-5.jpg" alt=""/></a></li>
							<li><a class="popup-with-zoom-anim" href="#small-dialog1"><img src="<?php bloginfo( 'template_url' ); ?>/images/footer-6.jpg" alt=""/></a></li>

						</ul>
					</div>
				</div>
				<div class="col_1_of_3 span_1_of_3">
					<h3>Latest tweets</h3>
					<div class="footer-list">
						<ul>
							<li><img src="<?php bloginfo( 'template_url' ); ?>/images/twitter.png" alt=""/><p>Lorem ipsum <span class="yellow"><a href="#">consectetuer</a></span> adipiscing elit, seddia<br><span class="small">&nbsp;web design</span></p><div class="clear"></div></li>
							<li><img src="<?php bloginfo( 'template_url' ); ?>/images/twitter.png" alt=""/><p>Lorem ipsum <span class="yellow"><a href="#">consectetuer</a></span> adipiscing elit, seddia<br><span class="small">&nbsp;web design</span></p><div class="clear"></div></li>
							<li><img src="<?php bloginfo( 'template_url' ); ?>/images/twitter.png" alt=""/><p>Lorem ipsum dolor sit amet, <span class="yellow"><a href="#">consectetuer</a></span> adipiscing elit, sed diam nonummy nibh<br><span class="small">&nbsp;web design</span></p><div class="clear"></div></li>
							<li><img src="<?php bloginfo( 'template_url' ); ?>/images/twitter.png" alt=""/><p>Lorem ipsum dolor sit amet, <span class="yellow"><a href="#">consectetuer</a></span> adipiscing elit, sed diam nonummy nibh<br><span class="small">&nbsp;web design</span></p><div class="clear"></div></li>
							<li><img src="<?php bloginfo( 'template_url' ); ?>/images/twitter.png" alt=""/><p>Lorem ipsum <span class="yellow"><a href="#">consectetuer</a></span> adipiscing elit, seddia<br><span class="small">&nbsp;web design</span></p><div class="clear"></div></li>
						</ul>
					</div>
					 <div class="social-icons">	
					 	<h4>Social Connecting</h4>
						    <ul>	
							  <li class="facebook"><a href="#"><img src="<?php bloginfo( 'template_url' ); ?>/images/facebook.jpg" alt=""/></a></li>
					          <li class="google"><a href="#"><img src="<?php bloginfo( 'template_url' ); ?>/images/google.jpg" alt=""/></a></li>
					          <li class="twitter"><a href="#"><img src="<?php bloginfo( 'template_url' ); ?>/images/t.jpg" alt=""/></a></li>
					          <li class="linkedin"><a href="#"><img src="<?php bloginfo( 'template_url' ); ?>/images/in.jpg" alt=""/></a></li>	 
					          <li class="youtube"><a href="#"><img src="<?php bloginfo( 'template_url' ); ?>/images/youtube.jpg" alt=""/></a></li>	
					          <li class="bloger"><a href="#"><img src="<?php bloginfo( 'template_url' ); ?>/images/b.jpg" alt=""/></a></li>
					          <li class="rss"><a href="#"><img src="<?php bloginfo( 'template_url' ); ?>/images/rss.jpg" alt=""/></a></li>	
					          <li class="dribble"><a href="#"><img src="<?php bloginfo( 'template_url' ); ?>/images/ball.jpg" alt=""/></a></li>		        	
					        </ul>
				     </div>
			    </div>
				<div class="col_1_of_3 span_1_of_3">
					<h3>Contact info</h3>
					<div class="footer-list">
						<ul>
							<li><img src="<?php bloginfo( 'template_url' ); ?>/images/map.jpg" alt=""/><p>Lorem ipsum dolor sit amet,consectetuer adipiscing elit, sed diam nonummy nibh<br>&nbsp;web design</p><div class="clear"></div></li>
							<li><img src="<?php bloginfo( 'template_url' ); ?>/images/contact.jpg" alt=""/><p>Phone: +1 800 258 2689<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+1 800 258 2689 </p><div class="clear"></div></li>
							<li><img src="<?php bloginfo( 'template_url' ); ?>/images/mail.jpg" alt=""/><p>Email: <span class="yellow"><a href="#">info(at)skokov.com</a></span></p><div class="clear"></div></li>
					   </ul>
					</div>
					<div class="follow">
					   <h4>Follow Us</h4>
					   <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod</p>
					   <div class="search">
						  <form>
							   <input type="text" value="">
							   <input type="submit" value="">
						  </form>
					   </div>
				    </div>
				</div>
				<div class="clear"></div>
			</div>
	   </div>
	 </div>
	 <div class="footer-bottom">
	 	<div class="wrap">

		 	<div class="footer-nav">
		 		<ul>
<?php wp_list_pages("title_li="); ?>
				</ul>
		 	</div>
		 	<div class="clear"></div>
	    </div>
	</div>
</div>
</body>
</html>
