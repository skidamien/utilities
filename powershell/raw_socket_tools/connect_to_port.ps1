$ipaddress = $args[0]
$port = $args[1]

#$ipaddress = 10.81.11.5
#$port = 20240

$connection = New-Object System.Net.Sockets.TcpClient($ipaddress, $port)
if ($connection.Connected) {
    Write-Host "Success connecting to $ipaddress on port $port"
}
else {
    Write-Host "Failed connecting to $ipaddress on port $port"
}