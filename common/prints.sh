#!/system/bin/sh

# MagiskHide Props Config
# By Didgeridoohan @ XDA Developers

PRINTSV=6
PRINTSTRANSF=1

PRINTSFILE=/sdcard/printslist

# Certified fingerprints
PRINTSLIST="
Google Nexus 6 (7.1.1)=google/shamu/shamu:7.1.1/N8I11B/4171878:user/release-keys
Google Pixel (8.1.0)=google/sailfish/sailfish:8.1.0/OPM2.171019.029/4657601:user/release-keys
Google Pixel 2 (P DP1)=google/walleye/walleye:P/PPP1.180208.014/4633861:user/release-keys
Google Pixel 2 XL (8.1.0)=google/taimen/taimen:8.1.0/OPM1.171019.013/4474084:user/release-keys
HTC 10 (6.0.1)=htc/HTCOneM10vzw/htc_pmewl:6.0.1/MMB29M/774095.8:user/release-keys
Huawei Mate 10 Pro (8.0.0)=HUAWEI/BLA-L29/HWBLA:8.0.0/HUAWEIBLA-L29S/137(C432):user/release-keys
Motorola Moto G4 (7.0)=motorola/athene/athene:7.0/NPJS25.93-14-13/3:user/release-keys
Motorola Moto G5 (7.0)=motorola/cedric/cedric:7.0/NPPS25.137-15-11/11:user/release-keys
Motorola Moto G5 Plus (7.0)=motorola/potter_n/potter_n:7.0/NPNS25.137-33-11/11:user/release-keys
Nvidia Shield K1 (7.0)=nvidia/sb_na_wf/shieldtablet:7.0/NRD90M/1928188_1065.2559:user/release-keys
OnePlus 3T (8.0.0)=OnePlus/OnePlus3/OnePlus3T:8.0.0/OPR6.170623.013/12041042:user/release-keys
OnePlus 5T (7.1.1)=OnePlus/OnePlus5T/OnePlus5T:7.1.1/NMF26X/12152312:user/release-keys
OnePlus 5T (8.0.0)=OnePlus/OnePlus5T/OnePlus5T:8.0.0/OPR1.170623.032/02040656:user/release-keys
Samsung Galaxy Grand Prime (5.0.2)=samsung/fortuna3gdtvvj/fortuna3gdtv:5.0.2/LRX22G/G530BTVJU1BPH4:user/release-keys
Samsung Galaxy Note 3 (7.1.1)=samsung/greatltexx/greatlte:7.1.1/NMF26X/N950FXXU1AQHA:user/release-keys
Samsung Galaxy Note 4 (6.0.1)=samsung/trltexx/trlte:6.0.1/MMB29M/N910FXXS1DQH9:user/release-keys
Samsung Galaxy Note 5 (7.0)=samsung/nobleltejv/noblelte:7.0/NRD90M/N920CXXU3CQH6:user/release-keys
Samsung Galaxy S6 (5.0.2)=samsung/zerofltexx/zeroflte:5.0.2/LRX22G/G920FXXU1AOD4:user/release-keys 
Samsung Galaxy S7 (7.0)=samsung/heroltexx/herolte:7.0/NRD90M/G930FXXU2DRB6:user/release-keys
Samsung Galaxy S7 Edge (7.0)=samsung/hero2ltexx/hero2lte:7.0/NRD90M/G935FXXU2DRB6:user/release-keys 
Samsung Galaxy S8 Plus (7.0)=samsung/dream2ltexx/dream2lte:7.0/NRD90M/G955FXXU1AQGB:user/release-keys
Samsung Galaxy S8 Plus (8.0.0)=samsung/dream2ltexx/dream2lte:8.0.0/R16NW/G955FXXU1CRC7:user/release-keys
Sony Xperia X Performance (8.0.0)=Sony/F8131/F8131:8.0.0/41.3.A.2.99/1455830589:user/release-keys
Sony Xperia XZ (8.0.0)=Sony/F8331/F8331:8.0.0/41.3.A.2.99/1455830589:user/release-keys
Sony Xperia XZ1 Compact (8.0.0)=Sony/G8441/G8441:8.0.0/47.1.A.12.119/1601781803:user/release-keys
Sony Xperia Z3 (6.0.1)=Sony/D6633/D6633:6.0.1/23.5.A.1.291/2769308465:user/release-keys
Vodafone Smart Ultra 6 (5.1.1)=Vodafone/P839V55/P839V55:5.1.1/LMY47V/20161227.134319.15534:user/release-keys
Xiaomi Mi 5 (7.0)=Xiaomi/gemini/gemini:7.0/NRD90M/V9.2.1.0.NAAMIEK:user/release-keys
Xiaomi Mi 5S (7.0)=Xiaomi/capricorn/capricorn:7.0/NRD90M/V9.2.1.0.NAGMIEK:user/release-keys
Xiaomi Mi 5S Plus (6.0.1)=Xiaomi/natrium/natrium:6.0.1/MXB48T/V8.5.2.0.MBGMIED:user/release-keys
Xiaomi Mi 6 (7.1.1)=Xiaomi/sagit/sagit:7.1.1/NMF26X/V8.2.17.0.NCACNEC:user/release-keys
Xiaomi Mi 6 (8.0.0)=Xiaomi/sagit/sagit:8.0.0/OPR1.170623.027/V9.2.3.0.OCAMIEK:user/release-keys
Xiaomi Redmi 4X (6.0.1)==Xiaomi/santoni/santoni:6.0.1/MMB29M/V8.5.4.0.MAMCNED:user/release-keys.
Xiaomi Redmi Note 3 Pro (6.0.1)=Xiaomi/kenzo/kenzo:6.0.1/MMB29M/V8.2.1.0.MHOCNDL:user/release-keys
Xiaomi Redmi Note 4/4X (7.0)=xiaomi/mido/mido:7.0/NRD90M/V9.2.1.0.NCFMIEK:user/release-keys
ZTE Axon 7 (7.1.1)=ZTE/P996A01_N/ailsa_ii:7.1.1/NMF26V/20171211.005949:user/release-keys
Zuk Z2 Pro (7.0)=ZUK/z2_row/z2_row:7.0/NRD90M/2.5.435_170525:user/release-keys
"

if [ -f "$PRINTSFILE" ]; then
	FLINE=$(head -1 $PRINTSFILE)
	if [ "$FLINE" ]; then
		sed -i '1s/^/\n/' $PRINTSFILE
	fi
	LISTFILE=$(cat $PRINTSFILE)
	PRINTSLIST=$PRINTSLIST$LISTFILE
fi
