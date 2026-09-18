## `eclipse-temurin:8u502-b07-jre-alpine-3.22`

```console
$ docker pull eclipse-temurin@sha256:ec41f7bd77243b3b525279cb3dc724236a56bcacdb911ad1bbcfa06fa3082237
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `eclipse-temurin:8u502-b07-jre-alpine-3.22` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:b4a7487d3f5e541d66cb043b8ce4f308071225df2dd69bd93fd66c481d1de62a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62416492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd424194dd2952c88b332a462ffdda9796d9d4eb24e752cdce43500c04ca6c5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:40:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 17 Sep 2026 21:40:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:40:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 17 Sep 2026 21:40:03 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 17 Sep 2026 21:40:03 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Thu, 17 Sep 2026 21:40:06 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='39d17b519d925e2a979056d800e712b4d5f8b68112413ab1d06f525c1571c164';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 17 Sep 2026 21:40:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 17 Sep 2026 21:40:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 17 Sep 2026 21:40:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1aca75aea8339798bd561eb5a15eb388cd954a9c803841d8a3e1faca9875a9f`  
		Last Modified: Thu, 17 Sep 2026 21:40:16 GMT  
		Size: 16.4 MB (16357134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2443bf90f3448ddc6aed3cdb3d5598bd4bc47067fe5e02bb3d533a743d887923`  
		Last Modified: Thu, 17 Sep 2026 21:40:17 GMT  
		Size: 42.3 MB (42264695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d081e4e809c54e716feb5dcb0b321ac2965f2c30823b0036690af3d25f3165`  
		Last Modified: Thu, 17 Sep 2026 21:40:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ad20da3d5cbf6ea1d92322bb60e4537ae43a0cbf3fb143beddbaae7761f60d`  
		Last Modified: Thu, 17 Sep 2026 21:40:13 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u502-b07-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:118112c5686f0102d0ae6a0fb11546a36fc017150f895633241fcbf2ac3913a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **930.9 KB (930939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d6842739ce7d061481310fb64aa374c3c7b4c89b0a655b789d34f8450bfc36`

```dockerfile
```

-	Layers:
	-	`sha256:1e894f81d29e2143731953e18a27999e3964dfea281d2a9190a5bf55f5703f48`  
		Last Modified: Thu, 17 Sep 2026 21:40:16 GMT  
		Size: 912.8 KB (912752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1c9929846e154e75bb5ae816fec3fe991b0916d535782d72b960b0f0947f114`  
		Last Modified: Thu, 17 Sep 2026 21:40:15 GMT  
		Size: 18.2 KB (18187 bytes)  
		MIME: application/vnd.in-toto+json
