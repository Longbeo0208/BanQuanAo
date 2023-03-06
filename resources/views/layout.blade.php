<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bán kính </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!----------Seo------->
    <meta name="description" content="">
    <meta name="author" content="">
	<meta name="keywords" content="MẮT KÍNH SHADY - CHUYÊN GIA KÍNH CẬN"/>
	<link rel="canonical" href="https://www.thol.com.vn/protein/leanbody.html" />
	<link rel="icon" type="image/x-icon" href="https://www.thol.com.vn/pub/media/favicon/stores/5/favicon.png" />
	<meta name="robots" content="index,follow,noodp">
	<link rel="icon" type="image/x-icon" href="" />
	<!---//---Seo-------->
    <!-- Bootstrap styles -->
    <link href="{{asset('public/frontend/css/bootstrap.css')}}" rel="stylesheet"/>
    <!-- Customize styles -->
    <link href="{{asset('public/frontend/style.css')}}" rel="stylesheet"/>
    <!-- font awesome styles -->
	<link href="{{asset('public/frontend/fonts/css/font-awesome.css')}}" rel="stylesheet">
	<link href="{{asset('public/frontend/css/sweetalert.css')}}" rel="stylesheet">
		<!--[if IE 7]>
			<link href="css/font-awesome-ie7.min.css" rel="stylesheet">
		<![endif]-->

		<!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->	

	<!-- Favicons -->
    <link rel="shortcut icon" href="{{('public/frontend/ico/favicon.ico')}}">
	
  </head>
<body>
<!-- 
	Upper Header Section 
-->
<div class="navbar navbar-inverse navbar-fixed-top">
	<div class="topNav">
		<div class="container">
			<div class="alignR">
				<div class="pull-left socialNw">
					<a href="#"><span class="icon-twitter"></span></a>
					<a href="#"><span class="icon-facebook"></span></a>
					<a href="#"><span class="icon-youtube"></span></a>
					<a href="#"><span class="icon-tumblr"></span></a>
				</div>
				<a class="active" href="{{URL::to('/trangchu')}}"> <span class="icon-home"></span> Trang Chủ</a> 
				<a href="#"><span class="icon-star"></span> Yêu Thích</a>
				
				<?php
					$customer_id = Session::get('customer_id');
					$shipping_id = Session::get('shipping_id');
					if($customer_id!=NULL && $shipping_id==NULL){
	
				?> 
					<a href="{{URL::to('/checkout')}}"><span class="icon-crosshairs"></span> Thanh Toán </a> 

				<?php
				}elseif($customer_id!=NULL && $shipping_id==NULL){
				?>
				<a href="{{URL::to('/payment')}}"><span class="icon-crosshairs"></span> Thanh Toán </a> 
				<?php
				}else{
				?>
					<a href="{{URL::to('/login-checkout')}}"><span class="icon-crosshairs"></span> Thanh Toán </a> 
				<?php	
				}
				?>

				<!-- <a href="contact.html"><span class="icon-envelope"></span> Yêu Thích</a> -->
				<a href="{{URL::to('/show-cart')}}"><span class="icon-shopping-cart"></span> Giỏ Hàng </a>

				<?php
					$customer_id = Session::get('customer_id');
					if($customer_id!=NULL){
	
				?> 
					<a href="{{URL::to('/logout-checkout')}}"><span class="icon-lock"></span> Đăng Xuất</a>

				<?php
				}else{
					?>
					<a href="{{URL::to('/login-checkout')}}"><span class="icon-lock"></span> Đăng Nhập</a>
				<?php	
				}
				?>
				
				
			</div>
		</div>
	</div>
</div>

<!--
Lower Header Section 
-->
<div class="container">
	
<div id="gototop"> </div>
<header id="header">
	
<div class="row">
	<div class="span4">
	<h1>
	<a class="logo" href="{{URL::to('/trangchu')}}"><span>Mắt Việt</span> 
		<img src="{{asset('public/frontend/images/logo.png')}}" alt="bootstrap sexy shop">
	</a>
	</h1>
	</div>
	<div class="span4">
		
	</div>
	<div class="span4 alignR">
	<p><br> <strong> Support (24/7) : 0867675435 </strong><br><br></p>
	<span class="btn btn-mini">[ 2 ] <span class="icon-shopping-cart"></span></span>
	<span class="btn btn-warning btn-mini">$</span>
	<span class="btn btn-mini">&pound;</span>
	<span class="btn btn-mini">&euro;</span>
	</div>
</div>
</header>

<!--
Navigation Bar Section 
-->
<div class="navbar">
	  <div class="navbar-inner">
		<div class="container">
		  <a data-target=".nav-collapse" data-toggle="collapse" class="btn btn-navbar">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		  </a>
		  <div class="nav-collapse">
			<ul class="nav">
			  <li class="active"><a href="{{URL::to('/trangchu')}}"> Trang Chủ	</a></li>
			  <li class="active"><a href="{{URL::to('/product-new')}}"> Sản Phẩm</a></li>
			  <!-- <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sản Phẩm <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#cat1" data-toggle="tab">Category one</a></li>
                  <li><a href="#cat2" data-toggle="tab">Category two</a></li>
                </ul> -->
			  <li class="active"><a href="{{URL::to('/show-cart')}}">Giỏ Hàng</a></li>
			  <li class="active"><a href="{{URL::to('/contact')}}">Liên Hệ</a></li>
			  
			</ul>
			 
			
			<form action="{{URL::to('/tim-kiem')}}" method="POST" class="navbar-search pull-left">
				{{csrf_field()}}

			  <input type="text" placeholder="Tìm kiếm" name="keywords_submit" class="search-query span2">
			  <input type="submit" placeholder="Tìm kiếm" name="search_items" class="active" value="Tìm kiếm">
			</form>

			<ul class="nav pull-right">
			<li class="dropdown">
				<a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="icon-lock"></span> Đăng nhập <b class="caret"></b></a>
				<div class="dropdown-menu">
				<form class="form-horizontal loginFrm">
				  <div class="control-group">
					<input type="text" class="span2" id="inputEmail" placeholder="Email">
				  </div>
				  <div class="control-group">
					<input type="password" class="span2" id="inputPassword" placeholder="Password">
				  </div>
				  <div class="control-group">
					<label class="checkbox">
					<input type="checkbox"> Nhớ đến tôi
					</label>
					<button type="submit" class="shopBtn btn-block">Đăng Nhập</button>
				  </div>
				</form>
				
				</div>
			</li>
			</ul>
		  </div>
		</div>
	  </div>
	</div>
<!-- 
Body Section 
-->
	<div class="row">
<div id="sidebar" class="span3">
<div class="well well-small">
	<ul class="nav nav-list">
		<h3>Danh mục sản phẩm </h3>
		@foreach($category as $key => $cate)
		<li><a href="{{URL::to('/danhmucsanpham/'.$cate->category_id)}}"><span class="icon-chevron-right"></span>{{$cate->category_name}}</a></li>
		@endforeach
	</ul>
</div>

<div class="well well-small">
	<ul class="nav nav-list">
	<h3>Thương Hiệu </h3>
	@foreach($brand as $key => $brand)
	<li><a href="{{URL::to('/thuonghieusanpham/'.$brand->brand_id)}}"><span class="icon-chevron-right"></span>{{$brand->brand_name}}</a></li>
	@endforeach
	
	</ul>
</div>

			  
			 
			<ul class="nav nav-list promowrapper">
			<!-- <li>
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<img src="{{('public/frontend/images/bootstrap-ecommerce-templates.png')}}" alt="bootstrap ecommerce templates">
				<div class="caption">
				  <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
				</div>
			  </div>
			</li>
			<li style="border:0"> &nbsp;</li>
			<li>
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<img src="{{('public/frontend/images/shopping-cart-template.png')}}" alt="shopping cart template">
				<div class="caption">
				  <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
				</div>
			  </div>
			</li>
			<li style="border:0"> &nbsp;</li>
			<li>
			  <div class="thumbnail">
				<a class="zoomTool" href="product_details.html" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<img src="{{('public/frontend/images/bootstrap-template.png')}}" alt="bootstrap template">
				<div class="caption">
				  <h4><a class="defaultBtn" href="product_details.html">VIEW</a> <span class="pull-right">$22.00</span></h4>
				</div>
			  </div>
			</li> -->
		  </ul>

	</div>
	@yield('content')

<!--
Footer
-->
<footer class="footer">
<div class="row-fluid">
<div class="span2">
<h5>VỀ MẮT VIỆT</h5>
<a href="#">Giới thiệu  Mắt Việt</a><br>
<a href="#">Tuyển dụng</a><br>
<a href="#">Hệ thống cửa hàng</a><br>
<a href="#">Chương trình ưu đãi</a><br>
<a href="#">Tin Tức</a><br>
 </div>
<div class="span2">

 </div>
<div class="span2">

 </div>
 <div class="span6">
<h5>CHÍNH SÁCH VÀ DỊCH VỤ</h5>
CHÍNH SÁCH
<br>
Chính sách và Quy định chung
Quy định và Hình thức thanh toán
Chính sách Vận Chuyển và Giao Nhận
Chính sách Bảo hành
Chính sách Đổi trả và Hoàn tiền<br>
DỊCH VỤ<br>
Đo mắt và Tư vấn thị lực
 </div>
 </div>
</footer>
</div><!-- /container -->

<div class="copyright">
<div class="container">
	<p class="pull-right">
		<a href="#"><img src="{{asset('public/frontend/images/maestro.png')}}" alt="payment"></a>
		<a href="#"><img src="{{asset('public/frontend/images/mc.png')}}" alt="payment"></a>
		<a href="#"><img src="{{asset('public/frontend/images/pp.png')}}" alt="payment"></a>
		<a href="#"><img src="{{asset('public/frontend/images/visa.png')}}" alt="payment"></a>
		<a href="#"><img src="{{asset('public/frontend/images/disc.png')}}" alt="payment"></a>
	</p>
	<span><h4>Nguyễn Thành Long  &copy; 2021 </h4><br> <h4>Thông tin liên hệ: <br> </h4>
	<h5><p><i class="fa fa-phone-square" aria-hidden="true" style="font-size:22px;" &#038;nbsp=""></i> <a style="color:blue">Hotline</a> : 19003320</p></h5>
	<h5><p><i &#038;nbsp="" class="fa fa-envelope" aria-hidden="true" style="font-size:20px;"></i><a style="color:blue"> Email</a> : ntl.02112000@gmail.com</p></h5>
	<h5><p><i class="fa fa-calendar" aria-hidden="true" style="font-size:20px;"></i> <a style="color:blue">Thời gian làm việc</a> : 8h – 21h hằng ngày.</p></h5>
</span>
</div>
</div>
<a href="#" class="gotop"><i class="icon-double-angle-up"></i></a>
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="{{asset('public/frontend/js/jquery.js')}}"></script>
	<script src="{{asset('public/frontend/js/bootstrap.min.js')}}"></script>
	<script src="{{asset('public/frontend/js/jquery.easing-1.3.min.js')}}"></script>
    <script src="{{asset('public/frontend/js/jquery.scrollTo-1.4.3.1-min.js')}}"></script>
    <script src="{{asset('public/frontend/js/shop.js')}}"></script>
	<script src="{{asset('public/frontend/js/sweetalert.min.js')}}"></script>

	<script type="text/javascript">
		$(document).ready(function(){
			$('.add-to-cart').click(function(){
				var id=$(this).data('id_product');
				var cart_product_id = $('.cart_product_id_' + id).val();
				var cart_product_name = $('.cart_product_name_' + id).val();
				var cart_product_images = $('.cart_product_images_' + id).val();
				var cart_product_price = $('.cart_product_price_' + id).val();
				var cart_product_qty = $('.cart_product_qty_' + id).val();
				var _token = $('input[name="_token"]').val();	
				$.ajax({
					url: '{{url('/add-cart-ajax')}}',
					method: 'POST',
					data:{cart_product_id:cart_product_id,cart_product_name:cart_product_name,cart_product_images:cart_product_images,cart_product_price:cart_product_price,cart_product_qty:cart_product_qty,_token:_token},
					success:function(data){
						alert('Thành Công');
					}
				});
			});
			
		});
	</script>

  </body>
</html>