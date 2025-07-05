# <img src="https://raw.githubusercontent.com/saurabhpaneri/ServanaDock/main/ServanaDock.png" width="48"> ServanaDock

ServanaDock is a lightweight Linux GUI tool for managing Apache and MySQL services with one click. It features a Zenity-powered interface, systemd integration, real-time logging, and an easy `.deb` installer.

---

## ✨ Features

- ✅ Start / Stop / Restart Apache & MySQL
- 📡 Monitor service status
- 📝 View logs in your default editor
- 🔐 Uses `pkexec` for secure privilege elevation
- 📦 Packaged as a `.deb` for easy installation

---

## 📦 Installation

### Download

From the [Releases](https://github.com/saurabhpaneri/ServanaDock/releases):

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

    zenity

    xdg-utils

    dbus-x11 These will auto-install via package dependencies.


## 🖼️ Launcher Setup

Once installed, find the ServanaDock icon on your desktop or in your app grid. If it doesn’t launch:
```bash
chmod +x ~/Desktop/ServanaDock.desktop
gio set ~/Desktop/ServanaDock.desktop metadata::trusted true
```

----

### 🛠 Usage Guide

Click the ServanaDock icon, and choose from the GUI:

<img src="https://raw.githubusercontent.com/saurabhpaneri/ServanaDock/main/screenshots/sdGUImenu.png" alt="GUI menu" width="500">

<img src="https://raw.githubusercontent.com/saurabhpaneri/ServanaDock/main/screenshots/sdGUInotification.png" alt="Notification" width="500">

<img src="https://raw.githubusercontent.com/saurabhpaneri/ServanaDock/main/screenshots/sdGUIlog.png" alt="Clean Log" width="500">

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
/home/USER/ServanaDock/logs/ServanaDock.log
```

---

💬 Feedback & Contributions

Pull requests are welcome! Feel free to fork, improve, or suggest features via <a href= "https://github.com/saurabhpaneri/ServanaDock/issues">issues.</a>
