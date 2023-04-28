$null = ""
clear
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