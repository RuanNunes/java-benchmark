build:
	cd 2.7.2 && mvn package
	cd 3.0.4 && mvn package
	cd native/11/3.1.4 && gradle build
	cd native/17/3.1.4 && gradle build
	cd native/17/3.0.4 && mvn package
	cd native/21/3.1.4 && gradle build

build-native:
	cd native/21/3.1.4 && chmod +x gradlew && ./gradlew nativeCompile
	cd native/17/3.1.4 && chmod +x gradlew && ./gradlew nativeCompile
	cd native/11/3.1.4 && chmod +x gradlew && ./gradlew nativeCompile

dev:
	cd 3.0.4 && mvn spring-boot:run

up:
	docker-compose up --build

g1:
	cd 3.0.4/target && java  -Xlog:gc* -Xlog:gc:gc.log  -jar 3.0.4-SNAPSHOT.jar

#-Xmx1g -Xms1g -XX:+UseG1GC