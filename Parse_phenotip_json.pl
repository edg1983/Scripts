#Take .json file exported from PhenomeCentral as input
#Output a table with CaseID, semi-col separated HPO terms
use JSON::Parse ':all';
use Data::Dumper;

my $p = json_file_to_perl ($ARGV[0]);

print "#CaseID\tHPO_terms\n";
foreach $case(@{$p}) {
  undef @hpo;
  print ${$case}{external_id}."\t";
  foreach $pheno(@{${$case}{features}}) {
    push (@hpo, ${$pheno}{id});
  }
  print join(";", @hpo)."\n";
}
