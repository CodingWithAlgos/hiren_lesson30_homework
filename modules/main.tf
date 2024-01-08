terraform {
  backend "gcs" {
    bucket = "hiren_lesson30_homework"
    prefix = "terraform/state"
  }
}

terraform {
  required_providers {
    template = {
      source = "hashicorp/template"
    }
  }
}

provider "template" {
  # Configuration options
}

data "template_file" "greeting" {
  template = file("${path.module}/greetings.tpl")

  vars = {
    name = var.person_name
  }
}
