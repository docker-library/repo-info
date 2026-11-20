## `maven:3-eclipse-temurin-11-noble`

```console
$ docker pull maven@sha256:ff92a17fa216fe695d34e6d2021c0daff4d50f593c998c3b3db150985513804f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `maven:3-eclipse-temurin-11-noble` - linux; amd64

```console
$ docker pull maven@sha256:ee259570cb757aba5d2495b544bc8115dc284a0b411485c78a4309183f040a76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.4 MB (231403671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:357a0ae391106c339abedb0a8c8fe888b29bb5ba5721af02cf92506a9c79e744`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:15:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:15:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:15:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:15:46 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:15:46 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:15:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:15:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:15:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:15:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:15:54 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:18:50 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:18:50 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:18:50 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:18:50 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:18:50 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:18:50 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:18:50 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:18:50 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:18:50 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:18:50 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:18:50 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:18:50 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:18:50 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f224063adcdda11ae3697a4d646a7414bb19862b1dc0fc32dd3d537961ed247d`  
		Last Modified: Fri, 20 Nov 2026 03:16:09 GMT  
		Size: 23.1 MB (23065112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628d38ca88871c0a9da19f20e8e16ae2040d69ea17e7cebc35edd43925f330cc`  
		Last Modified: Fri, 20 Nov 2026 03:16:12 GMT  
		Size: 145.9 MB (145930517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d870068ac524697dd7b1d2b048d5ef30bd49d55a2c52e2b90e96357eaa985b`  
		Last Modified: Fri, 20 Nov 2026 03:16:08 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e97d469070dcce3a175fc7ece60b6cf37132161004521c166189c20dcc6e47b3`  
		Last Modified: Fri, 20 Nov 2026 03:16:08 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e75826ba398cb4fb3ae0441df53e3713b7b9d2e4eb878459d7911cd1bc5fce85`  
		Last Modified: Fri, 20 Nov 2026 06:19:03 GMT  
		Size: 22.6 MB (22552098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977b4884f64f87bdcb8bda55c38eb009a745a3e4d8c2b44522c6c8e6aad677e6`  
		Last Modified: Fri, 20 Nov 2026 06:19:03 GMT  
		Size: 10.1 MB (10059020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01911bc920234369350f76bafd7e65510e550236840b5a97cbc7f9db911c963c`  
		Last Modified: Fri, 20 Nov 2026 06:19:02 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395d161efc80f02b717ca032e8f6865649da500cdf5bee914871d27c3732ff2e`  
		Last Modified: Fri, 20 Nov 2026 06:19:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:d0c5f95bcf25eba65eb8ce00492b783a4f29de9c77d723c113733454fbbd25fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4919041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4564e739121cc9f70ba79efa9d67cf4ee011ef50dc2911bdd10782839449a335`

```dockerfile
```

-	Layers:
	-	`sha256:b67a4b876f62b01d16dd174bd6d3a33b2ecfbb392af8b8ce7377d0879c6bfe5f`  
		Last Modified: Fri, 20 Nov 2026 06:19:03 GMT  
		Size: 4.9 MB (4901701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:baefd7084dc80027d0a0e396eb088a034a8290c1114fdefba1a84c8d28d93c00`  
		Last Modified: Fri, 20 Nov 2026 06:19:02 GMT  
		Size: 17.3 KB (17340 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-11-noble` - linux; arm variant v7

```console
$ docker pull maven@sha256:553fdc3bd06fd96ce2805c7785d952b978ef10db41d72785faf043c12a0a58f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223800687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab93d6f7f7f4eab07a5879a091228a1a54fb4e54341ed13330948a5a3067e017`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:05 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:05 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:08 GMT
ADD file:eddbc4b43f6fadc774a0b15ea483785d3cb23b1b831791ed71908357858f40a9 in / 
# Tue, 10 Nov 2026 18:31:08 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:10:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:10:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:10:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:10:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:10:49 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:11:01 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:11:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:11:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:11:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:11:02 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:12:51 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:12:51 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:12:51 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:12:51 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:12:51 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:12:51 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:12:51 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:12:51 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:12:51 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:12:51 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:12:51 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:12:51 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:12:51 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:791147b088b7508116b0b388cfcf00e16fa77f527003abee70726bcdb34b8248`  
		Last Modified: Tue, 10 Nov 2026 20:09:32 GMT  
		Size: 26.9 MB (26921983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:936025761d36630b3a44836e3756cd8cfb2f0208f3c03a570a6f8237418d6ebb`  
		Last Modified: Fri, 20 Nov 2026 03:11:19 GMT  
		Size: 21.1 MB (21124470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e11fcaaf3aa26cba4c9fe099c7946392837f1a4f39a7e3a4c05d5a4080b3eb1`  
		Last Modified: Fri, 20 Nov 2026 03:11:21 GMT  
		Size: 138.4 MB (138410427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da86f7a529d5550a6436478869a7c753fa95139ae4641599bbc28fb8fb3f3719`  
		Last Modified: Fri, 20 Nov 2026 03:11:18 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b23be3a5d34d60c5b8f1e79ba1a3e7335b437120fccdb4c76bb99cf5af30b2e`  
		Last Modified: Fri, 20 Nov 2026 03:11:18 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c565e1643c1f6f01c09200e9e6a7d21a82308ef9640ba334e203253f1901ac0b`  
		Last Modified: Fri, 20 Nov 2026 06:13:04 GMT  
		Size: 27.3 MB (27281169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9124a324f2bed2d12499e26e530f4a415a4568e126c2b5c61cfe40f7a2209899`  
		Last Modified: Fri, 20 Nov 2026 06:13:04 GMT  
		Size: 10.1 MB (10059010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8e05aaf212fe8f88ea7842b95c812ea76ee5a7ea5e7c07b96678ed4d62c43b`  
		Last Modified: Fri, 20 Nov 2026 06:13:03 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c864a71d23fb2523a14aaf833496bf23fffdf3307ca38d37e94f570e28bfe6fb`  
		Last Modified: Fri, 20 Nov 2026 06:13:03 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:30c558c9fae6396a571d1919443fadf889807be8578ec6e57572efe9a222f818
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4918948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ca46889e139cb537270a083acab44f413d6bfddb849a58b520842104b0874d1`

```dockerfile
```

-	Layers:
	-	`sha256:f84c643f9e8ec932114edc0e852b2ec338eedadc5877cc44b8ae96e94793e78e`  
		Last Modified: Fri, 20 Nov 2026 06:13:04 GMT  
		Size: 4.9 MB (4901501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0370018893383fef74e61971dabfa81b9e2676b37efad06ed39dfe0c7638aa05`  
		Last Modified: Fri, 20 Nov 2026 06:13:03 GMT  
		Size: 17.4 KB (17447 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-11-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:b347322672ba9de15219ba727167828d9a25980d136bf4bc09de49641a66a4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.1 MB (227119790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f7864b24a984d3fd090e89ef0b39940fb0699437a320d44be63945a9e42cd9a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:15 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:15 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:16:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:16:27 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:16:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:16:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:16:27 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:16:00 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:16:00 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:16:00 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:16:00 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:16:00 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:16:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:16:00 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:16:00 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:16:00 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:16:00 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:16:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:16:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:16:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330f12a9acd71db4e1eae11fd24d9f12bc114fe5373c881480c966f5b9906ef4`  
		Last Modified: Fri, 20 Nov 2026 03:16:44 GMT  
		Size: 22.8 MB (22849363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e828a43e89facbbbf6ea833b4be02bc97db01c330a1ea1c9542498b21bc2a1`  
		Last Modified: Fri, 20 Nov 2026 03:16:46 GMT  
		Size: 142.6 MB (142623493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61c35f281ddd9a8547e4b6138e05d3a9106d7b65067527395bf6060f3b84f3b`  
		Last Modified: Fri, 20 Nov 2026 03:16:43 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082692722d2997060deb3026feaf6b77154ad8d146e963c3993bf03c032935bb`  
		Last Modified: Fri, 20 Nov 2026 03:16:30 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e4792d00354ff8a5cabc7f26aede33469143172d164b83a48bac45b0947d61`  
		Last Modified: Fri, 20 Nov 2026 06:16:12 GMT  
		Size: 22.6 MB (22618978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b4dc141ffc12aa5aecb016469feb10270e2dbf9c11acb68f18ee1d9f5eb9dc`  
		Last Modified: Fri, 20 Nov 2026 06:16:12 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a309450fcb83ea65324acae033e95f6e72cdccf0ce5b00aaf785149bfd3de60`  
		Last Modified: Fri, 20 Nov 2026 06:16:11 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca2ce3cde24f73d27b427e9b95c3aebaa887a102cc94bfa349c704a5b9c357e`  
		Last Modified: Fri, 20 Nov 2026 06:16:11 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:ee734b075abd5d0731ee61e84e024ae6d3f020e016585dd77efb7b2fc8a2920f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06757169b39e34429b2928550a67707c636d0cee88544bd4f6feee8e6dbe84ea`

```dockerfile
```

-	Layers:
	-	`sha256:4174be1bdb8823650eafda1d7e7d2bc78025288516bc6fa3708a2dd516b03d95`  
		Last Modified: Fri, 20 Nov 2026 06:16:12 GMT  
		Size: 4.9 MB (4908830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f71dd5fba51aaa97b11a30c12cd563beb2758eb5bb83717a741704efd1acb5da`  
		Last Modified: Fri, 20 Nov 2026 06:16:12 GMT  
		Size: 17.5 KB (17473 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-11-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:9bc0c75794d6659d6fd886c933067a37ee58522fc17cade20bd823fd6519c279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.0 MB (228990620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e2c7601148fdd4e4bca3501c420714a6cf05ddfa003d322539d1db8c4b6321`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:22:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:22:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:22:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:23:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:23:52 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:24:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:24:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:24:04 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 09:31:34 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 09:31:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 09:31:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 09:31:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 09:31:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 09:31:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 09:31:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 09:31:35 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 09:31:36 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 09:31:36 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 09:31:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 09:31:36 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 09:31:36 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ebaa1e7b750c6d8a6862f3d311b4d62adccafbcc2e1d7c53d1e1cc58d69abc`  
		Last Modified: Fri, 20 Nov 2026 03:23:15 GMT  
		Size: 25.7 MB (25655366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76a2e1d559a86951ec951b623a49c146f7b3377d6443e0c4770f117f26ec787`  
		Last Modified: Fri, 20 Nov 2026 03:24:40 GMT  
		Size: 132.3 MB (132281072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:977bc34e085aa64f71f7e3525984854ffc5a62fe3e84523919e721fe6c97c44d`  
		Last Modified: Fri, 20 Nov 2026 03:24:37 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a935098b76fe272375be984d67edaa708b2b4ff50f3cbf97783e79cb10c601`  
		Last Modified: Fri, 20 Nov 2026 03:24:37 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc6e44e971063060136de24f3224582dd60f53b3a8a44e8b945026386134cd9`  
		Last Modified: Fri, 20 Nov 2026 09:32:08 GMT  
		Size: 26.6 MB (26585287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3e0f01e78e433091ac31c553649b98b83e41451eb1eb521b4b4de9c94fb220`  
		Last Modified: Fri, 20 Nov 2026 09:32:07 GMT  
		Size: 10.1 MB (10059022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38bfc04a8e0ade04b4c4a13e5074a9faa29726cc00ef765ebecef020dd4c412`  
		Last Modified: Fri, 20 Nov 2026 09:32:07 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6516c0a02b156f68a1800da631ad2a17a846a3f1b4f5916b49edaedd09e142a1`  
		Last Modified: Fri, 20 Nov 2026 09:32:07 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:63257383c61c2947ec04f201a9b042b9ce009b65c558ea99ac293134aaf57d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4922161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9408a593007253a886f1208966366d26f965b7069071417c80331bcb6e7105f3`

```dockerfile
```

-	Layers:
	-	`sha256:dd6dc21441ab552d84b8e1e29765a6c7a7fd06d3d19c0e52b306380f543297e1`  
		Last Modified: Fri, 20 Nov 2026 09:32:07 GMT  
		Size: 4.9 MB (4904772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b293834c7699b4928e946f3754b62ce4634a410cbadd3fd09a6bf466f20f7e5`  
		Last Modified: Fri, 20 Nov 2026 09:32:07 GMT  
		Size: 17.4 KB (17389 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-eclipse-temurin-11-noble` - linux; s390x

```console
$ docker pull maven@sha256:93e2104cf020922dd623a2fb22fc9e93f9aac85c971c2195ae476d0d7f2e7dd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212540768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e71493710a8fa6956e45da43fb800f637a2beceba2a101682c3a424e15cc723`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:30:54 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:30:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:30:54 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:30:56 GMT
ADD file:f57d73889514e35770bca8a6b376ae28a49d35f7eca0530120c0e5edda118257 in / 
# Tue, 10 Nov 2026 18:30:56 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:09:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:09:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:09:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:09:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:09:03 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Fri, 20 Nov 2026 03:09:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='c4b8eaf56c93b95b689ffc08d155df1bcdbbffb666f8f71d21d97aedaea6f0ec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_linux_hotspot_11.0.33_10.tar.gz';          ;;        arm64)          ESUM='60b0fb79bb678b6fae3e499c7b0a353e68633ed0ab69d1a6bafe6092ed1e59e4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.33_10.tar.gz';          ;;        armhf)          ESUM='61b540e26de94600b2034a07a75492790f873bffd8664f0960ce88cd9e15feca';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_arm_linux_hotspot_11.0.33_10.tar.gz';          ;;        ppc64el)          ESUM='b1512acf29fb47c460b2da198ab13932294c51703920ad1daffc3f29c2ccb4fb';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.33_10.tar.gz';          ;;        s390x)          ESUM='1d100931d701ea97933c429cbc18e249d3bb5b954feff920d75d6c31d7d443d4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:09:09 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:09:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:09:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:09:09 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:29:19 GMT
RUN apt-get update   && apt-get install -y ca-certificates curl git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:29:19 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:29:19 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:29:19 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:29:19 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:29:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:29:19 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:29:19 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:29:19 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:29:19 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:29:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:29:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:29:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d6a4828736418640f88890fd03d6d03e5c40e83e24d598ed323f41ba7e349b4f`  
		Last Modified: Tue, 10 Nov 2026 20:09:53 GMT  
		Size: 30.0 MB (29967433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c7cd21b4d8d9492112542b905ec30c3fb4ad466d6610ff1b23bfe8c91d966e`  
		Last Modified: Fri, 20 Nov 2026 03:09:32 GMT  
		Size: 22.8 MB (22787357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679cab1a601ed297c5351a5c065ebd516d2134b4343f4c32a363a3a34dea86d4`  
		Last Modified: Fri, 20 Nov 2026 03:09:34 GMT  
		Size: 126.0 MB (126036977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cfc406d60982af3133f6004046a6c73b57bc27269e23d94b1d30691594cc243`  
		Last Modified: Fri, 20 Nov 2026 03:09:31 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0281677855e01b648e8b9a2563211d7610c8149f53e7f9eb96e6a6aa235d6943`  
		Last Modified: Fri, 20 Nov 2026 03:09:31 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4245886759e708c0c5d7bb5b993da374b3f51a985770d321b5355c4920085365`  
		Last Modified: Fri, 20 Nov 2026 06:29:35 GMT  
		Size: 23.7 MB (23686398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef26eb84ad4f171e489bcfb37617b269d0173f6da7920df30415b18cab2f63a`  
		Last Modified: Fri, 20 Nov 2026 06:29:35 GMT  
		Size: 10.1 MB (10058976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66dc301f1733867d21a021c85e65693c1132dc84c03b41638e23b66032ae15a9`  
		Last Modified: Fri, 20 Nov 2026 06:29:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6577f7e07b6eb4dddde3bbded4ee19645706d93fd23c1f43699f0c736e200eaa`  
		Last Modified: Fri, 20 Nov 2026 06:29:34 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-eclipse-temurin-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:2bda023b27eba8c6ed6e79b8e7cafa2a5dbf20cd512c6d29bc2122b09f934680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4915188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd057608c0d0d525b9b7a8e3dbebd90617e6640dd05a8265dabc506f4462aecb`

```dockerfile
```

-	Layers:
	-	`sha256:288ec30b25f9074e15408276229123d2709438fce0833915124fa4a0f8a00909`  
		Last Modified: Fri, 20 Nov 2026 06:29:35 GMT  
		Size: 4.9 MB (4897848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c46a59a48290067cb4564579af2a5ca1ef0bd111d01d6e79167cdc4a3998921`  
		Last Modified: Fri, 20 Nov 2026 06:29:34 GMT  
		Size: 17.3 KB (17340 bytes)  
		MIME: application/vnd.in-toto+json
