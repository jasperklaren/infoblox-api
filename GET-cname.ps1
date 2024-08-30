$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Authorization", "Basic xxxxxxx")

$response = Invoke-RestMethod 'https://GRIDMASTER-IP/wapi/v2.12.3/record:cname?name=host.example.com' -Method 'GET' -Headers $headers
$response | ConvertTo-Json