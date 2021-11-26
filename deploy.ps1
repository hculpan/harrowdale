Remove-Item ./harrowdale.zip 
bundle exec jekyll clean
bundle exec jekyll build
Compress-Archive -Path '_site/*' -DestinationPath './harrowdale.zip'
scp -i C:\Users\harry\culpan_org .\harrowdale.zip harry@culpan.org:~