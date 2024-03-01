

D=$(date)
echo "auto update at $D" > update
git add .
git commit -m "auto update at $D"
git push