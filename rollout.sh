git add .
git commit -a -m" $* "
git checkout deploy
git merge development
git push github development
git push deploy deploy
cap production deploy
git checkout development
