build:
	mvn package

dev:
	mvn spring-boot:run


jit:
	cd target && java -XX:+PrintCompilation  -jar 3.0.4-SNAPSHOT.jar
jit-log:
	cd target && java -XX:+UnlockDiagnosticVMOptions -XX:+LogCompilation -jar 3.0.4-SNAPSHOT.jar

code-cache-openjdk:
	cd target && java -Xlog:codecache* -jar 3.0.4-SNAPSHOT.jar
code-cache-graalvm:
	cd target && java -XX:ReservedCodeCacheSize=256m -XX:+PrintCodeCache -XX:InitialCodeCacheSize=128m -XX:CodeCacheExpansionSize=16m -XX:+UseCodeCacheFlushing -jar 3.0.4-SNAPSHOT.jar
e:
	cd target && java -Xlog:gc* -Xlog:gc:gc.log  -jar 3.0.4-SNAPSHOT.jar

g1:
	cd target && java -XX:+UseG1GC -Xms1G -Xmx1G -Xlog:gc* -Xlog:gc:gc.log  -jar 3.0.4-SNAPSHOT.jar

z:
	cd target && java -XX:+UseZGC  -XX:+ZGenerational -Xms1G -Xmx1G -Xlog:gc* -Xlog:gc:gc.log  -jar 3.0.4-SNAPSHOT.jar

#-XX:+ZGenerational