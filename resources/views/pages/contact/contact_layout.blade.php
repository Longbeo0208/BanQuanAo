@extends('layout')
@section('content')

<div class="span9">
	<div class="well">
	<h1>Liên hệ</h1>
	<hr class="soften"/>	
	<div class="row-fluid">
		<div class="span9 relative">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.99903304868!2d106.68832371462285!3d10.811385192297793!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529b9eb2fd393%3A0x1646f107b0b1d146!2sMat%20Viet%20Eyecare!5e0!3m2!1svi!2s!4v1629519723264!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>

		<div class="absoluteBlk">
		<!-- <div class="well ">
		<h4>Contact Details</h4>
		<h5>
			2601 Mission St.<br/>
			San Francisco, CA 94110<br/><br/>
			 
			info@mysite.com<br/>
			﻿Tel 123-456-6780<br/>
			Fax 123-456-5679<br/>
			web:wwwmysitedomain.com
		</h5>
		</div> -->
		</div>
		</div>
		
		
		<div class="span11">
			<div class="well">
			<h5>Đăng Nhập Liên Hệ</h5>

			<form action="{{URL::to('/show-cart')}}" method="get">
			{{csrf_field()}}
			  <div class="control-group">
				<label class="control-label" for="inputEmail">Email</label>
				<div class="controls">
				  <input class="span30"  type="text" placeholder="Email" name="email_account">
				</div>
			  </div>
			  <div class="control-group">
				<label class="control-label" for="inputPassword">Password</label>
				<div class="controls">
				  <input type="password" class="span30" placeholder="Password" name="password_account">
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
</div>
@endsection