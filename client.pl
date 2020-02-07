use strict; 
use warnings; 
use IO::Socket; 
my $socket = new IO::Socket::INET ( 
PeerAddr => 'localhost', 
PeerPort => '6000', 
Proto => 'tcp', 
); 
die "Could not create socket: $!" unless $socket; 
my $input = <STDIN>;
print $socket $input ; 
close($socket);
