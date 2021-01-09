Output the plan file

* terraform plan -out terraform.plan 

verify plan file with sentinel

* sentinel apply -global input="`terraform show -json terraform.plan`" tf.policy

Show a plan in json

* terraform show -json terraform.plan 

pretty print a json file with jq tool
* jq . plan.json 
