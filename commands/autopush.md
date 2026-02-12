Execute the full git autopush workflow:

## Steps

1. **Check prerequisites**
    - Verify this is a git repository: `git rev-parse --git-dir`
    - Verify GitHub CLI is authenticated: `gh auth status`
    - If either fails, explain the issue and how to fix it

2. **Stage all changes**

    ```bash
    git add -A
    ```

    - If no changes to stage, inform the user and stop

3. **Generate a descriptive commit message**
    - Analyze the staged changes:
        ```bash
        git diff --cached --stat
        git diff --cached
        ```
    - Create a commit message following this format:

        ```
        <type>(<scope>): <concise summary>

        <detailed description explaining what changed and why>

        - Specific change 1
        - Specific change 2
        - etc.
        ```

    - Types: `feat`, `fix`, `docs`, `refactor`, `test`, `chore`, `style`, `perf`
    - Be specific about files and functionality changed

4. **Commit the changes**

    ```bash
    git commit -m "<generated message>"
    ```

5. **Push to remote**

    ```bash
    BRANCH=$(git branch --show-current)
    git push origin "$BRANCH"
    ```

    - If push fails due to upstream changes, pull with rebase and retry:
        ```bash
        git pull --rebase origin "$BRANCH"
        git push origin "$BRANCH"
        ```

6. **Create a pull request**

    ```bash
    gh pr create --title "<title from commit>" --body "<detailed PR description>" --base main
    ```

    - If a PR already exists for this branch, skip this step and note it

7. **Merge the pull request**
    ```bash
    gh pr merge
    ```

    If merge was successful and the branch used (beside main or master) was not currently available and especially created by the AI Agent then delete the branch. Howeverm if the merge was successful and the branch was already available and being constantly used by the user, then do not delete the branch. You can always ask the user what to do regarding the branch in case you are not sure what to do based on the instructions.

## Handling Merge Conflicts

If the PR cannot be merged due to conflicts:

1. **Identify the conflicts**:

    ```bash
    gh pr view --json mergeable,mergeStateStatus
    git fetch origin main
    git diff origin/main...HEAD --name-only
    ```

2. **Report to the user**:
    - List each conflicting file
    - Explain that conflicts occur when the same lines were modified in both branches

3. **Provide resolution instructions**:

    ```
    To resolve these conflicts:

    1. Fetch and merge main:
       git fetch origin main
       git merge origin/main

    2. Open each conflicting file and find the conflict markers:
       <<<<<<< HEAD
       (your changes)
       =======
       (changes from main)
       >>>>>>> origin/main

    3. Edit the file to keep the correct code (remove the markers)

    4. Stage the resolved files:
       git add <file1> <file2> ...

    5. Complete the merge:
       git commit

    6. Push and the PR will update:
       git push
    ```

4. **Offer to help** resolve specific conflicts if the user wants

## Error Handling

- **Not a git repo**: Tell user to run `git init` or navigate to a repository
- **No GitHub remote**: Tell user to add one with `git remote add origin <url>`
- **Auth failure**: Tell user to run `gh auth login`
- **Protected branch**: Tell user to create a feature branch first with `git checkout -b <branch-name>`
- **No changes**: Inform user there's nothing to commit
