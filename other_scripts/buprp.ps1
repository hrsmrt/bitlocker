# Character code: Shift JIS(?)
# Recovery Password をProtectorに登録し, azure AD, ADDSにバックアップするスクリプト.
# ※BitLockerが有効になっておらず, BitLocker Key Protectorに何も登録されていない状態で, スクリプトを実行.

Add-BitLockerKeyProtector -MountPoint "C:" -RecoveryPasswordProtector

$BLV = Get-BitLockerVolume -MountPoint "C:"
BackupToAAD-BitLockerKeyProtector -MountPoint "C:" -KeyProtectorId $BLV.KeyProtector[0].KeyProtectorId
Backup-BitLockerKeyProtector -MountPoint "C:" -KeyProtectorId $BLV.KeyProtector[0].KeyProtectorId

