$InstanceNumber = "XX"  # Replace XX with the actual instance number

# Build the command
$command = "sapcontrol -nr $InstanceNumber -function GetProcessList"

# Execute the command
$process = Start-Process -FilePath "cmd.exe" -ArgumentList "/c $command" -NoNewWindow -PassThru

# Wait for the process to finish
$process.WaitForExit()

# Get the output
$output = $process.StandardOutput.ReadToEnd()

# Display the output
Write-Output $output