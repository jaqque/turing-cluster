#!/bin/sh

# TODO: find a way (broadcast ping?) to load ARP table
ping -b 192.168.1.255 -c 2
arp | grep b8:27:eb
