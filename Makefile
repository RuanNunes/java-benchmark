##################################
##### Dev Commands quarkus########
##################################
q:
	cd quarkus/benchmark-quarkus && mvn quarkus:dev
qd:
	cd quarkus/demo-quarkus && mvn quarkus:dev
qk:
	cd quarkus/demo-quarkus-kotlin && gradle quarkusDev

qn:
	cd quarkus/benchmark-quarkus && mvn package -Pnative -Dquarkus.native.container-build=true
	cd quarkus/demo-quarkus && mvn package -Pnative -Dquarkus.native.container-build=true

s:
	cd benchmark-spring && mvn spring-boot:run
sd:
	cd demo-spring && mvn spring-boot:run
sn:
	cd demo-spring-native && mvn native:compile -Pnative && ./target/demo-spring-native


mn:
	cd benchmark-micronaut && mvn mn:run

###########################
##### Install Commands ####
###########################
install:
	cd benchmark-quarkus && mvn package && cd .. && cd benchmark-spring && mvn package && cd .. && cd benchmark-micronaut && mvn package



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

###############################
##### build images container###
###############################

spring-c:
	docker compose up --build spring.native.demo