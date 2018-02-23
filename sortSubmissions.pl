#!/usr/bin/perl

use strict;
use Text::CSV;

print "This script will move submissions into folders for each section.\n";
print "Enter the location to move the contents from: ";
my $srcPath= <>;
chomp($srcPath);
print "Enter the destination to move the contents to: ";
my $destPath= <>;
chomp($destPath);

print "Moving from \"$srcPath\" to \"$destPath\".\nCTRL+C to bail, last chance! Enter to continue.\n";
my $dummy = <>;

system( "mkdir -p Sec_A" );
system( "mkdir -p Sec_B" );
system( "mkdir -p Sec_C" );
system( "mkdir -p Sec_D" );
system( "mkdir -p Sec_E" );

my $csv = Text::CSV->new({ sep_char => ',' });
my $csvfile = "id_section.csv";
open( my $data, '<', $csvfile ) or die "Could not open $csvfile\n";
while( my $line = <$data> ) {
  chomp $line;
  my @fields = split "," , $line;
  
  my $id = $fields[0];
  my $sec = $fields[1];
  chomp $id;
  chomp $sec;
  $sec =~ s/\r|\n//g;

  system( "mv $srcPath/*$id* $destPath/Sec_$sec/.");
}
