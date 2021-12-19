#/bin/sh
unbound-control -c /var/unbound/unbound.conf dump_cache > /tmp/unbound-localcache.db
