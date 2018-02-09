#This is a PS Script for fetching Performance Counter data from remote servers 
Get-Counter -Counter "\processor(_total)\% processor time" , "\memory\available mbytes" , "\LogicalDisk(c:)\Free Megabytes" -SampleInterval 600 -MaxSamples 54 -ComputerName "10.38.0.231","10.38.0.232", "10.38.0.233", "10.38.0.236", "10.38.0.237","10.38.0.226","10.38.0.225","10.38.0.46","10.38.0.241","10.38.0.243","10.38.0.245","10.38.0.249","10.38.0.221","10.38.0.17","10.38.0.191", "10.38.0.130","10.38.0.131","10.38.0.218" | Export-Counter -Path d:\RDS.csv -FileFormat CSV -Force
#Testing --amend 
#already tested   
#Testing Staging undo
