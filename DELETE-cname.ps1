# Delete a specific CNAME
$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Authorization", "Basic xxxxxxx")

$response = Invoke-RestMethod 'https://GRIDMASTER-IP/wapi/v2.12.3/record:cname/ZG5zLmJpbmRfY25hbWUkLjEudGVzdC5jb252ZXJzaWUuYWxpYXMz:host.example.com/external' -Method 'DELETE' -Headers $headers
$response | ConvertTo-Json