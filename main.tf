resource "google_storage_bucket" "static-site-dareit-rulez" {
  name          = "aga-dareit-static"
  location      = "US"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}

resource "google_storage_default_object_access_control" "public_rule" {
  bucket = google_storage_bucket.static-site-dareit-rulez.name
  role   = "READER"
  entity = "allUsers"
}