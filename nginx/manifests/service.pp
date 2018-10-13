class nginx::service(
  String  $service_name                        = $::nginx::service_name,
  String  $service_ensure                      = $::nginx::service_ensure,
  String  $service_pattern                     = $::nginx::service_pattern,
  Boolean $service_enable                      = $::nginx::service_enable,
  Boolean $service_hasstatus                   = $::nginx::service_hasstatus,
  Boolean $service_hasrestart                  = $::nginx::service_hasrestart,
) {
  service { 'nginx_service':
    name      => $service_name,
    ensure     => $service_ensure,
    enable     => $service_enable,
    hasstatus  => $service_hasstatus,
    hasrestart => $service_hasrestart,
    pattern     => $service_pattern,
  }
}
