resource "snowflake_table" "tf_emp_new" {
  database = "TF_DEMO_DB"
  schema   = "TF_DEMO"
  name     = "TF_EMP_NEW"

  column {
    name     = "emp_id"
    type     = "NUMBER(38,0)"
    nullable = true
    comment  = "id column comment"
  }

  column {
    name     = "first_name"
    type     = "VARCHAR(100)"
    nullable = true
    comment  = "name column comment"
  }

  comment = "emp table comment"
}

