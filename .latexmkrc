# -*- cperl -*-

$ENV{'TEXINPUTS'} = './texmf//:' . $ENV{'TEXINPUTS'};

push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';
$clean_ext .= ' %R.ist %R.xdy';

$clean_ext .= ' %R.eqpt-glo %R.tech-glo %R.term-glo';
$clean_ext .= ' %R.eqpt-gls %R.tech-gls %R.term-gls';
$clean_ext .= ' %R.eqpt-glg %R.tech-glg %R.term-glg';

add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('eqpt-glo', 'eqpt-gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {
    print "\t\tBulding Glossaries\n";
  if ( $silent ) {
    system "makeglossaries -q '$_[0]'";
  }
  else {
    system "makeglossaries '$_[0]'";
  };
}

set_tex_cmds(' -shell-escape %O %S');
