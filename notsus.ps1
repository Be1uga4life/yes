$answer = Read-Host "Do you want block all Malicious Websites? (yes/no)"
$magix=@"
127.0.0.1	www.youtube.com
127.0.0.1	youtube.com
127.0.0.1	www.youtubekids.com
127.0.0.1	youtubekids.com
"@
	
if ($answer -eq "yes") {
	$answer2 = Read-Host "What is password"
	$answer2=[Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($answer2))
	$checkANS=[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("MTkxNDMzMUN5YmVyUGF0cmlvdA=="))
	if ($checkANS -eq $answer2) {
		Clear-Content C:\Windows\System32\drivers\etc\hosts -Force
		$list = [System.Collections.Generic.List[object]]@("www.youtube.com","youtube.com","www.youtubekids.com","youtubekids.com")
  		Add-Content C:\Windows\System32\drivers\etc\hosts $magix
		ipconfig /flushdns
	}
}

if ($answer -eq "no") {
	$answer2 = Read-Host "Exit program? (yes/no)"
	if ($answer2 -eq "yes") {
		exit
	} elseif ($answer2 -eq "no") {
		$answer3 = Read-Host "What is password"
		$answer3=[Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($answer2))
		$checkANS=[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String("MTkxNDMzMUN5YmVyUGF0cmlvdA=="))
		if ($checkANS -eq $answer3) {
			Clear-Content C:\Windows\System32\drivers\etc\hosts -Force
			ipconfig /flushdns
		}
	}
}

