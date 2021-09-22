#!/bin/bash
ssh node01 systemctl stop kubelet >/dev/null
sleep 10 >/dev/null
clear
