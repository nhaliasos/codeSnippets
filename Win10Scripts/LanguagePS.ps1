Write-Host "Hello my script"

# if i use <# and close with #> then it comments blocks of text

$LanguageList=Get-WinUserLAnguageList
$LanguageList
if ($Host.Name -eq "ConsoleHost")
{
    Write-Host "Press which langauge to remove...0 is the first, 99 is nothing to remove"
    #$Host.UI.RawUI.FlushInputBuffer()   # Make sure buffered input doesn't "press a key" and skip the ReadKey().
    #$Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $choice
    $choice=Read-Host
    if (($choice -ne '99'))
    {
        Write-Host "you want us to remove..." 
        $LanguageList[$choice]
        $LanguageList.Remove($LanguageList[$choice])
    }
    Else  {   Write-Host "no language to remove will jsut add Greek" }
}
$LanguageList.Add("el-GR")
#$LanguageList.Remove($LanguageList[1])
Set-WinUserLanguageList -Languagelist $LanguageList

# If running in the console, wait for input before closing. - this DOES NOT work when called from the cmd, need to add PAUSE in cmd
if ($Host.Name -eq "ConsoleHost")
{
    Write-Host "Press any key to continue..."
    $Host.UI.RawUI.FlushInputBuffer()   # Make sure buffered input doesn't "press a key" and skip the ReadKey().
    $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp") > $null
}



