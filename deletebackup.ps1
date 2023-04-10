Get-ChildItem d:\sqlbackups\ -include *.bak -file  | Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays(-7)}| Remove-Item
