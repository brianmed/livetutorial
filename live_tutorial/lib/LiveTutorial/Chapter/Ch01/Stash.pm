package LiveTutorial::Chapter::Ch01::Stash;

use Mojo::Base -base;

has doc_url => 'http://mojolicio.us/perldoc/Mojolicious/Guides/Tutorial#Hello-World';
has summary => q(
  <div class="row-fluid">
      <div class="span6">
      <h4>How did that get there?</h4>

      <p>Templates are the bread and butter of dynamic content generation.</p>
      </div>
  </div>
  <br>
);

has title => 'Templates and Stash';
has data_url => "http://stash.localhost:3000";
has code => "../tutorial/stash.pl";

has content => q(
    <h4>How did that get there?</h4>

    <p>
    Templates are the bread and butter of dynamic content generation. They take input from the
    controller and load that into a templating system to create content. The content is
    usually a web page with HTML, CSS, and Javascript. However, there are other possibilites,
    as well, such as text.
    </p>

    <p>
    The input from the controller is placed in a "stash" data structure. There are a few ways
    to setup this data structure. One approach is to use the "stash" controller method.
    </p>

    <p>
    For example,we set the "time" stash parameter which will be available in the
    templates. Specifically, the "stash" helper is used to dynamically adjust
    the template output.
    </p>
);

1;
