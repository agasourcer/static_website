# static_website

If you'd like to see the website, click on this URL: https://storage.googleapis.com/aga-dareit-static2/index.html or paste it into your browser.

1. Index HTML - this is where you can find the source code of the website
2. tf-configuration-files - this is where you can find configuration files for terraform
3. provider.tf - here is where the provider is defined
4. main.tf -  this is where the bucket is defined, enabling public access and adding website to the bucket
5. terraform.yaml - this is where ci/cd pipeline is defined. The pipeline has a few steps:
Checkout
Setup Terraform
Terraform Init
Terraform Formt
Terraform Plan
Terraform Apply
