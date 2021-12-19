#/bin/sh
unbound-control -c /var/unbound/unbound.conf load_cache < /tmp/unbound-localcache.db
