use Mojolicious::Lite;

get '/carpe' => sub {
    my $c = shift;

    $c->render("carpe", now => scalar(localtime(time())));
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
    Carpe Diem: <%= $now %>
</body>
</html>
