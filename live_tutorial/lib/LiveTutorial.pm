package LiveTutorial;

use Mojo::Base 'Mojolicious';

use Mojo::Loader qw(load_class);

sub section {
    my $self = shift;
    my $chapter = ucfirst($self->session('chapter') // 'Ch01');
    my $section = ucfirst($self->session('section') // 'Introduction');

    my $pkg = "LiveTutorial::Chapter::${chapter}::$section";
    my $e = load_class($pkg);
    
    $pkg->new;
};

sub startup {
    my $self = shift;

    $self->helper(section => \&section);
    
    my $r = $self->routes;
    
    $r->get('/:chapter/:section')->to('index#slash', chapter => "Ch01", section => "Introduction");
    $r->post('/autosave')->to('index#autosave');
}

1;
