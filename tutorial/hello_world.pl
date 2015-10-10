#!/usr/bin/env perl

use Mojolicious::Lite;

get '/' => sub {
    my $c = shift;

    # Assignment #1
    #   Change the text below to "Howdy World"

    $c->render(text => 'Hello World!');
};

app->start;
