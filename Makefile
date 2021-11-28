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

native:
	cd benchmark-quarkus && ./mvnw package -Pnative -Dquarkus.native.container-build=true

###########################
##### up containers #######
###########################
up:
	docker compose up --build -d
