resource "google_compute_instance" "flask_vm" {
  boot_disk {
    auto_delete = true
    device_name = "persistent-disk-0"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/debian-cloud/global/images/debian-11-bullseye-v20221206"
      size  = 10
      type  = "pd-standard"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/terraformtrial-372802/zones/us-west1-a/disks/flask-vm"
  }

  machine_type = "f1-micro"

  metadata = {
    startup-script = "sudo apt-get update; sudo apt-get install -yq build-essential python3-pip rsync; pip install flask"
  }

  name = "flask-vm"

  network_interface {
    access_config {
      nat_ip       = "35.247.73.172"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/terraformtrial-372802/global/networks/my-custom-mode-network"
    network_ip         = "10.0.1.2"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/terraformtrial-372802/regions/us-west1/subnetworks/my-custom-subnet"
    subnetwork_project = "terraformtrial-372802"
  }

  project = "terraformtrial-372802"

  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    provisioning_model  = "STANDARD"
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  tags = ["ssh"]
  zone = "us-west1-a"
}
# terraform import google_compute_instance.flask_vm projects/terraformtrial-372802/zones/us-west1-a/instances/flask-vm
