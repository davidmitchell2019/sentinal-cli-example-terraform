terraform plan -out terraform.plan 
sentinel apply -global input="`terraform show -json terraform.plan`" tf.policy