## `tomcat:9-jre21-temurin-jammy`

```console
$ docker pull tomcat@sha256:ccc2d7e8561d30c11cf9230a06892e413f95476aa5cfa42b3dbce115aca121db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `tomcat:9-jre21-temurin-jammy` - linux; amd64

```console
$ docker pull tomcat@sha256:13cf4f45ac561b611ffb532d50332fd5ccce69007eb1ae4d08170ea76bdc64e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115862936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:167db8aea9e821985088ce2d03841f4076827c60638e6f8f92bf1aefb48a3b4e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:17:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:23 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:19:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:27:02 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:27:02 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:27:02 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:27:02 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:27:02 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:27:02 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:27:02 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 03:27:02 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 03:27:02 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 03:27:03 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:27:11 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:27:11 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:27:11 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:27:11 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:27:11 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04554394ac477b50174eaac591344e0ebed72cda3dee2a3754179f5386f434a9`  
		Last Modified: Fri, 02 Oct 2026 01:17:40 GMT  
		Size: 16.1 MB (16114143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8299b2794a7bf11e0cbae06221c48727bae196cdfa8779aea9bebf431dd5d095`  
		Last Modified: Fri, 02 Oct 2026 01:19:23 GMT  
		Size: 53.1 MB (53097327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246658e744f6dbdade05a9cae0cf7d193e07b240d2a1470a9249f8ab173957e2`  
		Last Modified: Fri, 02 Oct 2026 01:19:21 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e992b94e17ea2591367c150fcb7bd3ee1e5f100c522782a41a7aea8e1c2c5577`  
		Last Modified: Fri, 02 Oct 2026 01:19:21 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cdfd83d8e42bfc2a4a63e6d20febf62ad79f5e4e692d44e790a6b59f37a7be1`  
		Last Modified: Fri, 02 Oct 2026 03:27:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de3f1ef2f373e3740d6296ea4ec8c71b4e373f0157bd7f562322d35995a8e90`  
		Last Modified: Fri, 02 Oct 2026 03:27:21 GMT  
		Size: 13.9 MB (13917402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b58c34fe55766c35187fd36944cd33a60ead2fa821bb356afadcb5347c321c3a`  
		Last Modified: Fri, 02 Oct 2026 03:27:21 GMT  
		Size: 3.0 MB (2979613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:e1cbf4a63474137d4705a5be8c291f1d91d8991ea24f09108478a741972e0e66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3945445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84977238be54a4e43543d02318223691d5ef0cc6dd02f06403195c5f79bf8cc`

```dockerfile
```

-	Layers:
	-	`sha256:b76e4a0cfb6b6430cc2b69564a71b9234c2970d1a7681693a5a4a4f0648200bc`  
		Last Modified: Fri, 02 Oct 2026 03:27:21 GMT  
		Size: 3.9 MB (3924224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:855e937ca5b2da6232f2fd6dd5d9c7fdf159789c27bd7d594a786d2447f97847`  
		Last Modified: Fri, 02 Oct 2026 03:27:20 GMT  
		Size: 21.2 KB (21221 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-jammy` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:fa86bb0b852f60b10919bdbf90a22a287321cb46cfb2a648f68950b54fb85105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112802674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d55abb9f033daf46e7f15ae6fe705b583842ecc7d35fa1a887b4f85aa94897c0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:18:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:40 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:19:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:26:15 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:26:15 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:26:15 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:26:15 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:26:15 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:15 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:15 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 03:26:15 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 03:26:15 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 03:26:15 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:26:22 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:26:23 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:26:23 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:26:23 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:26:23 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4f07e0ac95219d9caeb9d6fc5bc01e5f6803579fc458127af6bf82d9ddd344`  
		Last Modified: Fri, 02 Oct 2026 01:18:57 GMT  
		Size: 16.0 MB (16048135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e3a6cd663c0c65b9cf28324bc2ffa2ec5073bf9222c74e47a2b8b09e3be52ee`  
		Last Modified: Fri, 02 Oct 2026 01:19:21 GMT  
		Size: 52.3 MB (52273643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e98619ad31209554cf888d01a927e8eacc51b5b26cd74f6c150c0daafc6690d`  
		Last Modified: Fri, 02 Oct 2026 01:19:19 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baae1338e74a2d60cbc4c8b6599e3cb5e1480d72d2fd8e6bb14911288c467627`  
		Last Modified: Fri, 02 Oct 2026 01:19:20 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c926e3ad3a104c97605611a5412c7b69d57c8096825b5a4110af9585bff4a54`  
		Last Modified: Fri, 02 Oct 2026 03:26:31 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67fa9eb345c18423e0b8c5fd91bb52a2fff8ec4b4bf82ae502c15feecb7ad624`  
		Last Modified: Fri, 02 Oct 2026 03:26:31 GMT  
		Size: 13.9 MB (13923673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc5467d2463e33b2b5a1661ab1f586aaeef3576e8513632b7a201b48ad33c825`  
		Last Modified: Fri, 02 Oct 2026 03:26:31 GMT  
		Size: 2.9 MB (2870260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:b16cbf4b0bce814981d545a4def35fdb05a073f47b226824a1e76f91b2a5d988
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3945262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59aba2081d8f8ff7eada4c7f1ee887f45a39bf9bc43c088f1a4bb820022867c7`

```dockerfile
```

-	Layers:
	-	`sha256:a553e3cd832c6a02694055bc2b984926a6f6cd5f2e3208a1f9e84d0b79765279`  
		Last Modified: Fri, 02 Oct 2026 03:26:31 GMT  
		Size: 3.9 MB (3923893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc69b0046135b8d1c2eaf62972ff3f6e9ae4320f4083d775f34ed359d54b869e`  
		Last Modified: Fri, 02 Oct 2026 03:26:31 GMT  
		Size: 21.4 KB (21369 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-jammy` - linux; ppc64le

```console
$ docker pull tomcat@sha256:b6dcc6154156fd93dd9bbe03f97dd5524c62e4fb89ff1428abaffaf5f04fa170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.8 MB (122778475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2677b9c5a3a4a8dcd8df8fc773f5ad901a6d8445bdcbbc4a7fecf9efad43dea`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:34:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:34:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:34:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:34:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:34:32 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 03:50:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:50:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:50:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:50:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 08:55:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 08:55:35 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 08:55:35 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 08:55:36 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 08:55:36 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 08:55:36 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 08:55:36 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 08:55:36 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 08:55:36 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 12:33:31 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 12:33:42 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 12:33:44 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 12:33:44 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 12:33:44 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 12:33:44 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0293deb3c1983b9215d56b486798d88bc4f16eb2bd51413c759d76cb73436437`  
		Last Modified: Fri, 02 Oct 2026 03:35:09 GMT  
		Size: 17.6 MB (17594211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee97390bad6a038cf2f65e48c24152c27ca854ebe05cce7a4dc58190f60c6c48`  
		Last Modified: Fri, 02 Oct 2026 03:51:28 GMT  
		Size: 53.1 MB (53113964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8954fce98fda8194cdfc74d1c225a1891eff1d365468785fce610edab4838a`  
		Last Modified: Fri, 02 Oct 2026 03:51:26 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9499e23607b23cac6419a4a48b25a934882a00b881025784cbc7cbbdc0d0732a`  
		Last Modified: Fri, 02 Oct 2026 03:51:26 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678e66640de8a68828f5831da63c6ead40fc941d454da121a74eff315be40088`  
		Last Modified: Fri, 02 Oct 2026 08:56:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380ec993d26869629e00bdc951980adaecb0e2a1459eb3a1c31e7d81c8f4f3b1`  
		Last Modified: Fri, 02 Oct 2026 12:34:15 GMT  
		Size: 13.9 MB (13943102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9c5229beb05987ff10cccec4a90972f01523c5e6e7c8990a86d7308ca2d5b67`  
		Last Modified: Fri, 02 Oct 2026 12:34:15 GMT  
		Size: 3.4 MB (3421165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:5dc09c20509826bbe2d91a290a22c708aaaf8d9333e6ab1051c53d70d88944e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3949585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbc3af473ac1e6bc92b69ac2f52a2a395b59e7a58530858faa5914a7e70f2459`

```dockerfile
```

-	Layers:
	-	`sha256:29977c8122ce6e62b406b284239ee8db4ea281db75f47dd80e141419f5a35a6b`  
		Last Modified: Fri, 02 Oct 2026 12:34:14 GMT  
		Size: 3.9 MB (3928312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f486288fd0dd2d15c76ec53d044df8450b939e48dac0439d32bf0402afebdfdf`  
		Last Modified: Fri, 02 Oct 2026 12:34:14 GMT  
		Size: 21.3 KB (21273 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-jammy` - linux; s390x

```console
$ docker pull tomcat@sha256:542b36c81906880f7d133619f3c94e26e5ee2458e75bbda6e6bf59db59554c33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110552788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1795404b87ca02d6cdb507c19e1df55a2c39f1af737158d0803b4afc3e078180`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:54 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:55 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:56 GMT
ADD file:db47e3926ab7bde0eac1956f72b5e29cdfee4e7ba1a182277e89477759e0044a in / 
# Thu, 24 Sep 2026 22:24:56 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:17:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:07 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:28:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:28:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:28:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:28:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:39:39 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:39:39 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:39:39 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:39:39 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:39:39 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:39:39 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:39:39 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 03:39:39 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 03:39:39 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 03:43:02 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:43:35 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:43:36 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:43:36 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:43:36 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:43:36 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e1502cdfd138d89dddc82531455ad8426a7eaa0d843665253c16b88cb6870c91`  
		Last Modified: Thu, 24 Sep 2026 23:36:39 GMT  
		Size: 28.2 MB (28222068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b425b310d4cc599e020eb9bd22817101c9306572f90f7d708f54a01bed2aac85`  
		Last Modified: Fri, 02 Oct 2026 01:18:38 GMT  
		Size: 16.1 MB (16114331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cec93dd882ab980980394a1975def99d8fa08b49c46c72cf2e592a32d111e46`  
		Last Modified: Fri, 02 Oct 2026 01:29:50 GMT  
		Size: 49.6 MB (49638086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6767e7a390a9035c3d773b8f72083fb18c80f2e602d1e51ebe8a4d95d678560e`  
		Last Modified: Fri, 02 Oct 2026 01:29:46 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:709d36705852650a162a97614dcf4f69e5cf3c1f4708c0ddbf86e9a13d3a82bf`  
		Last Modified: Fri, 02 Oct 2026 01:29:47 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c589313116cf30743ead6f07ea28d5e1b946b9274ba78709d805a0b5167c6ad0`  
		Last Modified: Fri, 02 Oct 2026 03:39:55 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36057aaa42894b3bf72fde2671044a5beb7362ec83aa8b30d56bd2af9d235d9b`  
		Last Modified: Fri, 02 Oct 2026 03:43:49 GMT  
		Size: 13.9 MB (13912700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf30dc6eee775b0cc2290f9223e6e39fd56572f430e201de7f291d84d24a32b`  
		Last Modified: Fri, 02 Oct 2026 03:43:49 GMT  
		Size: 2.7 MB (2662776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:9205e361ba8ba016ac6f1e7c0be60bb93b6cd9b8bd8fffd261699e8b1986a102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3947036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c420cdebf9c685971035fa199f38b041d35b98e93a6db110be0bcf019609206d`

```dockerfile
```

-	Layers:
	-	`sha256:b8c0f5e0cdadae678993f52636a0ebd3f7cf71558d2f0434d536ce208d4adbb2`  
		Last Modified: Fri, 02 Oct 2026 03:43:49 GMT  
		Size: 3.9 MB (3925815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d7896e36bab73c4f843c8b38443d6ac53a207d80770cb42ea76f1c49c9cbb1f`  
		Last Modified: Fri, 02 Oct 2026 03:43:49 GMT  
		Size: 21.2 KB (21221 bytes)  
		MIME: application/vnd.in-toto+json
