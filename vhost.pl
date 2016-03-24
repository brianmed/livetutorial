use Mojolicious::Lite;

use lib qw(live_tutorial/lib);
use lib qw(photo/lib);

plugin Mount => {'127.0.0.1' => 'live_tutorial/script/live_tutorial'};
plugin Mount => {'localhost' => 'live_tutorial/script/live_tutorial'};
plugin Mount => {'hello_world.localhost' => 'tutorial/hello_world.pl'};
plugin Mount => {'routes.localhost' => 'tutorial/routes.pl'};
plugin Mount => {'stash.localhost' => 'tutorial/stash.pl'};
plugin Mount => {'parameters.localhost' => 'tutorial/parameters.pl'};
plugin Mount => {'photo.localhost' => 'photo/script/photo'};

app->start;
