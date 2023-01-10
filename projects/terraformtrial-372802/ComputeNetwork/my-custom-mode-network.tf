resource "google_compute_network" "my_custom_mode_network" {
  auto_create_subnetworks = false
  mtu                     = 1460
  name                    = "my-custom-mode-network"
  project                 = "terraformtrial-372802"
  routing_mode            = "REGIONAL"
}
# terraform import google_compute_network.my_custom_mode_network projects/terraformtrial-372802/global/networks/my-custom-mode-network
