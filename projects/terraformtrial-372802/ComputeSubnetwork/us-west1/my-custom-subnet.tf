resource "google_compute_subnetwork" "my_custom_subnet" {
  ip_cidr_range              = "10.0.1.0/24"
  name                       = "my-custom-subnet"
  network                    = "https://www.googleapis.com/compute/v1/projects/terraformtrial-372802/global/networks/my-custom-mode-network"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "terraformtrial-372802"
  purpose                    = "PRIVATE"
  region                     = "us-west1"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.my_custom_subnet projects/terraformtrial-372802/regions/us-west1/subnetworks/my-custom-subnet
