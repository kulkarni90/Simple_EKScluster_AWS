<h1>Creating Eks Cluster in AWS using simple Terraform files.</h1>

Using the file in this reposiroty lets create a EKS cluster with one VPC and two Subnets in AWS using simple Terraform files.
Make sure that the subnets should be in different available zones within the same region and under same VPC

<h3> Let's begin </h3>
<h4>Prerequisites:</h4>
   AWS account with admin privileges<br>
       >> Create access key<br>
       >> Download key file<br>
  <h6> Install the following:</h6>
       >> AWS cli<br>
       >> Configure cli<br>
       >> Terraform <br>
       >> kubectl <br>
       
  <h5>Steps to install AWS cli & Configure AWS account</h5>
    
     curl https://s3.amazonaws.com/aws-cli/awscli-bundle.zip -o    awscli-bundle.zip
   
        apt install unzip python
  
        unzip awscli-bundle.zip

       sudo apt-get install unzip - if you dont have unzip in your system
       ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
       $aws --version    # to check proper proper install and version of Awscli
<h5>Configure cli</h5>
    
      $aws configure<br>
        AWS Access Key ID [None]: <enter your access key><br>
        AWS Secret Access Key [None]: <enter your secret key><br>
        Default region name [None]: <your region><br>
        Default output format [None]: <your output format if any or else press enter><br>
  
    Now AWS CLI lets you interact with AWS without using the web interface.

        

   
    

