# Replace with your Jenkins URL, job name, and build token
$jenkinsUrl = "http://101.42.53.76:8080"
$jobName = "Test-RemoteBuild"
$token = "jiawei"

# Get Jenkins crumb using Invoke-RestMethod
$crumbUrl = "$jenkinsUrl/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,':',//crumb)"
$crumbHeader = Invoke-RestMethod -Uri $crumbUrl -Method Get -Headers @{Authorization=("Basic {0}" -f [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(":11760f7590e9230bca04bc3d7a36a5e32d")))}

# Construct the URL to trigger Jenkins build
$buildUrl = "$jenkinsUrl/job/$jobName/build?token=$token"

# Trigger the build using Invoke-RestMethod with crumb header
Invoke-RestMethod -Uri $buildUrl -Method Post -Headers $crumbHeader
