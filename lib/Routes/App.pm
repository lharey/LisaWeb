package Routes::App;
use Dancer2 ':syntax';

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/home' => sub {
    template 'home';
};

true;
