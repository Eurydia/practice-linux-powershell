# 2. Write a script which writes out the multiplication table till 10! 1*1, 1*2,…. 10*10

for ($i = 1; $i -le 10; ($i)++) {
    for ($j = 1; $j -le 10; ($j)++) {
        Write-Host ($i * $j)" " -NoNewline
    }
    Write-Host
}