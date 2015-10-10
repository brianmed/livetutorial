package LiveTutorial::Chapter::Ch01::Introduction;

use Mojo::Base -base;

has doc_url => 'http://mojolicio.us/perldoc/Mojolicious/Guides/Tutorial#Hello-World';
has summary => q(
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

has content => q(
    <p>
    Thus begins our quest for Mojo - a tutorial approach to learning web technologies. We
    will be learning Mojolicious; at it is a "next generation web framework for the Perl
    Programming language". To achieve this, intermediate with some advanced computer
    knowledge is assumed. You do not need to be a developer to read this book.  From
    chapters 2 to the end we will be building a Photo album application.  What does next
    generation mean? It is a MVC framework that includes:
    </p>

    <ul>
        <li>Full stack HTTP and WebSocket client/server. • IPv6, TLS, SNI, IDNA, Comet</li>
        <li>Non-blocking I/O and embeddable web server</li>
        <li>JSON and HTML/XML parse with CSS selectors</li>
        <li>Templates</li>
        <li>Sessions</li>
        <li>Cookie management</li>
        <li>HTTP / WebSocket</li>
        <li>Routes</li>
        <li>CGI / PSGI auto-detection • Static files</li>
        <li>Testing framework</li>
        <li>Plugins</li>
    </ul>

    <p>Now that we have Mojolicious installed, we can start writing code for our website. Our
    first example is a full program and you are not expected to understand everything. It
    is geared to get your feet wet. After this, we will be a tutorial introduction into
    HTTP, HTML, Javascript, CSS, and other Web technologies.</p>
    
    <p>Our first tutorial is a Mojolicious::Lite application. It is a Real-time micro web
    framework. This micro web framework can have the entire web structure in a file.</p>
);

1;
