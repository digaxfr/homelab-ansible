# coredns

## Notes

```
curl -O -L https://github.com/coredns/coredns/releases/download/v1.8.3/coredns_1.8.3_linux_amd64.tgz

tar zxvf coredns_1.8.3_linux_amd64.tgz -C /usr/local/bin
```

```
# CoreDNS file - Corefile

.:1053 {
    dns64 {
        prefix 64:ff9b::/96
        translate_all
    }
    forward . 1.1.1.1 
    log
    errors
    cache
}

fkmvm.dchin.dev:1053 {
    hosts fkmvm.dchin.dev.hosts fkmvm.dchin.dev {
        ttl 60
    }
    log
    errors
    cache
}
```
