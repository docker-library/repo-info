## `tomcat:10-jre17-temurin`

```console
$ docker pull tomcat@sha256:9fa13f665d70bc3d4cdb03d41e9313a3998f4672e32c83527c0be418e8a1f3d2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `tomcat:10-jre17-temurin` - linux; amd64

```console
$ docker pull tomcat@sha256:3b00775250c361116e86bedd976edb35c8661940806e2c7ebbfdaff2cfc8b80a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111258663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dfe62f7377fcef092c31014924ef563bb1eb27515bc37b25d162231a7c2a2ed`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:16:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:16:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:16:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:16:48 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:18:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:26:36 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:26:36 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:26:36 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:26:36 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:26:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:36 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 03:26:36 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 03:26:36 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 03:26:36 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:26:43 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:26:43 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:26:43 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:26:43 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:26:43 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7cd1dbf8a5842bdc2ec8501846e481be1791777b37ee2797f064a34f84e0c8`  
		Last Modified: Fri, 02 Oct 2026 01:17:04 GMT  
		Size: 19.4 MB (19375560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6faef3e1394c0f4293fb3f5453a75712753474fd5d088c33cac4c2f7c9ce867b`  
		Last Modified: Fri, 02 Oct 2026 01:18:41 GMT  
		Size: 47.5 MB (47519992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5cba248f55d290d0f462eeb9ecdba60cd77b785bbef076ba945658182e9326d`  
		Last Modified: Fri, 02 Oct 2026 01:18:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb11638b54f26e2fbf495f39d027c93258563585fc72ae72b8e3512aa5bf1d7c`  
		Last Modified: Fri, 02 Oct 2026 01:18:39 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a5e4c873fd1456e1a1adeadeb2330929bd134f64fbf71a36a51a25f1311fcb`  
		Last Modified: Fri, 02 Oct 2026 03:26:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e810715c8eafd4780938830efdc8c7e3a6297e4ab0421f09afbca857fed29afb`  
		Last Modified: Fri, 02 Oct 2026 03:26:52 GMT  
		Size: 14.4 MB (14370264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cd0cb61b0869292d123cce03f06e01b048c2a7fab6f917e60dd17cedde0583`  
		Last Modified: Fri, 02 Oct 2026 03:26:51 GMT  
		Size: 225.6 KB (225600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:737a7ecd66339e227fb6657064d89aae9b2371db4741da6907963aebb2d7cc56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3356034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771734223f50937f12d2823d2aa46dee63bc1472098fbabb5c304bea3e21282c`

```dockerfile
```

-	Layers:
	-	`sha256:7bdc157a603f4d0fa90e6e260e1dcd180f45c63bf40522f268f09e7f1e83809b`  
		Last Modified: Fri, 02 Oct 2026 03:26:51 GMT  
		Size: 3.3 MB (3332919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:233421ea923a88fa311dbc7d5d366ad5d5c4cdccfe4db02c10e29f41c80d9560`  
		Last Modified: Fri, 02 Oct 2026 03:26:51 GMT  
		Size: 23.1 KB (23115 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:ddb8b8a66f1a20e837b86b9ec228b5a0a9a2f49a83632d645871db23827f69a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.6 MB (104621448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3879e7b40bae47d9d8f70f26d53ac0eb02bca5d0ca039b30a2cb2fcb744c79f`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:04 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:04 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:07 GMT
ADD file:6a6fc23d8622292f593d77713efad1a8007c6c40500c31d016c65acd4c58e812 in / 
# Fri, 18 Sep 2026 21:23:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:12:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:12:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:12:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:30 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:12:30 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:12:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:12:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:12:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:17:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:17:24 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:17:24 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:17:24 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:17:24 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:17:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:17:24 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 03:17:24 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 03:17:24 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 03:17:24 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:17:33 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:17:33 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:17:33 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:17:33 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:17:33 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:07637771fb245c4f2be7dab6c9c8a012b4b667b827aa566885f001a405a147d5`  
		Last Modified: Fri, 18 Sep 2026 22:30:04 GMT  
		Size: 26.9 MB (26895617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7039d0b153702a9c5aaaeefddfd1cd16c20d632edc9891db8ad3c883e54ac1`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 18.1 MB (18079589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d348a1254ddebec02785ca23b7305f53c99f20956442b05e7deac2d40d80a7`  
		Last Modified: Fri, 02 Oct 2026 01:12:46 GMT  
		Size: 45.1 MB (45102849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b636e0852a9b41d2bd334d7ce45e9f425af43ff5cf80fc19794bbe1d9ecad41f`  
		Last Modified: Fri, 02 Oct 2026 01:12:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed2035ba41ec2526f21172d2c5187262ecb72f5bec96c31ebfc705a81bae7d9`  
		Last Modified: Fri, 02 Oct 2026 01:12:45 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e161201e052183f042b2ed842ddee4675584dae44d64be26ed35b3dc23e6fb5`  
		Last Modified: Fri, 02 Oct 2026 03:17:42 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2197c91e20be0ada608b46fe834aed2c4aba164ad012e7d73e7a22d9bc45c823`  
		Last Modified: Fri, 02 Oct 2026 03:17:42 GMT  
		Size: 14.3 MB (14343634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83599e69ade6d81a53b88dae2333d23df78165870ce3206040447f74a5e765d7`  
		Last Modified: Fri, 02 Oct 2026 03:17:42 GMT  
		Size: 196.9 KB (196933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:16899e5b398d86b0b5b50e724e688f653f754b9d4746b504e2625c0278299919
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3358582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a9d55b8ddfb76eee12952716d48a8d8d03f868c1f5dd19f64b1a00ca536c85`

```dockerfile
```

-	Layers:
	-	`sha256:e403f0313e25a7d38bf113e6a6e76a089455cecb607cbbf84889f8ff6fb416ab`  
		Last Modified: Fri, 02 Oct 2026 03:17:42 GMT  
		Size: 3.3 MB (3335299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e570a116a4891be440319d51d8cacc164b87321a01e334dc4c069a34fb70eb9`  
		Last Modified: Fri, 02 Oct 2026 03:17:42 GMT  
		Size: 23.3 KB (23283 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:0f6872dafcbef573ff96f035b1d50b86b408809c9a53a5df9bb86580c427b6f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109785030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d20bf34f964cfb30da37c8c05f0988b44bec25d8fa01e1cf3eb57118a56c8d`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:18:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:41 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:41 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:18:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:25:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:25:47 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:25:47 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:25:47 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:25:47 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:47 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:47 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 03:25:47 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 03:25:47 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 03:25:48 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:25:55 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:25:55 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:25:55 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:25:55 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:25:55 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e719170bea597650f1176bbe6e7e3de1aa31243ed5e9c508aad9c51f26d81d`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 19.2 MB (19241374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c393116919f1cdcda52b99ef896a762bef53477066bad2f28bdde9d09828af`  
		Last Modified: Fri, 02 Oct 2026 01:18:58 GMT  
		Size: 47.0 MB (47002589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f7c76c27c5977342679f3e0cc04037c793dd2a57fc42802e7710d5f1abb8fd`  
		Last Modified: Fri, 02 Oct 2026 01:18:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe6620d7c431f04b7fd37769d558280d6feb1ca2a69e4df061244c49f80bf65`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b37a556a44aa13a9bb168bcad60c3d85ad03cd606a0d75b1674e247b268240`  
		Last Modified: Fri, 02 Oct 2026 03:26:03 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa9061261286ffe27a24f0323255e5c563c3b989f6d6f4cdf31287233e23ddb`  
		Last Modified: Fri, 02 Oct 2026 03:26:04 GMT  
		Size: 14.4 MB (14372404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36382a7fcc72453a3f1f131270ee614769825697bbd442b6fa8dc2c0e3e508f7`  
		Last Modified: Fri, 02 Oct 2026 03:26:04 GMT  
		Size: 225.8 KB (225751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:0ff5b5078cb877d056dcb195792ac9418a30183ae6621a98aa3ffb6661346ad8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3356786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d6f7fd6ba1775f93ff1ad8de4af8548c7e6c80953e2998365fa6e8d12647111`

```dockerfile
```

-	Layers:
	-	`sha256:7c653d9a7e5b9ed5219e724f331133f83278d853905975c765388246835a8872`  
		Last Modified: Fri, 02 Oct 2026 03:26:04 GMT  
		Size: 3.3 MB (3333451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b52f247811ff02a0dc0cc9b03fe5752a303063e5265089f7823bf1910fb8516d`  
		Last Modified: Fri, 02 Oct 2026 03:26:03 GMT  
		Size: 23.3 KB (23335 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin` - linux; ppc64le

```console
$ docker pull tomcat@sha256:f0d4eb11c2d3975f35693a8a7062df006ad57b6678fed8f18d68ca4fae3b943d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117930766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92537b424d530e37a908bf6599b123fda314fe9c82d6f59fb37ec49d278a8e7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:33:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:33:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:33:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:33:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:33:55 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 03:45:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:45:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:45:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:45:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 08:56:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 08:56:24 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 08:56:24 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 08:56:25 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 08:56:25 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 08:56:25 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 08:56:25 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 08:56:25 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 08:56:25 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 08:59:03 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 08:59:14 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 08:59:15 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 08:59:15 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 08:59:15 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 08:59:15 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d39e87af60228cb033b80692f6b5df7328d5d16695b3012f2de98fbd6154758`  
		Last Modified: Fri, 02 Oct 2026 03:34:30 GMT  
		Size: 21.5 MB (21481666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdafff63ea67d7c7d72abd31730b0a0d97ff0375bbbbbba74a705d27ca2e86e`  
		Last Modified: Fri, 02 Oct 2026 03:46:29 GMT  
		Size: 47.4 MB (47428256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a73354443c53c54e1ede2a970ac4c3e44249a4eaae1e265d6cc98352f3c12964`  
		Last Modified: Fri, 02 Oct 2026 03:46:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d40d453e424477c37832ad7503cf977ae10541da08cfff20ea04d4d8c1225c`  
		Last Modified: Fri, 02 Oct 2026 03:46:27 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e11b4bbc88a56a4998caca0a554a3f0f8182aa391825b5ea51817c4340dd41f`  
		Last Modified: Fri, 02 Oct 2026 08:57:00 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99627f9e5c4ac7583f1200a6d65ac0bdcb54c77e940b24b957818a3e266fed0`  
		Last Modified: Fri, 02 Oct 2026 08:59:40 GMT  
		Size: 14.4 MB (14384323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abed57c1c715ada9c15ade399cedaec60b9b080fb5cdc0573c409266b1ebc11f`  
		Last Modified: Fri, 02 Oct 2026 08:59:39 GMT  
		Size: 257.2 KB (257185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:354b9e17dbf963c5a2ff11ce3567d401f264daf6d19f5fdf8a061fc4139a38ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3360228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c14607192dcc298f8686a807f0d7b890d632ef6d4c22771f9ce49a2bab9c5c07`

```dockerfile
```

-	Layers:
	-	`sha256:2dcc1e7b39fa26f1d270bced8f57c1cf76b980a175b0e2cb1b4c736178851bcc`  
		Last Modified: Fri, 02 Oct 2026 08:59:40 GMT  
		Size: 3.3 MB (3337026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e85693daecaacd16d7623d9cf1d2dc15001a5e018b2e2696b221acc5ab3bd74`  
		Last Modified: Fri, 02 Oct 2026 08:59:39 GMT  
		Size: 23.2 KB (23202 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin` - linux; riscv64

```console
$ docker pull tomcat@sha256:78471c703806f7e581755ce24b8166455ad307d1c451327842e793533a02167e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111877657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e03a4d5db85299bcdfab2c088e174881a3a236afe2f2876e786bc3198fe39b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 22:20:53 GMT
ARG RELEASE
# Fri, 18 Sep 2026 22:20:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 22:20:54 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 22:21:41 GMT
ADD file:3a1916ce71708268db17b5ce7c5482fc86a6dce4c032062460878125231681f1 in / 
# Fri, 18 Sep 2026 22:21:45 GMT
CMD ["/bin/bash"]
# Sun, 04 Oct 2026 20:54:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 04 Oct 2026 20:54:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 04 Oct 2026 20:54:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sun, 04 Oct 2026 20:54:59 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 04 Oct 2026 20:54:59 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sun, 04 Oct 2026 20:55:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sun, 04 Oct 2026 20:55:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sun, 04 Oct 2026 20:55:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sun, 04 Oct 2026 20:55:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 05 Oct 2026 16:50:56 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 05 Oct 2026 16:50:56 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 16:50:56 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 05 Oct 2026 16:50:56 GMT
WORKDIR /usr/local/tomcat
# Mon, 05 Oct 2026 16:50:56 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 16:50:56 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 16:50:56 GMT
ENV TOMCAT_MAJOR=10
# Mon, 05 Oct 2026 16:50:56 GMT
ENV TOMCAT_VERSION=10.1.60
# Mon, 05 Oct 2026 16:50:56 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Mon, 05 Oct 2026 17:04:15 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 17:05:00 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 17:05:08 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 17:05:08 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 17:05:08 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 17:05:08 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f744af9afcd9f5fe3c98a1581df8785f8f3920cb60a4a7ba86497465ccf35413`  
		Last Modified: Fri, 18 Sep 2026 22:30:18 GMT  
		Size: 31.0 MB (31049980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3158921a77b622f1356940581508eacae6d5d0b03518bd1db825721074ba8e52`  
		Last Modified: Sun, 04 Oct 2026 20:57:56 GMT  
		Size: 20.0 MB (20007965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757bb573f14337be0ed878e4fca2094e159420d98587569a8943fab4762c9019`  
		Last Modified: Sun, 04 Oct 2026 20:58:00 GMT  
		Size: 46.1 MB (46055114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2011bc75b542b1ea9cce0767cf6905480294e8ff69d73a7bfd65e52a83a22cb5`  
		Last Modified: Sun, 04 Oct 2026 20:57:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:844d95177057fc3d1934578728c1d57c340d0daf046d94845d78a0c571c9158a`  
		Last Modified: Sun, 04 Oct 2026 20:57:51 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4d6284081f34bb96c65bd2795c0813f745b1a7c2c4fb3e7b96cf09dbddaf4d`  
		Last Modified: Mon, 05 Oct 2026 16:53:42 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d8757e0e4b5ed6e3033fc845a386b4ada77809e3f9fee3821e3c79cc5d62650`  
		Last Modified: Mon, 05 Oct 2026 17:07:03 GMT  
		Size: 14.5 MB (14533140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53adac584b8aef9f23bd05eeed6d9d21423bb8b06ecd8adb3aa3a983ab59b272`  
		Last Modified: Mon, 05 Oct 2026 17:07:01 GMT  
		Size: 228.6 KB (228631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:ac372a1fce6bb6007a92213dbd0a7e15658c192f272d4b3888d4fd0984e7f1eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3348231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58c0ad0314b918c836713630d20b227bbbddc906ac9d88517b2f0e985333d1a`

```dockerfile
```

-	Layers:
	-	`sha256:3269bdcd4773fc0f36be1253102c10a0cb60d36a7ededf7772263c3d7153d2e8`  
		Last Modified: Mon, 05 Oct 2026 17:07:02 GMT  
		Size: 3.3 MB (3325028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:681695bf6aac5a49972187e932be3f571428dca95e324abe162e9a2bacaaafe1`  
		Last Modified: Mon, 05 Oct 2026 17:07:00 GMT  
		Size: 23.2 KB (23203 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin` - linux; s390x

```console
$ docker pull tomcat@sha256:cd7804b6759bc091b0cc6ae71d6cd483e207718362299377d2fef667fb907597
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108727070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f870ca676786a6e5bd383781219117016ef40a142f59b45d9f0cf2ad6343d2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:22:48 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:22:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:22:48 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:22:50 GMT
ADD file:dbe84e9fbddf57955eb8069675a3842837c04eb1416213c2d50049efd3dad787 in / 
# Fri, 18 Sep 2026 21:22:50 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:15:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:15:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:15:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:15:46 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:15:46 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:22:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        riscv64)          ESUM='79c40c11fbad2b6771d08b9d4a7328bedfe49660b711930d3fe6529e5f28f99f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:22:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:22:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:22:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:39:56 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:39:56 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:39:56 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:39:56 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:39:56 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:39:56 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:39:56 GMT
ENV TOMCAT_MAJOR=10
# Fri, 02 Oct 2026 03:39:56 GMT
ENV TOMCAT_VERSION=10.1.60
# Fri, 02 Oct 2026 03:39:56 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Fri, 02 Oct 2026 03:41:23 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:41:26 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:41:26 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:41:26 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:41:26 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:41:26 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:108aebd72dd457ee7da6e519c157e975c9f75fedf3563478a69f28606232305c`  
		Last Modified: Fri, 18 Sep 2026 22:30:25 GMT  
		Size: 29.9 MB (29945320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eba05513fa6a1c45a894153cbcc879c438e400f18c11daf5ab3cfdb310d81856`  
		Last Modified: Fri, 02 Oct 2026 01:17:00 GMT  
		Size: 19.7 MB (19655653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00adc3ad2e1cd770b170252c14600fd9d9585b126b91b02464c0af74a96710c3`  
		Last Modified: Fri, 02 Oct 2026 01:23:39 GMT  
		Size: 44.5 MB (44515235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bca3172166594a4cad703785e975445ec18b54033a317ee02060f924514cbf5`  
		Last Modified: Fri, 02 Oct 2026 01:23:36 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb93b52f4a47369af0774dfc7004f23bd791687c5417277d6bb2c888b0d36ad`  
		Last Modified: Fri, 02 Oct 2026 01:23:36 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f7c2da0e280e5a8d3a698e4f8a7f6dccfcbdfc8294d27478396d604d51e342`  
		Last Modified: Fri, 02 Oct 2026 03:40:13 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d25e6e09e0b4bb8bdc84c13306d21c4d714c4e79c7ca627c32ee9678831f43e9`  
		Last Modified: Fri, 02 Oct 2026 03:41:38 GMT  
		Size: 14.4 MB (14374211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc528c9a0f9eedf4c22c32ce37b839ed581c4f864e98c180ceef00b23867cc14`  
		Last Modified: Fri, 02 Oct 2026 03:41:38 GMT  
		Size: 233.8 KB (233825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:6f83cb3501c3bf6643d3454ff8cbd2c2e8bdec6bfe53f796dc13507fab406363
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3358233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62dd1f30af8ba29fa67961b402a71641fda31a856ea9374bd026491aea5fea97`

```dockerfile
```

-	Layers:
	-	`sha256:2752dedee0d25b0ab9ac558c936d6cc717219e648cf7a238bad7f42743a17848`  
		Last Modified: Fri, 02 Oct 2026 03:41:38 GMT  
		Size: 3.3 MB (3335118 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f7be11901d4619e978ddc4f6c7d753a2c61252203ec6c3d6dae51179bce9158`  
		Last Modified: Fri, 02 Oct 2026 03:41:38 GMT  
		Size: 23.1 KB (23115 bytes)  
		MIME: application/vnd.in-toto+json
