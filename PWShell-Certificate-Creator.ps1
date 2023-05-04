#   LICENSE:
#
#   This is a piece of software in oranetreefrog4's PWShell Toolset on GitHub at: https://github.com/orangetreefrog4
#   Copyright (C) 2023  Liam Owen/orangetreefrog4
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <https://www.gnu.org/licenses/>.
clear
Write-Output -InputObject "This software is part of orangereefrog4's PWShell Toolset
Copyright (C) 2023  Liam Owen/orangetreefrog4
This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'.
This is free software, and you are welcome to redistribute it
under certain conditions; type `show c' for details."
Start-Sleep -Seconds 1
clear
$null = ""
Write-Output -InputObject "Welcome to orangetreefrog4's Certificate Creator"
Start-Sleep -Seconds 1
clear
Read-Host -Prompt "Name
" -OutVariable "certname"
$certstorepath = ""
clear
Read-Host -Prompt "(Default is cert:\CurrentUser\My)
Path
" -OutVariable "certstorepath"
if ($null -eq $certstorepath)
{
$certstorepath = "cert:\CurrentUser\My"
}
$certprovider = ""
clear
Read-Host -Prompt "(look at documentation at: 
[https://learn.microsoft.com/en-us/powershell/module/pki/new-selfsignedcertificate?view=windowsserver2022-ps#-provider],
use your own, or don't input and use the default [MS SKSP])
Provider
" -OutVariable "certprovider"
if ($null -eq $certprovider)
{
$certprovider = "Microsoft Software Key Storage Provider"
}
$certsubjectinput = ""
clear
Read-Host -Prompt "(Basically the description)
Subject
" -OutVariable "certsubjectinput"
$certsubject = ($certsubjectinput," -- Made using orangetreefrog4's certificate creator on GitHub at [https://github.com/orangetreefrog4/PWShell-Certificate-creator]")
$certtype = ""
clear
Read-Host -Prompt "(Types: Custom, CodeSigningCert, DocumentEncryptionCert, SSLServerAuthentication, DocumentEncryptionCertLegacyCsp)
Lastly, what type of certificate is this?
" -OutVariable $certtype
if ($null -eq $certtype)
{
$certtype = "Custom"
}
clear
Write-Verbose -Verbose "Recalling inputs...
[=         ]"
Start-Sleep -Milliseconds 500
Write-Verbose -Verbose "Checking for mistakes...
[====      ]"
Start-Sleep -Milliseconds 500
Write-Verbose -Verbose "Inserting responses...
[======    ]"
Start-Sleep -Milliseconds 500
Write-Verbose -Verbose "Creating...
[========  ]"
Start-Sleep -Milliseconds 500
Write-Verbose -Verbose "Finalising...
[==========]"
Start-Sleep -Milliseconds 500
New-SelfSignedCertificate -FriendlyName $certname -CertStoreLocation $certstorepath -Provider $certprovider -DnsName "https://github.com/orangetreefrog4"
Write-Verbose -Verbose "Finished!
The certificate has been created and is now usable!"
Start-Sleep -Seconds 1
Write-Verbose -Verbose "Please support me by starring my project on GitHub at: https://github.com/orangetreefrog4/PWShell-Certificate-creator.
  _______
 /       \
| |     | |
|         |
|  └−−−┘  |
 \_______/"