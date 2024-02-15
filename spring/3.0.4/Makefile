build:
	mvn package

dev:
	mvn spring-boot:run


e:
	cd target && java -Xlog:gc* -Xlog:gc:gc.log  -jar 3.0.4-SNAPSHOT.jar

g1:
	cd target && java -XX:+UseG1GC -Xms1G -Xmx1G -Xlog:gc* -Xlog:gc:gc.log  -jar 3.0.4-SNAPSHOT.jar

z:
	cd target && java -XX:+UseZGC  -XX:+ZGenerational -Xms1G -Xmx1G -Xlog:gc* -Xlog:gc:gc.log  -jar 3.0.4-SNAPSHOT.jar

#-XX:+ZGenerational