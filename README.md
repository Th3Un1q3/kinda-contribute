# kinda-contribute
Action that helps to be an active contributor without doing anything.

# Usage

```yaml
on:
  schedule:
    # Desired contribution schedule
    # [More about scheduled running](https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#schedule)
    - cron: '0 0 * * 1-5'

jobs:
  runs-on: ubuntu-latest
  run:
    name: Populate Contributions
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
        with:
          # Target Branch to commit to
          ref: usage
          # It's required to use your personal access token
          # in order to make it look like it's your activity.
          # The token must be enabled for the private repo scopes.
          # [Action Docs](https://github.com/actions/checkout#usage)
          token: ${{ secrets.PERSONAL_ACCESS_TOKEN }}

      - uses: 'Th3Un1q3/kinda-contribute@main'
        with:
          # Defines range from 1 to 5(in this case) of commits to make
          # Optional, default is 5
          max-commits: 5


          # Defines exact number of commits to make, useful when you
          # want to make a specific number of commits or use your own random number generator.
          # This will override max-commits.
          # Optional
          exact-commits: 3


          # By default action will push to the target branch.
          # If you need to ignore push, set this to false.
          # Optional, default is true
          include-push: true
```

### Examples

You can find more examples in `.github/workflows`.
