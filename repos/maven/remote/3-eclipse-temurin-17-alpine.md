## `maven:3-eclipse-temurin-17-alpine`

```console
$ docker pull maven@sha256:91f028e13c429b20491181157918b90c926116723e452fb41a9c29887042f188
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:15beaf60f98f4ae18c885b5e0b26cae2d47b6eb1c4a0612e4414d92402331951
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.9 MB (182947279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c923cc429d5ed28d59d2acda3c16f8b3d7fd6285448e6657928bca72c086aec0`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:23:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:23:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:23:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:23:35 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:23:35 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:23:43 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='c8bb5bc6984762dbce2ab7403d90832b6897c07f36f8706e4a315aa7a566d04d';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:23:44 GMT
CMD ["jshell"]
# Wed, 16 Sep 2026 05:25:15 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Wed, 16 Sep 2026 05:25:15 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 16 Sep 2026 05:25:15 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:25:15 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 16 Sep 2026 05:25:15 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 16 Sep 2026 05:25:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 16 Sep 2026 05:25:15 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 16 Sep 2026 05:25:15 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:25:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 16 Sep 2026 05:25:15 GMT
ARG USER_HOME_DIR=/root
# Wed, 16 Sep 2026 05:25:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 16 Sep 2026 05:25:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 16 Sep 2026 05:25:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26cd5aab71d3939c7e16e44f694b8c0cf73ffdb9eaf0ebc914e57d6b54aa607`  
		Last Modified: Fri, 21 Aug 2026 18:23:59 GMT  
		Size: 21.4 MB (21434109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb3df7902765cf89902403cbc4eabf8772ce27e2ecefeb9278dc107ff548e1d`  
		Last Modified: Fri, 21 Aug 2026 18:24:02 GMT  
		Size: 145.0 MB (144970186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05721dd3d30aba44494d76ca3141ab6b746eeeb269290250164d22286ccc33d5`  
		Last Modified: Fri, 21 Aug 2026 18:23:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768e6e1dbe85c2d1c5df73eb36a85054662deff12e37d784e455d8dc9c304739`  
		Last Modified: Fri, 21 Aug 2026 18:23:58 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85a1ef2f292ff66af83ce49fc79eff806a9ba7004dcb92e7d0eb012968f40ce`  
		Last Modified: Wed, 16 Sep 2026 05:25:23 GMT  
		Size: 3.3 MB (3333015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2d83205870480b75db063a5b516910bdec540f86edf2bee5ee2c90587199a2`  
		Last Modified: Wed, 16 Sep 2026 05:25:23 GMT  
		Size: 9.4 MB (9359971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d31d52be7842594a0f324576f264b1cba2ef144df3ebd0e010888481bc1bf510`  
		Last Modified: Wed, 16 Sep 2026 05:25:22 GMT  
		Size: 860.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043f9730f867ab3a0beb7fc6fb3cba63531d2b19893d6a61dfe460b814d6fe6f`  
		Last Modified: Wed, 16 Sep 2026 05:25:23 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:24c30f4da552de7b93dd4a85e0daea2abe090514080213eb315887967b1b8606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1241318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7ab4a31d2d6d42796de540c702b5bcc4dffbb0d854a91adacf5db688ce137b8`

```dockerfile
```

-	Layers:
	-	`sha256:a91e01297d406b74e025f01db04319e8bf15cb59d52a9542d2b9a8be9522cd53`  
		Last Modified: Wed, 16 Sep 2026 05:25:23 GMT  
		Size: 1.2 MB (1224275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44ad2722cfa63839986cd024e0023b22bedc748dac7d67813910f07357d0b66b`  
		Last Modified: Wed, 16 Sep 2026 05:25:22 GMT  
		Size: 17.0 KB (17043 bytes)  
		MIME: application/vnd.in-toto+json
