<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Fashion.Admin.cart" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Ansonika">
    <title></title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="../img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="../img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="../img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="../img/apple-touch-icon-144x144-precomposed.png">
	
    <!-- GOOGLE WEB FONT -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous">
    <link rel="preload" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" as="fetch" crossorigin="anonymous">
    <script>
    !function(e,n,t){"use strict";var o="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap",r="__3perf_googleFonts_c2536";function c(e){(n.head||n.body).appendChild(e)}function a(){var e=n.createElement("link");e.href=o,e.rel="stylesheet",c(e)}function f(e){if(!n.getElementById(r)){var t=n.createElement("style");t.id=r,c(t)}n.getElementById(r).innerHTML=e}e.FontFace&&e.FontFace.prototype.hasOwnProperty("display")?(t[r]&&f(t[r]),fetch(o).then(function(e){return e.text()}).then(function(e){return e.replace(/@font-face {/g,"@font-face{font-display:swap;")}).then(function(e){return t[r]=e}).then(f).catch(a)):a()}(window,document,localStorage);
    </script>

    <!-- BASE CSS -->
    <link href="../css/bootstrap.custom.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">

	<!-- SPECIFIC CSS -->
    <link href="../css/cart.css" rel="stylesheet">
	

</head>
<body>
	<form runat="server">
<div id="page">
		
		<header class="version_1">
		<div class="layer"></div><!-- Mobile menu overlay mask -->
		<div class="main_header">
			<div class="container">
				<div class="row small-gutters">
					<div class="col-xl-3 col-lg-3 d-lg-flex align-items-center">
						<div id="logo">
							<a href="../index.aspx"><img src="../img/logo.svg" alt="" width="100" height="35"></a>
						</div>
					</div>
					<nav class="col-xl-6 col-lg-7">
						<a class="open_close" href="javascript:void(0);">
							<div class="hamburger hamburger--spin">
								<div class="hamburger-box">
									<div class="hamburger-inner"></div>
								</div>
							</div>
						</a>
						<!-- Mobile menu button -->
						<div class="main-menu">
							<div id="header_menu">
								<a href="../index.aspx"><img src="../img/logo_black.svg" alt="" width="100" height="35"></a>
								<a href="#" class="open_close" id="close_in"><i class="ti-close"></i></a>
							</div>
							<ul>
								<li class="submenu">
									<a href="javascript:void(0);" class="show-submenu">Home</a>
									<ul>
										<li><a href="index.html">Slider</a></li>
										<li><a href="index-2.html">Video Background</a></li>
										<li><a href="index-3.html">Vertical Slider</a></li>
										<li><a href="index-4.html">GDPR Cookie Bar</a></li>
									</ul>
								</li>
								<li class="megamenu submenu">
									<a href="javascript:void(0);" class="show-submenu-mega">Pages</a>
									<div class="menu-wrapper">
										<div class="row small-gutters">
											<div class="col-lg-3">
												<h3>Listing grid</h3>
												<ul>
													<li><a href="listing-grid-1-full.html">Grid Full Width</a></li>
													<li><a href="listing-grid-2-full.html">Grid Full Width 2</a></li>
													<li><a href="listing-grid-3.html">Grid Boxed</a></li>
													<li><a href="listing-grid-4-sidebar-left.html">Grid Sidebar Left</a></li>
													<li><a href="listing-grid-5-sidebar-right.html">Grid Sidebar Right</a></li>
													<li><a href="listing-grid-6-sidebar-left.html">Grid Sidebar Left 2</a></li>
													<li><a href="listing-grid-7-sidebar-right.html">Grid Sidebar Right 2</a></li>
												</ul>
											</div>
											<div class="col-lg-3">
												<h3>Listing row &amp; Product</h3>
												<ul>
													<li><a href="listing-row-1-sidebar-left.html">Row Sidebar Left</a></li>
													<li><a href="listing-row-2-sidebar-right.html">Row Sidebar Right</a></li>
													<li><a href="listing-row-3-sidebar-left.html">Row Sidebar Left 2</a></li>
													<li><a href="listing-row-4-sidebar-extended.html">Row Sidebar Extended</a></li>
													<li><a href="product-detail-1.html">Product Large Image</a></li>
													<li><a href="product-detail-2.html">Product Carousel</a></li>
													<li><a href="product-detail-3.html">Product Sticky Info</a></li>
												</ul>
											</div>
											<div class="col-lg-3">
												<h3>Other pages</h3>
												<ul>
													<li><a href="cart.html">Cart Page</a></li>
													<li><a href="checkout.html">Check Out Page</a></li>
													<li><a href="confirm.html">Confirm Purchase Page</a></li>
													<li><a href="account.html">Create Account Page</a></li>
													<li><a href="track-order.html">Track Order</a></li>
													<li><a href="help.html">Help Page</a></li>
													<li><a href="help-2.html">Help Page 2</a></li>
													<li><a href="leave-review.html">Leave a Review</a></li>
												</ul>
											</div>
											<div class="col-lg-3 d-xl-block d-lg-block d-md-none d-sm-none d-none">
												<div class="banner_menu">
													<a href="#0">
														<img src="../data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" data-src="../img/banner_menu.jpg" width="400" height="550" alt="" class="img-fluid lazy">
													</a>
												</div>
											</div>
										</div>
										<!-- /row -->
									</div>
									<!-- /menu-wrapper -->
								</li>
								<li class="submenu">
									<a href="javascript:void(0);" class="show-submenu">Extra Pages</a>
									<ul>
										<li><a href="header-2.html">Header Style 2</a></li>
										<li><a href="header-3.html">Header Style 3</a></li>
										<li><a href="header-4.html">Header Style 4</a></li>
										<li><a href="header-5.html">Header Style 5</a></li>
										<li><a href="404.html">404 Page</a></li>
										<li><a href="sign-in-modal.html">Sign In Modal</a></li>
										<li><a href="contacts.html">Contact Us</a></li>
										<li><a href="about.html">About 1</a></li>
										<li><a href="about-2.html">About 2</a></li>
										<li><a href="modal-advertise.html">Modal Advertise</a></li>
										<li><a href="modal-newsletter.html">Modal Newsletter</a></li>
									</ul>
								</li>
								<li>
									<a href="blog.html">Blog</a>
								</li>
								<li>
									<a href="#" target="_parent">Buy Template</a>
								</li>
							</ul>
						</div>
						<!--/main-menu -->
					</nav>
					<div class="col-xl-3 col-lg-2 d-lg-flex align-items-center justify-content-end text-right">
						<a class="phone_top" href="tel://9438843343">
							<strong>
							<span>
                                <asp:Label ID="lblogin" runat="server" Text=""></asp:Label>
								
							</span></strong>

						</a>
					</div>
				</div>
				<!-- /row -->
			</div>
		</div>
		<!-- /main_header -->

		<div class="main_nav Sticky">
			<div class="container">
				<div class="row small-gutters">
					<div class="col-xl-3 col-lg-3 col-md-3">
						<nav class="categories">
								<ul class="clearfix">
								<li><span>
										<a href="#">
											<span class="hamburger hamburger--spin">
												<span class="hamburger-box">
													<span class="hamburger-inner"></span>
												</span>
											</span>
											分类目录
										</a>
									</span>
									
									<div id="menu">
										<asp:Repeater ID="Repeater1" runat="server">
									 <HeaderTemplate>
										<ul>
                                        </HeaderTemplate>    
											<ItemTemplate>
											<li>              										
												<span>                                                            
                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%#Eval("Name") %>' NavigateUrl='<%# "../Listing.aspx?id="+Eval("CategoryId") %>'></asp:HyperLink>						 
                  
													   
											    </span>
										
											</ItemTemplate>
											<FooterTemplate>
										</ul>
												</FooterTemplate>
											</asp:Repeater>
									</div>
										
								</li>
							</ul>
						</nav>
					</div>
					<div class="col-xl-6 col-lg-7 col-md-6 d-none d-md-block">
						<div class="custom-search-input">
							<input type="text" placeholder="Search over 10.000 products">
							<button type="submit"><i class="header-icon_search_custom"></i></button>
						</div>
					</div>
					<div class="col-xl-3 col-lg-2 col-md-3">
						<ul class="top_tools">
							<li>
								<div class="dropdown dropdown-cart">
									<a href="cart.aspx" class="cart_bt">
										<strong id="shu">
                                            <%= num %>
									    </strong></a>
									<div class="dropdown-menu">
                                        <asp:Repeater ID="Repeater3" runat="server">
											<ItemTemplate>
										<ul class="contentAll">
											<li>
												<a href="product-detail-1.html">
													<figure>
														<%--<img src="../img/products/product_placeholder_square_small.jpg" data-src="../img/products/shoes/thumb/1.jpg" alt=""  class="lazy">--%>
														 <asp:Image runat="server" class="lazy" width="50" height="50" alt="Image" ImageUrl='<%#Eval("ProductImage") %>'></asp:Image>
													</figure>
													<strong>
														<span>
														<asp:Label ID="LblPn" runat="server" Text='<%#"1x"+Eval("ProductName") %>'></asp:Label>
													    </span>
														<asp:Label ID="Lblprice" runat="server" Text='<%#"$"+Eval("Price") %>'></asp:Label>
													</strong>
												</a>
												
													<asp:LinkButton ID="linksdel" runat="server" CommandArgument='<%#Eval("CartId")%>' OnCommand="LinkButton3_Command1" class="action" >
													<i class="ti-trash"></i>
														</asp:LinkButton>
											</li>
										</ul>
												</ItemTemplate>
											</asp:Repeater>
										<div class="total_drop">
											<div class="clearfix"><strong>Total</strong><span id="sTotal">$0.00</span></div>
											<a href="cart.aspx" class="btn_1 outline">View Cart</a><a href="checkout.html" class="btn_1">Checkout</a>
										</div>
												
									</div>
								</div>
								<!-- /dropdown-cart-->
							</li>
							<li>
								<a href="#0" class="wishlist"><span>Wishlist</span></a>
							</li>
							<li>
								<div class="dropdown dropdown-access">
									<a href="account.html" class="access_link"><span>Account</span></a>
									<div class="dropdown-menu">
										<a href="../account.aspx" class="btn_1">登录或注册</a>
										<ul>
											<li>
												<a href="track-order.html"><i class="ti-truck"></i>Track your Order</a>
											</li>
											<li>
												<a href="account.html"><i class="ti-package"></i>My Orders</a>
											</li>
											<li>
												<a href="account.html"><i class="ti-user"></i>My Profile</a>
											</li>
											<li>
												<a href="help.html"><i class="ti-help-alt"></i>Help and Faq</a>
											</li>
										</ul>
									</div>
								</div>
								<!-- /dropdown-access-->
							</li>
							<li>
								<a href="javascript:void(0);" class="btn_search_mob"><span>Search</span></a>
							</li>
							<li>
								<a href="#menu" class="btn_cat_mob">
									<div class="hamburger hamburger--spin" id="hamburger">
										<div class="hamburger-box">
											<div class="hamburger-inner"></div>
										</div>
									</div>
									Categories
								</a>
							</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<div class="search_mob_wp">
				<input type="text" class="form-control" placeholder="Search over 10.000 products">
				<input type="submit" class="btn_1 full-width" value="Search">
			</div>
			<!-- /search_mobile -->
		</div>
		<!-- /main_nav -->
	</header>
	<!-- /header -->
	
	<main class="bg_gray">
		<div class="container margin_30">
		<div class="page_header">
			<div class="breadcrumbs">
				<ul>
					<li><a href="../index.aspx">家</a></li>
					<li><a href="../Listing.aspx">分类</a></li>
					<li>Page active</li>
				</ul>
			</div>
			<h1>Cart page</h1>
		</div>
		<!-- /page_header -->

              <table class="table table-striped cart-list">
					<thead>
								<tr>
									<th>
										Product
									</th>
									<th>
										Price
									</th>
									<th>
										Quantity
									</th>
									<th>
										Subtotal
									</th>
									<th>
										
									</th>
								</tr>
							</thead>
			  <asp:Repeater ID="Repeater2" runat="server">
				  <ItemTemplate>
			
			  <tbody>
					     <tr>
									<td>
										<div class="thumb_cart">
                                        <asp:Image runat="server" class="lazy" alt="Image" ImageUrl='<%#Eval("ProductImage") %>'></asp:Image>
										</div>
										<span class="item_cart">
											 <asp:Label ID="Label1" runat="server" Text='<%#Eval("ProductName") %>'></asp:Label>
										</span>
									</td>
									<td>
										<strong>
											$<asp:Label ID="Label2" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
										</strong>
									</td>
									<td>
										<div class="numbers-row">
											<%--<input type="text" value="1"  class="qty2" name="quantity_1">--%>
                                            <asp:TextBox ID="txtAmount" runat="server" Text='<%#Eval("Amount") %>'  class="qty2" name="quantity_1"></asp:TextBox>
				                            <asp:LinkButton ID="LinkButton2" runat="server"  class="dec button_inc" OnCommand="LinkButton2_Command" CommandArgument='<%#Eval("CartId") %>'>-</asp:LinkButton>			               
										    <asp:LinkButton ID="LinkButton1" runat="server" class="inc button_inc"  OnCommand="LinkButton1_Command"  CommandArgument='<%#Eval("CartId") %>'>+</asp:LinkButton>                                  
										</div>
									</td>
									<td>
										<strong>
											  <asp:Label ID="Label3" runat="server" Text='<%#"$"+Eval("Total") %>' class="sumPrice"></asp:Label>
                                            <%--<asp:TextBox ID="txtTotal" runat="server" Text='<%#Eval("Total") %>'></asp:TextBox>--%>
										</strong>
									</td>
									<td class="options">							
											<asp:LinkButton ID="LinkButton3" runat="server" CommandArgument='<%#Eval("CartId")%>' OnCommand="LinkButton3_Command" >
											<i class="ti-trash"></i>
										</asp:LinkButton>
                                        

									</td>
								</tr>
								</tbody>
					  		  </ItemTemplate>
			</asp:Repeater>
	</table>

			
	
						<div class="row add_top_30 flex-sm-row-reverse cart_actions">
						<div class="col-sm-4 text-right">
							<button type="button" class="btn_1 gray">Update Cart</button>
						</div>
							<div class="col-sm-8">
							<div class="apply-coupon">
								<div class="form-group form-inline">
									<input type="text" name="coupon-code" value="" placeholder="Promo code" class="form-control"><button type="button" class="btn_1 outline">Apply Coupon</button>
								</div>
							</div>
						</div>
					</div>
					<!-- /cart_actions -->
	
		</div>
		<!-- /container -->
		
		<div class="box_cart">
			<div class="container">
			<div class="row justify-content-end">
				<div class="col-xl-4 col-lg-4 col-md-6">
			<ul>
				<li>
					<span>小计</span><p class="total_all">$0.00</p>
				</li>
				<li>
					<span>运费</span><p class="yunfei">$7.00</p> 
				</li>
				<li>
					<span>总价</span><p class="zhongjia">$0.00</p>
				</li>
			</ul>

			<%--<a href="cart-2.html" class="btn_1 full-width cart">Proceed to Checkout</a>--%>
                    <asp:LinkButton ID="LinkButton4" runat="server" class="btn_1 full-width cart" OnCommand="LinkButton4_Command">支付</asp:LinkButton>

					</div>
				</div>
			</div>
		</div>
		<!-- /box_cart -->
		
	</main>
	<!--/main-->
	
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<h3 data-target="#collapse_1">Quick Links</h3>
					<div class="collapse dont-collapse-sm links" id="collapse_1">
						<ul>
							<li><a href="about.html">About us</a></li>
							<li><a href="help.html">Faq</a></li>
							<li><a href="help.html">Help</a></li>
							<li><a href="../account.aspx">My account</a></li>
							<li><a href="blog.html">Blog</a></li>
							<li><a href="contacts.html">Contacts</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3 data-target="#collapse_2">Categories</h3>
					<div class="collapse dont-collapse-sm links" id="collapse_2">
						<ul>
							<li><a href="listing-grid-1-full.html">Clothes</a></li>
							<li><a href="listing-grid-2-full.html">Electronics</a></li>
							<li><a href="listing-grid-1-full.html">Furniture</a></li>
							<li><a href="listing-grid-3.html">Glasses</a></li>
							<li><a href="listing-grid-1-full.html">Shoes</a></li>
							<li><a href="listing-grid-1-full.html">Watches</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
						<h3 data-target="#collapse_3">Contacts</h3>
					<div class="collapse dont-collapse-sm contacts" id="collapse_3">
						<ul>
							<li><i class="ti-home"></i>97845 Baker st. 567<br>Los Angeles - US</li>
							<li><i class="ti-headphone-alt"></i>+94 423-23-221</li>
							<li><i class="ti-email"></i><a href="#0">info@allaia.com</a></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
						<h3 data-target="#collapse_4">Keep in touch</h3>
					<div class="collapse dont-collapse-sm" id="collapse_4">
						<div id="newsletter">
						    <div class="form-group">
						        <input type="email" name="email_newsletter" id="email_newsletter" class="form-control" placeholder="Your email">
						        <button type="submit" id="submit-newsletter"><i class="ti-angle-double-right"></i></button>
						    </div>
						</div>
						<div class="follow_us">
							<h5>Follow Us</h5>
							<ul>
								<li><a href="#0"><img src="../data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" data-src="../img/twitter_icon.svg" alt="" class="lazy"></a></li>
								<li><a href="#0"><img src="../data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" data-src="../img/facebook_icon.svg" alt="" class="lazy"></a></li>
								<li><a href="#0"><img src="../data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" data-src="../img/instagram_icon.svg" alt="" class="lazy"></a></li>
								<li><a href="#0"><img src="../data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" data-src="../img/youtube_icon.svg" alt="" class="lazy"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- /row-->
			<hr>
			<div class="row add_bottom_25">
				<div class="col-lg-6">
					<ul class="footer-selector clearfix">
						<li>
							<div class="styled-select lang-selector">
								<select>
									<option value="English" selected>English</option>
									<option value="French">French</option>
									<option value="Spanish">Spanish</option>
									<option value="Russian">Russian</option>
								</select>
							</div>
						</li>
						<li>
							<div class="styled-select currency-selector">
								<select>
									<option value="US Dollars" selected>US Dollars</option>
									<option value="Euro">Euro</option>
								</select>
							</div>
						</li>
						<li><img src="../data:image/gif;base64,R0lGODlhAQABAIAAAP///wAAACH5BAEAAAAALAAAAAABAAEAAAICRAEAOw==" data-src="../img/cards_all.svg" alt="" width="198" height="30" class="lazy"></li>
					</ul>
				</div>
				<div class="col-lg-6">
					<ul class="additional_links">
						<li><a href="#0">Terms and conditions</a></li>
						<li><a href="#0">Privacy</a></li>
						<li><span>Copyright &copy; 2020.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></span></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<!--/footer-->
	</div>
	<!-- page -->
	
	<div id="toTop"></div><!-- Back to top button -->
	
	<!-- COMMON SCRIPTS -->
    <script src="../js/common_scripts.min.js"></script>
    <script src="../js/main.js"></script>
		<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>
			<script>
				$(function () {
					$('.numbers-row>div').remove();
					//小计，总价
					var total = 0;
					$('.sumPrice').each(function (i, ele) {

						total += parseFloat($(ele).text().substr(1));
					})
					if (total == 0) {
						$('.zhongjia').text("$" + "0.00");
					} else {
                        $('.total_all').text("$" + total.toFixed(2));
                        var yunfei = parseFloat($('.yunfei').text().substr(1));
                        var sum = parseFloat(total + yunfei);
                        $('.zhongjia').text("$" + sum.toFixed(2));
					}

					//购物车隔行换色
					$("tbody:odd").css("background-color", "#fff");
				

                    $("#sTotal").text("$"+total);
				})
                  
				
            </script>
		</form>
</body>
</html>


