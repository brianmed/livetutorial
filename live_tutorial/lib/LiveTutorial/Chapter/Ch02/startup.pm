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
      <div id="page_1">
      <h4>Photo</h4>

          <p>
          The Chapter 1 focused on Mojolicious::Lite applications; however, in order to
          realize our Photo application it will be easier to use the full blown
          application features of Mojolicious.  An application of this type can be started
          with <code>$ mojo generate app Photo</code>.
          </p>

            The app is runable via:<br>

            <div class="well well-small" style="margin-top: 10px;">
                $ cd photo<br>
                $ morbo -v script/photo
            </div>

            <p style="margin-top: 10px;">
            When we point our browser to <code>http://localhost:3000</code> we’ll get our app. After
            the config file has been setup, we can run our app via "script/photo"; this is
            a perl script that bootstraps our app. Most of the time you won’t need to
            modify this; however, if module directories are needed, then "use lib"
            statements can be put here.  What happens next?
            </p>
      </div>

      <div id="page_2" style="display:none">
            <h4>Startup</h4>

            <p>Mojolicious initializes our app and then calls Photo::startup.</p>

            <p>The startup method adds, configures plugins; sets up some logging; adds in
          helpers; and sets up routes. For example, as you can see below in the line from
          lib/Photo.pm our route for the index page is setup.</p>

          <p>
          When a user agent does a GET /, then Photo::Controller::Index::slash will be called and the
          slash.html.ep file will be served.
          </p>
      </div>

    <div class="pagination" style="color: black">
      <ul>
        <li><a onclick="paginate(1); return false;" href="#">1</a></li>
        <li><a onclick="paginate(2); return false;" href="#">2</a></li>
      </ul>
    </div>      

    <script>
        function paginate(pg) {
            $('[id^="page_"]').hide();
            $('#page_' + pg).show();
        }
    </script>
);

1;
