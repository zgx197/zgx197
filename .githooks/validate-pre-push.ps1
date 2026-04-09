$pattern = '^(feat|fix|docs|style|refactor|perf|test|build|ci|chore|revert): .*\p{IsCJKUnifiedIdeographs}.*$'
$failed = $false

foreach ($line in [Console]::In.ReadToEnd().Split([Environment]::NewLine, [System.StringSplitOptions]::RemoveEmptyEntries)) {
  $parts = $line -split '\s+'
  if ($parts.Length -lt 4) {
    continue
  }

  $localSha = $parts[1]
  $remoteSha = $parts[3]

  if ($localSha -eq '0000000000000000000000000000000000000000') {
    continue
  }

  if ($remoteSha -eq '0000000000000000000000000000000000000000') {
    $commitRange = git rev-list $localSha --not --all
  } else {
    $commitRange = git rev-list "$remoteSha..$localSha"
  }

  foreach ($commit in $commitRange) {
    $subject = git log -1 --pretty=%s $commit
    if ($subject -notmatch $pattern) {
      Write-Error "检测到不符合要求的提交信息：$subject"
      Write-Error '推送已阻止。请使用“前缀: 中文描述”的格式。'
      $failed = $true
    }
  }
}

if ($failed) {
  exit 1
}

exit 0
