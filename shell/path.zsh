# VS Code "code" command before Cursor
export PATH=/mnt/c/Users/andib/AppData/Local/Programs/Microsoft\ VS\ Code/bin:$PATH
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/snap/bin
export PATH=$HOME/sdks/flutter/bin:$PATH

# Android (flutter) Entwicklung
# Android SDK von Windows verwenden
# export ANDROID_SDK_ROOT=/mnt/c/Users/andib/AppData/Local/Android/Sdk
# PATH=$ANDROID_SDK_ROOT/emulator:$PATH
# Android SDK von Linux verwenden
# Für die flutter Entwicklung hat sich herausgestellt, dass die Android SDK von Windows
# nicht verwendet werden kann, bzw. flutter hot reload damit nicht funktioniert aufgrund
# des host port bindings
# daher benutze ich jetzt den Android emulator auf Windows, lasse auch den
# adb server (tcp und -a) auf Windows laufen und benutze dann aber adb auf
# Linux (installiert über Android Studio), welches sich mit dem adb server auf Windows verbindet (ADB_SERVER_SOCKET)
export ADB_SERVER_SOCKET=tcp:192.168.178.142:5037
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/tools/bin:$ANDROID_SDK_ROOT/platform-tools:$PATH
export PATH="$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin"
# Java vom Android Studion von Windows verwenden
# export JAVA_HOME="/mnt/c/Program Files/Android/Android Studio/jbr"
# mit wrapper scripten da symbolische Links nicht funktionieren
# export PATH="$HOME/bin/java-wrappers:$PATH"
