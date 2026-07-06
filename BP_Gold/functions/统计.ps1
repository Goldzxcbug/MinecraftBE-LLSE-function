$TotalLines = 0
$TotalChars = 0

Get-ChildItem -Recurse | Where-Object { -not $_.PSIsContainer } | ForEach-Object {
    try {
        $content = Get-Content $_.FullName -ErrorAction Stop
        $lines = $content.Count
        $chars = ($content | Out-String).Length

        $TotalLines += $lines
        $TotalChars += $chars

        [PSCustomObject]@{
            File  = $_.FullName
            Lines = $lines
            Chars = $chars
        }
    } catch {
        # 遇到打不开的二进制文件会跳过
    }
} | Format-Table -AutoSize

Write-Host "======================="
Write-Host "总行数: $TotalLines"
Write-Host "总字符数: $TotalChars"
pause
