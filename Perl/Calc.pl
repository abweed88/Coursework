#!/usr/bin/perl
use v5.10;
use warnings;
use strict;

my $end;
my @holder;
#Using a do/until loop to keep the program running.

 sub multiplication {
	my $prod = $holder[0] * $holder[1]; 
	print "is $prod\n";
}

 sub addition { 
	my $sum = $holder[0] + $holder[1];
	print " is $sum\n "; 
}

 sub subtraction { 
	my $subt = $holder[0] - $holder[1];
	print "is $subt\n";}

 sub division { 
	my $quot = $holder[0] / $holder[1];
	print "is $quot\n";}


do { 

#first variable to be added to array

print "Please enter your first number:\n";        
chomp(my $num1 = <STDIN>);
push (@holder, $num1);

#second variable to be added to array 		

print "Please enter your second number:\n";	 									
chomp(my $num2 = <STDIN>);
push (@holder, $num2); 

# in order to call each diffent sub routine i used a given command to take each specific input the user can use to make the string they enter call a specific subroutine.

print "Choose from these arthemic operators:\n"; 
chomp(my $var = <STDIN>);

given($var){ 
when ("add"){ addition (@holder);}
when ("subt"){ subtraction (@holder);}
when ("div"){ division (@holder);}
when ("mult"){ multiplication (@holder);}
 default {$var = print "Incorrect choice, plese start over\n";}

}

pop(@holder);
pop(@holder);

print "Would you like to continue:y/n";
chomp($end = <STDIN>);
}
until ( $end eq "n") 
