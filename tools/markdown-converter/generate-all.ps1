Get-ChildItem .\..\..\content\books\*\*.md | Foreach-Object{
	$name = $_.Name
	$fullname = $_.FullName
	if($name -ne "_index.md"){
		Write-Host $fullname
		dotnet deathworlders-md-convert $fullname
	}
}



