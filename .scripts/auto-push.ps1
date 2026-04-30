$vaultPath = "C:\Users\bmk36\OneDrive\바탕 화면\Obsidian\AEON"
$logFile = "$vaultPath\.scripts\sync.log"

function Log($msg) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$timestamp  $msg" | Out-File -Append -Encoding utf8 $logFile
}

Set-Location $vaultPath

# 변경사항 있을 때만 커밋
$status = git status --porcelain 2>&1
if ($status) {
    git add -A 2>&1 | Out-Null
    $date = Get-Date -Format "yyyy-MM-dd HH:mm"
    git commit -m "auto: 자동 동기화 $date" 2>&1 | Out-Null
    Log "커밋 완료"
} else {
    Log "변경사항 없음, 커밋 스킵"
}

# 항상 push (이미 커밋된 것도 포함)
$pushResult = git push origin main 2>&1
Log "push: $pushResult"
