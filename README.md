# Requirements Install linux or mac
### sdk main install
````shell
curl -s "https://get.sdkman.io" | bash 
````
````shell
source "$HOME/.sdkman/bin/sdkman-init.sh"
````

### install java 11
````shell
sdk install java 21.2.0.r11-grl
````

### install maven
````shell
sdk install maven  3.8.4
````

# Run in dev mode
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
Install all projects
````shell
make install && make native
````
Run all projects in container
````shell
make up
````

# Requirements Install windows
### install chocolatey -> https://docs.chocolatey.org/en-us/choco/setup
### install mingw
```shell
 choco install mingw
```
### install maven
```shell
 choco install maven
```
### aqui pode encontrar qualquer outro pacote oulinguguem que queria instalar no windows -> https://community.chocolatey.org/packages

# Run in dev mode windows
init aplication quarkus
````shell
mingw32-make q
````
init aplication spring
````shell
mingw32-make s
````

init aplication micronaut
````shell
mingw32-make mn
````
Install all projects
````shell
mingw32-make install && mingw32-make native
````

# Run all projects in container
````shell
mingw32-make up
````