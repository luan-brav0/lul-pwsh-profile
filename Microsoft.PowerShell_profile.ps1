# Envelopes
New-Module -ScriptBlock {function Envelope {$env:NODE_ODULES = '--OpenSSL-legacy-provider'};Set-Alias -Name envlp -Value Envelope; Export-ModuleMember -function Envelope -Alias envlp} -Name envlp | Import-Module

# Alias
Set-Alias c clear
Set-Alias vim nvim
Set-Alias g git

# Terminal Icons
Import-Module Terminal-Icons

# Oh-my-posh
oh-my-posh prompt init pwsh --config "C:\Users\lul\AppData\Local\Programs\oh-my-posh\themes\gruvbox.omp.json" | Invoke-Expression

# PSReadLine 
Set-PSReadLineOption -PredictionSource History
# Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar

# PsFzf
Import-Module PSFzf
Set-PsFzfOption -PSReadLineChordProvider 'Ctrl+f' -PSReadLineChordReverseHistory 'Ctrl+r'

function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue | 
      Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
