# 1. Create a shell script named jobs.sh that processes over a text file 
# (given in the command line as an argument) 
# and answers the following questions.
# The text file contains data about violence at work. 

# Line by line, 
# the name of the workplace,
# address, 
# number of incidents of violence in a year,
# number of security guards - separated by commas.

# e.g. Whistling Ltd, 1111 Budapest dog street 6, 5, 3

# a) Give the workplaces where no violent acts have been reported, 
# if none, write "NONE"
# b) Count the total number of security guards according to the data file provided.
# c) Give the names of the workplaces with the highest number of violent incidents are located, give their name(s) and address(es).


$content = (Get-Content -Path ($args)[0])

Write-Host "Task A)"
$exists = 0
foreach ($line  in $content) {
    $fields = ($line).Split(",")
    
    if (($fields)[2].Trim() -eq "0") {
        Write-Host ($fields)[0].Trim()
        $exists = 1
    }
}
if ($exists -eq 0) {
    Write-Host "None"
}



Write-Host "Task B)"
$guards = 0
foreach ($line  in $content) {
    $fields = ($line).Split(",")

    $guards = $guards + ($fields)[3].Trim()
  
}
Write-Host $guards


Write-Host "Task C)"
$max = 0
$name = ""
$address = ""
foreach ($line  in $content) {
    $fields = ($line).Split(",")

    if (($fields)[2].Trim() -gt $max) {
        $max = ($fields)[2].Trim()
        $name = ($fields)[0].Trim()
        $address = ($fields)[1].Trim()
    }
  
}
Write-Host "$name, $address"
