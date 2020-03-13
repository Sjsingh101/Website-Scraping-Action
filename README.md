# GitHub Action for Website Scraping

The GitHub Actions for scraping any website and pushing the code to GitHub repository using GitHub token.

With ease:
- set up a repository of website without downloading locally,
- no need to download any software for scraping,
- publish page using GitHub-Pages in **future update**,

## Usage

### Example Workflow file

An example workflow to add varibles to workflow:

```yaml
build:
        name: Import Varibles and Deploying
        runs-on: ubuntu-latest
        steps:
             - uses: actions/checkout@v1
             - uses: ./ 
               env:
                  URL: ${{ secrets.URL }}
                  OAUTH_TOKEN: ${{ secrets.OAUTH_TOKEN }}
                  USER: ${{ secrets.USER }}
```

### Inputs

| name | value | default | description |
| ---- | ----- | ------- | ----------- |
|  OAUTH_TOKEN | string | | Token for the repo. Can be passed in using `${{ secrets. OAUTH_TOKEN }}`. |
| USER | string |  | Username for the repo. Can be passed in using `${{ secrets.USER }}`. |
| URL | string | | HostName of the website. Can be passed in using `${{ secrets.URL }}`. |

After fork, add the above parameters to secrets and your name to accept.md and commit the changes


## License

The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
