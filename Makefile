q:
	cd benchmark-quarkus && ./mvnw quarkus:dev

s:
	cd benchmark-spring && ./mvnw spring-boot:run

mn:
	cd benchmark-micronaut && ./mvnw mn:run
