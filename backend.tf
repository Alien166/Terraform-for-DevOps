terraform {
  backend "s3" {
    bucket         = "mybucket"
    key            = "path/to/my/key"
    region         = "us-east-1"
    dynamodb_table = "sprints" ## for state managment 
  }
}
