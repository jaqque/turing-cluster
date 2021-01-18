Turing Cluster
---

Playbooks to set up a turing pi cluster.

Requirements
===

- Turing pi cluster board
- Compute Modules
- Imaged Compute Modules
- Node IPs defined in DNS, `/etc/hosts`, or `~/.ssh/config`
- ansible 2.10+

Playbooks
===

### Setup

- `filesystems.yml`: Create underlying filesystems for gluster
- `hostname.yml`: Set hostname of each compute module, based upon MAC
- `i2c.yml`: Enable I2C for RTC and power control
- `localhost.yml`: Set up local environment
- `passwd.yml`: Set password (see `groups/all/vault`)
- `ssh_keys.yml`: Apply SSH keys
- `site.ym`: All of the above

### Control


- `poweroff.yml`: Turn off arbitrary node
- `poweron.yml`: Turn on arbitrary node
- `powerstatus.yml`: Get power status of all nodes

Power status requires the master node to be on.

[TODO](TODO.md)
===
