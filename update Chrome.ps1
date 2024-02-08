$path1 = 'HKLM:\SOFTWARE\Policies\Google\Chrome'
 
New-item -Path $path1 -Force
 
New-ItemProperty -Path $path1 -Name 'BlockThirdPartyCookies' -Value 1 -PropertyType DWord -Force
 
New-ItemProperty -Path $path1 -Name 'PasswordManagerEnabled' -Value 0 -PropertyType DWord -Force
 
New-ItemProperty -Path $path1 -Name 'BackgroundModeEnabled' -Value 0 -PropertyType DWord -Force