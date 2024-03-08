


git checkout -b promote-to-prod
git checkout  promote-to-prod
git commit --allow-empty -m "Trigger promotion to stage $D" 
 git push --set-upstream origin promote-to-prod