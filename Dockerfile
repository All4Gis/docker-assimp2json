FROM alpine:3 as builder
RUN apk --no-cache add \
        build-base \
        cmake \
        git \
        zlib-dev
COPY assimp2json /opt/assimp2json
WORKDIR /opt/assimp2json
RUN mkdir build && \
    cd build && \
    cmake -DCMAKE_BUILD_TYPE=Release .. && \
    make assimp2json && \
    make install/fast

FROM alpine:3 as runner
RUN apk --no-cache add libstdc++
COPY --from=builder /usr/local /usr/local
ENTRYPOINT ["/usr/local/bin/assimp2json"]
