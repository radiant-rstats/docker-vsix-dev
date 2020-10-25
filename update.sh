rm vsix_list.txt
touch vsix_list.txt
vsix_list=$(ls -d *.vsix 2>/dev/null)
echo $vsix_list
for i in ${vsix_list}; do
  echo "https://github.com/radiant-rstats/docker-vsix-dev/raw/main/${i}" >> ../docker-vsix-dev/vsix_list.txt
done

git add .
git commit -m "update"
git push
