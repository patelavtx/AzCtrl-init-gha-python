# AzCtrl-noninit

## Test Nov7  > test GHA  hosted runner = build + init 

## Note -  Process after deploying either from docker or GHA

THIS is for lab deployment of the controller/copilot for ease of setting up the controller several times, init module removed to reduce image size and also allow more consistent deployment.

After deployment, the controller will need:

```
1. Login initially using private ip as password
2. Set email address
3. Change password
4. Set proxy or skip
5. Select software version (latest is fine)
6. Login and set 'customer_id - license' ; setup 'access account (Azure SP with contributor at Subs level )

```


For copilot deployment set variable:

```
enablecop = "true"   (by default it is false)


set backend.tf =   specify TFC org and unique workspace and set workspace 'execution mode' as 'local'
   		      This will save state in case the docker container is restarted, but in case state is lost just remove RG to clean up
		   Refer to the 'backend.orig'

Note/.
Setting backend.tf in TFC will require  'terraform login' and specifying a 'token' that is setup in TFC under the org.
The token is trasiently stored on docker container, once the docker container is destroyed this credential is gone.

Alternatively, keep the state local, if state file is lost just clean up resources by removing the RG created.

```


Deploy:

terraform init
terraform apply


```




### If testing out on GitHub actions, here is the sample terraform.tfvars:  (add variables to GH Repo > Settings > Secrets/Variables.

Note/.  + Controller_name dictates the name of Resource group created so ensure unique for multiple Az Controller deployments if in same subscription

        + To remove deployment :  Azure Portal, delete Resource Group.

```
controller_name                 = "AvxController"
location                        = "North Europe"
controller_vnet_cidr            = "10.2.0.0/24"
controller_subnet_cidr          = "10.2.0.0/28"
incoming_ssl_cidr               = ["0.0.0.0/0"]


controller_virtual_machine_admin_username = ""
controller_virtual_machine_admin_password = ""

 # toggle for cop
enablecop = "false"

```


Deploy:

terraform init
terraform apply


```
