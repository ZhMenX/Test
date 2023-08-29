# 设置 Jenkins URL、Job 名称和令牌
$JENKINS_URL = "http://101.42.53.76:8080"
$JOB_NAME = "Test-RemoteBuild"
$TOKEN = "jiawei"

# 构建触发 URL
$buildUrl = "$JENKINS_URL/job/$JOB_NAME/build?token=$TOKEN"

# 发起 POST 请求触发构建
$response = Invoke-RestMethod -Uri $buildUrl -Method Post

# 显示响应结果
$response
