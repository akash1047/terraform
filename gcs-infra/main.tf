# Simulation: Null resource to mimic lifecycle without creating real GCP resources
resource "null_resource" "simulate_production" {
  triggers = {
    build_id = uuid() # Re-triggers on each apply for demo
  }
}
