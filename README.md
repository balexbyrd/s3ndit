# s3ndit
Dynamically upload files to Amazon Web Services s3 buckets during a QlikView refresh. We chose this path as it gave us the most control, least limitations, and easy setup / maintenance. 

You can upload QVDs, log files, QVWs for version control. Sky is the limit

## Setup

1. Setup a user in the AWS Console and grant them the AmazonS3FullAccess permission policy
![Screenshot](https://raw.githubusercontent.com/balexbyrd/s3ndit/master/img/Amazons3FullAccess.PNG)

2. Install AWS CLI and configure it using the two access keys for the user created in step 1
3. On your local machine, set the environment variable to the aws path ex. C:\Program Files\Amazon\AWSCLIV2. This allows you to call the aws cli from powershell.
4. Using the command prompt, test AWS CLI is working and you can see your buckets / create them if you don't have anything. I created an s3ndit bucket to test.

5. In the QlikView load script, check 'Can Execute External Programs'
![Screenshot](https://raw.githubusercontent.com/balexbyrd/s3ndit/master/img/executeexternal.PNG) 

## Usage

1. Choose your process ps1 file. You can leverage both scripts by pushing individual files and then after the full load process run a sync. This will be less cpu intensive than running just the sync.

![Screenshot](https://raw.githubusercontent.com/balexbyrd/s3ndit/master/img/variables.PNG) 

s3_cp.ps1   - this is a copy process from your local machine to s3. This should be used when you're copying individual files/qvds

s3_sync.ps1 - this syncs your local folder with s3.

2. Set your s3 bucket variable.

3. Reload

## Extras

This is really just an integration between Qlik & AWS CLI, it doesn't have to be limited to cp and sync it can work with any commands that the aws cli will take. Have fun!

## License

MIT