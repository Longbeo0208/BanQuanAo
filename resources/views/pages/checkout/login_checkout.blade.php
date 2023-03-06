@extends('layout')
@section('content')

<div class="span9">
    <ul class="breadcrumb">
		<li><a href="{{URL::to('/trangchu')}}">Trang Chủ</a> <span class="divider">/</span></li>
		<li class="active">Login</li>
    </ul>
	<h3>Đăng Nhập Vào Mua Hàng</h3>	
	<hr class="soft"/>
	
	<div class="row">
		<div class="span4">
			<div class="well">
			<h5>Đăng Ký Tài Khoản</h5>
			
			<form action="{{URL::to('/add-customer')}}" method="POST">
				{{csrf_field()}}
			  	<div class="control-group">
					<label class="control-label" for="inputPassword">Họ và tên</label>
					<div class="controls">
				  		<input type="text" class="span3" placeholder="Name" name="customer_name">
					</div>
			  	</div>

			  	<div class="control-group">
					<label class="control-label" for="inputEmail">Địa Chỉ Email</label>
					<div class="controls">
				  		<input class="span3"  type="text" placeholder="Email" name="customer_email" >
					</div>
			  	</div>

              	<div class="control-group">
					<label class="control-label" for="inputPassword">Password</label>
					<div class="controls">
				  		<input type="password" class="span3" placeholder="Password" name="customer_password">
					</div>
			  	</div>

				<div class="control-group">
					<label class="control-label" for="inputPassword">Phone</label>
					<div class="controls">
						<input type="text" class="span3" placeholder="Phone" name="customer_phone" >
					</div>
				</div>


				<div class="control-group">
					<button  type="submit" class="defaultBtn">Đăng Ký</button>
				</div>
			</form>
		</div>
		</div>

		<div class="span1"> &nbsp;</div>
		<div class="span4">
			<div class="well">
			<h5>Đăng Nhập Tài Khoản</h5>

			<form action="{{URL::to('/login')}}" method="POST">
			{{csrf_field()}}
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Email</label>
				<div class="controls">
				  <input class="span3"  type="text" placeholder="Email" name="email_account">
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputPassword">Password</label>
				<div class="controls">
				  <input type="password" class="span3" placeholder="Password" name="password_account">
				</div>
			  </div>
			  <div class="control-group">
				<div class="controls">
                    <label class="checkbox">
					    <input type="checkbox"> Nhớ đến tôi
					</label>
            
				  <button type="submit" class="defaultBtn">Đăng Nhập</button> <a href="#">Nhớ Tài Khoản</a>
				</div>
			  </div>
			</form>
		</div>
		</div>
	</div>	
	
</div>
</div>

@endsection