package LiveTutorial::Chapter::Ch01::Routes;

use Mojo::Base -base;

has doc_url => 'http://mojolicio.us/perldoc/Mojolicious/Guides/Tutorial#Hello-World';
has content => q(
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

1;
