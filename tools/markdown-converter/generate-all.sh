for markdown in "./../../content/books"/*/*.md
do
	if [[ "$markdown" != *_index.md ]]
	then
		echo "$markdown"
		dotnet-deathworlders-md-convert $markdown
	fi
done