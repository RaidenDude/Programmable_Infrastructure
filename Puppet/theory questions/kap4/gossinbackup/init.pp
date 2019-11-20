# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include gossinbackup
class gossinbackup (
  Stdlib::Absolutepath $source_directory,
  Stdlib::Absolutepath $destination_directory,
  Optional[Stdlib::Absolutepath] $exclude,
  Optional[Integer] $days,
  Optional[Integer] $months,
  Optional[Integer] $years,
  Optional[String] $max_file_size,
  Optional[String] $exec_hours,
  Optional[Tuple] $exec_minutes,
) {

  include stdlib
  include vcsrepo
  include inifile
  contain gossinbackup::install
  contain gossinbackup::config

  Class['::gossinbackup::install']
  -> Class['::gossinbackup::config']
}
