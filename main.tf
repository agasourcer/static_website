resource "google_storage_bucket" "static_site_dareit_rulez" {
  name          = "aga-dareit-static2"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_bucket_iam_member" "member" {
  bucket = google_storage_bucket.static_site_dareit_rulez.name
  role   = "roles/storage.objectViewer"
  member = "allUsers"
}

resource "google_storage_bucket_object" "index" {
  name   = "index.html"
  source = "index.html"
  bucket = google_storage_bucket.static_site_dareit_rulez.name
}