terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.43.0"
    }
  }

  backend "remote" {
    organization = "psubash-build-2022"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "tf_demo_db" {
  name    = "TF_DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}
