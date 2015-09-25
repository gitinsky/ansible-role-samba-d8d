This is a very basic role for sharing {{ ext_samba_volume }}/shares/anonymous over smb.

Ports:

```
Port 389 (TCP) - for LDAP (Active Directory Mode)
Port 445 (TCP) - NetBIOS was moved to 445 after 2000 and beyond, (CIFS)
Port 901 (TCP) - for SWAT service (not related to client communication)
netbios-ns	137/tcp				# NETBIOS Name Service
netbios-ns	137/udp
netbios-dgm	138/tcp				# NETBIOS Datagram Service
netbios-dgm	138/udp
netbios-ssn	139/tcp				# NETBIOS session service
netbios-ssn	139/udp
```
