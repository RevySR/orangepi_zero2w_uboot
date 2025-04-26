# orangepi zero2w

## Compile U-Boot
```bash
bash build.sh
```

## Enter FEL-mode via SDCard

```bash
# In Debian, install sunxi-tools
sudo apt-get install -y sunxi-tools
sudo dd if=/usr/share/sunxi-tools/fel-sdboot.sunxi of=/dev/mmcblk0 bs=1024 seek=8
sync
```

## Installing on SPI flash via USB in FEL mode
```bash
sudo apt-get install -y sunxi-tools
sudo sunxi-fel spiflash-write 0 u-boot/u-boot-sunxi-with-spl.bin
```

## Booting via the USB(-OTG) FEL mode
```bash
sudo apt-get install sunxi-tools
sudo sunxi-fel uboot u-boot/u-boot-sunxi-with-spl.bin
```

