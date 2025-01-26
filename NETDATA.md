# Netdata

Canuse docker / docker-compose to run Netdata
https://learn.netdata.cloud/docs/installing/docker

Canuse a bind mount instead of volume for the configuration

Use `/srv/store/netdata` as the source - it's gluster'd across the entire swarm

See:
- https://docs.docker.com/engine/swarm/services/#replicated-or-global-services
- https://docs.docker.com/engine/swarm/services/#publish-a-services-ports-directly-on-the-swarm-node

Volumes:
- https://docs.docker.com/storage/volumes/
- https://docs.docker.com/storage/volumes/#start-a-service-with-volumes

```plain
volume-driver=local
type=volume
source=<dependent on the volume>
destination=<dependent on the volume>
```
