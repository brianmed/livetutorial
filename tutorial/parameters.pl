use Mojolicious::Lite;

# Assignments:
#
#    #1 Change href to your name.
#

get '/' => sub {
    my $c = shift;

    $c->stash(name => $c->param("name")) if $c->param("name");

    $c->render("index");
};

app->start;

__DATA__

@@ index.html.ep

<!DOCTYPE html>
<html>
<head>
    <title>Hello World</title>
</head>
<body>
    % if (stash('name')) {
        Hello <%= stash('name') %><br>
    % } else {
        Hello world<br>
    % }
    <a href=?name=Jewel>Click me</a>
</body>
</html>
