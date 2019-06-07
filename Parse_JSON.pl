use JSON::Parse ':all';
use Data::Dumper;

#Check if it is a valid json
#if (valid_json ($json)) {
    # do something
#}

#From a string
my $perl = parse_json ('{"x":1, "y":2}');

#From a file
my $p = json_file_to_perl ($ARGV[0]);

#Print type of var and structure
print ref $p."\n";
print Dumper($p);
