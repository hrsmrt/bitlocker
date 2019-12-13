Add-BitLockerKeyProtector -MountPoint "C:" -RecoveryPasswordProtector
Add-BitLockerKeyProtector -MountPoint "C:" -TpmProtector


# Enable-BitLocker実行時にKeyProtectorも指定可能？
# Remove-BitlockerKeyProtector -MountPoint "C:" -KeyProtectorId $BLV.KeyProtector[-1].KeyProtectorId
# データボリューム以外を暗号化するときは、Enable-BitLockerAutoUnlock　で、BitLockerAutoUnlock を有効にする。
# ボリュームの使用領域のみを暗号化するときは、暗号化を実行するとき（Enable-BitLocker）にパラメーター-UsedSpaceOnlyを指定する。
