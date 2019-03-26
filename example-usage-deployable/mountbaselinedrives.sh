#!/bin/sh

katello-service stop
mount -t xfs /dev/mapper/vg_content-lv_cache /var/cache/pulp
mount -t xfs /dev/mapper/vg_content-lv_pulp /var/lib/pulp
mount -t xfs /dev/mapper/vg_content-lv_mongodb /var/lib/mongodb
mount -t xfs /dev/mapper/vg_content-lv_pgsql /var/lib/pgsql
katello-service start
satellite-installer --scenario satellite --foreman-initial-organization armycpb
hammer ping
katello-service status
