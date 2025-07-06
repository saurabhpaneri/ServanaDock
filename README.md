# <img src="https://raw.githubusercontent.com/saurabhpaneri/ServanaDock/main/ServanaDock.png" width="48"> ServanaDock

**ServanaDock** is a minimalist Linux GUI for managing Apache and MySQL services. It combines systemd control, Zenity dialogs, and real-time logging—packaged in a simple `.deb` installer.

---

## ✨ Features

- ✅ One-click Start / Stop / Restart for Apache & MySQL  
- 📡 Monitor service status in real time  
- 📜 View logs in your default editor  
- 🔐 Elevates securely via `pkexec`  
- 📦 Packaged as a Debian installer (`.deb`) for easy setup  

---

## 📦 Installation

### 🧲 Download

Grab it from [Releases](https://github.com/saurabhpaneri/ServanaDock/releases) or use:

```bash
wget https://github.com/saurabhpaneri/ServanaDock/releases/download/v1.0/ServanaDock-v1.0.deb

```

### 📥 Install via terminal
```bash
sudo dpkg -i ServanaDock-v1.0.deb
```

If you see missing dependency errors, run:
```bash
sudo apt --fix-broken install
```

ServanaDock requires:

   🔹 zenity

   🔹 xdg-utils

   🔹 dbus-x11 These will auto-install via package dependencies.


## 🖼️ Launcher Setup

Once installed, find the ServanaDock icon on your desktop or in your app grid. If it doesn’t launch:
```bash
chmod +x ~/Desktop/ServanaDock.desktop
gio set ~/Desktop/ServanaDock.desktop metadata::trusted true
```

----

### 🛠 Usage Guide

Click the ServanaDock icon, and choose from the GUI:

<table> <tr> <td><img src="https://raw.githubusercontent.com/saurabhpaneri/ServanaDock/main/screenshots/sdGUImenu.png" width="260"><br><sub><b>Main Menu</b></sub></td> <td><img src="https://raw.githubusercontent.com/saurabhpaneri/ServanaDock/main/screenshots/sdGUInotification.png" width="260"><br><sub><b>Notifications</b></sub></td> <td><img src="https://raw.githubusercontent.com/saurabhpaneri/ServanaDock/main/screenshots/sdGUIlog.png" width="260"><br><sub><b>Log Viewer</b></sub></td> </tr> </table>

🔹 Available Actions

    ✅ Start or stop Apache/MySQL

    📡 Monitor service status

    📜 View real-time logs

----

## 🧑‍💻 For Developers

Scripts live in:

    /usr/local/bin/ServanaDock-wrapper.sh

    /usr/local/bin/ServanaDock-launcher.sh

    /usr/local/bin/server-manager-gui.sh

Policy file:
```bash
/usr/share/polkit-1/actions/com.servanadock.gui.policy
```
Log file:
```bash
~/ServanaDock/logs/ServanaDock.log
```

---

## 💬 Feedback & Contributions

Pull requests are welcome! Feel free to fork, improve, or suggest features via <a href= "https://github.com/saurabhpaneri/ServanaDock/issues">issues.</a>


## 📜 License

Licensed under the MIT License.
