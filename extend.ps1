#extend partition
Get-PartitionSupportedSize -DriveLetter C | Format-List
$MaxSize = (Get-PartitionSupportedSize -DriveLetter C).SizeMax
Resize-Partition -DriveLetter C -Size $MaxSize

#sleep 5 second
Start-Sleep -Second 5

#self destruct
Remove-Item -Path C:\Users\Administrator\Desktop\plugins -Force -Recurse
Remove-Item -Path C:\Users\Administrator\Desktop\extend.ps1 -Force
