#!/bin/bash

if [ -f vendor_boot.img.lz4 ];then
	lz4 -B6 --content-size -f vendor_boot.img.lz4 vendor_boot.img
fi

dd if=vendor_boot.img of=vb.img bs=4k count= iflag=count_bytes

if [ ! -f phh.pem ];then
    openssl genrsa -f4 -out phh.pem 4096
fi
