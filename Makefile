##################################
##### Dev Commands Spring########
##################################
s:
	cd spring/benchmark-spring && mvn spring-boot:run
sd:
	cd spring/demo-spring && mvn spring-boot:run
sn:
	cd spring/demo-spring-native && mvn native:compile -Pnative && ./target/demo-spring-native
spring-native:
	cd spring/benchmark-spring-native && mvn -Pnative -DskipTests package
spring-c:
	docker compose up --build spring.native.demo
##################################
##### Dev Commands Micronaut########
##################################
mn:
	cd micronaut/benchmark-micronaut && mvn mn:run

###########################
##### Install Commands ####
###########################
install:
	cd benchmark-quarkus && mvn package && cd .. && cd benchmark-spring && mvn package && cd .. && cd benchmark-micronaut && mvn package




###########################
##### up containers #######
###########################
up:
	docker compose up --build -d

down:
	docker compose down

up-q-n:
	docker compose up --build -d quarkus.native

up-q-j:
	docker compose up --build -d quarkus.jvm

up-q-g:
	docker compose up --build -d quarkus.graalvm

