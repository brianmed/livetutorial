use Mojolicious::Lite;

# Assignments:
#
#    #1 Change the titles in the html below.
#
#    #2 Add a back buton to carpe.html.ep below.
#
#       The button can just be an href back to "/".
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
    <a href=/tutorial/routes/carpe>Carpe Diem</a>
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
