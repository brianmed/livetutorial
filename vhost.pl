use Mojolicious::Lite;

plugin Mount => {'127.0.0.1' => 'live_tutorial/script/live_tutorial'};
plugin Mount => {'localhost' => 'live_tutorial/script/live_tutorial'};
plugin Mount => {'hello_world.localhost' => 'tutorial/hello_world.pl'};
plugin Mount => {'routes.localhost' => 'tutorial/routes.pl'};
plugin Mount => {'parameters.localhost' => 'tutorial/parameters.pl'};
plugin Mount => {'photo.localhost' => 'photo_app/script/photo_app'};

app->start;
