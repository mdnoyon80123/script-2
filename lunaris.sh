repo init -u https://github.com/ProjectInfinity-X/manifest.git -b 16 -g default,-mips,-darwin,-notdefault --git-lfs

echo "-----------------------------"
echo "Repo init completed"
echo "-----------------------------"

/opt/crave/resync.sh

echo "------------------------"
echo "Source syncing completed"
echo "------------------------"

git clone https://github.com/mdnoyon80123/android_device_oneplus_hotdogb.git -b lineage-23.2 device/oneplus/hotdogb
git clone https://github.com/LineageOS/android_device_oneplus_sm8150-common.git -b lineage-23.2 device/oneplus/sm8150-common
git clone https://github.com/LineageOS/android_kernel_oneplus_sm8150.git -b lineage-23.2 kernel/oneplus/sm8150
git clone https://github.com/TheMuppets/proprietary_vendor_oneplus_hotdogb.git -b lineage-23.2 vendor/oneplus/hotdogb
git clone https://github.com/TheMuppets/proprietary_vendor_oneplus_sm8150-common.git -b lineage-23.2 vendor/oneplus/sm8150-common
git clone https://github.com/LineageOS/android_hardware_oplus.git -b lineage-23.2 hardware/oplus

echo "---------------------"
echo "Trees clone completed"
echo "---------------------"

source build/envsetup.sh

echo "---------------------------"
echo "Build environment setup completed"
echo "---------------------------"

lunch infinity_hotdogb-ap3a-userdebug

m bacon
