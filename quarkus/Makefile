##################################
##### Dev Commands Quarkus########
##################################
java11:
	cd 11/2.10.3 && chmod +x mvnw && ./mvnw package && ./mvnw package -Pnative -Dquarkus.native.container-build=true
	cd 11/3.4.1 && chmod +x gradlew && ./gradlew build && ./gradlew build -Dquarkus.package.type=native -Dquarkus.native.container-build=true
java17:
	cd 17/2.16.4 && chmod +x mvnw && ./mvnw package && ./mvnw package -Pnative -Dquarkus.native.container-build=true
	cd 17/3.0.3 && chmod +x mvnw && ./mvnw package && ./mvnw package -Pnative -Dquarkus.native.container-build=true
	cd 17/3.2.3 && chmod +x gradlew && ./gradlew build && ./gradlew build -Dquarkus.package.type=native -Dquarkus.native.container-build=true
	cd 17/3.4.1 && chmod +x gradlew && ./gradlew build && ./gradlew build -Dquarkus.package.type=native -Dquarkus.native.container-build=true
kotlin-b:
	cd kotlin/2.16.4 && chmod +x gradlew && ./gradlew build && ./gradlew build -Dquarkus.package.type=native -Dquarkus.native.container-build=true
	cd kotlin/3.2.3 && chmod +x gradlew && ./gradlew build && ./gradlew build -Dquarkus.package.type=native -Dquarkus.native.container-build=true
up:
	docker-compose up --build -d
down:
	docker-compose down
