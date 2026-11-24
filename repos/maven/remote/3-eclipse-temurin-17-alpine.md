## `maven:3-eclipse-temurin-17-alpine`

```console
$ docker pull maven@sha256:108b8068b9d0544d42188ee08882c26000269da0ceffffae9bc34404962367c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `maven:3-eclipse-temurin-17-alpine` - linux; amd64

```console
$ docker pull maven@sha256:cd491174eab96ace18ee0b1c8fd27468112c122cea7b62ed29c8de7e2910f9d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.7 MB (185734730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0054812b8e7cd05d423925598a04e7ee397b38f77ba8efd0718474d2d39281f9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:42:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:18 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:42:18 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:42:24 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='4ac50955ad93051e45280c4edabae97c7c9ca4e1d2842c4e430e5b7d9960a570';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:42:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:42:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:42:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:42:26 GMT
CMD ["jshell"]
# Mon, 23 Nov 2026 20:13:46 GMT
RUN apk add --no-cache bash procps curl tar openssh-client # buildkit
# Mon, 23 Nov 2026 20:13:46 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 23 Nov 2026 20:13:46 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:13:46 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 23 Nov 2026 20:13:46 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 23 Nov 2026 20:13:46 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 23 Nov 2026 20:13:46 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 23 Nov 2026 20:13:46 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 23 Nov 2026 20:13:46 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 23 Nov 2026 20:13:46 GMT
ARG USER_HOME_DIR=/root
# Mon, 23 Nov 2026 20:13:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 23 Nov 2026 20:13:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 23 Nov 2026 20:13:46 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d553e9dc39faa28c406ca51894ba199ff6bb3b22473cd414e47916c577731a6c`  
		Last Modified: Fri, 20 Nov 2026 17:42:41 GMT  
		Size: 23.9 MB (23926088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a64586faf2f7b02e98311fa9ad99626b476fe2512f9e4cd3b5cf27af7c8e32`  
		Last Modified: Fri, 20 Nov 2026 17:42:44 GMT  
		Size: 145.3 MB (145258407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce1022f67cd011c4cbb3061bd8266d48f370237a9de02c250e3830d2eec16c5`  
		Last Modified: Fri, 20 Nov 2026 17:42:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1590f96c37e5f6a13b4a8b5f7b3eb26825426c15f95077c29a0f2958c940e8e3`  
		Last Modified: Fri, 20 Nov 2026 17:42:40 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb200983cbef4cd13aef6f72c7624c8bd2289fadb5ad51485a68b3e632a0b69c`  
		Last Modified: Mon, 23 Nov 2026 20:13:55 GMT  
		Size: 3.3 MB (3341677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df5aa893e63d08a2d94bd3d265cff6fdbdc1d25b4bb8e6e6f69bb3aafc7f6966`  
		Last Modified: Mon, 23 Nov 2026 20:13:55 GMT  
		Size: 9.4 MB (9351285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78386d64c0b52c39f990f5559a12eed30bf769015d0f5071b5c710159bd5bb1`  
		Last Modified: Mon, 23 Nov 2026 20:13:55 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbaaa38e8e6d6325ee137c33815b05e3efa19be252e5ebc8bfd155b930ba482`  
		Last Modified: Mon, 23 Nov 2026 20:13:55 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-17-alpine` - unknown; unknown

```console
$ docker pull maven@sha256:9998785c3b8d1b7609ae1677469df7028ac4337d42389c9f09100e45749e8465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1239437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:933ca2097eccfe6b77b078ac9beac349c7c420885d61982d4b7c3dbbf0c200fb`

```dockerfile
```

-	Layers:
	-	`sha256:78f791d095a27a21b8a7b27be65ac1576b051a299f5cf81ba47373930293c9fe`  
		Last Modified: Mon, 23 Nov 2026 20:13:55 GMT  
		Size: 1.2 MB (1222389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3014c83b6401c152f53ea930ce4e9580bd08d6e20007bee1d44c8a972df2852e`  
		Last Modified: Mon, 23 Nov 2026 20:13:54 GMT  
		Size: 17.0 KB (17048 bytes)  
		MIME: application/vnd.in-toto+json
