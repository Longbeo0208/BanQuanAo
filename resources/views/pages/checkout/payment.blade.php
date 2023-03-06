@extends('layout')
@section('content')
<div class="span9">
    <ul class="breadcrumb">
		<li><a href="{{URL::to('/trangchu')}}">Trang Chủ</a> <span class="divider">/</span></li>
		<li class="active">Thanh toán giỏ hàng</li>
    </ul>
	
	<div class="well">

		<h3>Thanh toán giỏ hàng</h3>

        <table class="table table-bordered table-condensed">
				<?php
				$content = Cart::content();
				?>

              <thead>
                <tr>
                  <th>Sản Phẩm</th>
                  <th>Tên Sản Phẩm</th>
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
				  <input class="span1" style="max-width:34px" placeholder="1" size="16"  type="text" value="{{$v_content->qty}}" name="cart_quantity">
				  <div class="input-append">
				  	<form action="{{URL::to('/update-cart-quantity')}}" method="POST">
									{{ csrf_field() }}
				
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

        <div class="controls">
			<form method="POST" action="{{URL::to('/order-place')}}">
				{{csrf_field()}}
			<h4>Chọn hình thức thanh toán</h4>

            

            <span>
                <label class="checkbox"><input name="payment_option" value="2" type="checkbox">Nhận Tiền Mặt</label>
            </span>


			<div class="control-group">
				<div class="controls">
					<input type="submit" value="Đặt Hàng" name="send_order" class="exclusive shopBtn">
				</div>
			</div>
			
        </div>

		</form>
	
</div>




</div>
</div>

@endsection