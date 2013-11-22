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

  ruby::gem { 'ghn':
    gem  => 'ghn',
    ruby => '2.0.0',
  }

  ruby::gem { 'puppet-lint':
    gem  => 'puppet-lint',
    ruby => '2.0.0',
  }

}
