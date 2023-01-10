# Intro
gcp & terraform & github actions を試すためのRepo.

# What's this
以下の流れでGCP Projectからexportされたterraform codeのrepoになります。

- terraformよりcompute engineをallocateする
  - https://cloud.google.com/docs/terraform/get-started-with-terraform
- terraform stateをgcsに保存する
  - https://cloud.google.com/docs/terraform/resource-management/store-state
- gcp projectをterraformとしてexportする
  - https://cloud.google.com/docs/terraform/resource-management/export

基本的に ./terraform_trial/projects/terraformtrial-372802/ folderの中にあるものだけ見れば良い。
