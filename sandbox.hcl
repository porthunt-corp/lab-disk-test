resource "container" "cont" {
   image {
     name = "debian:12"
   }
   resources {
     memory = 256
     disk   = 13
   }
   run_as {
     user  = "root"
     group = "root"
   }
 }

resource "terminal" "shell" {
  target = resource.container.cont

  shell             = "/bin/bash"
  working_directory = "/root"
}
