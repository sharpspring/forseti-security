module "forseti-on-gke" {
    source                  = "terraform-google-modules/forseti/google//examples/on_gke"
    domain                  = "sharpspring.com"
    gsuite_admin_email      = "nate@sharpspring.com"
    org_id                  = "114706482605"
    project_id              = "forseti-233018"

    gke_cluster_name        = "forseti"
    gke_cluster_location    = "us-central1-c"
}
