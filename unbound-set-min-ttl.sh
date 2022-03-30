#/bin/sh
@ newt = $1 * 60 * 60
echo "Set cache-min-ttl to $newt"
unbound-control -c /var/unbound/unbound.conf set_option cache-min-ttl: $newt
