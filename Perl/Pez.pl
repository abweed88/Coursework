#!/usr/bin/perl -w 

print "@pez"; #print pez to show no items in current array.

print " Enter 10 colors/flavors into your pez dispenser\n";

#The intention of this code is to initialize my array pez aswell as push the STDIN from user also limiting the Array to being only 10 lines long.
my @pez;
while (<>) {
   push @pez, $_;
   last if @pez == 10;
}
#this will show the current state of the array as full.
if (@pez == 10){ print "it is time to enjoy your pez\n";
}

#This then makes the program eat the pez.
while (@pez >= 10){ pop @pez; $_;
last if @pez == 0; }
print @pez;
print "Youve eaten all your pez.\n";

exit;
