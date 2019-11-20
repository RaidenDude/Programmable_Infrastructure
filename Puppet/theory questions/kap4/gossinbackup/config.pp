# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include gossinbackup::config
class gossinbackup::config {
  file { $gossinbackup::source_directory:
    ensure => directory,
    mode   => 'ug+r',
  }

  file { $gossinbackup::destination_directory:
    ensure => directory,
    mode   => '0755',
  }

  file { $gossinbackup::exclude:
    ensure =>  directory,
  }

  file { '/opt/gossin-backup/':
    ensure => directory,
    mode   => 'ug+x',
  }

  $defaults = { 'path' => '/opt/gossin-backup/gossin-backup.conf' }
  $values = {
    'linux' => {
      'source'        => $gossinbackup::source_directory,
      'basedest'      => $gossinbackup::destination_directory,
      'exclude'       => $gossinbackup::exclude,
      'days'          => $gossinbackup::days,
      'months'        => $gossinbackup::months,
      'years'         => $gossinbackup::years,
      'max_file_size' => $gossinbackup::max_file_size,
    }
  }
  create_ini_settings($values, $defaults)
  }
}
