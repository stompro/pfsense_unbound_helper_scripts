# pfsense_unbound_helper_scripts
Helper scripts for certain tasks with Unbound on a pfSense firewall

Cache backup time limit - cache dumps over 2 hours old are not considered valid.

unbound-dumpcache.sh  -- dump the unbound cache to /tmp
unbound-restorecache.sh -- restore the unbound cache from /tmp
unbound-restart-wc.sh -- restart unbound while preserving the cache

Reboots
Dump cache and restore after reboot
Need to hook into the pfsense shutdown and startup process.

Stats - show cache stats continuious

Show current cache stats


Set custom pfsense unbound config entries, then restart with a cache dump and restore.
  -- Deploy pfsense unbound config to a bunch of firewalls at once.

Set custom domain override config

Load domain override file

Maybe let pfsense download a master domain override file on a regular schedule instead of pushing it out?  Not sure if that is any better than the push method though.

Deploy master cache file to many sites.

Clear cache for certain domains

Clear cache for all local entries - 192.168.x.x related

tcpdump related - find which machine is making requests for a certain domain.

