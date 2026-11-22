# Git Collaboration Workshop

Work through this repo to practice resolving merge conflicts!

## Setup and Merge Conflicts

### 1. Mirror the Repo 

To complete this workshop you will need to create a duplicate of this repo.
1. Create an empty repository on GitHub
2. Mirror this repo into your newly create one
```bash
git clone --mirror github.com/erlewa/git-collaboration-workshop 
cd git-collaboration-workshop.git
git push --mirror <your-repo-link>
```

Official documentation for this process is available [here](https://docs.github.com/en/repositories/creating-and-managing-repositories/duplicating-a-repository)

### 2. Merge the branches in order

Make Pull Requests for each branch _**in order**_ (`feat/merge-1`, `feat/merge-2`, etc) and try merging them into main! Some of them will have merge conflicts you have to resolve.

### 3. Setup your Development Enviornment
1. Create a virtual enviornment to isolate dependencies:
```bash
python3 -m venv .venv
source .venv/bin/activate
```

2. Install project dependencies
```bash
pip install --group dev
```

### 4. Test your program

Use `pytest` to make sure the final program is working before moving on to the rest of the workshop.
```bash
pytest
```

This should say that all checks passed (printed in green). If it says that any failed (this will be in red) something went wrong in the earlier steps. There is a correct version of the program available on the `post-merge-program` branch
