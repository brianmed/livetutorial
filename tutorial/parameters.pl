use Mojolicious::Lite;

# Assignments:
#
#    #1 Change href to your name.
#

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
    <a href=/Jewel></a>
</body>
</html>
