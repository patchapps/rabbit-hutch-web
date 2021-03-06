use Rack::Static, 
  :urls => ["/assets/img", "/assets/js", "/assets/css", "/views"],
  :root => "public"

run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
      'Cache-Control' => 'public, max-age=86400' 
    },
    File.open('public/views/index.html', File::RDONLY)
  ]
}