Sample of Symfony application running AWS Lambda
================================================
With the help of the following documentation (https://blog.theodo.com/2019/05/serverless-symfony-on-aws-lambda-with-bref/) 
i was able to get a running example of a Symfony application inside a AWS lambda function.

Make sure you have installed:
*   AWS CLI (https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)
*   AWS Sam CLI (https://aws.amazon.com/serverless/sam/)

Make a clone of this project 
```
git clone git@github.com:jorisros/symfony-aws-lambda.git
```
Run then composer
```
composer install
```

Make sure your AWS is configures correctly
```
aws configure list
```
If this is empty run then the configuration
```
aws configure
```

The update some settings inside the Makefile to your situation, replace ``<<S3_BUCKET_LOCATION>>`` to your S3 bucket.
Run then the make command to build and deploy the application to AWS:
```
make
```
