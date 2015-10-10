use Mojolicious::Lite;

# Assignments:
#
#    #1 Change the titles in the html below.
#
#    #2 Add a link to index.html.ep from carpe.html.ep.
#

get '/carpe' => sub {
    my $c = shift;

    $c->render("carpe");
};

get '/' => sub {
    my $c = shift;

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
    Hello world<br>
    <a href=/carpe>Carpe Diem</a>
</body>
</html>

@@ carpe.html.ep

<!DOCTYPE html>
<html>
<head>
    <title>Carpe Diem</title>
</head>
<body>
    Carpe Diem
</body>
</html>
