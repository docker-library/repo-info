## `tomcat:10-jre21-temurin-noble`

```console
$ docker pull tomcat@sha256:d936144d55fab00e7d2b73a1fff338600e2fc6597af9472617ad12f31b6bcafe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `tomcat:10-jre21-temurin-noble` - linux; amd64

```console
$ docker pull tomcat@sha256:5a1fab68897dd5d1a3b2525d38afb875e450f8bf7e567498721b88a2ad785dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.4 MB (114406933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:081b15c5027139ac42eb81708139961a0c7cfed6366d9197cd6fac208705c426`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:25:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:25:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:25:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:25:37 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:25:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='e1fabd17fd266409221323a754b0a5467a0bdc118b06302646f7b795cd49d95a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:25:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:36:55 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 20:36:55 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 20:36:55 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 20:36:55 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 20:36:55 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 20:36:55 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 20:36:55 GMT
ENV TOMCAT_MAJOR=10
# Fri, 21 Aug 2026 20:36:55 GMT
ENV TOMCAT_VERSION=10.1.59
# Fri, 21 Aug 2026 20:36:55 GMT
ENV TOMCAT_SHA512=992a8e88fc9c0338445f018a1e4a2757c9e71708dba795e2864c9b1613f2b3b9b19c048e787682deae6d6bff9971defc746e31282085d52ef1d32192e09f7a0f
# Fri, 21 Aug 2026 20:36:55 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 21 Aug 2026 20:36:58 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 20:36:59 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 20:36:59 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 20:36:59 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 20:36:59 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22f329e4db3f4c3b30f5d71fc4c6fd72cc9933a2da04cd27f101ec5f49e0ba33`  
		Last Modified: Fri, 21 Aug 2026 18:25:54 GMT  
		Size: 16.9 MB (16946238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c256661d95c11255861153eda7a7c78fb07fe86151e8955a598cabe4a37db51c`  
		Last Modified: Fri, 21 Aug 2026 18:25:55 GMT  
		Size: 53.1 MB (53097595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989e0d98c97535b8f2ee1e65b371e7674df0e3214a33e5acfabb9778fe2d4787`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:507729e6d2c55cb7600e94814d9b930de3314fdf1a3846b4aa24db6140b6a5ce`  
		Last Modified: Fri, 21 Aug 2026 18:25:53 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab754fc0cce73d6840ac5788ab0ae50e70bc270d1097451c44d5e16c4e37262`  
		Last Modified: Fri, 21 Aug 2026 20:37:07 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf40615942218c1884bd44a88e6659af995231cf82919e8100a29efb445f095e`  
		Last Modified: Fri, 21 Aug 2026 20:37:07 GMT  
		Size: 14.4 MB (14382220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56cf3fa84e94cd1d6b3e7e3b5fd2d2289c7911cc4dab2fc08727c53055dfdd89`  
		Last Modified: Fri, 21 Aug 2026 20:37:07 GMT  
		Size: 225.2 KB (225248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:0233e8f05e5b56a6893987e0c26da7a6063b98a218f765d355ad0736f224bffd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3357244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947f97e469755cb72ca35f593e224559ea6e0cb8267959ec45c4fbc74d136c6c`

```dockerfile
```

-	Layers:
	-	`sha256:930d487307b212f221f7e33d40c4d6f2b5d0b035e1907491db87a904b11d058b`  
		Last Modified: Fri, 21 Aug 2026 20:37:07 GMT  
		Size: 3.3 MB (3334135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fba5db16e8204640c81ad49f1c3f53529d9f493a713278ee7230c46b58996cfc`  
		Last Modified: Fri, 21 Aug 2026 20:37:07 GMT  
		Size: 23.1 KB (23109 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre21-temurin-noble` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:64b19638e28941c08f1903d942a0be9657b9a0cdae0038d6035e88d3e8049e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.7 MB (112725123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9620d2ac86f5c8d33765ff5d397c21a74bc018e0e3413b76bb3ddecf610c248c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:28:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:28:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:28:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:28:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:28:29 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:28:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='e1fabd17fd266409221323a754b0a5467a0bdc118b06302646f7b795cd49d95a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:28:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:28:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:28:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:21:41 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 19:21:41 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:21:41 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 19:21:41 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 19:21:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:21:41 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:21:41 GMT
ENV TOMCAT_MAJOR=10
# Fri, 21 Aug 2026 19:21:41 GMT
ENV TOMCAT_VERSION=10.1.59
# Fri, 21 Aug 2026 19:21:41 GMT
ENV TOMCAT_SHA512=992a8e88fc9c0338445f018a1e4a2757c9e71708dba795e2864c9b1613f2b3b9b19c048e787682deae6d6bff9971defc746e31282085d52ef1d32192e09f7a0f
# Fri, 21 Aug 2026 19:21:43 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 21 Aug 2026 19:21:48 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:21:49 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 19:21:49 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:21:49 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 19:21:49 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eddc3451cad891eb57d3979f3ea6ea8eee45eba4fdbd8401534b39284d613623`  
		Last Modified: Fri, 21 Aug 2026 18:28:46 GMT  
		Size: 17.0 MB (16951779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ac9f9c806f07843af17f4e67a86faf3ca768e97ec15d45e97fae38dcfdc4cc`  
		Last Modified: Fri, 21 Aug 2026 18:28:47 GMT  
		Size: 52.3 MB (52273651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda3adcb84456bb22c514a2e660753d08ef8187b34279c62a1c2a6feb072b1a2`  
		Last Modified: Fri, 21 Aug 2026 18:28:45 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79577144548e0cc6f704acda68f028bf5d48b0f462dbdd8a6d6ccb0114a8c96`  
		Last Modified: Fri, 21 Aug 2026 18:28:46 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb62a5e76338e0296be3909fa199a5207a7ef40c8fc27b351169f245ba46e10`  
		Last Modified: Fri, 21 Aug 2026 19:21:59 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fc5711b3ad4979037b30289d982e8f469b89a4aa9d06fdab36e3fa42bbf1da`  
		Last Modified: Fri, 21 Aug 2026 19:21:59 GMT  
		Size: 14.4 MB (14384072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb507c547430f3e26ddade227db86284582f42207f237207f1415912ef6d0a99`  
		Last Modified: Fri, 21 Aug 2026 19:21:59 GMT  
		Size: 225.6 KB (225559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:ee60532df6b11da13ce226cd696cef90dbfaeff2790ce661fd7a843f23ccc785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3357996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a291b2838dae9070ac44acf477a8b9d816df50d6bc2069615ef5e99a14cf1540`

```dockerfile
```

-	Layers:
	-	`sha256:38866500b58f3c0d10b238a7d4f1f1664017792f1b4e043dc77f9d8fdac008e3`  
		Last Modified: Fri, 21 Aug 2026 19:21:59 GMT  
		Size: 3.3 MB (3334667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91fe8e9a7e870007ebf8dba80e7c5cb310c35199f2bc95aa5cf47876ae5417c4`  
		Last Modified: Fri, 21 Aug 2026 19:21:59 GMT  
		Size: 23.3 KB (23329 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre21-temurin-noble` - linux; ppc64le

```console
$ docker pull tomcat@sha256:86586b8bbd00823727f7409f61cef205ead991e30b8ef61fcf4574abc0a5557d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.8 MB (120848607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544eabfbc01ce7d241211698f5e5697844b797aa8df772440cee06c5032ff4c4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 21:04:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 21:04:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 21:04:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 21:04:45 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 21:04:45 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 20:42:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='e1fabd17fd266409221323a754b0a5467a0bdc118b06302646f7b795cd49d95a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 20:42:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:42:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:42:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 23:25:07 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 23:25:07 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 23:25:07 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 23:25:07 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 23:25:07 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 23:25:07 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 23:25:07 GMT
ENV TOMCAT_MAJOR=10
# Fri, 21 Aug 2026 23:25:07 GMT
ENV TOMCAT_VERSION=10.1.59
# Fri, 21 Aug 2026 23:25:07 GMT
ENV TOMCAT_SHA512=992a8e88fc9c0338445f018a1e4a2757c9e71708dba795e2864c9b1613f2b3b9b19c048e787682deae6d6bff9971defc746e31282085d52ef1d32192e09f7a0f
# Fri, 21 Aug 2026 23:27:25 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 21 Aug 2026 23:27:33 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 23:27:34 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 23:27:34 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 23:27:34 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 23:27:34 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c0227d1187b375d88601e313d4014f4e494629dfe78be3f24fd0cd219d7619`  
		Last Modified: Wed, 19 Aug 2026 21:05:13 GMT  
		Size: 18.8 MB (18764596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04630b422c524d31f718be9793c24cf3bb8fa59d501dc970c47b6f5cd54fac93`  
		Last Modified: Fri, 21 Aug 2026 20:42:49 GMT  
		Size: 53.1 MB (53114130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de78406f2da77a597eddd928011430e6d46ec664a04953f70f12260481098b9`  
		Last Modified: Fri, 21 Aug 2026 20:42:47 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ed3ea3e87ab2940d415a6a19160282cf2b7d0f5b85854f017091215987d512`  
		Last Modified: Fri, 21 Aug 2026 20:42:47 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a600a1612b7902d9fd60167a58d5e3ee74d0f62c009e6bd0057d4ef9e1a32ff`  
		Last Modified: Fri, 21 Aug 2026 23:25:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee2e73b6069e8d8af583ac4e19fc47b8b65bba4548daa442275541256a44988`  
		Last Modified: Fri, 21 Aug 2026 23:27:54 GMT  
		Size: 14.4 MB (14398743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894b74dd7fa2caa802653034772628f4979f73e85b62e749ca452b27c5b50282`  
		Last Modified: Fri, 21 Aug 2026 23:27:53 GMT  
		Size: 257.1 KB (257115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:3b173f649e0c1340f5f8cb211b28e920692b10829076b75a59ab426d724a04f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3361439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33ed15a58a18a97f3c8217ec0dbdfa05406849bc1105a9f5e4d206e5bb5f03ea`

```dockerfile
```

-	Layers:
	-	`sha256:47412d419543cd05b307c1ddcecabbfb92105e26f9e602418e897fbf9323134c`  
		Last Modified: Fri, 21 Aug 2026 23:27:53 GMT  
		Size: 3.3 MB (3338242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57be9f8ba838ce6423afa92ce453826f9ac689d786184a927bb8a544f06aa277`  
		Last Modified: Fri, 21 Aug 2026 23:27:53 GMT  
		Size: 23.2 KB (23197 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre21-temurin-noble` - linux; riscv64

```console
$ docker pull tomcat@sha256:f2f64228cd1c7a017c50348892e29b356ab5695368ad06d2fbb0424e0c6268cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116207432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c7e240bcb329d0d050751058d53ea1b27050e1930c8763a0039407d54200cb`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 14:15:49 GMT
ARG RELEASE
# Mon, 17 Aug 2026 14:15:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 14:15:51 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 14:17:04 GMT
ADD file:337a123e95e711614eff11fd53aa4a84d1e090961d0511f1605a70ac7c33d46a in / 
# Mon, 17 Aug 2026 14:17:10 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 00:25:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 00:25:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:25:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 00:25:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:25:03 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Sat, 22 Aug 2026 14:38:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='e1fabd17fd266409221323a754b0a5467a0bdc118b06302646f7b795cd49d95a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 22 Aug 2026 14:38:18 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 22 Aug 2026 14:38:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 22 Aug 2026 14:38:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 24 Aug 2026 22:33:40 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 24 Aug 2026 22:33:40 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Aug 2026 22:33:40 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 24 Aug 2026 22:33:40 GMT
WORKDIR /usr/local/tomcat
# Mon, 24 Aug 2026 22:33:40 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 24 Aug 2026 22:33:40 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 24 Aug 2026 22:33:40 GMT
ENV TOMCAT_MAJOR=10
# Mon, 24 Aug 2026 22:33:40 GMT
ENV TOMCAT_VERSION=10.1.59
# Mon, 24 Aug 2026 22:33:40 GMT
ENV TOMCAT_SHA512=992a8e88fc9c0338445f018a1e4a2757c9e71708dba795e2864c9b1613f2b3b9b19c048e787682deae6d6bff9971defc746e31282085d52ef1d32192e09f7a0f
# Mon, 24 Aug 2026 22:42:48 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 24 Aug 2026 22:43:30 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 24 Aug 2026 22:43:38 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 24 Aug 2026 22:43:38 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 24 Aug 2026 22:43:38 GMT
ENTRYPOINT []
# Mon, 24 Aug 2026 22:43:38 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d85e724d9e83fe5958acde2418944fdb2b9077a9c6b5963f99e62d6feb11fb31`  
		Last Modified: Mon, 17 Aug 2026 14:27:49 GMT  
		Size: 31.0 MB (30983072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33dbfaef4e6988f708a979feb5214ded7a576feeb9c4d3047b55c608ee88c6f7`  
		Last Modified: Wed, 19 Aug 2026 00:27:50 GMT  
		Size: 17.8 MB (17830365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba9e1fd3f9a5c30fde9eb3aafaf0ca3db12c10b5396cbbc8286a7b3ae46b9d8`  
		Last Modified: Sat, 22 Aug 2026 14:40:53 GMT  
		Size: 52.6 MB (52595660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d208ddd359ff871fa09e78426116df899890007cd3d695abe908319fbcf156`  
		Last Modified: Sat, 22 Aug 2026 14:40:44 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3352b4f96ac95a7f4c2a79b000da2125bb0b8c25fea3946e082cba072b587a9a`  
		Last Modified: Sat, 22 Aug 2026 14:40:44 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5490a476ff7c757cb4de211129f69d3e338e7132a1c0af175b07eb235066aa`  
		Last Modified: Mon, 24 Aug 2026 22:36:13 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d8d8f0efa11963774646d2b7b6246cbcb5f97d1d87b3bc031e1a578abe77d29`  
		Last Modified: Mon, 24 Aug 2026 22:45:19 GMT  
		Size: 14.6 MB (14567154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64ad4ce6a891c3956c99522b01ffb783307dba723d9d26d19330d6f5c638934`  
		Last Modified: Mon, 24 Aug 2026 22:45:17 GMT  
		Size: 228.4 KB (228358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:827f258d304c8779ca45b3fe3872fa76e03a1a87a9399eccf85226afcb4a52f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3349441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a97bcd17e7ddecc2140a3acfddefe967e12e637135b01bc1eb716cd937076eab`

```dockerfile
```

-	Layers:
	-	`sha256:06438b4533126a019780fd45016dedd7a43206847f854a257c010aac36f65e08`  
		Last Modified: Mon, 24 Aug 2026 22:45:17 GMT  
		Size: 3.3 MB (3326244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb1a851d4526fbd45a799824f68921977257c9052a43bb0334c4c1cfecec92e9`  
		Last Modified: Mon, 24 Aug 2026 22:45:16 GMT  
		Size: 23.2 KB (23197 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre21-temurin-noble` - linux; s390x

```console
$ docker pull tomcat@sha256:deb0e9577cf1811e9cf1e564acb3fffca499c188689c8e1e43b3f48984b096f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111732061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9351031095fc3f718c7e1bc1914ef0487575690c6a9fec3120227c7925477507`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:10 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:10 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:12 GMT
ADD file:4483a9a8fede37e8d587c88a49ab036598c57a1cdc8558d50175c642d747d633 in / 
# Mon, 17 Aug 2026 13:37:12 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:25:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:25:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:25:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:25:08 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:31:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='e1fabd17fd266409221323a754b0a5467a0bdc118b06302646f7b795cd49d95a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:31:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:31:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:31:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:18:54 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 19:18:54 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:18:54 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 19:18:54 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 19:18:54 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:18:54 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:18:54 GMT
ENV TOMCAT_MAJOR=10
# Fri, 21 Aug 2026 19:18:54 GMT
ENV TOMCAT_VERSION=10.1.59
# Fri, 21 Aug 2026 19:18:54 GMT
ENV TOMCAT_SHA512=992a8e88fc9c0338445f018a1e4a2757c9e71708dba795e2864c9b1613f2b3b9b19c048e787682deae6d6bff9971defc746e31282085d52ef1d32192e09f7a0f
# Fri, 21 Aug 2026 19:18:54 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 21 Aug 2026 19:18:57 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:18:58 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 19:18:58 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:18:58 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 19:18:58 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b966fe3faf45e657742326c756d132073b3cd4855b10f3e0228ffc3183e5f1`  
		Last Modified: Fri, 21 Aug 2026 18:25:43 GMT  
		Size: 17.5 MB (17534761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c65c39a7139f34381564cf92c43342406f2d188220d796b1502367ed4b74148c`  
		Last Modified: Fri, 21 Aug 2026 18:31:49 GMT  
		Size: 49.6 MB (49635593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12be80bb774379444cd5663c381bc1ca2e5c200c8e2f234be90427fa355dbdf7`  
		Last Modified: Fri, 21 Aug 2026 18:31:48 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446ba568bb7f53a4453ff3bc1c3980f3326e65df691791f8282276856a29d6b7`  
		Last Modified: Fri, 21 Aug 2026 18:31:48 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44ebf1aefdf556e9b9643c29da14b4eb35ff5249cbb84a0d688d3317c7bd984`  
		Last Modified: Fri, 21 Aug 2026 19:19:11 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b8f65956bb2f013eff1e311480ed7f31e5ecbfa09110a1ab1015228ea45207b`  
		Last Modified: Fri, 21 Aug 2026 19:19:11 GMT  
		Size: 14.4 MB (14390434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60fe0147aafbd87a5239dd3df73a8b2702d500d2ad6f2d36e4b5193c7a29b8a7`  
		Last Modified: Fri, 21 Aug 2026 19:19:11 GMT  
		Size: 233.2 KB (233194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:423976f3525543d513b3cfc1ea28571bda128e9270490587ce5fabd9f7bbac94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f73c35555c4e6fe4491c8c0ecded7d16ac3ca3f3a4e0c0c65c16e74ff10860f`

```dockerfile
```

-	Layers:
	-	`sha256:10ab365921e7444046fe598db8c910525e1b90c62e7c807e2c8d2f33438e8e2a`  
		Last Modified: Fri, 21 Aug 2026 19:19:11 GMT  
		Size: 3.3 MB (3336334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87908728fa9c26663cae1bb7c48a7ef3f9ac264843d5120d30302684554b540c`  
		Last Modified: Fri, 21 Aug 2026 19:19:11 GMT  
		Size: 23.1 KB (23108 bytes)  
		MIME: application/vnd.in-toto+json
