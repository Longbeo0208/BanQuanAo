@extends('layout')
@section('content')

<div class="span9">
	<div class="well np">
		<div class="well well-small"><h3>Sản Phẩm Mới </h3>
       
	<div class="row">
	  <ul class="thumbnails">
	  @foreach($all_product as $key => $product)
		<li class="span4">
			<form>
					{{csrf_field()}}
			  	<input type="hidden" value="{{$product->product_id}}"     class="cart_product_id_{{$product->product_id}}">
			  	<input type="hidden" value="{{$product->product_name}}"   class="cart_product_name_{{$product->product_id}}">
			  	<input type="hidden" value="{{$product->product_images}}" class="cart_product_images_{{$product->product_id}}">
			  	<input type="hidden" value="{{$product->product_price}}"  class="cart_product_price_{{$product->product_id}}">
			  	<input type="hidden" value="1"   						  class="cart_product_qty_{{$product->product_id}}"> 

			<div class="thumbnail">
		  		
				<a class="zoomTool" href="{{URL::to('/chitietsanpham/'.$product->product_id)}}" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>
				<a href="{{URL::to('/chitietsanpham/'.$product->product_id)}}"><img src="{{URL::to('public/uploads/product/'.$product->product_images)}}" alt=""></a>
				<div class="caption cntr">
					<p><strong>{{($product->product_name)}}</strong></p>
					<p><strong> {{number_format($product->product_price).' '.'VND'}}</strong></p>
					
				<!-- <h4><a type="button" class="shopBtn" data-id_product="{{$product->product_id}}" name="add-to-cart"> Thêm Giỏ Hàng  </a></h4> -->

				<button type="button" class="shopBtn add-to-cart" data-id_product="{{$product->product_id}}" name="add-to-cart">Thêm giỏ hàng</button>

				<div class="actionList">
					<a class="pull-left" href="#">Yêu Thích </a> 
					<a class="pull-left" href="#"> So sánh </a>
				</div> 
			
				<br class="clr">
			</div>
			
		  </div>

		
	</form>
		</li>
		@endforeach
	  </ul>

	</div>
</div>
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