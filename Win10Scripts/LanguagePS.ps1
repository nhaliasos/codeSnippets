
Write-Host "Hello my script"

<#
$LanguageList=Get-WinUserLAnguageList
$LanguageList.Add("el-GR")
Set-WinUserLanguageList -Languagelist $LanguageList

# If running in the console, wait for input before closing.
if ($Host.Name -eq "ConsoleHost")
{
    Write-Host "Press any key to continue..."
    $Host.UI.RawUI.FlushInputBuffer()   # Make sure buffered input doesn't "press a key" and skip the ReadKey().
    $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null
}
#>
