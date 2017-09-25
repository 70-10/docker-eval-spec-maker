FROM java:8

RUN git clone https://github.com/ryuta46/eval-spec-maker.git /eval-spec-maker
WORKDIR /eval-spec-maker/project
RUN ./gradlew exportJar

WORKDIR /doc
ENTRYPOINT ["java", "-jar", "/eval-spec-maker/project/export/evalSpecMaker.jar"]
