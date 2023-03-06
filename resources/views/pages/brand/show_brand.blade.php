@extends('layout')
@section('content')

<div class="span9">
	<div class="well np">
		<div id="myCarousel" class="carousel slide homCar">
            <div class="carousel-inner">
			  <div class="item">
                <img style="width:100%" src="{{asset('public/frontend/images/banner1.jpg')}}" alt="bootstrap ecommerce templates">
                <!-- <div class="carousel-caption">
                      <h4>Bootstrap shopping cart</h4>
                      <p><span>Very clean simple to use</span></p>
                </div> -->
              </div>
			  <div class="item">
                <img style="width:100%" src="{{asset('public/frontend/images/banner2.jpg')}}" alt="bootstrap ecommerce templates">
                <!-- <div class="carousel-caption">
                      <h4>Bootstrap Ecommerce template</h4>
                      <p><span>Highly Google seo friendly</span></p>
                </div> -->
              </div>
			  <div class="item active">
                <img style="width:100%" src="{{asset('public/frontend/images/banner3.jpg')}}" alt="bootstrap ecommerce templates">
                <!-- <div class="carousel-caption">
                      <h4>Twitter Bootstrap cart</h4>
                      <p><span>Very easy to integrate and expand.</span></p>
                </div> -->
              </div>
              <div class="item">
                <img style="width:100%" src="{{asset('public/frontend/images/banner4.jpg')}}" alt="bootstrap templates">
                <!-- <div class="carousel-caption">
                      <h4>Bootstrap templates integration</h4>
                      <p><span>Compitable to many more opensource cart</span></p>
                </div> -->
              </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
          </div>
        </div>
		
        @foreach($brand_name as $key => $name)	
		<div class="well well-small">
				<h3>{{$name->brand_name}}</h3>
		@endforeach

		

		<div class="row">
		  <ul class="thumbnails">
		 @foreach($brand_by_id as $key => $product)
			<li class="span4">
		
			  <div class="thumbnail">
				
				<a class="zoomTool" href="{{URL::to('/chitietsanpham/'.$product->product_id)}}" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a href="{{URL::to('/chitietsanpham/'.$product->product_id)}}"><img src="{{URL::to('public/uploads/product/'.$product->product_images)}}" alt=""></a>
				<div class="caption cntr">
					<p><strong>{{($product->product_name)}}</strong></p>
					<p><strong> {{number_format($product->product_price).' '.'VND'}}</strong></p>
					<h4><a class="shopBtn" href="#" title="add to cart"> Thêm Giỏ Hàng  </a></h4>
					<div class="actionList">
						<a class="pull-left" href="#">Yêu Thích </a> 
						<a class="pull-left" href="#"> So sánh </a>
					</div> 
					<br class="clr">
				</div>
			  </div>
			  
			</li>
			@endforeach
		  </ul>

		</div>
		
	</div>
	

    

    
	
	<div class="well well-small">
	
	</div>
	</div>
	</div>


    <section class="our_client">
	<hr class="soften"/>
	<h4 class="title cntr"><span class="text">Thương Hiệu</span></h4>
	<hr class="soften"/>
	<div class="row">
		<div class="span2">
			<a ><img alt="" src="{{asset('public/frontend/images/1.png')}}"></a>
		</div>
		<div class="span2">
			<a ><img alt="" src="{{asset('public/frontend/images/2.png')}}"></a>
		</div>
		<div class="span2">
			<a ><img alt="" src="{{asset('public/frontend/images/3.png')}}"></a>
		</div>
		<div class="span2">
			<a ><img alt="" src="{{asset('public/frontend/images/4.png')}}"></a>
		</div>
		<div class="span2">
			<a ><img alt="" src="{{asset('public/frontend/images/5.png')}}"></a>
		</div>
		<div class="span2">
			<a ><img alt="" src="{{asset('public/frontend/images/6.png')}}"></a>
		</div>
	</div>
</section>

@endsection