# t-remote.ps1で実行するテストファイル2.
# BitLockerの展開が成功すればOK.

Add-BitLockerKeyProtector -MountPoint "C:" -RecoveryPasswordProtector

$BLV = Get-BitLockerVolume -MountPoint "C:"

BackupToAAD-BitLockerKeyProtector -MountPoint "C:" -KeyProtectorId $BLV.KeyProtector[0].KeyProtectorId
Backup-BitLockerKeyProtector -MountPoint "C:" -KeyProtectorId $BLV.KeyProtector[0].KeyProtectorId

Enable-BitLocker -MountPoint "C:" -EncryptionMethod XtsAes256 -UsedSpaceOnly -TpmProtector
