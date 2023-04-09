$name= Read-Host -Prompt "Enter movie title"
$headers=@{}
$headers.Add("X-RapidAPI-Key", "b452756480mshc9282acffa7332bp1fb0acjsn7a9adfdd442d")
$headers.Add("X-RapidAPI-Host", "online-movie-database.p.rapidapi.com")
$response = Invoke-RestMethod -Uri 'https://online-movie-database.p.rapidapi.com/auto-complete?q=$name' -Method GET -Headers $headers
$response | get-member
Write-Output $response.d
 