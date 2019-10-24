# cloudfront-action

Github action to create invalidation of Cloudfront.  
See [action.yml](./action.yml) for Comprehensive List of Options.  

## Usage

### `workflow.yml` Example

Refer to [`aws cloudfront create-invalidation` Docs](https://docs.aws.amazon.com/cli/latest/reference/cloudfront/create-invalidation.html) for more details.

```yaml
name: Invalidate Cloudfront Distribution
on: push

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - uses: awact/cloudfront-action@master
      env:
        SOURCE_DIR: './public'
        AWS_REGION: 'us-east-1'
        AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
        AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
        DISTRIBUTION_ID: ${{ secrets.DISTRIBUTION_ID }}
```

## License

This project is distributed under the [MIT license](LICENSE.md).
