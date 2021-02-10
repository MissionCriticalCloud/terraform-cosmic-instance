resource "cosmic_instance" "default" {
  name             = var.name
  disk_controller  = var.disk_controller
  expunge          = true
  ip_address       = var.ip_address
  network_id       = var.network_id
  optimise_for     = lower(var.os_type) == "windows" ? "Windows" : "Generic"
  root_disk_size   = var.root_disk_size
  service_offering = var.service_offering
  template         = var.template
  user_data        = var.user_data
  affinity_group_ids = var.affinity_group_ids

  lifecycle {
    ignore_changes = [template, user_data]
  }
}

resource "cosmic_disk" "default" {
  for_each           = var.disks
  name               = "${var.name}-${each.key}"
  attach             = true
  device_id          = try(each.value.device_id, null)
  disk_controller    = try(each.value.disk_controller, "SCSI")
  disk_offering      = try(each.value.disk_offering, var.disk_offering, null)
  size               = each.value.size
  virtual_machine_id = cosmic_instance.default.id
}
