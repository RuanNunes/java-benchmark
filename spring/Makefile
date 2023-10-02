i:
	cd benchmark-spring && mvn install
	cd demo-spring && mvn install
	cd demo-spring-native && mvn install

native-up:
	cd native/21/3.1.4 && chmod +x gradlew && ./gradlew build && ./gradlew bootBuildImage
