package LiveTutorial::Chapter::Ch02::Startup;

use Mojo::Base -base;

has doc_url => 'http://mojolicio.us/perldoc/Mojolicious/Guides/Tutorial#Hello-World';
has summary => q(
  <div class="row-fluid">
      <div class="span6">
      <h4>Photo</h4>

      <p>
      The Chapter 1 focused on Mojolicious::Lite applications; however, in order to
      realize our Photo application it will be easier to use the full blown application
      features of Mojolicious
      </p>
      </div>
  </div>
  <br>
);

has title => 'Photo';
has data_url => "http://photo.localhost:3000";
has code => "../photo/lib/Photo.pm";

has content => q(
      <h4>Photo</h4>

      <p>
      The Chapter 1 focused on Mojolicious::Lite applications; however, in order to
      realize our Photo application it will be easier to use the full blown application
      features of Mojolicious.  An application of this type can be started with:
      </p>

        <code>$ mojo generate app Photo</code>

        <h4>Startup</h4>

        <p>Mojolicious initializes our app and then calls Photo::startup.</p>

        <p>The startup method adds, configures plugins; sets up some logging; adds in
      helpers; and sets up routes. For example, as you can see below in the line from
      lib/Photo.pm our route for the index page is setup.</p>
      </div>
);

1;
