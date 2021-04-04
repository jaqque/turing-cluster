- [x] make filesystems (ext4? xfs? f2fs?)
  - ~~ext4, as per failure mode tests. ext4 was better than f2fs and btrfs. xfs
    unknown.~~
  - XFS. Gluster is happier that way. I am happier that way.
- [x] glusterfs
- [x] Idempotify gluster (can't create an existing volume)
- [ ] docker
  - [x] install docker
  - [x] enable/run docker
  - [ ] ~~set up storage driver~~ skipped, for now
  - [ ] set up volume plugin
  - [x] set up logging driver
- [x] swarm
- [x] adjust swarm's idempotency (when in a swarm, tries to manage it)
- [x] ssh authorized keys
- [x] update pi password
- [x] adjust sshd config NB: 2020-01-17 i forgot what i wanted to adjust on this
  - I am assuning I wanted to disable root passwords for sshd. that is the
    default
- [ ] Fully qualify all the tasks
- [ ] Find a better way to determine the FQCN a given task is in
  - currently using "google search ansible <task>"
  - so long as collection: is never defined in a playbook, it won't be a big
    problem. it will become a problem later when ansible changes how it does
    things. again.
- [ ] power on/off accept groups/ranges as well as individual.
  - using --limit is ideal
- [ ] power status accept individual nodes / groups / ranges
  - using --limit is ideal
- [ ] Improve collection / role reporting
- [ ] Role-ify the things that could(should) be roles
- [ ] Rebuild the glusterfs docker volume plugin for aarch64
- [ ] Set keepalived across the swarm
- [ ] Operate local container repository
