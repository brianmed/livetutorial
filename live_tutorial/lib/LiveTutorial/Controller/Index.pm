package LiveTutorial::Controller::Index;

use Mojo::Base 'Mojolicious::Controller';

use Mojo::Util qw(slurp spurt);
use Encode qw(encode);

sub slash {
    my $c = shift;

    $c->session(chapter => $c->param("chapter"));
    $c->session(section => $c->param("section"));

    my $section = $c->section;

    $c->stash(code => slurp($c->app->home->rel_file($section->code)));
    $c->stash(summary => $section->summary);
    $c->stash(content => $section->content);
    $c->stash(title => $section->title);
    $c->stash(doc_url => $section->doc_url);
    $c->stash(data_url => $section->data_url);

    $c->render;
}

sub autosave {
    my $c = shift;

    my $code = $c->param("code");

    my $section = $c->section;

    $c->app->log->debug($section->code);

    spurt(encode("UTF-8", $code), $c->app->home->rel_file($section->code));

    return $c->render(json => { ret => 1 });
}

1;
