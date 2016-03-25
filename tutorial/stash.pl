use Mojolicious::Lite;

get '/' => sub {
    my $c = shift;

    $c->stash(time => scalar(localtime(time)));

    $c->render("slash");
};
app->start;

__DATA__

@@ slash.html.ep

The time is now <%= stash('time') %>
