## `eclipse-temurin:8-jre-alpine-3.23`

```console
$ docker pull eclipse-temurin@sha256:c7529c0f1019a88a5f55354ec1e7f9e5edbcf751da8a87485b805ddf91ba3c5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8-jre-alpine-3.23` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:402dceb32bb99f7c26e2733fcee5c07f162d406634761346aae0354932424bb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63025926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ad497e63e6a10d563d1501c722907f0ff7432558284b540de8a1ddda01a1cdf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:16:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:16:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:16:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:16:26 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:16:26 GMT
ENV JAVA_VERSION=jdk8u512-b09
# Mon, 09 Nov 2026 23:16:28 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='12b6d25841b3e932a60dab34da43f4989a07f767444e3fe7c58d1187252753d9';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u512-b09/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u512b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:16:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:16:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:16:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aad9fefb3c1b761efb4eaef7276e5683b1a6aef1105c1c31b3e627b029b7a15`  
		Last Modified: Mon, 09 Nov 2026 23:16:39 GMT  
		Size: 16.9 MB (16891189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5b40e569d8aa542cd3e97fe3554d35a9e5fe225c813e26de03d550e5804627`  
		Last Modified: Mon, 09 Nov 2026 23:16:40 GMT  
		Size: 42.3 MB (42279559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96fb18d035d64ce8936f3d41f712782099234dd4dad34c7281b5557aa73a905d`  
		Last Modified: Mon, 09 Nov 2026 23:16:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee938729a90d6a3ae9c7c388fa7cf20357fafbb6e825f0bb3ef0f2871cafb28`  
		Last Modified: Mon, 09 Nov 2026 23:16:38 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7cf66ae305e5de3f70b65c24b8267f107d71bc4c1ec4c70c2324814a48462f8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **933.3 KB (933344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d03516bc51c01ae1a99a2c2db8bfb8b218d7d1aa97b41680543114b8fc3dc27a`

```dockerfile
```

-	Layers:
	-	`sha256:c5b66a6a64c9b51c7feec1e68dcff0687f77382e24a35ba2fad57bc465be9148`  
		Last Modified: Mon, 09 Nov 2026 23:16:38 GMT  
		Size: 915.2 KB (915157 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac50cab0b7b387b9ce5e4797e07bc1541439007346165a05e25a4456c0ed2919`  
		Last Modified: Mon, 09 Nov 2026 23:16:38 GMT  
		Size: 18.2 KB (18187 bytes)  
		MIME: application/vnd.in-toto+json
