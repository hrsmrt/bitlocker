<#
---------------------説明----------------------
1. ADに登録されている全てのコンピュータのコンピュータ名を取得.
2. 全てのコンピュータに対し、BitLocker展開スクリプト（b.ps1）を実行.
	2-1. BitLocker Key ProtectorsをTPM, Recovery Password の二つに設定.
	2-2. Recovery Password を Azure AD, ADDS にバックアップ.
	2-3. BitLocker を有効化し, 暗号化を開始.
#>
# ----------------以下スクリプト-----------------
# 1. ADに登録されている全てのコンピュータのコンピュータ名を取得.
$a = Get-ADComputer -Filter *
$b = $a.Name
# 2. ループを用い, 全てのコンピュータに対しリモートでb.ps1を実行 
for ($i; $i -lt $b.Count; $i++) {
        Invoke-Command -ComputerName $b[$i] -FilePath .\b.ps1
}

<#
Hiroshi.Murata
Bitscript,inc
#>
