# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include gossinbackup::install
class gossinbackup::install {
  package { 'crudini':
    ensure => installed,
  }

  package { 'rsync':
    ensure => installed
  }

  vcsrepo { '/opt/gossin-backup/':
    ensure   => present,
    provider => git,
    source   => 'git://github.com/githubgossin/gossin-backup',
  }
}
