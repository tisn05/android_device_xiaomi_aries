#!/system/bin/sh

powermode=`getprop sys.perf.profile`
case "$powermode" in
	"2")
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
		echo -e "900\n1000\n1150\n" > /sys/devices/system/cpu/cpu0/cpufreq/gpu_mv_table
		echo "192000 875000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "384000 900000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "486000 900000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "594000 900000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "702000 900000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "810000 900000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "918000 925000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1026000 950000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1134000 975000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1242000 987500" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1350000 1000000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1458000 1037500" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1566000 1062500" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1674000 1100000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1728000 1125000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
	;;
	"1")
		echo "ondemand" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
		echo "ondemand" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
		echo "ondemand" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
		echo "ondemand" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
		echo 1566000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
		echo 1566000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
		echo 1566000 > /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
		echo 1566000 > /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
		echo 192000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
		echo 192000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
		echo 192000 > /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
		echo 192000 > /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
		echo 400000000 > /sys/class/kgsl/kgsl-3d0/max_gpuclk
		echo 1 > /sys/devices/system/cpu/sched_mc_power_savings
		echo -e "900\n1000\n1100\n" > /sys/devices/system/cpu/cpu0/cpufreq/gpu_mv_table
		echo "192000 850000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "384000 875000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "486000 875000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "594000 875000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "702000 875000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "810000 887500" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "918000 900000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1026000 925000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1134000 937500" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1242000 950000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1350000 962500" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1458000 975000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1566000 1000000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1674000 1025000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1728000 1050000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
	;;
	"0")
		echo "smartmax_eps" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
		echo "smartmax_eps" > /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
		echo "smartmax_eps" > /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
		echo "smartmax_eps" > /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
		echo 1242000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
		echo 1242000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
		echo 1242000 > /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
		echo 1242000 > /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
		echo 192000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
		echo 192000 > /sys/devices/system/cpu/cpu1/cpufreq/scaling_min_freq
		echo 192000 > /sys/devices/system/cpu/cpu2/cpufreq/scaling_min_freq
		echo 192000 > /sys/devices/system/cpu/cpu3/cpufreq/scaling_min_freq
		echo 320000000 > /sys/class/kgsl/kgsl-3d0/max_gpuclk
		echo 2 > /sys/devices/system/cpu/sched_mc_power_savings
		echo -e "900\n980\n1050\n" > /sys/devices/system/cpu/cpu0/cpufreq/gpu_mv_table
		echo "192000 850000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "384000 875000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "486000 875000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "594000 875000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "702000 875000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "810000 887500" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "918000 900000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1026000 925000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1134000 937500" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1242000 950000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1350000 962500" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1458000 975000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1566000 1000000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1674000 1025000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
		echo "1728000 1050000" > /sys/devices/system/cpu/cpufreq/vdd_table/vdd_levels
	;;
esac

# Performance: CPU --> PVS3 & GPU --> Normal
# Balance:     CPU --> PVS6 & GPU --> PowerSave
# PowerSave:   CPU --> PVS6 & GPU --> PowerSaver

