 
git checkout -b promote-to-stage
git checkout  promote-to-stage
git commit --allow-empty -m "Trigger promotion to stage $D" 
 git push --set-upstream origin promote-to-stage