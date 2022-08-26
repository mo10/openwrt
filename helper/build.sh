#!/bin/sh
cat ./HATLab-GateBoard-One.feeds > ./feeds.conf.default
./scripts/feeds update -a
./scripts/feeds install -a
rm -f ./.config*
touch ./.config
cat ./HATLab-GateBoard-One.config > ./.config
make defconfig
make download -j8
make -j8
