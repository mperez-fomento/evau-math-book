use strict vars;
use POSIX;

if ($#ARGV < 0) {die "Usage: exercisenumerator.pl (number/renumber/unnumber) inputfilename\n";}
my $inputfilename = $ARGV[1];
$inputfilename =~ /^(.*)(\.)([^\.]+)$/;
my $inputfilenamenoext = $1;
my $inputfilenameext = $3;
my $outputfilenamenoext = "$inputfilenamenoext\_";
my $actionstring = $ARGV[0];
my $actioncode = 0;
if ($actionstring eq "number" || $actionstring eq "n") {$actioncode = 1; $outputfilenamenoext .= "numbered";}
if ($actionstring eq "renumber" || $actionstring eq "r") {$actioncode = 2; $outputfilenamenoext .= "numbered";}
if ($actionstring eq "unnumber" || actionstring eq "u") {$actioncode = 3; $outputfilenamenoext .= "unnumbered";}
my $outputfilename = "$outputfilenamenoext".".$inputfilenameext";
open(my $inputfile, "<", $inputfilename) or die "Can't open input file $inputfilename: $!.\n";
open(my $outputfile, ">", $outputfilename) or die "Can't write on outputfile $outputfilename: $!.\n";

print "\nAction code: $actioncode. Writing output to: $outputfilename";

my $exercisenr = 0;

if ($actioncode == 1 || $actioncode == 2) {
  while (my $line = <$inputfile>) {
    if (!($line =~ /^%/)) {
      if ($line =~ /begin\{exercise/) {
        $exercisenr++;
        print "\nNumbering exercise $exercisenr";
        print $outputfile "% Exercisenr: $exercisenr\n";
        print $outputfile "$line";
      }
      else {
	print $outputfile "$line";
      }
    }
  }
}
if ($actioncode == 3) {
  while (my $line = <$inputfile>) {
    if (!($line =~ /Exercisenr/)) {
      print $outputfile "$line";
    }
  }
}
