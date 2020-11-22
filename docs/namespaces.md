# namespaces

Learning about namespaces and using them manually.

Start a basic process while still using the host mount file system.
```
unshare --user --map-root-user --fork --pid --mount-proc --net  python3 -m http.server
```

Then we can set up the network links
```
ip link add py1 type veth peer py2
ip link set state py1 up
ip link set state py2 up
ip a add 192.168.199.0/31 dev py1
ip a add 192.168.199.1/31 dev py2
ln -s /proc/<pid-of-process>/ns/net /var/run/netns/<uid>
ip link set py2 netns <uid>
```
