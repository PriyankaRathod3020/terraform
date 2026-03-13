terraform {
 required_providers {
  docker = {
    source= "kreuzwerker/docker"
    version = "~> 2.21.0"
  }
 }
}

provider docker {}

resource "docker_image" "nginx" {
  name= "nginx:latest"
}

resource "docker_container" "nginx_resource"{
 image= docker_image.nginx.name
 name= "nginx_container"
 ports {
   internal=80
   external=80
 }

 depends_on= [docker_image.nginx]
}
