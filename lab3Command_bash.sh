Syntax: bash
Users/smartso/Documents//B620/BIOSTAT620labs/BIOSTAT620W26
cd / /
cd ../..
ls
pwd 
#Assemption
# Local registory is BIOSTAT620labs
# HW is in local folder BIOSTAT620W26/Lab3/lab3.html

cd Users/smartso/Documents/B620/BIOSTAT620labs/BIOSTAT620W26
### [중요1 add]
git add Lab3

### [중요2 commit]
git commit -m "Submit Lab 3 https://github.com/dmcable/BIOSTAT620W26/issues/1"
	# This automatically links: the commit; the issue; the repository history


## Step 1: Create the repository on GitHub
	In my github account,
	→ New repository (top right corner)
		Repository name: BIOSTAT620W26
		Visibility: either Public or Private
		Do NOT check “Add a README” or .gitignore or license (we already have local files)
		Create repository
	The repository -- >You’ll see a URL(https://github.com/biosoaji/BIOSTAT620W26.git)

## Step 2: Connect your local repo to the new GitHub repo

# Remove any old remote
git remote remove origin   #(1 remove)

# Add the new GitHub repository as origin
git remote add origin https://github.com/biosoaji/BIOSTAT620W26.git #(2 add) (with origin URL that you want to push)

git remote -v
	origin  https://github.com/biosoaji/BIOSTAT620W26.git (fetch)
	origin  https://github.com/biosoaji/BIOSTAT620W26.git (push)

### [중요3 push]
git push -u origin main  #(3 push) -u 는 다음번에는 쓸 필요 없음. # create a link


# Troubleshooting
# I newly created BIOSTAT620W26 today locally and grobally --> Should set up github repo root to BIOSTAT620W26 
## Step 1: Confirm where Git thinks the repo root is
git rev-parse --show-toplevel
	/Users/smartso # 답변

#So we need to:
#Remove the mistakenly-created Git repo above
cd /Users/smartso
rm -rf .git
#Initialize Git correctly inside BIOSTAT620W26
cd /Users/smartso/Documents/B620/BIOSTAT620labs/BIOSTAT620W26
### [중요-1 init]
git init
### [중요0 remote add origin]
git remote add origin https://github.com/biosoaji/BIOSTAT620W26.git ##URL of my github repository


