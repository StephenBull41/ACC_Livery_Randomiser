write-host "This script probably doesn't work anymore with changes to the livery file, use at your own risk"
read-host

$car = gc ([Environment]::GetFolderPath("MyDocuments") + "\Assetto Corsa Competizione\Customs\Cars\test_car.json")

5,6,7,12,13 | % {$car[$_] = $car[$_].Remove($car[$_].IndexOf(':') + 1) + " " + (Get-Random -Minimum 0 -Maximum 359) +","}
9,10,11,14,15 | % {$car[$_] = $car[$_].Remove($car[$_].IndexOf(':') + 1) + " " + (Get-Random -Minimum 0 -Maximum 5) +","}

$car | Out-File -FilePath ".\test_car.json"
