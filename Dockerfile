# 베이스 이미지 설정 (JDK 21 사용 예시)
FROM eclipse-temurin:21-jdk

# 작업 디렉터리 설정
ARG JAR_FILE=target/*.jar

# JAR 파일 복사
COPY ${JAR_FILE} app.jar

# 실행 명령어 설정
ENTRYPOINT ["java", "-jar", "app.jar"]