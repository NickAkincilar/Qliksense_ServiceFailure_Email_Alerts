$EmailFrom = “YourEmail@gmail.com”
$EmailTo = “UserToBeNotified@someserver.com”
$Subject = “QlikSense Service shutdown or failure on server: ” + $env:computername
$Body = “One of the QlikSense Services is either shot down or failed! Please check the services and event log for errors on your QlikSense Server.”
$SMTPServer = “smtp.gmail.com”
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPClient.EnableSsl = $true
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential(“email_UserName”, “email_password”);
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)