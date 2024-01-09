# BGP E MP-BGP
## Configuration
```
!R1
configure terminal
interface f0/1
ip address 192.10.10.1 255.255.255.0
no shutdown
exit
interface f0/0
ip address 200.1.2.1 255.255.255.0
no shutdown
exit
end
write


!R2A
configure terminal
interface f0/0
ip address 200.1.2.2 255.255.255.0
no shutdown
exit
interface f0/1
ip address 200.20.20.2 255.255.255.0
no shutdown
exit
interface f1/0
ip address 192.20.0.1 255.255.255.0
no shutdown
exit
end
write


!R2B
configure terminal
interface f0/0
ip address 200.3.2.2 255.255.255.0
no shutdown
exit
interface f0/1
ip address 200.20.20.22 255.255.255.0
no shutdown
exit
interface f1/0
ip address 192.20.1.1 255.255.255.0
no shutdown
exit
end
write


!R3
configure terminal
interface f0/0
ip address 200.3.2.3 255.255.255.0
no shutdown
exit
interface f0/1
ip address 192.30.30.1 255.255.255.0
no shutdown
exit
end
write

!R1
configure terminal
router bgp 1001
neighbor 200.1.2.2 remote-as 1002
network 192.10.10.0
end
write


!R2A
configure terminal
interface f0/1
ip ospf 1 area 0
exit
router bgp 1002
neighbor 200.1.2.1 remote-as 1001
neighbor 200.20.20.22 remote-as 1002
neighbor 200.20.20.22 next-hop-self
aggregate-address 192.20.0.0 255.255.254.0 summary-only
redistribute ospf 1
network 192.20.0.0
end
write


!R2B
configure terminal
interface f0/1
ip ospf 1 area 0
interface f1/0
ip ospf 1 area 0
exit
router bgp 1002
neighbor 200.3.2.3 remote-as 1003
neighbor 200.20.20.2 remote-as 1002
neighbor 200.20.20.2 next-hop-self
aggregate-address 192.20.0.0 255.255.254.0 summary-only
redistribute ospf 1
end
write


!R3
configure terminal
router bgp 1003
neighbor 200.3.2.2 remote-as 1002
network 192.30.30.0
end
write

```

## commands:
```
show bgp summary
show ip route
show ip bgp 
```

1. **What can you conclude about the connectivity obtained? All routers know all networks of all AS?**
- router bgp 1001, router bgp 1002, and router bgp 1003: These commands set up the Border Gateway Protocol (BGP) routing process in each AS with the specified AS number 
- neighbor 200.1.2.2 remote-as 1002 and similar commands: These commands set up BGP neighbors and specify the remote AS number
- network 192.10.10.0 and similar commands: These commands specify the networks that should be advertised by the BGP process
- ip ospf 1 area 0 and similar commands: These commands enable OSPF on the selected interface and assign it to a specific OSPF area
- redistribute ospf 1: This command allows the BGP process to advertise routes learned by the OSPF process
21. **Why routes to some networks are missing?**
- The BGP routes might not be synchronized with the IGP routes
22. **Why some routes are marked as valid in the BGP table, but not chosen as best and not placed on the routing table?**
- BGP uses multiple attributes to select the best path, such as weight, local preference, AS path length, origin type, and others.
23. **Identify the next-hop of all BGP routes, and explain why some routes cannot be activated.**
-  The next-hop of a BGP route is identified in the BGP table. If a route cannot be activated, it could be due to the next hop being unreachable 
24. **How the BGP's NEXT-HOP attribute (from an external route) is propagated inside the AS?**
- In BGP, the NEXT-HOP attribute is used to identify the IP address that should be used to reach a destination network. When a BGP speaker advertises a route to an iBGP peer, the NEXT-HOP attribute is not changed by default.
- However, the "next-hop-self" command can be used to change this behavior and set the next-hop to the IP address of the iBGP speaker advertising the route.

31. **What can you conclude about the connectivity obtained and how the BGP's NEXT-HOP attribute is now propagated inside the AS?**
- The BGP processes, the BGP's NEXT-HOP attribute for routes propagated within AS1002 will be the IP address of the router (Router2A or Router2B) that is advertising the route. This change should improve the connectivity within the AS, as all routers will be able to reach the next-hop for any route they learn.
32. **Explain the differences of the administrative distance of networks learned via BGP.**
- Administrative distance is a measure of the trustworthiness of a routing information source. In BGP, routes learned from eBGP (External BGP) have a default administrative distance of 20, while routes learned from iBGP (Internal BGP) have a default administrative distance of 200.
- The lower the administrative distance, the more trustworthy the source. This means that, all other factors being equal, a router will prefer routes learned from eBGP over those learned from iBGP.
33.  Identify the path vector (AS-PATH attribute) of each route learned via BGP, namely, the AS number order.
- The AS-PATH attribute in BGP is a well-known mandatory attribute that contains a list of AS numbers that a route has traversed. When a BGP router propagates a route to its peers, it prepends its own AS number to the AS-PATH attribute.
- By examining the AS-PATH attribute of a route, you can determine the path that the route has taken through the network.
- In an iBGP environment, the AS-PATH attribute is not changed when propagating routes to iBGP peers.
- The leftmost number being the AS that advertised the route and the rightmost number being the AS of the destination network.

41. **What can you conclude about the established BGP neighbor relations are created and how BGP packets are exchanged?**
- BGP communication uses four message types: OPEN, KEEPALIVE, UPDATE, and NOTIFICATION. By analyzing the captured BGP packets, you can observe the establishment of BGP neighbor relationships and the exchange of BGP packets. The OPEN messages are used to establish BGP sessions and negotiate session parameters. KEEPALIVE messages are used to confirm that the BGP neighbors are still active. UPDATE messages are used to advertise network reachability information (NLRI) and path attributes. NOTIFICATION messages are used to report errors and end the BGP session.
42. **Explain the purpose of OPEN and KEEPALIVE BGP messages.**
- OPEN messages are used to initiate a BGP session and negotiate session parameters. They contain the router ID, BGP version, AS number of the originating router, hold time, and BGP identifier of the sender. The hold time indicates the maximum interval between successive keepalive messages.
- KEEPALIVE messages are sent at regular intervals (every 60 seconds by default) to confirm that the BGP neighbors are still active. If a keepalive message is not received within the hold time, the BGP session is considered down.
43. **Identify the exchanged UPDATE BGP messages and explain how are they exchanged.**
- UPDATE messages are used to advertise network reachability information (NLRI) and path attributes. Each UPDATE message contains one or more NLRIs, which represent the IP network prefixes that are being advertised, and zero or more path attributes, which provide additional information about the path to the NLRIs. Path attributes include the AS_PATH, NEXT_HOP, ORIGIN, and others.
44. **Explain how IPv4 routes are announced to remote BGP peers by analyzing the UPDATE messages and the NLRI field of each one.**
- IPv4 routes are announced to remote BGP peers using the UPDATE message. The Network Layer Reachability Information (NLRI) field of the UPDATE message contains the IP network prefixes (IPv4 routes) that are being advertised.
45. **Identify and explain the purpose of the path attributes sent within UPDATE BGP messages with a NLRI field.**
- Path attributes provide additional information about the path to the network prefixes advertised in the NLRI field. Some common path attributes include AS_PATH, NEXT_HOP, ORIGIN, and others. The AS_PATH attribute contains a sequence of AS numbers representing the path that the route has traversed through the network. The NEXT_HOP attribute specifies the IP address of the next hop for the route. The ORIGIN attribute indicates where the route was learned. 
46. **Identify the path attribute NEXT-HOP and explain their values.**
- The NEXT_HOP attribute in BGP specifies the IP address of the next hop for the route. Its value is the IP address of the router that should be used to forward packets towards the destination network. 
47. **Identify an UPDATE BGP message with a path attribute AS-PATH with more than one AS number and explain its purpose and the order of the AS numbers on the path.**
- The AS_PATH attribute in BGP contains a sequence of AS numbers that represent the path that the route has traversed through the network. The leftmost number is the AS that originally advertised the route, and the rightmost number is the AS of the destination network. If an UPDATE message contains an AS_PATH attribute with more than one AS number, it means that the route has traversed multiple ASes.
48. **Identify UPDATE BGP messages with path attributes ORIGIN with different values. Explain the reason for the IGP or INCOMPLETE values.**
- The ORIGIN attribute in BGP indicates how the route was learned. The possible values are IGP (learned from an interior gateway protocol), EGP (learned from an exterior gateway protocol), and INCOMPLETE (partially learned from an external source).z
51. **Explain how a network unreachability is announced to a BGP peer (check Withdrawn Routes field).**
- When a network becomes unreachable, such as when an interface is shut down, the router sends an UPDATE message with the NLRI field set to the prefix of the unreachable network. This effectively withdraws the network from the BGP table of the neighboring routers.
52. **Explain also how a newly available network is announced to a BGP peer.**
- When a new network becomes available, the router sends an UPDATE message with the NLRI field set to the prefix of the newly available network. This adds the network to the BGP table of the neighboring routers
61. **Explain how the network aggregate is announced to the the BGP peers (identify the relevant BGP attributes AGGREGATTOR and ATOMIC_AGGREGATOR).**
- 


# MP-BGP
config:
```
!R1
router bgp 1001
address-family ipv4 unicast
neighbor 200.1.2.2 remote-as 1002
network 192.10.10.0
address-family ipv6 unicast
neighbor 2001:1:2::2 remote-as 1002
network 2001:10:10::/64
end
write

!R2A
conf t
interface FastEthernet0/1
ip address 192.168.1.2 255.255.255.0 secondary
ipv6 ospf 1 area 0 
exit
router bgp 1002
address-family ipv4 unicast
neighbor 200.1.2.1 remote-as 1001
neighbor 200.20.20.22 remote-as 1002
neighbor 200.20.20.22 next-hop-self
redistribute ospf 1
network 192.20.0.0
address-family ipv6 unicast
neighbor 2001:1:2::1 remote-as 1001
neighbor 2001:20:20::22 remote-as 1002
neighbor 2001:20:20::22 next-hop-self
redistribute ospf 1
network 2001:20:0::/64
network 2001:20:20::/64
end
write

!R2B
conf t
 interface FastEthernet0/1
ipv6 ospf 1 area 0
ip address 192.168.1.22 255.255.255.0 secondary
interface FastEthernet1/0
ipv6 ospf 1 area 0 
exit
router bgp 1002
address-family ipv4 unicast
neighbor 200.3.2.3 remote-as 1003
neighbor 200.20.20.2 remote-as 1002
neighbor 200.20.20.2 next-hop-self
redistribute ospf 1
address-family ipv6 unicast
neighbor 2001:3:2::3 remote-as 1003
neighbor 2001:20:20::2 remote-as 1002
neighbor 2001:20:20::2 next-hop-self
redistribute ospf 1
network 2001:20:1::/64 
network 2001:20:20::/64
end
write

!R3
conf t
router bgp 1003
 address-family ipv4 unicast
 neighbor 200.3.2.2 default-originate
neighbor 200.3.2.2 remote-as 1002
network 192.30.30.0
address-family ipv6 unicast
neighbor 2001:3:2::2 default-originate
neighbor 2001:3:2::2 remote-as 1002
network 2001:30:30::/64
end
write

!R2A and R2B
conf t
ip prefix-list pOut-priv-default seq 10 deny 10.0.0.0/8 le 32
ip prefix-list pOut-priv-default seq 12 deny 172.16.0.0/12 le 32
ip prefix-list pOut-priv-default seq 14 deny 192.168.0.0/16 le 32
ip prefix-list pOut-priv-default seq 16 deny 0.0.0.0/0
ip prefix-list pOut-priv-default seq 100 permit 0.0.0.0/0 le 32
ipv6 prefix-list pOut-default seq 16 deny ::/0
ipv6 prefix-list pOut-default seq 100 permit ::/0 le 128
end
write

!R2A
conf t
router bgp 1002
address-family ipv4 unicast
neighbor 200.1.2.1 prefix-list pOut-priv-default out
exit
address-family ipv6 unicast
neighbor 2001:1:2::1 prefix-list pOut-default out
end
write

!R2B
conf t
router bgp 1002
address-family ipv4 unicast
neighbor 200.3.2.3 prefix-list pOut-priv-default out
exit
address-family ipv6 unicast
neighbor 2001:3:2::3 prefix-list pOut-default out
end
write


```
