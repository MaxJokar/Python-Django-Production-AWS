# Python Django Production Deployment | Devops | Terraform & Bastion Host Setup  PART1.
Aws services : ec2  aws , ecs , cloud 
•	We want to make a service & manage ,accesss to it by IAM
•	We can have users and each users has :

(user :member of your team  for ex :or role have certain policy)<=ROLE>POLICY(defines how much I can access , I have acces to one bucket in  s3 among 100 bucket , USER
Policy==Role(can be used by AWS)user==Trafform(running on  EC2)
If our terform is running on ec2 then you can assign role by going to ec2
Terraform creates :ECR  ,  ECS, LOAD BALANCER=> we collect them in one  ROLE then goes to  (user is trafform  and have this role & we will use the User), policy goes to role  =>user(by AWS)
So we can make various policies :  lb, ecr, ecs
Terraform : user , ineract with various  AWS services (ec2), 
Gunicorn as a  server for ready production environement , 
1.Make a repo for it :production python Django ….
2.IAM dashboard in AWS” user group , users , roles, policies, identity product…
If console acces is  DISABLED , its mb im using only for this  trafform 
JSON   POLICY :
Permissions, Users:
For each POLICY  we  need two things, version , statement[{Resources:”*”}]:  a list contains many objects . Role should be assigned to Jenkis we make in asw role part 
SELECT TRUSTED ENTITY:
In guide User we have  AWS service role, means we give permission to ec2 service so Jenkins have set information Jenkins does all for us  instead of us , run , assign to a role 
Ect2<to Jenkins on the machine where jkis runing= role <= we assing a 
satement
CREATE ONE INSTANCE : How to sign up for the AWS free tier in 2023

End Part 1
make account , 
ECR:elastic container repo
IAM , Roles , Create role ,  (aws service , ec2)=> allow ec2  to call aws services on your behalf, next 
Jenkins does all for us :Deploys certain things, I connect with another ec2 instance , so we need a role that should be assigned to Jenkins
===============================>
To create Instance:
Search ec2, instances, launch an instance 
We must make Role , make name , Amazoon full access…
These parts r important
•	We must create a role for our ect :aws service : to interact with Jenkins 
We assign a role to whatever instance we created , if we created Jenkins we need a role that can   interact with other ec2 instances
We can see we have a new Role 
HOW TO MAKE:
Type  ec2, create, instance running, lunch instances ,advanced detail =IAM Instance profile (create a role , select trusted entitiy , choose fullaccess), you can type  like : ec2-full-access-role ,nearby click on blue color to choose Role .
We make a several policy for one   .Role can be used directrly by AWS service :ec2:in our site we need a user  it’s a terraform (is running on ec2)

================================>

DJANGO part
VIP:we make repo , clone , go to vscode , clone there, choose a folder from vscode then all will be installed inside the folder(this is for a very new project)for a ready we can from inside the folder open the project , with no problem
2.we can make our requirements.txt and only in terminal type:
Python –m venv venv 
PS C:\mydrive\Projects\Python-Django-Production-AWS> venv/Scripts/activate
(venv) PS C:\mydrive\Projects\Python-Django-Production-AWS> pip install -r requirements.txt
(venv) PS C:\mydrive\Projects\Python-Django-Production-AWS> pip list

In mac : we can see if our app installed or not ,  venv, bin , gunicorn 

(venv) PS C:\mydrive\Projects\Python-Django-Production-AWS> django-admin startproject api
(venv) PS C:\mydrive\Projects\Python-Django-Production-AWS> cd api
(venv) PS C:\mydrive\Projects\Python-Django-Production-AWS> python manage.py runserver

We configure  docker  ,  entrypoint.sh  etc 
======================================>

GIT commands:
Git branch =>shows how many branches you have 
git branch feature/add-sample-django > make a new branch 
git switch feature/add-sample-django  
(venv) PS C:\mydrive\Projects\Python-Django-Production-AWS> git switch 
feature/dockerise-django
Switched to branch 'feature/dockerise-django'
Git checkout –b feature/add-sample-django
For pull or merge : in main :
*if someone also change we use pull of them  : $  git fetch –all  ===summary:
(env) PS C:\mydrive\Projects\Python-Django-Production-AWS> git branch
(env) PS C:\mydrive\Projects\Python-Django-Production-AWS>  git checkout main
(env) PS C:\mydrive\Projects\Python-Django-Production-AWS> git fetch --all
env) PS C:\mydrive\Projects\Python-Django-Production-AWS> git merge feature/dockerise-django
(env) PS C:\mydrive\Projects\Python-Django-Production-AWS> git add api/api/settings.py
(env) PS C:\mydrive\Projects\Python-Django-Production-AWS> pish commit -m "Dockerised Django"
====================================>
DOCKER : make a docker image from dockerfile !
1.	When you finished docker  you can use  in terminal this  option :on root where dockerfile is locate write this command:d $ docker build -f (on dockerfile copy PATH ,add here ) \mydrive\Projects\Python-Django-Production-AWS\infra\Dockerfile
OR
2.	 docker build –f   infra/Dockerfile –t api .
After $docker images    : you must see your image in your docker image list 

          (venv) PS C:\mydrive\Projects\Python-Django-Production-AWS> docker build -f infra/Dockerfile -t api .
    !Change name of  venv  : PS C:\mydrive\Projects\Python-Django-Production-AWS> mv venv env
OR
3. (env) PS C:\mydrive\Projects\Python-Django-Production-AWS\infra> docker build -f \mydrive\Projects\Python-Django-Production-AWS\infra\Dockerfile .

NOTE:infra F:gunicorn   f:Dockerfile
From root we must run following command !!!
env) PS C:\mydrive\Projects\Python-Django-Production-AWS> docker build -f infra/Dockerfile -t api .
$ docker images

To remove docker image 1 must rmw image then container :$ docker rmi  <image id number3453657834d>
To remove container : $ docker rm <containerId gunicorn =>6b34343734 >


Today I had  problem , I changed the port to 8000 and did fowwoing:
Deleted non container , once deleted  venv to install all dependencies 
(env) PS C:\mydrive\Projects\Python-Django-Production-AWS> docker build -f infra/Dockerfile -t api .
(env) PS C:\mydrive\Projects\Python-Django-Production-AWS> docker ps
(env) PS C:\mydrive\Projects\Python-Django-Production-AWS> docker run -p 8000:8000 -d api
36d8a9be0f9d589d08426e5ad679c2cd9fcc3c946f7f8b1cd3b4d8a540f02c1f
(env) PS C:\mydrive\Projects\Python-Django-Production-AWS> docker logs 36d8a9be0f9d


======================================>
PART 3    TERRAFORM:
Create main.tf and code in it then  $terraform fmt and then init 
Instances –ec2, type s3 it is bucket . $981898181358Bb
Terform is a toll that automates creating infrastructure and making changes that infra…
https://chocolatey.org/install#individual    choose how to install it ?
secret key acces:
oLMh2wfNXqBNviAw3wgQA93r9bAZS9AflK6hjbgZ
access key :
AKIA2HAGIWYUT524OOWY
Users, backend-user 
Acc key: AKIA2HAGIWYUUUYAN45H
Secret acc key: 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
Instance
Key : instancekey_pair            ,    RSA  .pem
Pair:
"Unable to locate credentials" when I connect to my S3 bucket with AWS CL

IAM  User  backend-user , created key:
Ac key:  AKIA2HAGIWYUZY6XHJNG
Sec key : OC5rkVAhBg734khPN/hfPoc+rga9zJVy0IMvKK/X
C:\Users\PYTHON\Desktop>aws configure
AWS Access Key ID [****************exit]: AKIA2HAGIWYUZY6XHJNG
AWS Secret Access Key [****************exit]: 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
Default region name [exit]: us-west-2
Default output format [exit]: json
C:\Users\PYTHON\Desktop>aws configure list
C:\Users\PYTHON\Desktop>aws s3 ls
================================backend-api-user ,  in security credential
I chose   local code  for access key !
Ac key : AKIA2HAGIWYU3SPTSQVZ
Sec key: pWEI3WtILUqx36KBkJYE8N7/Z3bAConfUaMB55E5
MOSHKEL: I did new  bucket and made permission for everyone can use it not just 

=================================>
To initialize  terraform we need access to aws for that we made a user  , IAM user , $trform init 

Powershell :
PS C:\Windows\system32> Get-ExecutionPolicy
Restricted
PS C:\Windows\system32>  Set-ExecutionPolicy AllSigned
PS C:\Windows\system32> Get-ExecutionPolicy
AllSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

PS C:\Windows\system32> choco
Chocolatey v2.2.2
Please run 'choco -?' or 'choco <command> -?' for help menu.
PS C:\Windows\system32>
In cmd  C:\Windows\system32>choco
Powershell:
PS C:\Windows\system32> choco install terraform
Y
Y
Close powershell and run not in admin mode 
typeL $terraform –help

DONE
In vscode , once close vs, activate then : terraform  --version , it wroks
(env) PS C:\mydrive\Projects\Python-Django-Production-AWS> terraform --version
Terraform v1.5.5
on windows_amd64
KEY  value:


In vscode ,we have to add its extension  when we make main.ft. also must be terraform for lang right corner instead of  python or sth else
Terraform helps us to create Resources  by code , ec2 instance , it helps by code not GUI
In GUI process is : create type, name , choose os  , set storage, type instance type hit create instase finlayy you get  ec2 spinded up by the help of  asw but here with code you will do all 
Process:
We write a terraform block as well as the provider block : you write then terrfform the resource edge protocol spin it up  for any cloud then it works for Asure, ecp, snowflake 
Maintf  state , bucket 
We go to amazon web this address:
https://s3.console.aws.amazon.com/s3/buckets?region=eu-central-1
https://s3.console.aws.amazon.com/s3/bucket/create?region=eu-central-1
change bucketname as we have in main.tf and all push create bucket
================================>
To formate it  we must:
(env) PS C:\mydrive\Projects\Python-Django-Production-AWS> cd infra
(env) PS C:\mydrive\Projects\Python-Django-Production-AWS\infra> terraform fmt
main.tf
means our config is correct
now lets initialize terraform :
first we need to create user and use is IAM user 
infra F  make  .terrafrom 

To initialize terafrom we need acces to aws  , for that we create a user and user is  IAM  
Explanation after for  bastion.tf  etc
 Name a server in instance  ,it’s a server when were making an instance !
In traform we have  a  workspace area its just a  place or environment 

FInall terraform configuration step by step:
Process:
1.install terraform :helps to create resource(ec2)
2.main.tf , make a block , 
3. in aws  configure(make bucket  s3) :write the name of buckets as  we used in main.tf for the bucket:stores state of Terraform 
4.make DynamoDB too,Partitial key, LockID
5.required block 
6.  $terraform –version ,  fmt (config and codes  r  ok, if no issue happens) , init (to access aws)
7. EC2>instances>launch an instance make a   key-pair near the box  like a circle click on for the access to private subnet we need key-pari later 
8. variables.tf 
9.$terraform workspace new dev 
10.terraform list 
11. bastion.tf     =>to create a  ec2
12.$terraform fmt ,  validate 
13.we also need IAM user => $aws configure …us-west-2,json,….
14.$terraform plan , apply       to  create bastion for  us , yes , 
To search our key adjust or not  :
cts\Python-Django-Production-AWS> aws ec2 describe-key-pairs --key-name bastion6-key6 --region us-west-2
15.apply  its creating bastion.host 
Go to  EC2 console amazron , youll see a new instance done by code 
In Instances  , tags part we can see all datas we gave  
16.terraform destroy

 




