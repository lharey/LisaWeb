package Routes::App;
use Dancer2;
use Dancer2::Plugin::DBIC;

use IMDB::Film;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/home' => sub {
    template 'home';
};

get '/search' => sub {
    my $search = param('search');
    my @results;
    my $imdbObj = new IMDB::Film(crit => $search,
                                   timeout => 2,
                                   debug  => 0,
                                   cache           => 1,
                                   cache_root      => '/tmp/imdb_cache',
                                   cache_exp       => '1 d',);
    my $type = $imdbObj->kind();
 
    #print Dumper $imdbObj;
    my $id = $imdbObj->code;
    
    if (defined $id) {
      my %data;
      $data{id} = $id;
      $data{title} = $imdbObj->title();
      push @results, \%data;
    }
    
    my $options = {
        search => $search,
        results => \@results
    };
    
    template 'home', $options;
};

true;
