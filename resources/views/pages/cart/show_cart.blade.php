@extends('layout')
@section('content')

<div class="row">
	<div class="span9">
    <ul class="breadcrumb">
		<li><a href="{{URL::to('/trangchu')}}">Trang Chủ</a> <span class="divider">/</span></li>
		<li class="active">Giỏ Hàng Của Bạn</li>
    </ul>
	
	<div class="well well-small">
		<h3>Giỏ Hàng Của Bạn<small class="pull-right"> </small></h3>
		
	<hr class="soften"/>	
	
    
	<table class="table table-bordered table-condensed">
				<?php
				$content = Cart::content();
				?>

              <thead>
                <tr>
                  <th>Sản Phẩm</th>
                  <th>Tên Sản Phẩm</th>
				  <!-- <th>	Ref. </th>
                  <th>Avail.</th> -->
                  <th>Gía Sản Phẩm</th>
                  <th>Số Lượng </th>
                  <th>Tổng Tiền</th>
				  <th></th>
				</tr>

              </thead>
			  
              <tbody>
			  	@foreach($content as $v_content)
				<tr>
                  <td><img src="{{URL::to('public/uploads/product/'.$v_content->options->image)}}" width='200' alt=""></td>
                  <td>{{$v_content->name}}</td>
                 
                  <td>{{number_format($v_content->price).' '.'VND'}}</td>
                  <td>
				
				  <div class="input-append">
				  	<form action="{{URL::to('/update-cart-quantity')}}" method="POST">
									{{ csrf_field() }}
						<input class="span1" style="max-width:34px" placeholder="1" size="16"  type="text" value="{{$v_content->qty}}" name="cart_quantity"><br>
						<input type="hidden" value="{{$v_content->rowId}}" name="rowId_cart" class="form-control">
						<input type="submit" value="Cập nhật" name="update_qty" class="btn btn-default btn-sm">
					</form>	
				</div>
				</td>
                  	<td>
					  <?php
					  $subtotal = $v_content->price * $v_content->qty;
					  echo number_format($subtotal).' '.'VND';
					  ?>
				  	</td>
				  	<td >
						<a class="btn btn-mini btn-danger"  type="button" href="{{URL::to('/delete-to-cart/'.$v_content->rowId)}}"><i class="icon-remove"></i></a>
					</td>
                </tr>

				@endforeach
				</tbody>
				
            </table>
			
		
		
            <!-- <table class="table table-bordered">
			 <tbody>
				 <tr>
					<td> 
					<form class="form-inline">
					<label style="min-width:159px"> Nhập CODE khuyến mãi </label> 
					<input type="text" class="input-medium" placeholder="CODE">
					<button type="submit" class="shopBtn"> Thêm</button>
					</form>
					</td>
                </tr>
				
			</tbody> 
				</table> -->
			<table class="table table-bordered">
			<!-- <tbody>
                <tr><td>ESTIMATE YOUR SHIPPING & TAXES</td></tr>
                 <tr> 
				 <td>
					<form class="form-horizontal">
					  <div class="control-group">
						<label class="span2 control-label" for="inputEmail">Country</label>
						<div class="controls">
						  <input type="text" placeholder="Country">
						</div>
					  </div>
					  <div class="control-group">
						<label class="span2 control-label" for="inputPassword">Post Code/ Zipcode</label>
						<div class="controls">
						  <input type="password" placeholder="Password">
						</div>
					  </div>
					  <div class="control-group">
						<div class="controls">
						  <button type="submit" class="shopBtn">Click to check the price</button>
						</div>
					  </div>
					</form> 
				  </td>
				  </tr>
              </tbody> -->


			  	<ul>
							
							<li>Thuế <span>{{Cart::tax().' '.'vnđ'}}</span></li>
							<li>Phí vận chuyển <span>Free</span></li>
							<li>Thành Tiền <span>{{Cart::total().' '.'vnđ'}}</span></li>
				</ul>	
            </table>		
	<a href="{{URL::to('/trangchu')}}" class="shopBtn btn-large"><span class="icon-arrow-left"></span> Quay lại mua hàng </a>

				<?php
					$customer_id = Session::get('customer_id');
					if($customer_id!=NULL){
	
				?> 
					<a href="{{URL::to('/checkout')}}" class="shopBtn btn-large pull-right">Thanh Toán <span class="icon-arrow-right"></span></a>

				<?php
				}else{
					?>
					<a href="{{URL::to('/login-checkout')}}" class="shopBtn btn-large pull-right">Thanh Toán <span class="icon-arrow-right"></span></a>
				<?php	
				}
				?>

</div>
</div>
</div>
</div>



@endsection