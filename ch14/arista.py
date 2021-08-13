#!/usr/bin/env python3
import napalm
driver = napalm.get_network_driver('eos')
with driver ('18.169.132.180', 'admin', '[Password1]') as device:
    print(device.get_facts())