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

resource "snowflake_table" "tf_test" {
  database            = "TF_DEMO_DB"
  schema              = "TF_DEMO"
  name                = "TF_TEST"

  column {
    name     = "id"
    type     = "NUMBER(38,0)"
    nullable = true
    comment = "id column comment"
  }

  column {
    name     = "data"
    type     = "VARCHAR(16777216)"
    nullable = false
    comment = "data column comment"
  }
  comment = "table comment"
}

