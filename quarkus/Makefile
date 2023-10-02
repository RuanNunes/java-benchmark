##################################
##### Dev Commands Quarkus########
##################################
java11:
	cd 11/3.4.1 && chmod +x gradlew && ./gradlew build && ./gradlew build -Dquarkus.package.type=native -Dquarkus.native.container-build=true
java17:
	cd 17/3.4.1 && chmod +x gradlew && ./gradlew build && ./gradlew build -Dquarkus.package.type=native -Dquarkus.native.container-build=true

i:
	#cd java-11 && mvn clean install && chmod +x ./mvnw && ./mvnw package -Pnative -Dquarkus.native.container-build=true
	cd java-17 && mvn clean install && chmod +x ./mvnw && ./mvnw package -Pnative -Dquarkus.native.container-build=true
	cd api-gradle && chmod +x gradlew && ./gradlew build --warning-mode all
	cd api-kotlin && chmod +x gradlew && ./gradlew build
	cd api-maven && chmod +x mvnw &&  ./mvnw package
	cd demo-quarkus && mvn install
	cd demo-quarkus-kotlin && chmod +x gradlew && ./gradlew build

api-dev:
	cd api && mvn quarkus:dev
q:
	cd benchmark-quarkus && mvn quarkus:dev
qd:
	cd demo-quarkus && mvn quarkus:dev
qk:
	cd demo-quarkus-kotlin && gradle quarkusDev

qn:
	cd benchmark-quarkus && mvn package -Pnative -Dquarkus.native.container-build=true
	cd demo-quarkus && mvn package -Pnative -Dquarkus.native.container-build=true

up:
	docker-compose up --build -d
down:
	docker-compose down
