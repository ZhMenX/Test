# Replace with your Jenkins URL, job name, and build token
$jenkinsUrl = "http://101.42.53.76:8080"
$jobName = "Test-RemoteBuild"
$token = "jiawei"

# Construct the URL to trigger Jenkins build
$buildUrl = "$jenkinsUrl/job/$jobName/build?token=$token"

# Trigger the build using Invoke-RestMethod
Invoke-RestMethod -Uri $buildUrl -Method Post
