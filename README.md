# This project is archived.

The cluster was turned off at 2025-01-26 14:17 -08:00


Turing Cluster
---

Playbooks to set up a turing pi cluster.

Requirements
===

- Turing pi cluster board
- Compute Modules
- [Imaged Compute Modules](pi-stuffs/compute-module-init)
- Node IPs defined in DNS, `/etc/hosts`, or `~/.ssh/config`
- Remote user defined in `~/.ssh/config` or consistent with the controller
- ansible 2.10+

Playbooks
===

### Setup

- `docker.yml`: Install and configure Docker-CE
- `filesystems.yml`: Create underlying filesystems for gluster
- `gluster.yml`: Create and mount gluster volumes
- `hostname.yml`: Set hostname of each compute module, based upon MAC
- `i2c.yml`: Enable I2C for RTC and power control
- `localhost.yml`: Set up local environment
- `passwd.yml`: Set password (see `groups/all/vault`)
- `ssh_keys.yml`: Apply SSH keys
- `site.ym`: All of the above

### Control

- `helpers/poweroff.yml`: Turn off arbitrary node
- `helpers/poweron.yml`: Turn on arbitrary node
- `helpers/powerstatus.yml`: Get power status of all nodes

Power status requires the master node to be on.

### Maintenance

- `helpers/package-upgrade.yml`: Upgrade all installed packages

[TODO](TODO.md)
===
