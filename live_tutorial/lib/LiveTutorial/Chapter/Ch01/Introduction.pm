package LiveTutorial::Chapter::Ch01::Introduction;

use Mojo::Base -base;

has doc_url => 'http://mojolicio.us/perldoc/Mojolicious/Guides/Tutorial#Hello-World';
has content => q(
  <div class="row-fluid">
      <div class="span6">
        <p>Thus begins our quest for Mojo - a tutorial approach to learning web
        technologies. We will be learning <a style="color: CornflowerBlue" href="http://mojolicio.us">Mojolicious</a> a
        "next generation web framework for the Perl Programming language".</p>

        <p>Please complete the questions below.</p>

        <p>The code should autosave and reload.</p>
      </div>
  </div>
  <br>
);
has title => 'Hello World';
has data_url => "http://hello_world.localhost:3000";
has code => "../tutorial/hello_world.pl";

1;
