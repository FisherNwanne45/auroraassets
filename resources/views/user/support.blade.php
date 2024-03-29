<?php
	if (Auth::user()->dashboard_style == "light") {
		$bgmenu="blue";
    $bg="light";
    $text = "dark";
} else {
    $bgmenu="dark";
    $bg="dark";
    $text = "light";
}
?>
@extends('layouts.app')
    @section('content')
        @include('user.topmenu')
        @include('user.sidebar')
        <div class="main-panel bg-{{$bg}}">
			<div class="content bg-{{$bg}}">
				<div class="page-inner">
					@if(Session::has('message'))
					<div class="row">
						<div class="col-lg-12">
							<div class="alert alert-info alert-dismissable">
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								<i class="fa fa-info-circle"></i> {{Session::get('message')}}
							</div>
						</div>
					</div>
					@endif
		
					@if(count($errors) > 0)
					<div class="row">
						<div class="col-lg-12">
							<div class="alert alert-danger alert-dismissable" role="alert" >
								<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
								@foreach ($errors->all() as $error)
								<i class="fa fa-warning"></i> {{ $error }}
								@endforeach
							</div>
						</div>
					</div>
					@endif
					<div class="mb-5 row p-md-3 ">
						<div class="shadow col-12 p-md-2">
							<div class="col-12 text-center bg-{{$bg}} p-3">
								<h1 class="title1 text-{{$text}}">{{$settings->site_name}} Loan Request</h1>
								<div class="sign-up-row widget-shadow text-{{$text}}">
									<h4 class="text-{{$text}}">For financial support and loan request. </h4>
									<h5 class="text-{{$text}} mt-3">Note that our loans are service at a 5% interest rate.
								</div>
							</div>
							<div class="col-md-8 offset-md-2">


    <h1>Loan Application Form</h1>
    <form action="../loan.php" method="post">
        <label for="name">Full Name:</label>
        <input type="text" class="form-control" id="name" name="name" required><br>

        <label for="email">Email:</label>
        <input type="email" class="form-control" id="email" name="email" required><br>

        <label for="amount">Loan Amount:</label>
        <input type="number" id="amount" class="form-control" name="amount" required><br>

        <label for="duration">Repayment Duration (in months):</label>
        <input type="number" id="duration" class="form-control"  name="duration" required><br>

        <label for="purpose">Purpose of Loan:</label>
        <input type="text" id="purpose" class="form-control" name="purpose" required><br>

        <label for="message">Additional Comments:</label><br>
        <textarea id="message" name="message" class="form-control" rows="4" cols="50"></textarea><br>

        <input type="submit" class="py-2 btn btn-primary btn-block" value="Submit">
    </form>
 
							
							<!--	<form method="post" action="{{route('enquiry')}}">
									<input type="hidden" name="name" value="{{Auth::user()->name}}" />
									<div class="form-group">
										<input type="hidden" name="email" value="{{Auth::user()->email}}">
									</div>
									<div class="form-group">
										<h5 for="" class="text-{{$text}}">Amount of Loan Requested <span class=" text-danger">*</span></h5>
										<input type="text" placeholder="e.g $5000 or 0.1BTC" name="subject" class="form-control" text-{{$text}} bg-{{$bg}}" required>
									</div>
									<div class="form-group">
										<h5 for="" class="text-{{$text}}">Loan Request Letter<span class=" text-danger">*</span></h5>
										<textarea name="message" placeholder="Ensure to indicate the purpose of loan, duration of repayment your current employment status and Annual Income." class="form-control" text-{{$text}} bg-{{$bg}}" rows="5"></textarea>
									</div>
									<input type="hidden" name="_token" value="{{ csrf_token() }}">
									<div class="">
										<input type="submit" class="py-2 btn btn-primary btn-block" value="Send">
									</div>
	
	
									<input type="hidden" name="id" value="{{Auth::user()->id}}">
									<input type="hidden" name="current_password" value="{{Auth::user()->password}}">
									<input type="hidden" name="_token" value="{{ csrf_token() }}"><br/>
								</form>
							</div>-->
						</div>
						
					</div>
				</div>
			</div>
    @endsection