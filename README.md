#Requirements
###sdk main install
````shell
curl -s "https://get.sdkman.io" | bash 
````
````shell
source "$HOME/.sdkman/bin/sdkman-init.sh"
````

###install java 11
````shell
sdk install java 21.2.0.r11-grl
````

### install maven
````shell
sdk install maven  3.8.4
````

#Run in dev mode
init aplication quarkus 
````shell
make q
````
init aplication spring
````shell
make s
````

init aplication micronaut
````shell
make mn
````

#Install all projects
````shell
make install && make nativez
````

#Run all projects in container
````shell
make up
````