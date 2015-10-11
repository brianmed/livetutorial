package LiveTutorial::Chapter::Ch01::Parameters;

use Mojo::Base -base;

has doc_url => 'http://mojolicio.us/perldoc/Mojolicious/Guides/Tutorial#Hello-World';
has summary => q(
  <div class="row-fluid">
      <div class="span6">
        <h4>Variety is the spice...</h4>

        <p>
            Input and output are intrinsic to any computer program, perhaps doubly so to a
            web application. A significant source of user input comes from GET and POST
            parameters.
        </p>

        <p>
            These parameters present themselves through the requests and responses the web
            server and client make. They can be in href URLs, forms, and javascript code.
        </p>
      </div>
  </div>
  <br>
);

has title => 'Parameters';
has data_url => "http://parameters.localhost:3000";
has code => "../tutorial/parameters.pl";

has content => q(
    <p>
    The application usage is straightforward: run the program and then enter your username
    followed by a return. You should then be logged in.
    </p>

    <p>
    The parameter "name" is an agreement between the view and the controller. Before
    you’re logged in there is html that presents a form and the form is sent back to the
    server in the form of a POST request. 
    </p>
    
    <p>
    This request is processed and the "param" method
    exposes the data to the application - using the "name" argument. "name" is common between
    the form, the POST request, and the application.
    </p>
);

1;

