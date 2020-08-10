all: install build package deploy

install:
	composer install --optimize-autoloader --no-dev --no-scripts

build:
	php bin/console cache:clear --no-debug --no-warmup --env=prod
	php bin/console cache:warmup --env=prod

package:
	sam package --template-file template.yaml --output-template-file .stack.yaml --s3-bucket <<S3_BUCKET_LOCATION>>

deploy:    
	sam deploy --template-file .stack.yaml --capabilities CAPABILITY_IAM --region eu-central-1 --stack-name SymfonyApplication
	aws s3 sync public s3://<<S3_BUCKET_LOCATION>> --delete --acl public-read
