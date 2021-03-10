FROM java:8

ENV EMBULK_VERSION=0.9.23
RUN curl -o /usr/local/bin/embulk --create-dirs -L "http://dl.embulk.org/embulk-${EMBULK_VERSION}.jar" && \
    chmod +x /usr/local/bin/embulk

RUN embulk gem install \
    embulk-input-azure_blob_storage

ENV TZ=Asia/Tokyo

WORKDIR /work
COPY ./config/ config/

ENTRYPOINT ["java", "-jar", "/usr/local/bin/embulk", "run", "config/sample.yml.liquid"]
