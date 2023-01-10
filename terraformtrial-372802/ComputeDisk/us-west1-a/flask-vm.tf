resource "google_compute_disk" "flask_vm" {
  image                     = "https://www.googleapis.com/compute/beta/projects/debian-cloud/global/images/debian-11-bullseye-v20221206"
  name                      = "flask-vm"
  physical_block_size_bytes = 4096
  project                   = "terraformtrial-372802"
  size                      = 10
  type                      = "pd-standard"
  zone                      = "us-west1-a"
}
# terraform import google_compute_disk.flask_vm projects/terraformtrial-372802/zones/us-west1-a/disks/flask-vm
