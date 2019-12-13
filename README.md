# BitLocker

Active Directoryに登録されているPCのBitLockerを展開, 管理するためのPowershellスクリプトを書いています. 実際に展開する時は対話型シェルで１つずつ実行した方が良いかもしれません. （作成途中です.）

環境によってスクリプトを変える必要があるかもしれません.

## 使用コマンドレット一覧

### BitLocker操作


1. 暗号化の状態を取得

`Get-BitLockerVolume`


2. BitLocker有効化

`Enable-BitLocker`


3. BitLocker Key Protector を追加

`Add-BitLockerKeyProtector`


4. BitLocker Key Protector を削除

`Remove-BitLockerKeyProtector`


5. Recovery Key をAzure ADに保存

`BackupToAAD-BitLockerKeyProtector`

6. Recovery Key をAD DSに保存

`Backup-BitLockerKeyProtector`


### その他
1. ADに登録されているコンピュータの情報を取得

`Get-ADComputer`


2. リモートコマンドの実行

`Invoke-Command`


3. ループ処理

`for`

