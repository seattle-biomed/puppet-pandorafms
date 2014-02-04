# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms (
  $config_ensure  = 'present',
  $config_options = hash([]),
  $package_ensure = 'installed',
  $console_ensure = 'installed',
  $service_ensure = 'running',
  $service_enable = true,
) {
  anchor { '::pandorafms::server::begin': } ->
  class  { '::pandorafms::server::package': } ->
  class  { '::pandorafms::server::config': } ~>
  class  { '::pandorafms::server::service': } ->
  anchor { '::pandorafms::server::end': }
}
