##################################
##### Dev Commands Quarkus########
##################################
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
