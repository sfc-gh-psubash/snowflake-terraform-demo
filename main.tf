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
  database = "TF_DEMO_DB"
  schema   = "TF_DEMO"
  name     = "TF_TEST"

  column {
    name     = "id"
    type     = "NUMBER(38,0)"
    nullable = true
    comment  = "id column comment"
  }

  column {
    name     = "emp_name"
    type     = "VARCHAR(100)"
    nullable = true
    comment  = "name column comment"
  }

  column {
    name     = "newdata"
    type     = "VARCHAR(16777216)"
    nullable = false
    comment  = "data column comment"
  }

  column {
    name     = "create_ts"
    type     = "timestamp"
    nullable = false
    comment  = "ts column comment"
  }

  comment = "table comment"
}

