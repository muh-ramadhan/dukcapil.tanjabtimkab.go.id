      <div id="site-header">
          <div class="flat-top">
              <div class="container">
                  <div class="row">
                      <?php
                        $identitas = $this->M_data->identitasfooter();
                        foreach ($identitas->result() as $row) {
                            ?>
                          <div class="flat-wrapper">
                              <div class="custom-info">
                                  <span>Sampaikan Pertanyaan Anda</span>
                                  <span><i class="fa fa-phone"></i><?php echo $row->no_telp; ?></span>
                                  <span><i class="fa fa-envelope"></i><?php echo $row->email; ?></span>
                              </div>

                              <div class="social-links">
                                  <a href="#">
                                      <i class="fa fa-twitter"></i>
                                  </a>
                                  <a href="#">
                                      <i class="fa fa-facebook"></i>
                                  </a>
                                  <a href="#">
                                      <i class="fa fa-behance"></i>
                                  </a>
                                  <a href="#">
                                      <i class="fa fa-spotify"></i>
                                  </a>
                                  <a href="#">
                                      <i class="fa fa-rss"></i>
                                  </a>
                              </div>
                          </div><!-- /.flat-wrapper -->
                      <?php } ?>
                  </div><!-- /.row -->
              </div><!-- /.container -->
          </div><!-- /.flat-top -->

          <header id="header" class="header clearfix">
              <div class="header-wrap clearfix">
                  <div class="container">
                      <div class="row">
                          <div class="flat-wrapper">
                              <div id="logo" class="logo">
                                  <a href="<?php echo base_url(); ?>">
                                      <img src="<?php echo base_url(); ?>style/images/logo.png" alt="images">
                                  </a>
                              </div><!-- /.logo -->
                              <div class="btn-menu">
                                  <span></span>
                              </div><!-- //mobile menu button -->

                              <div class="nav-wrap">
                                  <nav id="mainnav" class="mainnav">
                                      <div class="menu-extra">
                                          <ul>
                                              <li class="shopping-cart">
                                                  <a href="#">
                                                      <i class="icon-basket icons"></i>
                                                      <span class="shopping-cart-items-count">2</span>
                                                  </a>
                                                  <div class="subcart">
                                                      <div class="widget_shopping_cart_content">
                                                          <ul class="cart_list product_list_widget">
                                                              <li class="mini_cart_item">
                                                                  <a href="#" class="remove">x</a>
                                                                  <a href="#"><img src="images/products/1.jpg" alt="images">Boskke Cube</a>
                                                                  <p><span class="quantity">1 × <span class="amount">$39.00</span></span></p>
                                                              </li>
                                                              <li class="mini_cart_item">
                                                                  <a href="#" class="remove">x</a>
                                                                  <a href="#"><img src="images/products/2.jpg" alt="images">Cast Iron Casserole</a>
                                                                  <p><span class="quantity">1 × <span class="amount">$230.00</span></span></p>
                                                              </li>
                                                          </ul>
                                                          <p class="total">
                                                              <strong>Subtotal:</strong> <span class="amount">$269.00</span>
                                                          </p>
                                                          <div class="group-btn">
                                                              <a class="button" href="#">view cart</a>
                                                              <a class="button bg-scheme3 style1" href="#">checkout</a>
                                                          </div>
                                                      </div>
                                                  </div>
                                              </li>
                                          </ul>

                                      </div><!-- /.menu-extra -->
                                      <ul class="menu">
                                          <li class="home">
                                              <a href="index.html">Home</a>
                                              <ul class="submenu">
                                                  <li><a href="index.html">Home 01</a></li>
                                                  <li><a href="index-02.html">Home 02 / Header Transparent</a></li>
                                                  <li><a href="index-03.html">Home 03 / Header Modern</a></li>
                                                  <li><a href="index-04.html">Home: Portfolio</a></li>
                                                  <li><a href="index-05.html">Home: Portfolio 02</a></li>
                                              </ul><!-- /.submenu -->
                                          </li>
                                          <li><a href="about.html">about us</a></li>
                                          <li class="has-mega-menu">
                                              <a class="has-mega" href="#mega">Elements</a>
                                              <div class="submenu mega-menu">
                                                  <div class="row">
                                                      <div class="container">
                                                          <div class="col-md-2">
                                                              <div class="mega-title">
                                                                  <h5 class="btn-mega">Fusion Elements</h5>
                                                              </div>
                                                              <ul class="mega-menu-sub">
                                                                  <li><a href="accordion.html">Accordion</a></li>
                                                                  <li><a href="counter.html">Counter</a></li>
                                                                  <li><a href="icon-box.html">IconBox</a></li>
                                                                  <li><a href="image-box.html">ImagesBox</a></li>
                                                                  <li><a href="image-gallery.html">Images Gallery</a></li>
                                                                  <li><a href="latest-#">Latest Portfolio</a></li>

                                                              </ul>
                                                          </div><!-- /.col-md-2 -->

                                                          <div class="col-md-2">
                                                              <div class="mega-title">
                                                                  <h5 class="btn-mega">Fusion Elements</h5>
                                                              </div>
                                                              <ul class="mega-menu-sub">
                                                                  <li><a href="tabs.html">Tab</a></li>
                                                                  <li><a href="team-member.html">Team Member</a></li>
                                                                  <li><a href="testimonial.html">Testimonials</a></li>
                                                                  <li><a href="video-background-parallax.html">Video Parallax</a></li>
                                                                  <li><a href="pricing-table.html">Pricing Table</a></li>
                                                                  <li><a href="progress-bar.html">Progress Bar</a></li>
                                                                  <li><a href="blog-shortcodes.html">Blog Shortcode</a></li>
                                                              </ul>
                                                          </div><!-- /.col-md-2 -->
                                                          <div class="col-md-8">
                                                              <div class="blog-shortcode blog-grid">
                                                                  <div class="container">
                                                                      <div class="row">
                                                                          <div class="col-md-6">
                                                                              <article class="hentry">
                                                                                  <div class="entry-cover">
                                                                                      <a href="blog-single.html">
                                                                                          <img src="images/blog/5.jpg" alt="images">
                                                                                      </a>
                                                                                  </div>
                                                                                  <div class="entry-header">
                                                                                      <h2 class="entry-title">
                                                                                          <a href="blog-single.html">3 Reasons Your Business Needs A Budget Now</a>
                                                                                      </h2>
                                                                                      <div class="post-meta">
                                                                                          <div class="entry-time">January 26, 2016</div>
                                                                                      </div>
                                                                                  </div>
                                                                                  <div class="entry-content">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...</div>
                                                                              </article><!-- /.hentry -->
                                                                          </div><!-- /.col-md-6 -->

                                                                      </div><!-- /.row -->

                                                                      <div class="flat-divider d40px"></div>

                                                                      <div class="row">
                                                                          <div class="col-md-6">
                                                                              <article class="hentry">
                                                                                  <div class="entry-cover">
                                                                                      <a href="blog-single.html">
                                                                                          <img src="images/blog/7.jpg" alt="images">
                                                                                      </a>
                                                                                  </div>
                                                                                  <div class="entry-header">
                                                                                      <h2 class="entry-title">
                                                                                          <a href="blog-single.html">The Tax Office doesn’t always get it right</a>
                                                                                      </h2>
                                                                                      <div class="post-meta">
                                                                                          <div class="entry-time">January 26, 2016</div>
                                                                                      </div>
                                                                                  </div>
                                                                                  <div class="entry-content">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has...</div>
                                                                              </article><!-- /.hentry -->
                                                                          </div><!-- /.col-md-6 -->

                                                                      </div><!-- /.row -->
                                                                  </div><!-- /.container -->
                                                              </div>
                                                          </div>
                                                      </div><!-- /.container -->
                                                  </div><!-- /.row -->
                                              </div><!-- /.submenu -->
                                          </li><!-- /.flat-mega-menu -->
                                          <li><a href="#">Portfolio</a>
                                              <ul class="submenu">
                                                  <li><a href="portfolio-grid-classic-03-columns.html">Grid Classic Layouts</a>
                                                      <ul class="submenu">
                                                          <li><a href="portfolio-grid-classic-02-columns.html">Grid Classic 02 Columns</a></li>
                                                          <li><a href="portfolio-grid-classic-03-columns.html">Grid Classic 03 Columns</a></li>
                                                          <li><a href="portfolio-grid-classic-04-columns.html">Grid Classic 04 Columns</a></li>
                                                          <li><a href="portfolio-grid-classic-05-columns.html">Grid Classic 05 Columns</a></li>
                                                      </ul>
                                                  </li>
                                                  <li><a href="portfolio-grid-alt-04-columns.html">Grid Alt Layouts</a>
                                                      <ul class="submenu">
                                                          <li><a href="portfolio-grid-alt-02-columns.html">Grid Alt 02 Columns</a></li>
                                                          <li><a href="portfolio-grid-alt-03-columns.html">Grid Alt 03 Columns</a></li>
                                                          <li><a href="portfolio-grid-alt-04-columns.html">Grid Alt 04 Columns</a></li>
                                                          <li><a href="portfolio-grid-alt-05-columns.html">Grid Alt 05 Columns</a></li>
                                                      </ul>
                                                  </li>
                                                  <li><a href="portfolio-masonry-04-columns.html">Masonry Layouts</a>
                                                      <ul class="submenu">
                                                          <li><a href="portfolio-masonry-02-columns.html">Masonry 02 Columns</a></li>
                                                          <li><a href="portfolio-masonry-03-columns.html">Masonry 03 Columns</a></li>
                                                          <li><a href="portfolio-masonry-04-columns.html">Masonry 04 Columns</a></li>
                                                          <li><a href="portfolio-masonry-05-columns.html">Masonry 05 Columns</a></li>
                                                      </ul>
                                                  </li>
                                                  <li><a href="portfolio-masonry.html">Justify Layout</a></li>
                                                  <li><a href="portfolio-single-type-grid.html">Portfolio Details</a>
                                                      <ul class="submenu">
                                                          <li><a href="portfolio-single-type-list.html">Gallery Type List</a></li>
                                                          <li><a href="portfolio-single-type-slider.html">Gallery Type Slider</a></li>
                                                          <li><a href="portfolio-single-type-grid.html">Gallery Type Grid</a></li>
                                                          <li><a href="portfolio-single-content-left.html">Content Position Left</a></li>
                                                          <li><a href="portfolio-single-content-right.html">Content Position Right</a></li>
                                                          <li><a href="portfolio-single-content-fullwidth.html">Content Position Fullwidth</a></li>
                                                      </ul>
                                                  </li>
                                              </ul><!-- /.submenu -->
                                          </li>
                                          <li><a href="blog.html">News</a></li>
                                          <li><a href="#">Pages</a>
                                              <ul class="submenu">
                                                  <li><a href="services.html">Services 01</a></li>
                                                  <li><a href="services-02.html">Services 02</a></li>
                                              </ul><!-- /.submenu -->
                                          </li>
                                          <li><a href="contact.html">Contact us</a></li>
                                      </ul><!-- /.menu -->
                                  </nav><!-- /.mainnav -->
                              </div><!-- /.nav-wrap -->
                          </div><!-- /.flat-wrapper -->
                      </div><!-- /.row -->
                  </div><!-- /.container -->
              </div><!-- /.header-inner -->
          </header><!-- /.header -->
      </div><!-- /.site-header -->