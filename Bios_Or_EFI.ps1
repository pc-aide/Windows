<#
-----------------------------------------------------------
  SRC: https://www.tenforums.com/tutorials/85195-check-if-windows-10-using-uefi-legacy-bios-2.html?__cf_chl_jschl_tk__=81583410527021813da4d2dfbd0afc94d224d8bc-1589647232-0-AfAB0EOt-IB4DBPhJyhzbz3Bk4RKzpgLpn4ehGOLJsxEtx4MnDVJNhpYG6QltACRvaxcP1U_j-PRX4pDceJFkhLWnL2DC-jO1F6NjLefoIzH79CgsSmfYWkm_65nRG0Q3TB-F9UzZ_3xOSDiJtf4uvK-Zhf9NYl0kCzHi259GqcBbTJpoRH_xDIDJKA2PF37KEN1BS4MZo06FTEjl-qN0_ZAfspEGQl13Cu74V2ePwD3bVHg8PnMABDRxbY8G5Vqvy-MWrJsEFMkrgbkmHWx5Hk6-A54WkcBp5ASsk-r-XJsBFcF2FZi9xKGAyOQZ-LQVXGeinaNrDYbTiMhTZai3MW2a0lr4CSi9qrQtjO83aT3sKcjkAA3pZ4ARDc8otTHbdfbK_kLwZDevGLfkS-bp18LKcPX3tSKlJNAk6zHOlqO
-----------------------------------------------------------
#>

#
if (Test-Path $env:windir\Panther\setupact.log) {
  (Select-String 'Detected boot environment' -Path "$env:windir\Panther\setupact.log"  -AllMatches).line -replace '.*:\s+'
}
else{
  if (Test-Path HKLM:\System\CurrentControlSet\control\SecureBoot\State){
    "UEFI"
    }
  else {
    "BIOS"
    }
}
