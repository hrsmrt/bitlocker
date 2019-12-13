# いくつかのリモートコンピュータでテスト. "Hello, BitLocker" と書かれたhello.txtファイルがデスクトップに生成されればOK.

# 配列にテストで利用するコンピュータ名を格納. 
$b = "PC1", "PC2", "PC3"

# ループでhello.ps1を実行
for ($i; $i -lt $b.Count; $i++) {
	Invoke-Command -ComputerName $b[$i] -FilePath ./t-hello.ps1
}
