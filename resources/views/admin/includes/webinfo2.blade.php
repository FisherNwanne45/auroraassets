<form method="post" action="{{action('App\Http\Controllers\Admin\SettingsController@updatewebinfo')}}" enctype="multipart/form-data">
    <div class="form-group">
        <h5 class="text-{{$text}}">Announcement</h5>
        <textarea name="update" class="form-control bg-{{Auth('admin')->User()->dashboard_style}} text-{{$text}}" rows="2">{{$settings->newupdate}}</textarea>
    </div>
    
    <div class="form-group">
        <h5 class="text-{{$text}}">Website Name</h5>
        <input type="text" name="site_name" class="form-control bg-{{Auth('admin')->User()->dashboard_style}} text-{{$text}}" value="{{$settings->site_name}}" required>
    </div>
    <div class="form-group">
         
       <input type="hidden" name="description"   value="{{$settings->description}}" >
       
       <input type="hidden" name="site_address"   value="{{$settings->site_address}}" >
       
        <input type="hidden" name="tawk_to"   value="{{$settings->tawk_to}}" >
        
         <input type="hidden" name="site_title"   value="{{$settings->site_title}}" >
    </div> 
     <div class="form-group">
        <h5 class="text-{{$text}}">Website Keywords</h5>
        <input type="text" name="keywords" class="form-control bg-{{Auth('admin')->User()->dashboard_style}} text-{{$text}}" value="{{$settings->keywords}}" required>
    </div>
     
    <div class="form-group">
        <h5 class="text-{{$text}}">BTC QR CODE (Recommended type: png, size:  width, 200px and  height 200px.)</h5>
        <input name="qrcode" class="form-control bg-{{Auth('admin')->User()->dashboard_style}} text-{{$text}}" type="file">
    </div>

    <input type="submit" class="px-5 btn btn-primary btn-lg" value="Update">
    <input type="hidden" name="id" value="1">
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
</form>