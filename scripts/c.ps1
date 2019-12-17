# Recovery PasswordをProtectorに登録.
Add-BitLockerKeyProtector -MountPoint "C:" -RecoveryPasswordProtector

# TPMをProtectorに登録し, BitLockerを有効化
Enable-BitLocker -MountPoint "C:" -EncryptionMethod XtsAes256 -TpmProtector
