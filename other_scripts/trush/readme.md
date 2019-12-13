# BitLocker-スクリプトによる展開

## 展開本番までの流れ

1. モジュールごとにテスト.


## モジュール

1. getcn.ps1
ADに登録されている全てのコンピュータ名を取得.

2. remote.ps1
リモートで全てのコンピュータに対しBitLocker展開スクリプト（expbl.ps1）を実行.

3. expbl.ps1
BitLockerを展開するスクリプト.




## テストモジュール

1. t-getcn.ps1
ADに登録されている全てのコンピュータ名が出力されればOK.

2. t-remote.ps1
いくつかのリモートコンピュータでテスト. t-hello.ps1と, t-expbl.ps1の２つを実行.

3. t-hello.ps1
t-remote.ps1で実行するテストファイル1.
"Hello, BitLocker" と書かれたhello.txtファイルがc:\Users\Administrator\Desktop\に生成されればOK


4. t-expbl.ps1
t-remote.ps1で実行するテストファイル2.
BitLockerの展開が成功すればOK.
