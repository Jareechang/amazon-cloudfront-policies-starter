# Amazon cloudfront origin policies starter

Starter repository for the origin policies tutorials.

# Getting started

1. Build the lambda function (under `function/*`)

```sh
pnpm run generate-assets --filter "@function/*"
```

2. Apply the infrastructure

```sh
export AWS_ACCESS_KEY_ID=<your-key>
export AWS_SECRET_ACCESS_KEY=<your-secret>
export AWS_DEFAULT_REGION=us-east-1

terraform init
terraform plan
terraform apply -auto-approve
```

TODO (More to come)

# Resources

- [Amazon Cloudfront: An overview of policies](https://www.jerrychang.ca/writing/amazon-cloudfront-an-overview-of-policies)

- [HTTP caching: The 6 core concepts](https://www.jerrychang.ca/writing/http-caching-the-6-core-concepts)

- [HTTP Caching: In-Practice](https://www.jerrychang.ca/writing/http-caching-in-practice)

- [Amazon Cloudfront: Caching deep dive](https://www.jerrychang.ca/writing/amazon-cloudfront-caching-deep-dive)
