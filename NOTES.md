# NOTES

## Persisitent Storage

There is a glusterfs persistent driver that looks maintained.
https://github.com/marcelo-ochoa/docker-volume-plugins/tree/master/glusterfs-volume-plugin

We'll use that for the volume storage.

## Container Storage

The Docker storage driver wants xfs or ext4, for the overlay2 driver. Gluster
is not acceptable. We can make an xfs/ext4 image and bind mount that. Or, we
can simply say "eh" and use the /var/lib/docker that is on the root partition
and see what happens.

In the "don't needless complicate things" department - we are going with the
latter. If we run out of space, we'll re-evaulate.
