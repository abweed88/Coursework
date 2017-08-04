#!/usr/bin/perl

use warnings;
use strict;
use v5.10;

#Initialization of the file in order to show the current names in a numbered list. The file is opened and loaded into a array then looped through to add a number to the beginning of the line in the list.
open(DATA, "<namelist.txt") or die "Couldnt open file namelist.txt, $!";

chomp(my @list = (<DATA>));
close (DATA);

my $i = 1;

print "The Obscure Villians of Batman Club!!!!!\n";

foreach $_ (@list) {
	print "$i | $_\n";
	$i++;
	}
#the list is then emptied so that nothing remains in the array.	
until (!@list){
	pop (@list)
}

print "@list";

# If elsif is used to prompt the user to enter an answer for the question. Based on the answer it will then automatically prompt user in the next line of commands.
print "Would you like to join the Obscure Villans of Batman Club?(yes/no)\n";
chomp(my $input = <STDIN>);

if ($input =~ /^[Y]$/i) {
	print "Please enter your first and last name\n";
		chomp(my $name = <STDIN>);
			open(DATA, ">>namelist.txt") or die "Couldnt open file namelist.txt, $!";
				print DATA "$name\n";
					close (DATA);
						print "Thank you for joining\n";
							exit;
}
		elsif ($input =~ /^[N]$/i) { 
			print " Have a nice day\n";
				exit;
	}
	
