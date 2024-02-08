# URL de descarga de la última versión de Firefox
$url = "https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-US"

# Directorio de instalación actual de Firefox
$installDir = "C:\Program Files\Mozilla Firefox"

# Nombre del desinstalador silencioso
$uninstallExe = "uninstall\helper.exe"

# Descargar el instalador de Firefox
Invoke-WebRequest -Uri $url -OutFile "firefox-latest.exe"

# Desinstalar Firefox actual
Start-Process -FilePath "$installDir\$uninstallExe" -ArgumentList "/S" -Wait

# Instalar la nueva versión de Firefox
Start-Process -FilePath "firefox-latest.exe" -ArgumentList "/S" -Wait

# Eliminar el instalador descargado
Remove-Item -Path "firefox-latest.exe"
