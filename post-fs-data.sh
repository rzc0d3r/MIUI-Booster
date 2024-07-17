#!/system/bin/sh
MODDIR=${0%/*}
rm -rf /data/app/GlobalFashiongallery
rm -rf /data/app/MiCreditInStub
rm -rf /data/app/wps_lite

settings put system low_battery_dialog_disabled 1
settings put global window_animation_scale 0.8
settings put global animator_duration_scale 0.8
settings put global transition_animation_scale 0.8
