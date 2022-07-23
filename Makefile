###########################
##### Dev Commands ########
###########################
q:
	cd benchmark-quarkus && ./mvnw quarkus:dev

s:
	cd benchmark-spring && ./mvnw spring-boot:run

mn:
	cd benchmark-micronaut && ./mvnw mn:run

###########################
##### Install Commands ####
###########################
install:
	cd benchmark-quarkus && ./mvnw package && cd .. && cd benchmark-spring && ./mvnw package && cd .. && cd benchmark-micronaut && ./mvnw package
	make spring-native

native:
	cd benchmark-quarkus && ./mvnw package -Pnative -Dquarkus.native.container-build=true

spring-native:
	cd benchmark-spring-native && mvn -Pnative -DskipTests package
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
