# s3-action

Github action to sync to AWS s3 bucket.  
Fork of [s3-sync-action](https://github.com/jakejarvis/s3-sync-action)  
See [action.yml](./action.yml) for Comprehensive List of Options.  

## Usage

### `workflow.yml` Example

Refer to [`aws s3 sync` Docs](https://docs.aws.amazon.com/cli/latest/reference/s3/sync.html) for more details.

```yaml
name: Sync S3 Bucket
on: push

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - uses: awact/s3-action@master
      with:
        args: --acl public-read --follow-symlinks --delete
      env:
        SOURCE_DIR: './public'
        AWS_REGION: 'us-east-1'
        AWS_S3_BUCKET: ${{ secrets.AWS_S3_BUCKET }}
        AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
        AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
```

## License

This project is distributed under the [MIT license](LICENSE.md).
