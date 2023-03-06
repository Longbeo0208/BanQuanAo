@extends('layout')
@section('content')
<div class="span9">
    <ul class="breadcrumb">
		<li><a href="{{URL::to('/trangchu')}}">Trang Chủ</a> <span class="divider">/</span></li>
		<li class="active">Check Out</li>
    </ul>
	<h3> Check Out</h3>	
	
	<div class="well">
	<form class="form-horizontal" action="{{URL::to('/save-checkout-customer')}}" method="POST">
		{{ csrf_field()}}
		<h3>Điền vào giỏ hàng</h3>

		<div class="control-group">
			<label class="control-label" for="inputFname">Email</label>
			<div class="controls">
			  <input type="text" id="inputFname" placeholder="Email" name="shipping_email">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label" for="inputLname">Họ và tên </label>
			<div class="controls">
			  <input type="text" id="inputLname" placeholder="Name" name="shipping_name">
			</div>
		 </div>
		<div class="control-group">
			<label class="control-label" for="inputEmail">Địa Chỉ</label>
			<div class="controls">
				<input type="text" placeholder="Địa Chỉ" name="shipping_address">
			</div>
		</div>	  
		<div class="control-group">
			<label class="control-label">Phone </label>
			<div class="controls">
				<input type="text" placeholder="Phone" name="shipping_phone">
			</div>
		</div>

		<div class="control-group">
			<label class="control-label">Ghi chú đơn hàng </label>
			<div class="controls">
			  <textarea name="shipping_notes" placeholder="Ghi chú đơn hàng của bạn" rows="10"></textarea>
			</div>
		</div>

		
	<div class="control-group">
		<div class="controls">
		 <input type="submit" value="Gửi" name="send_order" class="exclusive shopBtn">
		</div>
	</div>
	</form>
</div>

<!-- <div class="well">
	<form class="form-horizontal" >
		<h3>Điền Thông Tin Gửi Hàng</h3>
		<div class="control-group">
			<label class="control-label">Ghi chú đơn hàng </label>
			<div class="controls">
			  <textarea name="message" placeholder="Ghi chú đơn hàng của bạn" rows="16"></textarea>
			</div>
		</div> -->
		<!-- <div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div>
		 <div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <textarea></textarea>
			</div>
		</div> -->
	<!-- <div class="control-group">
		<div class="controls">
		 <input type="submit" name="submitAccount" value="Register" class="shopBtn exclusive">
		</div>
	</div>
	</form>
</div> -->


<!-- <div class="well">
	<form class="form-horizontal" >
		<h3>Điền Thông Tin Gửi H</h3>
		<div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div>
		 <div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div><div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div><div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div><div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div><div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div><div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div><div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div><div class="control-group">
			<label class="control-label">Fiels label <sup>*</sup></label>
			<div class="controls">
			  <input type="text" placeholder=" Field name">
			</div>
		</div> 
	<div class="control-group">
		<div class="controls">
		 <input type="submit" name="submitAccount" value="Register" class="exclusive shopBtn">
		</div>
	</div>
	</form>
</div> -->


</div>
</div>

@endsection