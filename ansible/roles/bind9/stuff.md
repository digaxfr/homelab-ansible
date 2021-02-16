# stuff

Stubbed notes.

```
apt-get install bind9 bind9-utils bind9-dnsutils
```

```
        dnssec-validation yes;
        dnssec-enable yes;
        bindkeys-file "/etc/bind/bind.keys";

        allow-query {
                any;
        };

        dns64 64:ff9b::/96 {
                clients {
                        !localhost;
                        any;
                };
                exclude {
                        ::0/0;
                };
        };
```
