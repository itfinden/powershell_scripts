Start-Transcript -Path "C:\IT-ZGH\TestLog.txt"
$Date = Get-Date
$Tpm = Get-Tpm
$Bitlocker = Get-BitLockerVolume -MountPoint $env:SystemDrive

if($Tpm.TpmPresent -eq 'True' -and $Bitlocker.ProtectionStatus -eq 'off'){
manage-bde -protectors $env:SystemDrive -add -tpm
Enable-BitLocker -MountPoint $env:SystemDrive -UsedSpaceOnly -SkipHardwareTest -RecoveryPasswordProtector
}

Stop-Transcript