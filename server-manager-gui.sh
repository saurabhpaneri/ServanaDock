#!/bin/bash
logfile="/home/pc/ServanaDock/logs/ServanaDock.log"

while true; do
  choice=$(zenity --list --title="ServanaDock" \
    --text="Choose an action for Apache &amp; MySQL:" \
    --column="Action" "Start Servers" "Stop Servers" "Restart Servers" "Check Status" "View Logs" "Exit")


  timestamp=$(date '+%Y-%m-%d %H:%M:%S')

  case "$choice" in
    "Start Servers")
      sudo systemctl start apache2
      sudo systemctl start mysql
      echo "$timestamp - ✅ Started Apache and MySQL" >> "$logfile"
      zenity --info --text="✅ Apache and MySQL started!"
      ;;
    "Stop Servers")
      sudo systemctl stop apache2
      sudo systemctl stop mysql
      echo "$timestamp - 🛑 Stopped Apache and MySQL" >> "$logfile"
      zenity --warning --text="🛑 Apache and MySQL stopped!"
      ;;
    "Restart Servers")
      sudo systemctl restart apache2
      sudo systemctl restart mysql
      echo "$timestamp - 🔁 Restarted Apache and MySQL" >> "$logfile"
      zenity --info --text="🔁 Apache and MySQL restarted!"
      ;;
    "Check Status")
      apache_status=$(systemctl is-active apache2)
      mysql_status=$(systemctl is-active mysql)
      echo "$timestamp - 📡 Checked Status - Apache: $apache_status, MySQL: $mysql_status" >> "$logfile"
      zenity --info --text="📡 Apache: $apache_status\nMySQL: $mysql_status"
      ;;
    "View Logs")
  log_path="/home/pc/ServanaDock/logs/ServanaDock.log"
  if [ -f "$log_path" ]; then
    if command -v xdg-open >/dev/null; then
      runuser -u "$USER" -- env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY xdg-open "$log_path" >/dev/null 2>&1
    else
      zenity --error --text="🚫 Could not open log file. 'xdg-open' not found."
    fi
  else
    zenity --error --text="🚫 Log file not found!"
  fi
  ;;

    "Exit")
      echo "$timestamp - ❌ Exited ServanaDock" >> "$logfile"
      break
      ;;
    *)
      echo "$timestamp - ⚠️ Invalid Option or Closed Window" >> "$logfile"
      break
      ;;
  esac
done

