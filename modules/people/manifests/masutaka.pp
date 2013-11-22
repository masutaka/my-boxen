class people::masutaka {

  package {
    [
     'aspell',
     'bazaar',
     'binutils',
     'cmigemo',
     'global',
     'gnu-sed',
     'gnupg',
     'imagemagick',
     'jq',         # json pretty-print
     'jsl',
     'lv',
     'markdown',
     'mercurial',
     'stunnel',    # mew
     'unrar',
     'w3m',
     'webkit2png', # % webkit2png -TF http://masutaka.net
     'wget',
     'xz',
     ]:
  }

  $ruby_version = '2.0.0'

  ruby::gem { "ghn for ${ruby_version}":
    gem  => 'ghn',
    ruby => $ruby_version,
  }

  ruby::gem { "puppet-lint for ${ruby_version}":
    gem  => 'puppet-lint',
    ruby => $ruby_version,
  }

  $perl_version = '5.18.1'

  perl::version { $perl_version: }

  perl::cpanm { "HTML::Template for ${perl_version}":
    module => 'HTML::Template',
    perl   => $perl_version
  }

  perl::cpanm { "App::highlight for ${perl_version}":
    module => 'App::highlight',
    perl   => $perl_version
  }

}
