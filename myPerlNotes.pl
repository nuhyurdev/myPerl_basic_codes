###     Perl Scripting Vocabulary for me        ###

#!/usr/bin/perl
use strict;
#Describe Variables
print "hello perl!\n";
my $x = -7.4;
my $str1 ='ilk sayi $x';
my $y = 5;
my $str2 = "ikinci sayı $y";
print $x+$y ,"\n",  $str1 , "\n" , $str2 ,"\n";

#Concatination
my $a="Hello";
my $b="!";
my $c=$a." world".$b."\n";
print $c;

#Cast
my $string = "10";
my $number = 20;
my $result = $string + $number;
print "cast result: ", $result, "\n";

#perl arrays

my @numbers=(1..9);
print "Array[5]: " , @numbers[5] ,"\n";

#scoope variable 
#my 
#local
#our
our $var = 15;
{
my $var_2 = 20;
$var_2 = $var;
#local $var = 2;
print "local new varable =$var_2 \n";  
}
print "global varable",$var,"\n";

#array size

my @array= qw/a b c d e/;
print my $size=scalar (@array) ,"\n";

#or 
# "$#" = array max index
@array= qw/a b c d e/;
print $size=scalar (@array);
print "\n";
print $size=$#array + 1,"\n"; 

#Dynamic array(string)

my $string = "These are ; my first codes ; with Perl!";

my @newArray = split(";",$string);

foreach(@newArray){
print "$_ \n";
}

#Perl Hash

my %hash=('name'=>"opel", 'model'=>"Insigna",'price'=>"100.000\$" );
print "$hash{name} $hash{model} | " , "Cash Price = $hash{price} \n";
$hash{'country'}="Germany";
print "$hash{'country'} \n" ;
print %hash , "\n";
delete $hash{'country'};
print %hash, "\n";

#conditional blocks

my $val=1;
unless($val==1)
{
    print "this is unless block. result ==>  $val \n";
}
elsif($val eq 1)
{
    print "this is elsif block result ==> $val\n";
}
else
{
    print "this is else block result ==> $val \n";
}


#loops

my @values=(1..10);
for (my $val = 0; $val < $#values+1 ; $val++) {
   
    print "$val " ;
}
print "\n";
foreach(@values) {
    print "$_ \n";
}

my %myhash=('name' => "noaahhh", 'age' => 22);
foreach my $key (keys %myhash)
{
print " $key =>  $myhash{$key} \n";
}

# -while
# -do-while
# -do-until 

##operators

#$\="\n";
print "hello world";
print "this is down line";
 $"= "--";
 print "@values";

 ## File operation

 open(FH,"<myPerlNotes.pl");#read mode < ,write mode > ,append mode >>
 while(<FH>){
     #my $tel = tell FH;
    print $_ ;
    #print "$tel \n";
 }
 close FH;
 
 open FH, '+<','../a.py';
seek FH, 10, 0;    # This will start reading data after 5 bytes.
$/ = undef;
my $out = <FH>;
print $out;
close FH;

##subroutine = function

sub subroutine{
    print "\nThis is a subroutine \n";
}
subroutine();

#note: @_ is a special variable which stores the list of arguments pass

sub display
{		
my $var_2=shift;		
print "$var_2 is passed \n";		
}		
display("hello");



sub square
{
my $a=shift;
my $b=shift;
return($a**$b);
}


my $result = square(4,3);
print "$result \n";

## eval - test 

sub test 
{ 
die "Die test \n"; 
} 
eval 
{ 
test(); 
}; 
print "Caught : $@\n";

# try-catch 

try 
{ 
die "this is die"; 
} 
catch 
{ 
warn "caught error: $_"; # not use $@ 
};

=cut
try 
{ 
# statement 
} 
finally 
{ 
# statement 
} 
catch 
{ 
# statement 
}
=end comment


