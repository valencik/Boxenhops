class people::mightyhops {

  notify { 'class people::mightyhops declared':}

  class { 'nodejs::global': version =>  'v0.10.18' }

  # install some npm modules
  nodejs::module { 'bower': node_version => 'v0.10.18' }

}
