set -x
set -e
sudo cowbuilder update
gbp buildpackage --git-pbuilder
sudo debi
make -B -C /home/hakan/src/avr/nolle07 stampable3.srec
debsign
debrelease
