use Mojolicious::Lite;

use lib qw(live_tutorial/lib);
use lib qw(photo/lib);

my $site_config = app->plugin("Config" => {
    file => app->home->rel_file('./photo.config')
});

app->secrets([$$site_config{site_secret}]);

plugin Mount => {'/tutorial/hello_world' => 'tutorial/hello_world.pl'};
plugin Mount => {'/tutorial/routes' => 'tutorial/routes.pl'};
plugin Mount => {'/tutorial/stash' => 'tutorial/stash.pl'};
plugin Mount => {'/tutorial/parameters' => 'tutorial/parameters.pl'};
plugin Mount => {'/photo' => 'photo/script/photo'};
plugin Mount => {'127.0.0.1' => 'live_tutorial/script/live_tutorial'};
plugin Mount => {'localhost' => 'live_tutorial/script/live_tutorial'};

app->start;
