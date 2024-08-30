$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Authorization", "Basic xxxxxxx")

$response = Invoke-RestMethod 'https://GRIDMASTER-IP/wapi/v2.12.3/zone_auth?fqdn=example.com' -Method 'GET' -Headers $headers
$response | ConvertTo-Json