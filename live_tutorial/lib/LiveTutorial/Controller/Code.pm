package LiveTutorial::Controller::Code;

use Mojo::Base 'Mojolicious::Controller';

use Mojo::Util qw(slurp);

sub retrieve {
    my $c = shift;

    my $bytes = slurp($c->app->home->rel_file($c->param("path")));
    
    $c->render(json => { filename => $c->param("path"), bytes => $bytes }); 
}

1;
