# 网络优化脚本 — 请以管理员身份运行
Write-Host "=== [1/4] DNS 优化：腾讯 + 114DNS ===" -ForegroundColor Cyan
Set-DnsClientServerAddress -InterfaceAlias "WLAN" -ServerAddresses ("119.29.29.29","114.114.114.114")
Write-Host "OK  DNS 已更新" -ForegroundColor Green

Write-Host "`n=== [2/4] 关闭 MIMO 节能模式 ===" -ForegroundColor Cyan
Set-NetAdapterAdvancedProperty -Name "WLAN" -DisplayName "MIMO 节能模式" -DisplayValue "无 SMPS"
Write-Host "OK  MIMO 节能已关闭" -ForegroundColor Green

Write-Host "`n=== [3/4] TCP 协议栈优化 ===" -ForegroundColor Cyan
netsh int tcp set global initialRto=300
netsh int tcp set global ecncapability=enabled
netsh int tcp set global timestamps=disabled
Write-Host "OK  TCP 参数已优化 (InitialRTO=300, ECN=on, Timestamps=off)" -ForegroundColor Green

Write-Host "`n=== [4/4] 刷新缓存 ===" -ForegroundColor Cyan
ipconfig /flushdns
ipconfig /registerdns
Write-Host "OK  缓存已刷新" -ForegroundColor Green

Write-Host "`n=== 当前 DNS 配置 ===" -ForegroundColor Magenta
Get-DnsClientServerAddress -InterfaceAlias "WLAN" | Select-Object -ExpandProperty ServerAddresses

Write-Host "`n=== 当前 TCP 参数 ===" -ForegroundColor Magenta
netsh int tcp show global | Select-String "InitialRTO|ECN|Timestamp"

Write-Host "`n所有优化已完成！建议重启浏览器。" -ForegroundColor Green
