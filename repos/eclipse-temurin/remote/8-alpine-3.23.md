## `eclipse-temurin:8-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:ffc3807fc3274f4ba72514d5b566aa7d24f7dca12319e76646b505eddf1325b3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:202632fd50368b45cf9b5573f6c53d963134745de5cd83a76b8cd5dcfb76c8ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73844879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f907850972f429620fbe121f4e7097ac8299ea764d1ec4a5d02695cca0560ac`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:15:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:15:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:15:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:15:25 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:15:25 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:15:29 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='e2a7fa7d86033e6c315aa45a7ba772d1d93ccb4f736cab40291a5d7b0998e6b9';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jdk_x64_alpine-linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Mon, 09 Nov 2026 23:15:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:15:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:15:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c557f059f42f1066be0d3c9000f9854ca7ba8ef78080405f9d415145091a2b`  
		Last Modified: Mon, 09 Nov 2026 23:15:40 GMT  
		Size: 16.9 MB (16891190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed049e5b9d9a4b7b4554e5635e72343f171ae2655c0c603bf810e07ba5f3070`  
		Last Modified: Mon, 09 Nov 2026 23:15:41 GMT  
		Size: 53.1 MB (53098490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2807bad8ff8eccfacfd976935b376beec482d1fe770acc94f9bcc04a036e78a3`  
		Last Modified: Mon, 09 Nov 2026 23:15:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20abcbac4d3b8882446103cef799700b2954a9bfe1d11cb33f2e5b5c70d70830`  
		Last Modified: Mon, 09 Nov 2026 23:15:39 GMT  
		Size: 2.5 KB (2482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:691d316d685d71d52267e76fa0641ce43636b898d25b0fe4b513f5f3854533c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1107830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3740c2e54ed5a80394e08ebca1047eb15d8ca68e3075339c099c095ec3c33320`

```dockerfile
```

-	Layers:
	-	`sha256:7da97d914c351cd2b2d9d8f200a80514e2b9771bcae193281ae8f7cafeab1f13`  
		Last Modified: Mon, 09 Nov 2026 23:15:39 GMT  
		Size: 1.1 MB (1089119 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f81f3a1ff254684e3db9ecfdc66482412a277d9ffe8e23f4f34329a6c7cb15d6`  
		Last Modified: Mon, 09 Nov 2026 23:15:39 GMT  
		Size: 18.7 KB (18711 bytes)  
		MIME: application/vnd.in-toto+json
