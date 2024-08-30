$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Content-Type", "application/json")
$headers.Add("Authorization", "Basic xxxxxxx")

$body = @"
    {
    `"canonical`": `"cname.example.com`",
    `"name`": `"host.example.com`",
    `"view`": `"external`"
    }
"@

$response = Invoke-RestMethod 'https://GRIDMASTER-IP/wapi/v2.12.3/record:cname' -Method 'POST' -Headers $headers -Body $body
$response | ConvertTo-Json