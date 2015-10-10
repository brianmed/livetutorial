package LiveTutorial::Chapter::Ch01::Routes;

use Mojo::Base -base;

has doc_url => 'http://mojolicio.us/perldoc/Mojolicious/Guides/Tutorial#Hello-World';
has summary => q(
  <div class="row-fluid">
      <div class="span6">
      Routes enable Mojolicious to easily glue together an incoming request with code.
      Routes are basically just fancy paths that can contain different kinds of
      placeholders.
      </div>
  </div>
  <br>
);

has title => 'Routes';
has data_url => "http://routes.localhost:3000";
has code => "../tutorial/routes.pl";

has content => q(
    <p>Routes enable Mojolicious to easily glue together an incoming request with code.</p>

    <p>From the Mojolicious::Lite perldoc:</p>

    <p>Routes are basically just fancy paths that can contain different kinds of placeholders.</p>

    <p>The get ’/foo’ will redirect a HTTP GET /foo request to the anonymous subroutine
    listed.  It should be noted that a GET and POST can be redirected to a different
    subroutine. This is a very powerful construct that allows us to execute arbitrary business
    logic (system commands, SQL, control flow logic, etc) for a given request.
    </p>

    <p>Also, $c is a Mojolicious::Controller object containing both, the HTTP request and response.</p>
);

1;
