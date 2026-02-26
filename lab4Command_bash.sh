
pwd 
cd Documents/B620/BIOSTAT620labs/BIOSTAT620W26
ls

# Submission 
git add Lab4/Lab4_So.html
git commit -m "Resubmit Lab 4 (with standalone) HTML https://github.com/dmcable/BIOSTAT620W26/issues/3"
git push origin main

# Remove/add files from my repository.
git rm -r Lab4/Lab4_files
git add Lab4/Lab4_So.html
git commit -m "xxx https://github.com/dmcable/BIOSTAT620W26/issues/3"
git remote -v  # Confirm my origin - not a critical step
	# origin	https://github.com/biosoaji/BIOSTAT620W26.git (fetch)
	# origin	https://github.com/biosoaji/BIOSTAT620W26.git (push)
git push origin main

#Sync with local after clean local folder which was pushed to the repository
git status
 # deleted: Lab4/some_old_file.html --> OK
git add -u
 # stages deleted files/ modified files
git commit -m "Remove unnecessary Lab 4 files"
git push origin main


## retract my submitted file 
git rm -r folder/file name #in my repository 

## Part B — Pull from BOTH repositories (correct way) - Didn't do this.
# step 1 check current remove
git remote -v
	# origin   https://github.com/biosoaji/BIOSTAT620W26.git
#Step B2: Add your instructor’s repo as a second remote
git remote add instructor https://github.com/dmcable/BIOSTAT620W26.git
git remote -v
	# origin      https://github.com/biosoaji/BIOSTAT620W26.git
	# instructor  https://github.com/dmcable/BIOSTAT620W26.git
#Step B3: Pull updates from the instructor
git fetch instructor
	#see instructor updates
	#compare files
	#reference changes if needed
git merge instructor/main #(not safe: POTENTIALLY UNWANTED (but still reversible))
#Step B4: Push everything back to your repo
git push origin main
