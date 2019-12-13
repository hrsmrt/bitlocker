# ADに登録されている全てのコンピュータ名を配列に格納 → 全て出力

$a = Get-ADComputer -Filter *
$b = $a.Name
write $b
