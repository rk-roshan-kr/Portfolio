# Automate 14 PRs to hit 16 total (Silver Pull Shark)
for ($i=4; $i -le 17; $i++) {
    $branch = "badge-tier-$i"
    Write-Host "Processing PR $i..."
    
    # Sync and branch
    git checkout master
    git pull origin master
    git checkout -b $branch
    
    # Commit
    "// PR $i" | Add-Content badge_test.txt
    git add badge_test.txt
    git commit -m "Trigger Tiering: PR $i `n`nCo-authored-by: GitHub Bot <bot@github.com>"
    
    # Push and Merge
    git push origin $branch
    gh pr create --title "Achievement Tiering: PR $i" --body "Triggering Pull Shark and Pair Extraordinaire tiers." --base master --head $branch
    gh pr merge --merge --delete-branch
    
    Write-Host "PR $i merged successfully."
}

# Final Cleanup
git checkout master
git pull origin master
if (Test-Path badge_test.txt) { rm badge_test.txt }
git add .
git commit -m "Cleanup : FINAL BADGE TIERING COMPLETE"
git push origin master
