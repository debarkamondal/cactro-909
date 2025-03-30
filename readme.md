### A lightwieght log archival pipeline

It zips up the log on a EC2 machine then pushes it to S3.

Steps:

1. Create an EC2 instance with Amazon Linux.
2. Create a Key pair.
3. Resctrict the SSH access to specified IP while creating Security Group.
4. Paste the contents of the bootstrap.sh file inside the user-data section in Avanced tab.
5. Create a S3 bucket.
6. Make sure versioning is on.
7. Create the provided IAM policy.
8. Create a role and connect to the policy.
9. Attach the role to the EC2 instance and reboot.

*Note: change the bucket name before deploying
