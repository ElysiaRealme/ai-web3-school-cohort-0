# GitHub Learning Repo Setup

Local repo path:

```text
D:\WORKSPACE\AIxWeb3School\Note\ai-web3-school-cohort-0
```

Recommended GitHub repo:

```text
ai-web3-school-cohort-0
```

Recommended visibility: public.

Description:

```text
Personal learning journal and proof-of-work for AI x Web3 School.
```

## Manual Confirmation Needed

Before creating the public GitHub repo, confirm:

- Repo name.
- Public or private visibility.
- Whether this local path should be pushed as the remote repo.

## GitHub CLI Flow

Install GitHub CLI from https://cli.github.com/ if `gh` is unavailable.

Then run:

```powershell
gh auth login
gh auth status
```

After confirmation, create the remote from this local repo:

```powershell
gh repo create ai-web3-school-cohort-0 --public --description "Personal learning journal and proof-of-work for AI x Web3 School" --source . --remote origin --push
```

## Normal Commit Flow

```powershell
git status --short
git add .
git commit -m "Initialize AI Web3 School learning journal"
git push
```

