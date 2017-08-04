#!/usr/bin/perl 
use warnings;
use strict; 

#subroutines 
sub add{
	my $ans = $_[0]+$_[1];
	print "The answer is: $ans"; 
}

sub subt{
	my $ans = $_[0]-$_[1];
	print "The answer is: $ans"; 
}

sub mult{
	my $ans = $_[0]*$_[1];
	print "The answer is: $ans"; 
}

sub div{
	my $ans = $_[0]/$_[1];
	print "The answer is: $ans"; 
}


my $loop = 1; #True/False if user wants to rerun program. Will be broken if 'no'
while($loop == 1){
	#input
	print "\n\nEnter your first number: "; 
	  chomp(my $num1 = <STDIN>); 
	print "Enter your second number: ";
	  chomp(my $num2 = <STDIN>); 
	print "Enter an arithmetic operaror (+,-,*,/): ";
	  chomp(my $op = <STDIN>); 
	
	#logic to determine operation
	if($op eq '+'){
		&add($num1,$num2);
	}
	else($op eq '-'){
		&subt($num1,$num2);
	}
	elsif($op eq '*'){
		&mult($num1,$num2);
	}
	if($op eq '/'){
		&div($num1,$num2);
	}
	
	#hail user again, see if they would like to rerun
	print "\n\nWould you like to do this again? (y/n): "; 
	  chomp(my $decide = <STDIN>); 
	    $decide = lc($decide); #make their decision in lowercase just in case they want to be silly.
	
	#loop logic
	if($decide eq "y"){
		print"\n\n\n"
	}
	elsif($decide eq "n"){
		$loop--;
		print "Thank you! Bye!\n"; 
	}
	else{
		print "That wasn't an answer choice! I guess you want to leave. Bye!\n";
		$loop--;
	}
}
