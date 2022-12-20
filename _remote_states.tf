data "terraform_remote_state" "networking_repo" {
  backend = "remote"
 config = {
    hostname = ""
    organisation = ""
   workspaces = {
 name = "workspace name"
}
}
}
