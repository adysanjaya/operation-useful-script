#!/bin/bash
#save current certificate
certbot certificates > /root/certificate.txt

#run phyton scrypt
python3 /root/cek_expire_ssl.py

# Note :
# UBUNTU SERVER
# Script ini digunakan jika server tidak bisa diakses langsung oleh ssl atau akses publik tertutup oleh firewall
# Alert dibuat agar jika sudah mendekati masa expire, firewall bisa dibuka sementara untuk renewal