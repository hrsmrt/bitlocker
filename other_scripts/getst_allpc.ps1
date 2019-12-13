# ADに登録されている全てのコンピュータの暗号化状態を出力.

# ADに登録されている全てのコンピュータ名を配列に格納
$a = Get-ADComputer -Filter *
$b = $a.Name

# リモートで全てのコンピュータで'''Get-BitLockerVolume "C:" | fl'''を実行
for ($i; $i -lt $b.Count; $i++) {
        Invoke-Command -ComputerName $b[$i] -ScriptBlock {Get-BitLockerVolume C: | fl}
}

