# Define la ruta al Registro relacionada con Adobe Reader
$registryPath = "HKLM:\SOFTWARE\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown"

# Define el valor que controla la creación de procesos secundarios
$valueName = "bToggleAdobeExplosionProtectionEnabled"

# Establece el valor en 0 para deshabilitar la creación de procesos secundarios
Set-ItemProperty -Path $registryPath -Name $valueName -Value 0

# Informa sobre el cambio
Write-Host "La creación de procesos secundarios de Adobe Reader ha sido deshabilitada."
