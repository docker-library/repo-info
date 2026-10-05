## `tomcat:jre17-temurin-noble`

```console
$ docker pull tomcat@sha256:456e2e158d4b93e77ce5f14822f81898e10248187246918f7f740bb83881dbd6
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

### `tomcat:jre17-temurin-noble` - linux; amd64

```console
$ docker pull tomcat@sha256:23b48fb513a2ca6aa96075b974bf86f89bd28b88d32848d00a8cb1fd7d12883e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111298246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51563660b13a0fde0f807c668ff007b562a425216f6e19a8e308178612f8c88`
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
# Fri, 02 Oct 2026 03:26:15 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:26:15 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:26:15 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:26:16 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:26:16 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:16 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:16 GMT
ENV TOMCAT_MAJOR=11
# Fri, 02 Oct 2026 03:26:16 GMT
ENV TOMCAT_VERSION=11.0.26
# Fri, 02 Oct 2026 03:26:16 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Fri, 02 Oct 2026 03:26:16 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:26:23 GMT
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
	-	`sha256:afeda07c4b20a829197ab45f25ab73ea2bc66857b3014fe448a044f060a14e0d`  
		Last Modified: Fri, 02 Oct 2026 03:26:32 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5079ba6ef7317360a5956206e5d5ef165daa4d80f44a846c205627d4069334`  
		Last Modified: Fri, 02 Oct 2026 03:26:32 GMT  
		Size: 14.4 MB (14409838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b82417e5c49c843febab2698a73e01e1a8f6430df61399a6aa06a32aafaed2b`  
		Last Modified: Fri, 02 Oct 2026 03:26:32 GMT  
		Size: 225.6 KB (225608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:b5e8f8aeef47dad690711dd7cfc08589c483a66f860d66399ca11f19f728332b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3357893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb290e351b0a875af21a77190c23495ecef2a4c0488d5cb25eafcfcde8bd9f69`

```dockerfile
```

-	Layers:
	-	`sha256:9ae8e5e647f694e46d1c576075952ae8ab14d0f96b367edf542c44dee7eede3b`  
		Last Modified: Fri, 02 Oct 2026 03:26:32 GMT  
		Size: 3.3 MB (3333847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73c1a74f1599a468eff8b2dff40c5ac459b96e8f339729cc4fda704ecd8cbc0b`  
		Last Modified: Fri, 02 Oct 2026 03:26:31 GMT  
		Size: 24.0 KB (24046 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-noble` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:5fd81537b5624164218f2678dc2b2ab2624dfeea2e297455c998ef62129ab516
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104665301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384d2cd3f3c94c698462378972369158fe6b227548bb4d68117bf5e07adcb104`
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
# Fri, 02 Oct 2026 03:17:14 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:17:14 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:17:14 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:17:14 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:17:14 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:17:14 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:17:14 GMT
ENV TOMCAT_MAJOR=11
# Fri, 02 Oct 2026 03:17:14 GMT
ENV TOMCAT_VERSION=11.0.26
# Fri, 02 Oct 2026 03:17:14 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Fri, 02 Oct 2026 03:17:14 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:17:20 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:17:21 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:17:21 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:17:21 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:17:21 GMT
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
	-	`sha256:43c3e22faec42a5a2f91612844e64efe1590c5a3e7d49fbca705eb6ee38e4695`  
		Last Modified: Fri, 02 Oct 2026 03:17:29 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2023466116d49bb90cc5652273db07434fe3e949dbd95c127268ce8ccc99e4`  
		Last Modified: Fri, 02 Oct 2026 03:17:30 GMT  
		Size: 14.4 MB (14387494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd9912ffbba36d539e6445b9f5c6eaf6c1315ea9b5cf7da44fdb35f29424845`  
		Last Modified: Fri, 02 Oct 2026 03:17:30 GMT  
		Size: 196.9 KB (196926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:e592f2fb9a16e93e0b2b7feb746a747964a403903c4b78df8e6116737116be2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3360489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa8e8e89682feaaea82207e0959867009689c3998bde410cb83bb94acc26b6b`

```dockerfile
```

-	Layers:
	-	`sha256:3374d5887f78291a5aa9264e450492cc606db4f960e0da8cf8a3fe18204fe0d0`  
		Last Modified: Fri, 02 Oct 2026 03:17:30 GMT  
		Size: 3.3 MB (3336251 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dfeb3c470408f721d16b9ef6a52dc948c2d92ba0ffec160af2b33e87ad1406e`  
		Last Modified: Fri, 02 Oct 2026 03:17:29 GMT  
		Size: 24.2 KB (24238 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-noble` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:bf492ae9a275154725e6c1d4eec23aeb69293cdfbe35e6b559b81887b78b4f10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109824114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b46b15af07d2dfeeeff6d228a43d63f00c7d3993d67f83e4a399d7f87dc435ba`
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
# Fri, 02 Oct 2026 03:25:10 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:25:10 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:25:10 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:25:10 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:25:10 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:10 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:10 GMT
ENV TOMCAT_MAJOR=11
# Fri, 02 Oct 2026 03:25:10 GMT
ENV TOMCAT_VERSION=11.0.26
# Fri, 02 Oct 2026 03:25:10 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Fri, 02 Oct 2026 03:25:10 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:25:16 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:25:16 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:25:16 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:25:16 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:25:16 GMT
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
	-	`sha256:a5706925b0c3b47f5f38b1fe9b1f1f6e9163f41cf5750592432e770d2f594a9a`  
		Last Modified: Fri, 02 Oct 2026 03:25:25 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898716aaab8c57a61cdc8ed5fbc7b1aaa121bf7b0f2351058593361921d9913a`  
		Last Modified: Fri, 02 Oct 2026 03:25:25 GMT  
		Size: 14.4 MB (14411469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f454e2e10484c0471062d6b9bef2937e5bd368bdc50dfdb9b3243e6e78f67e23`  
		Last Modified: Fri, 02 Oct 2026 03:25:25 GMT  
		Size: 225.8 KB (225770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:4cf686845b1c25880406a6dee4e83eb69e527c4266c2ac5e348ff434e566f440
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3358718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a40668823ed3bb4087df7499182f803560f1e1c3c9d3dee1980fd6fcfc8200a`

```dockerfile
```

-	Layers:
	-	`sha256:3e7a1a5b2be52e36785c17b25ffad45a817e8551863daf127dec84131cb60367`  
		Last Modified: Fri, 02 Oct 2026 03:25:25 GMT  
		Size: 3.3 MB (3334415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff89bfcba1f1e341564d15e3addb7e023d877c7228ad9b09d2e69df1732bee6c`  
		Last Modified: Fri, 02 Oct 2026 03:25:25 GMT  
		Size: 24.3 KB (24303 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-noble` - linux; ppc64le

```console
$ docker pull tomcat@sha256:5dbce1a6473c036b50452980f1990141c40175d10bd46f5650a83ba8d5a3ab7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.0 MB (117974635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a5317b4b6ad7631c251f37f81293b954b4694164fca472f027ec59a46be2164`
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
ENV TOMCAT_MAJOR=11
# Fri, 02 Oct 2026 08:56:25 GMT
ENV TOMCAT_VERSION=11.0.26
# Fri, 02 Oct 2026 08:56:25 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Fri, 02 Oct 2026 08:56:26 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 08:56:37 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 08:56:39 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 08:56:39 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 08:56:39 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 08:56:39 GMT
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
	-	`sha256:3fdde2ac4918c6419d626d81578167ee4c8f33a37dda36e5278758ce343fd38a`  
		Last Modified: Fri, 02 Oct 2026 08:57:00 GMT  
		Size: 14.4 MB (14428176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e98db8b7ce3e4fdbdd74ff678c37f617fbc06ae05791a2e273f579ff0542f13`  
		Last Modified: Fri, 02 Oct 2026 08:57:00 GMT  
		Size: 257.2 KB (257201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:a3e8d6d63d6e40f7a59bb38f940c2ac26b2caf66792110b084781bd119e292ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3362125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49874b467b339441fed060a19b698bef359643909075ee9452828253877d5eef`

```dockerfile
```

-	Layers:
	-	`sha256:aec0aa7446a8e37b9508db9513b115e75b1780e6e21ae591dbf249df5ecb5d83`  
		Last Modified: Fri, 02 Oct 2026 08:57:00 GMT  
		Size: 3.3 MB (3337972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21004e7c8061cb6a99cf6d79d1d5d01a766b3a2484e7ecbc2d9f528b957f1d4d`  
		Last Modified: Fri, 02 Oct 2026 08:56:59 GMT  
		Size: 24.2 KB (24153 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-noble` - linux; riscv64

```console
$ docker pull tomcat@sha256:a66586564695eda8548998d146858c75bba807a5eb81cceae71f38757c2f1e2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111920093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35dd0b19156898b7d7c9e58b6b3e48074a69cced759d80b2c2c9f92c9fba8b6`
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
ENV TOMCAT_MAJOR=11
# Mon, 05 Oct 2026 16:50:56 GMT
ENV TOMCAT_VERSION=11.0.26
# Mon, 05 Oct 2026 16:50:56 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Mon, 05 Oct 2026 16:50:58 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 16:51:42 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 16:51:50 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 16:51:50 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 16:51:50 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 16:51:50 GMT
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
	-	`sha256:5ac4ef63e70e27b3e3461c655e3aa480d400c1ced3a0cce2a2dd269bdd148829`  
		Last Modified: Mon, 05 Oct 2026 16:53:44 GMT  
		Size: 14.6 MB (14575581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11283ea03e670aeb40ba2b8a6963160f3c60a2c6ac8fbe28d4fae66ec8c1a57c`  
		Last Modified: Mon, 05 Oct 2026 16:53:42 GMT  
		Size: 228.6 KB (228626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:faeee20d340c8783d4e0247772f28bf5c29e406e29865e98fd54d1bf615125cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3350127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2242711d1bf9331df0df0e4d46a6eb591dd358511770256c403f3c4099c416aa`

```dockerfile
```

-	Layers:
	-	`sha256:2af76daad7c509224057382860650ddc228718b5fa0f4c4cf3fef8272ef8551b`  
		Last Modified: Mon, 05 Oct 2026 16:53:43 GMT  
		Size: 3.3 MB (3325974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88624dae50583f25d00b81ac2ef285fb6a20793eed1fdc17b37db0702a9f31be`  
		Last Modified: Mon, 05 Oct 2026 16:53:42 GMT  
		Size: 24.2 KB (24153 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin-noble` - linux; s390x

```console
$ docker pull tomcat@sha256:acf92877b30b83fbf4f4e839b39a8ffa7a2d7eb12e2574418fc8a725e25ad4cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.8 MB (108772379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3d08434439c8c4b60ac4e49ee786d680cdffafd8ffa1882ccc8984972cb581`
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
ENV TOMCAT_MAJOR=11
# Fri, 02 Oct 2026 03:39:56 GMT
ENV TOMCAT_VERSION=11.0.26
# Fri, 02 Oct 2026 03:39:56 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Fri, 02 Oct 2026 03:39:57 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:39:59 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:40:00 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:40:00 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:40:00 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:40:00 GMT
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
	-	`sha256:c631f7fe528ff0e350481fec94912b1221a287fbf96f76ed5150c9e13d5ea37c`  
		Last Modified: Fri, 02 Oct 2026 03:40:13 GMT  
		Size: 14.4 MB (14419524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6dcd9a92535982d418ad8d5f903a83d7ecbf7d611766c47aa79b1b6c8030bc5`  
		Last Modified: Fri, 02 Oct 2026 03:40:13 GMT  
		Size: 233.8 KB (233821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:363cebdf6ebe61ccc025913daee1db99280300d1467a44249ac19f2131887300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3360093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71043b08240fd6c24cf5f006fb82a13817338ca667971b43f4815bffccfab215`

```dockerfile
```

-	Layers:
	-	`sha256:5507d048bc67316b4aff58f649a4d7084b5feb080f1f85483af325b6f19e7fca`  
		Last Modified: Fri, 02 Oct 2026 03:40:13 GMT  
		Size: 3.3 MB (3336046 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40d599f276ddedd8cbd7d44b31ee81a272660961eb41edd1d7b7c832f355adc1`  
		Last Modified: Fri, 02 Oct 2026 03:40:13 GMT  
		Size: 24.0 KB (24047 bytes)  
		MIME: application/vnd.in-toto+json
