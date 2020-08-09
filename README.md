# aws-letsencrypt-renewer
Docker image for renewing wildcard certs in AWS.  
Requires Route53 and S3 permissions for authorization and uploading the certificates

Required environment variables:

**SITE** - The domain to secure (eg. example.com)  
**EMAIL** - Your email address used by LetsEncrypt  
**S3_PUBLIC_KEY** - Where to store the generated public key within S3 (eg. bucket/path/to/public_key.pem)  
**S3_PRIVATE_KEY** - Where to store the generated private key within S3 (eg. bucket/path/to/private_key.pem)  
