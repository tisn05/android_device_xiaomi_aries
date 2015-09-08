#!/system/bin/sh

powermode=`getprop sys.perf.profile`
case "$powermode" in
	"2")
		stop mpdecision
		sleep 0.5
		echo 1 > /sys/devices/system/cpu/cpu0/online
		echo 1 > /sys/devices/system/cpu/cpu1/online
		echo 1 > /sys/devices/system/cpu/cpu2/online
		echo 1 > /sys/devices/system/cpu/cpu3/online
		echo "intelliactive" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
		echo "intelliactive" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
		echo "intelliactive" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
		echo "intelliactive" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
		echo 1728000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
		echo 1728000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
		echo 1728000 > /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
		echo 1728000 > /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
		echo 384000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
		echo 384000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
		echo 384000 > /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
		echo 384000 > /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
		echo 400000000 > /sys/class/kgsl/kgsl-3d0/max_gpuclk
		echo 0 > /sys/devices/system/cpu/sched_mc_power_savings
	;;
	"1")
		start mpdecision
		sleep 0.5
		echo "intelliactive" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
		echo "intelliactive" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
		echo "intelliactive" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
		echo "intelliactive" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
		echo 1566000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
		echo 1566000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
		echo 1566000 > /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
		echo 1566000 > /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
		echo 384000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
		echo 384000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
		echo 384000 > /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
		echo 384000 > /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
		echo 400000000 > /sys/class/kgsl/kgsl-3d0/max_gpuclk
		echo 1 > /sys/devices/system/cpu/sched_mc_power_savings
	;;
	"0")
		start mpdecision
		sleep 0.5
		echo "smartmax" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
		echo "smartmax" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
		echo "smartmax" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
		echo "smartmax" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
		echo 1242000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
		echo 1242000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
		echo 1242000 > /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
		echo 1242000 > /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
		echo 384000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
		echo 384000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
		echo 384000 > /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
		echo 384000 > /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
		echo 320000000 > /sys/class/kgsl/kgsl-3d0/max_gpuclk
		echo 2 > /sys/devices/system/cpu/sched_mc_power_savings
	;;
esac
