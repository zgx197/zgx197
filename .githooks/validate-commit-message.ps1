param(
  [Parameter(Mandatory = $true)]
  [string]$MessageFile
)

$subject = Get-Content -LiteralPath $MessageFile -TotalCount 1 -Encoding UTF8
$pattern = '^(feat|fix|docs|style|refactor|perf|test|build|ci|chore|revert): .*\p{IsCJKUnifiedIdeographs}.*$'

if ($subject -match $pattern) {
  exit 0
}

Write-Error '提交信息不符合要求。请使用“前缀: 中文描述”的格式，例如：docs: 初始化中文主页说明'
exit 1
