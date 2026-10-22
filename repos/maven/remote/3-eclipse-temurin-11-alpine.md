## `maven:3-eclipse-temurin-11-alpine`

```console
$ docker pull maven@sha256:9d0e378ffcf64e54581366403f63f0763cd7892dac23c66ab8631c2ddd742954
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-11-alpine` - linux; amd64

```console
$ docker pull maven@sha256:9bf3175ac1af8b10d763e6e1a6c05013e2a1571ac42d98840cdf9bbe6f050a14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175245105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80840c8ecc25b49e16f371a3048853afe96b68d92ea40223ed43f3e2112fd750`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:57:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 22:57:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:57:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 21 Oct 2026 22:57:07 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Wed, 21 Oct 2026 22:57:07 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Wed, 21 Oct 2026 22:57:14 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='1dc1d3259fa4ca7a2db43c539a60bfa7fc0ea595f445a71ef36d28120f3094aa';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 21 Oct 2026 22:57:16 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 21 Oct 2026 22:57:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 21 Oct 2026 22:57:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 21 Oct 2026 22:57:16 GMT
CMD ["jshell"]
# Wed, 21 Oct 2026 23:41:18 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Wed, 21 Oct 2026 23:41:25 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 21 Oct 2026 23:41:25 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:41:25 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 21 Oct 2026 23:41:25 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 21 Oct 2026 23:41:25 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 21 Oct 2026 23:41:25 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 21 Oct 2026 23:41:25 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:41:25 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 21 Oct 2026 23:41:25 GMT
ARG USER_HOME_DIR=/root
# Wed, 21 Oct 2026 23:41:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 21 Oct 2026 23:41:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 21 Oct 2026 23:41:25 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9632d9503c0299d335f1dd24d30125f5713e5b6bd6f985d9079a11189419a234`  
		Last Modified: Wed, 21 Oct 2026 22:57:30 GMT  
		Size: 17.0 MB (16967540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a46ed936960b26456e7bdeb10f62faf8e07cea28a1f248daa3159ff52768461`  
		Last Modified: Wed, 21 Oct 2026 22:57:31 GMT  
		Size: 141.0 MB (141032602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb72588998789ae7ce3c134f1ce2c8ef9cf614605e07c390039c9d73a5e68c21`  
		Last Modified: Wed, 21 Oct 2026 22:57:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef9201ddaff5b429069f6191c3fd5307a3c763b97064ab55f38f9a71d78bed1`  
		Last Modified: Wed, 21 Oct 2026 22:57:28 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7832c5a1238cf8a867452f35b9876a627f9d2f71b0966c2d8af27c156c0c1bc8`  
		Last Modified: Wed, 21 Oct 2026 23:41:32 GMT  
		Size: 3.3 MB (3329241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b541d6ab2f72134dedfbb915874f9e10f4e09b05abdc9c4508c854ca4bfd1706`  
		Last Modified: Wed, 21 Oct 2026 23:41:32 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1861d78a1f3aebe3181b0c2108204d0813de25f4e162827bff23f08e2d81c89f`  
		Last Modified: Wed, 21 Oct 2026 23:41:32 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2819573bf43bd8d4a68d66e7456bcd170725dd9fa881de3a27bb9718f58350`  
		Last Modified: Wed, 21 Oct 2026 23:41:32 GMT  
		Size: 151.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:9bbc65693bf97b903d9889523fe47fd796420e0485745908669e7fd3b5fd455e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1146433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f30101e76485c22151e4ef7687a8881faeebd6b347dcd9b68574aeea3b40f9c`

```dockerfile
```

-	Layers:
	-	`sha256:1a51bcc0fa7169f5738144dce91aac1fe7e9b1070abd444104d182c1b0894c47`  
		Last Modified: Wed, 21 Oct 2026 23:41:32 GMT  
		Size: 1.1 MB (1129380 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96edd9797e1d5e6721d93b1e2b8c3ac6c4bdf34e9c195a867b77dd089fad7311`  
		Last Modified: Wed, 21 Oct 2026 23:41:32 GMT  
		Size: 17.1 KB (17053 bytes)  
		MIME: application/vnd.in-toto+json
