<#
-------------------------------------------------------------------------------------------------------------------------
    ToString: https://docs.microsoft.com/en-us/dotnet/standard/base-types/custom-timespan-format-strings
    Doc.MS:
        Stopwatch class: https://docs.microsoft.com/en-us/dotnet/api/system.diagnostics.stopwatch?view=netframework-4.8
        methods: https://docs.microsoft.com/en-us/dotnet/api/system.diagnostics.stopwatch?view=netframework-4.8
        
    Args:
        $StopWatch.[Start() | Stop() | Reset() | StartNew()]
            $stopWatch.Elapsed
                or 
            $stopWatch.Elapsed.[Total{Minutes,Days, Hours, Milliseconds, Seconds}]
-------------------------------------------------------------------------------------------------------------------------
#>

#New instance <-https://imgur.com/5FOOHQA
$StopWatch = New-Object System.Diagnostics.Stopwatch
 
#Elapsed.TotalMinutes <-https://imgur.com/KWe8w41
$StopWatch.Elapsed.TotalMinutes
 
#Format hours, minutes, sec <-https://imgur.com/mZEc27x
$Stopwatch.Elapsed.ToString("hh\:mm\:ss")
