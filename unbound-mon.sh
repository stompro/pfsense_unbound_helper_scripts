#/bin/sh
while ( 1 )
echo
date
unbound-control -c /var/unbound/unbound.conf stats_noreset | egrep "(total\.num|cache\.count)"
sleep 60
end

