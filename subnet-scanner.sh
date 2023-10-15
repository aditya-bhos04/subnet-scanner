#!/bin/bash
#This script is made to scan the multiple IP in one command
#You just need to give starting 3 set of the IP and Afterwards it Will Automatically scan all the IP subnets
#Example :- 192.168.1.0/24

scan ()
{
        for test in $(seq 1 254)
        do
                nmap $ip.$test -T5
        done
}

read -p "Enter Your IP Address (Ex :- 192.168.1.0/24) :- " ip
scan $ip         