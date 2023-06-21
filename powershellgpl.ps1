$InstanceNumber = "00"  # Replace XX with the actual instance number



# Build the command
$command = "sapcontrol -nr $InstanceNumber -function GetProcessList"
$outputFile = "C:\Temp\sapcontrol_output.txt"  # Specify the path and filename for the output file



# Execute the command and redirect the output to a file
Start-Process -FilePath "cmd.exe" -ArgumentList "/c $command > $outputFile" -NoNewWindow -Wait



# Read the content of the output file
$output = Get-Content -Path $outputFile



# Filter dialogue work processes
$dialogueProcesses = $output | Where-Object { $_ -like "*dw*" }



# Display the dialogue work processes
foreach ($process in $dialogueProcesses) {
    Write-Output $process
}