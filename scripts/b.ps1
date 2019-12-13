# Recovery PasswordをProtectorに登録.
Add-BitLockerKeyProtector -MountPoint "C:" -RecoveryPasswordProtector

# Recovery Password をAzure AD, ADDSに保存.
$BLV = Get-BitLockerVolume -MountPoint "C:"
BackupToAAD-BitLockerKeyProtector -MountPoint "C:" -KeyProtectorId $BLV.KeyProtector[0].KeyProtectorId
Backup-BitLockerKeyProtector -MountPoint "C:" -KeyProtectorId $BLV.KeyProtector[0].KeyProtectorId

# TPMをProtectorに登録し, BitLockerを有効化
Enable-BitLocker -MountPoint "C:" -EncryptionMethod XtsAes256 -UsedSpaceOnly -TpmProtector
