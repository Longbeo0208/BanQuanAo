@extends('layout')
@section('content')

@foreach($product_details as $key => $value)
<div class="span9">
    <ul class="breadcrumb">
    <li><a href="{{URL::to('/trangchu')}}">Home</a> <span class="divider">/</span></li>
    <!-- <li><a href="products.html">Items</a> <span class="divider">/</span></li>
    <li class="active">Preview</li> -->
    </ul>	
	<div class="well well-small">
	<div class="row-fluid">
			<div class="span5">
			<div id="myCarousel" class="carousel slide cntr">
                <div class="carousel-inner">
                  <div class="item active">
                   <a href="#"> <img src="{{URL::to('public/uploads/product/'.$value->product_images)}}" alt="" ></a>
                  </div>
                  <div class="item">
				  <a href="#"> <img src="{{URL::to('public/uploads/product/'.$value->product_images)}}" alt="" ></a>
                  </div>
                  <div class="item">
				  <a href="#"> <img src="{{URL::to('public/uploads/product/'.$value->product_images)}}" alt="" ></a>
                  </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
            </div>
			</div>
			<div class="span7">
				<h3>{{$value->product_name}}</h3>
				<hr class="soft"/>
				
				<form action="{{URL::to('/save-cart')}}" class="form-horizontal qtyFrm" method="POST">
				{{csrf_field() }}
				  <div class="control-group">
					<label class="control-label"><span><b>{{number_format($value->product_price).' '.'VND'}}</b></span></label>
					<div class="controls">
					<input  name="qty" type="number" min="1" class="span6" placeholder="Quantity">
					
					</div>
				  </div>
				
				  <div class="control-group">
					<label class="control-label"><span><b>Thương Hiệu</b></span></label>
					<div class="controls"><h4>{{$value->brand_name}}</h4></div>
				  </div>

				  <div class="control-group">
					<label class="control-label"><span><b>Danh Mục</b></span></label>
					<div class="controls"><h4>{{$value->category_name}}</h4></div>
				  </div>
	
				  <h4>Điều kiện</h4>
				  <b>Mới 100% đảm bảo hàng chất lượng cao</b>
				<hr>
				<input name="productid_hidden" class="span6" type="hidden" value="{{$value->product_id}}">
				  <button type="submit" class="shopBtn" ><span class=" icon-shopping-cart"></span> Thêm vào giỏ hàng</button>
				</form>
			</div>
			</div>
				<hr class="softn clr"/>
		@endforeach


            <ul id="productDetail" class="nav nav-tabs">
              <li class="active"><a href="#ChiTietSP" data-toggle="tab">Chi tiết sản phẩm</a></li>
			  <li class=""><a href="#MoTa" data-toggle="tab">Mô Tả </a></li>
              <li class=""><a href="#SanPhamGoiY" data-toggle="tab">Sản phẩm gợi ý </a></li>
              <!-- <li class=""><a href="#" data-toggle="tab">Hồ sơ công ty </a></li>
              <li class=""><a href="#" data-toggle="tab">Đánh giá sao </a></li> -->
              
            </ul>

            <div id="myTabContent" class="tab-content tabWrapper">
            <div class="tab-pane fade active in" id="ChiTietSP">
				<h4>Thông tin sản phẩm</h4>
					<p>{!!$value->product_content!!}</p>
			</div>

			<div class="tab-pane fade" id="MoTa">
				<div class="row-fluid">	  
					<h4>Mô Tả sản phẩm</h4>
						<p>{!!$value->product_desc!!}</p>
				</div>
			</div>
			

			<div class="tab-pane fade" id="SanPhamGoiY">
			@foreach($relate as $key => $lienquan)
			<div class="row-fluid">	  
			
			<!-- <div class="span6">
				<h5>Product Name </h5>
				<p>
				Nowadays the lingerie industry is one of the most successful business spheres.
				We always stay in touch with the latest fashion tendencies - 
				
				</p>
			</div> -->
			<div class="thumbnail">
				
				<a class="zoomTool" href="" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a href=""><img src="{{URL::to('public/uploads/product/'.$lienquan->product_images)}}" alt=""></a>
				<div class="caption cntr">
					<p>{{($lienquan->product_name)}}</p>
					<p><strong> {{number_format($lienquan->product_price).' '.'VND'}}</strong></p>
					<h4><a class="shopBtn" href="#" title="add to cart"> Thêm Giỏ Hàng  </a></h4>
					<div class="actionList">
						<a class="pull-left" href="#">Yêu Thích </a> 
						<a class="pull-left" href="#"> So sánh </a>
					</div> 
					<br class="clr">
				</div>
			  </div>
</div>
		@endforeach

			<!-- <hr class="soft">
			<div class="row-fluid">	  
			 <div class="span2">
				<img src="assets/img/d.jpg" alt="">
			</div>
			<div class="span6">
				<h5>Product Name </h5>
				<p>
				Nowadays the lingerie industry is one of the most successful business spheres.
				We always stay in touch with the latest fashion tendencies - 
				that is why our goods are so popular..
				</p>
			</div>
			<div class="span4 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> $140.00</h3>
			<label class="checkbox">
				<input type="checkbox">  Adds product to compair
			</label><br>
			<div class="btn-group">
			  <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
			  <a href="product_details.html" class="shopBtn">VIEW</a>
			 </div>
				</form>
			</div> 
	</div> -->
			<!-- <hr class="soft"/>

            <div class="row-fluid">	  
			<div class="span2">
				<img src="assets/img/d.jpg" alt="">
			</div>
			<div class="span6">
				<h5>Product Name </h5>
				<p>
				Nowadays the lingerie industry is one of the most successful business spheres.
				We always stay in touch with the latest fashion tendencies - 
				that is why our goods are so popular..
				</p>
			</div>
			<div class="span4 alignR">
			<form class="form-horizontal qtyFrm">
			<h3> $140.00</h3>
			<label class="checkbox">
				<input type="checkbox">  Adds product to compair
			</label><br>
			<div class="btn-group">
			  <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
			  <a href="product_details.html" class="shopBtn">VIEW</a>
			 </div>
				</form>
			</div>
	</div> -->
			<!-- <hr class="soft"/>

            <div class="row-fluid">	  
					<div class="span2">
						<img src="assets/img/d.jpg" alt="">
					</div>
					<div class="span6">
						<h5>Product Name </h5>
						<p>
						Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
						</p>
					</div>
					<div class="span4 alignR">
					<form class="form-horizontal qtyFrm">
					<h3> $140.00</h3>
					<label class="checkbox">
						<input type="checkbox">  Adds product to compair
					</label><br>
					<div class="btn-group">
					  <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
					  <a href="product_details.html" class="shopBtn">VIEW</a>
					 </div>
						</form>
					</div>
			</div> -->
            <!-- <hr class="soften"/>

            <div class="row-fluid">	  
					<div class="span2">
						<img src="assets/img/d.jpg" alt="">
					</div>
					<div class="span6">
						<h5>Product Name </h5>
						<p>
						Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
						</p>
					</div>
					<div class="span4 alignR">
					<form class="form-horizontal qtyFrm">
					<h3> $140.00</h3>
					<label class="checkbox">
						<input type="checkbox">  Adds product to compair
					</label><br>
					<div class="btn-group">
					  <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
					  <a href="product_details.html" class="shopBtn">VIEW</a>
					 </div>
						</form>
					</div>
			</div> -->
			</div>
              <div class="tab-pane fade" id="cat1">
                
              <br>
			  <div class="row-fluid">	  
					<div class="span2">
						<img src="{{asset('public/frontend/images/b.jpg')}}" alt="">
					</div>
					<div class="span6">
						<h5>Product Name </h5>
						<p>
						Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
						</p>
					</div>
					<div class="span4 alignR">
					<form class="form-horizontal qtyFrm">
					<h3> $140.00</h3>
					<label class="checkbox">
						<input type="checkbox">  Adds product to compair
					</label><br>
					<div class="btn-group">
					  <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
					  <a href="product_details.html" class="shopBtn">VIEW</a>
					 </div>
						</form>
					</div>
			</div>
			<!-- <hr class="soften"/>

            <div class="row-fluid">	  
					<div class="span2">
						<img src="assets/img/a.jpg" alt="">
					</div>
					<div class="span6">
						<h5>Product Name </h5>
						<p>
						Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
						</p>
					</div>
					<div class="span4 alignR">
					<form class="form-horizontal qtyFrm">
					<h3> $140.00</h3>
					<label class="checkbox">
						<input type="checkbox">  Adds product to compair
					</label><br>
					<div class="btn-group">
					  <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
					  <a href="product_details.html" class="shopBtn">VIEW</a>
					 </div>
						</form>
					</div>
			</div> 

			<hr class="soften"/> -->
            </div>

            <div class="tab-pane fade" id="cat2">
                
				<div class="row-fluid">	  
					<div class="span2">
						<img src="{{asset('public/frontend/images/d.jpg')}}" alt="">
					</div>
					<div class="span6">
						<h5>Product Name </h5>
						<p>
						Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
						</p>
					</div>
					<div class="span4 alignR">
					<form class="form-horizontal qtyFrm">
					<h3> $140.00</h3>
					<label class="checkbox">
						<input type="checkbox">  Adds product to compair
					</label><br>
					<div class="btn-group">
					  <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
					  <a href="product_details.html" class="shopBtn">VIEW</a>
					 </div>
						</form>
					</div>
			</div>
			<!-- <hr class="soften"/>

            <div class="row-fluid">	  
					<div class="span2">
						<img src="assets/img/d.jpg" alt="">
					</div>
					<div class="span6">
						<h5>Product Name </h5>
						<p>
						Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
						</p>
					</div>
					<div class="span4 alignR">
					<form class="form-horizontal qtyFrm">
					<h3> $140.00</h3>
					<label class="checkbox">
						<input type="checkbox">  Adds product to compair
					</label><br>
					<div class="btn-group">
					  <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
					  <a href="product_details.html" class="shopBtn">VIEW</a>
					 </div>
						</form>
					</div>
			</div> -->
			<!-- <hr class="soften"/>

            <div class="row-fluid">	  
					<div class="span2">
						<img src="assets/img/d.jpg" alt="">
					</div>
					<div class="span6">
						<h5>Product Name </h5>
						<p>
						Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
						</p>
					</div>
					<div class="span4 alignR">
					<form class="form-horizontal qtyFrm">
					<h3> $140.00</h3>
					<label class="checkbox">
						<input type="checkbox">  Adds product to compair
					</label><br>
					<div class="btn-group">
					  <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
					  <a href="product_details.html" class="shopBtn">VIEW</a>
					 </div>
						</form>
					</div>
			</div> -->
			<!-- <hr class="soften"/>

            <div class="row-fluid">	  
					<div class="span2">
						<img src="assets/img/d.jpg" alt="">
					</div>
					<div class="span6">
						<h5>Product Name </h5>
						<p>
						Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
						</p>
					</div>
					<div class="span4 alignR">
					<form class="form-horizontal qtyFrm">
					<h3> $140.00</h3>
					<label class="checkbox">
						<input type="checkbox">  Adds product to compair
					</label><br>
					<div class="btn-group">
					  <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
					  <a href="product_details.html" class="shopBtn">VIEW</a>
					 </div>
						</form>
					</div>
			</div> -->
			<!-- <hr class="soften"/>

            <div class="row-fluid">	  
					<div class="span2">
						<img src="assets/img/d.jpg" alt="">
					</div>
					<div class="span6">
						<h5>Product Name </h5>
						<p>
						Nowadays the lingerie industry is one of the most successful business spheres.
						We always stay in touch with the latest fashion tendencies - 
						that is why our goods are so popular..
						</p>
					</div>
					<div class="span4 alignR">
					<form class="form-horizontal qtyFrm">
					<h3> $140.00</h3>
					<label class="checkbox">
						<input type="checkbox">  Adds product to compair
					</label><br>
					<div class="btn-group">
					  <a href="product_details.html" class="defaultBtn"><span class=" icon-shopping-cart"></span> Add to cart</a>
					  <a href="product_details.html" class="shopBtn">VIEW</a>
					 </div>
						</form>
					</div>
			</div>
			<hr class="soften"/> -->
			
				</div>
            </div>
			
</div>
</div>
</div>



@endsection