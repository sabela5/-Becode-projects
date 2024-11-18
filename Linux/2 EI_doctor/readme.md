## Project Overview

El Doctor is a custom-built monitoring tool designed to track the health and performance of a Linux machine. Unlike pre-made solutions with complex dashboards, this tool provides a tailored experience, offering flexibility to monitor what matters most. It’s a script-first, creative challenge aimed at building a robust understanding of monitoring systems and scripting.

The project’s goal is to explore creativity and functionality, allowing you to collect, store, and act on system metrics effectively.


## Features

The script is designed to provide the following features:

1. **Interactive Interface**  
   - A terminal-based interface (using `curses` or similar) for real-time monitoring.

2. **Metrics Collection**  
   - Hourly collection of system metrics such as:
     - CPU usage
     - Memory usage
     - Disk space
     - Network activity
     - System uptime
   - Metrics are stored in a CSV file for easy analysis.

3. **Critical Alerts**  
   - Sends email notifications when the system state becomes critical (e.g., low RAM or high CPU usage).

4. **Automated Reporting**  
   - Weekly system reports are generated and sent via email summarizing:
     - Average system metrics
     - Peak resource usage
     - Recommendations for optimization

5. **Automation**  
   - Uses `cron` to schedule:
     - Hourly metrics collection
     - Weekly report generation and email dispatch.


## setting sh file

2, creating sh file using 
touch monitoring.sh 
chmod +x monitoring.sh

- **CPU Usage Function**:
    
    `get_cpu_usage() {     mpstat | grep 'all' | awk '{print $3}' }`
    
- **Memory Usage Function**:

    
    `get_memory_usage() {     free -m | awk 'NR==2{printf "Memory Usage: %.2f%\n", $3*100/$2 }' }`
    
- **Disk Usage Function**:
    
    `get_disk_usage() {     df -h | grep '^/dev/' | awk '{print $5 " used on " $1}' }`
    
- **Network Traffic Function**:
    
    `get_network_traffic() {     ip -s link }`
    
- **System Load Function**:
	`get_system_load() {     uptime | awk '{print $10}' }`
    
- **Processes and Services Function**:
- 
	    get_process_status() { # Replace "<process_name>" with actual process names ps aux | grep -E "sshd|cron|systemd|nginx|mysql|rsyslog|rsync|NetworkManager" | grep -v grep }
  *explanation 
	- `ps aux`: Lists all processes.
	- `grep -E "sshd|cron|systemd|nginx|mysql|rsyslog|rsync|NetworkManager"`: Searches for any of these   processes.
	- `grep -v grep`: Excludes the grep command itself from the results.
 **Uptime and Boot Time Function**:
    
    `get_uptime() {     uptime -p }  get_boot_time() {     who -b | awk '{print $3, $4}' }`
    
- **System Logs for Critical Errors**:
    
    `check_critical_logs() {     grep "error" /var/log/syslog }

  ## To store data redirect each metrics in to   csv file
    
	log_to_csv() {
	    timestamp=$(date "+%Y-%m-%d %H:%M:%S")
	    cpu_usage=$(get_cpu_usage)
	    memory_usage=$(get_memory_usage)
	    disk_usage=$(get_disk_usage)
	    echo "$timestamp, $cpu_usage, $memory_usage, $disk_usage" >>  metrics_log.csv

    ## Add an Email Alert Function

Include a function to send an alert email when thresholds are exceeded. Make sure the `mail` command is available on your system. If not, install it:
> sudo apt-get install mailutils
> Add the following fun
> send_alert() {
    local subject="Alert: Critical System State"
    local body="The system is experiencing high resource usage."
    echo "$body" | mail -s "$subject" email@example.com
}
    
