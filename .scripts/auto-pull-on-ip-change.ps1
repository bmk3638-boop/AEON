$vaultPath = "C:\Users\bmk36\OneDrive\바탕 화면\Obsidian\AEON"
$ipFile = "$vaultPath\.scripts\last-ip.txt"
$logFile = "$vaultPath\.scripts\sync.log"

function Log($msg) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$timestamp  $msg" | Out-File -Append -Encoding utf8 $logFile
}

# 현재 공인 IP 확인
try {
    $currentIP = (Invoke-RestMethod -Uri "https://api.ipify.org" -TimeoutSec 5).Trim()
} catch {
    Log "IP 확인 실패: $_"
    exit
}

# 마지막 IP 읽기
$lastIP = ""
if (Test-Path $ipFile) {
    $lastIP = (Get-Content $ipFile -Raw).Trim()
}

Set-Location $vaultPath

if ($currentIP -ne $lastIP) {
    Log "IP 변경 감지: $lastIP -> $currentIP, git pull 실행"
    $pullResult = git pull origin main 2>&1
    Log "pull: $pullResult"
    $currentIP | Out-File -Encoding utf8 $ipFile
} else {
    Log "IP 동일 ($currentIP), pull 스킵"
}
