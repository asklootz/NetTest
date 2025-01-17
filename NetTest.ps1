while($true)
{
    if (Test-Connection www.google.com -Quiet)
    {
        ECHO "Internet is back"
        $voice = New-Object -ComObject Sapi.spvoice
        $voice.rate = 0
        $voice.speak("Internet is back!")
        break
    }
    else
    {
        ECHO "NO INTERNET"
    }
}