use IO::Socket; 
use strict; 
use warnings; 
my $socket = new IO::Socket::INET ( 
PeerAddr => 'xx.xx.1.1',#listen gateway adress
LocalPort => '6000', 
Proto => 'tcp', 
Listen => 2, 
#Reuse => 1, 
); 
die "Could not create socket: $!" unless $socket; 
#print "Waiting for the client to send data \n"; 
my $new_socket = $socket->accept(); 
while(<$new_socket>) { 
print $_; 
} 
close($socket);
