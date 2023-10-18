#!/bin/bash
#This script is made to scan the multiple IP in one command
#You just need to give starting 3 set of the IP and Afterwards it Will Automatically scan all the IP subnets
#It will store the output of the file in nmap.log
#Example :- 192.168.1.0/24

scan ()
{
        for set1 in $(seq 1 254)
        do
        {
                for set2 in $(seq 1 254)
                do
                        nmap $ip.$set1.$set2 -T5 | tee nmap.log
                done
        }
        done
}

read -p "Enter Your IP Address (Ex :- 192.168.1) :- " ip
scan $ip                                                                                                                                                                                
