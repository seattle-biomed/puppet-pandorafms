# == Class: pandorafms
#
# Full description of class pandorafms is in the README.
#
class pandorafms::config (
  $ensure       = $pandorafms::config_ensure,
  $options      = $pandorafms::config_options,
  $config_file  = '/etc/pandora/pandora_agent.conf',
) {
  file { $config_file:
    ensure  => $ensure,
    mode    => '0440',
    content => template('pandorafms/pandora_agent.conf.erb')
  }
}

