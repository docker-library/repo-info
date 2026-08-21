## `tomcat:10-jre11-temurin-jammy`

```console
$ docker pull tomcat@sha256:daaad68748122808521ef156b527644b996656b607ba6b94280786d8fcecf144
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

### `tomcat:10-jre11-temurin-jammy` - linux; amd64

```console
$ docker pull tomcat@sha256:956a603c0898e6569d13c29adff8fac1673241dccdc2a15a1b526f3eb190d1a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107809446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38d4f66c763bb6e6d9bc4174f7159d2f642967a886596eb397318463e1d853e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:23:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:23:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:23:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:23:34 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:23:34 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:23:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:23:36 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:23:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:23:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:37:04 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 20:37:04 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 20:37:04 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 20:37:04 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 20:37:04 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 20:37:04 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 20:37:04 GMT
ENV TOMCAT_MAJOR=10
# Fri, 21 Aug 2026 20:37:04 GMT
ENV TOMCAT_VERSION=10.1.59
# Fri, 21 Aug 2026 20:37:04 GMT
ENV TOMCAT_SHA512=992a8e88fc9c0338445f018a1e4a2757c9e71708dba795e2864c9b1613f2b3b9b19c048e787682deae6d6bff9971defc746e31282085d52ef1d32192e09f7a0f
# Fri, 21 Aug 2026 20:37:04 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 21 Aug 2026 20:37:09 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 20:37:10 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 20:37:10 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 20:37:10 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 20:37:10 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9852d0c4ecbfc5adf3c0b53a1f05d38aa83170e2c336a23683feaaa2ab820b57`  
		Last Modified: Fri, 21 Aug 2026 18:23:48 GMT  
		Size: 16.1 MB (16109369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e48fcbc5b2d896faca638067eff2337fabc7f9c31d131ac6718e9388f5d6b6f`  
		Last Modified: Fri, 21 Aug 2026 18:23:48 GMT  
		Size: 47.3 MB (47336259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b37e82ff8b7964bc71b112194b4179bb1749a7b6f50548899ccb3d54ac2c293`  
		Last Modified: Fri, 21 Aug 2026 18:23:47 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d245fd475934f8ea864c2c8865f63fc003befd6d055a2f0fd8fe087d8f92ebe`  
		Last Modified: Fri, 21 Aug 2026 18:23:47 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b8fb6ebcc02cd1077fd1c2cdd979f79ab4a37a9f87b66db0ddc4f74a5d5d57`  
		Last Modified: Fri, 21 Aug 2026 20:37:18 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1a46e45deff8d630c895fa0e391c63543d79d7d4794041ffdb520344db602f`  
		Last Modified: Fri, 21 Aug 2026 20:37:18 GMT  
		Size: 14.4 MB (14394054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c436ee36ca89359de5ff9a4759eb8b1c495bfbae6e16cd832f9da29c2513c78`  
		Last Modified: Fri, 21 Aug 2026 20:37:18 GMT  
		Size: 230.0 KB (230000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre11-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:1c492f5bc3d1bc1232eb3cae30d5fc9cd7b62dd60361fef263273e51fa251585
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3959274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407c75599743c559c8df8c0d126bf4b925789f620f68b24d9598a21b218170cc`

```dockerfile
```

-	Layers:
	-	`sha256:2b54e2d2efa0ac8abfecd1b7c09b79229afc82e6873d43125e3b5f6462eb0f0e`  
		Last Modified: Fri, 21 Aug 2026 20:37:18 GMT  
		Size: 3.9 MB (3938053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19fa3117d302756d052b269c4597ecaf801b9d630b770618e0f415036724f6ab`  
		Last Modified: Fri, 21 Aug 2026 20:37:18 GMT  
		Size: 21.2 KB (21221 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre11-temurin-jammy` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:a60667053e16ddc6049d250e2b46dbf7a049d6e127f48688634689b317dba03c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.7 MB (102703536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7521d793d7f7c8d576806ff0f9738ca18411648f4eed62f1ec888ecdff3127f9`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:43 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:43 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:43 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:46 GMT
ADD file:28008f9e682e86fcfbf3a0a3e6cf7bc009d54f8a88db924bb6e29b30e688e939 in / 
# Mon, 10 Aug 2026 17:38:47 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:42:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:42:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:42:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:42:25 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:42:25 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:42:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:42:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:42:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:42:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:15:20 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 19:15:20 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:15:20 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 19:15:20 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 19:15:20 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:15:20 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:15:20 GMT
ENV TOMCAT_MAJOR=10
# Fri, 21 Aug 2026 19:15:20 GMT
ENV TOMCAT_VERSION=10.1.59
# Fri, 21 Aug 2026 19:15:20 GMT
ENV TOMCAT_SHA512=992a8e88fc9c0338445f018a1e4a2757c9e71708dba795e2864c9b1613f2b3b9b19c048e787682deae6d6bff9971defc746e31282085d52ef1d32192e09f7a0f
# Fri, 21 Aug 2026 19:15:20 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 21 Aug 2026 19:15:27 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:15:27 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 19:15:27 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:15:27 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 19:15:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:deafe6b5876d5dead55957182e61b6fb35f90aab5d6265e0945beaff36062d3a`  
		Last Modified: Mon, 10 Aug 2026 20:08:55 GMT  
		Size: 26.8 MB (26848898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85fda4aa10655b47d7b72d744a70735d6286ecc53fc2f14d4d9b8c55e31e5414`  
		Last Modified: Fri, 21 Aug 2026 18:42:41 GMT  
		Size: 15.8 MB (15839696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40e227bb21854c78c016bed573a9d933c1ebbd5187befd4cdf32fa4d580d8ed5`  
		Last Modified: Fri, 21 Aug 2026 18:42:42 GMT  
		Size: 45.4 MB (45443548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb4e428a2ef6eab075bdfaf4381a2d8f9b5c9343b9133bb272ce0096967d9d9`  
		Last Modified: Fri, 21 Aug 2026 18:42:40 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5d905cb59c8c7a9e51323136d4854af654cfb6366fac9a1b92c4f3b973e0f0`  
		Last Modified: Fri, 21 Aug 2026 18:42:40 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0f1d12fd7b0248f90cfc2a49cd2300a7e46bd9fc2ff04264a43c1163deef5c`  
		Last Modified: Fri, 21 Aug 2026 19:15:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf3077c8e8700c21cd8f97d21cdb26405ebac9e3f23a5ee39285ff34e519ed5`  
		Last Modified: Fri, 21 Aug 2026 19:15:36 GMT  
		Size: 14.4 MB (14366022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9af9fa9368dfad9731e2cfbff2c1d58ee9d3570d348019486ef70239e691625`  
		Last Modified: Fri, 21 Aug 2026 19:15:36 GMT  
		Size: 202.5 KB (202545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre11-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:110ac97d46c18b08a7e6ec34fbe76628e4e6da6d7bab31cfa34ab680eebda0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3962991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0123fc16efd148e48215a64a3e10160c9ec29da4627a4b9f93ea570cda45d9c5`

```dockerfile
```

-	Layers:
	-	`sha256:a19244df799e51b192af50807ae60f51a125304071d0af0d155fdee8d4dcb388`  
		Last Modified: Fri, 21 Aug 2026 19:15:36 GMT  
		Size: 3.9 MB (3941651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cbdcd231631768cbac19d2737433afbd8d2bf37626a601f87b505fdf89cfce4`  
		Last Modified: Fri, 21 Aug 2026 19:15:36 GMT  
		Size: 21.3 KB (21340 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre11-temurin-jammy` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:2abb35c87c97eb08dba1ab0475b7975b7a9885f69511871df7a3bb4c556f9f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103924331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26025a03b1c9489e9bacd2f43729b4b0ab7bfac4849f9c379e98e12c19a5cef4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:26:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:47 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:26:47 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:26:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:26:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:21:59 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 19:21:59 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:21:59 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 19:21:59 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 19:21:59 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:21:59 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:21:59 GMT
ENV TOMCAT_MAJOR=10
# Fri, 21 Aug 2026 19:21:59 GMT
ENV TOMCAT_VERSION=10.1.59
# Fri, 21 Aug 2026 19:21:59 GMT
ENV TOMCAT_SHA512=992a8e88fc9c0338445f018a1e4a2757c9e71708dba795e2864c9b1613f2b3b9b19c048e787682deae6d6bff9971defc746e31282085d52ef1d32192e09f7a0f
# Fri, 21 Aug 2026 19:22:03 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 21 Aug 2026 19:22:08 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:22:09 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 19:22:09 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:22:09 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 19:22:09 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd23e2684bad1ae829b241df278f9379f2d172162902cc8271bcb2fd4bd044c4`  
		Last Modified: Fri, 21 Aug 2026 18:27:03 GMT  
		Size: 16.0 MB (16039305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:803a9d05e2b5e22d31fb559648896255cacdea98ac87fba1710d914aa2a4e387`  
		Last Modified: Fri, 21 Aug 2026 18:27:04 GMT  
		Size: 45.6 MB (45638723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1211e7afafde765e3db8de5bfd421eb3150c9cb4168696825c3444bf284751cd`  
		Last Modified: Fri, 21 Aug 2026 18:27:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6366a5b53ec9ac2094ff806ac6bb594fd6a971230bef10170e68f353ebc999`  
		Last Modified: Fri, 21 Aug 2026 18:27:02 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5f2cbbf402998d0286fc4039250acfa7003412bc888209a7c59e2a0f2caee5`  
		Last Modified: Fri, 21 Aug 2026 19:22:20 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2d5650114f1c5a8b5ec8ed12fd282484d78a52b9cf6a4c3b3bd0627a0634888`  
		Last Modified: Fri, 21 Aug 2026 19:22:20 GMT  
		Size: 14.4 MB (14394100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2298f9d511dcfc07a69a302d8397c3babbb2ae77a27a46488e555c42890bc5`  
		Last Modified: Fri, 21 Aug 2026 19:22:20 GMT  
		Size: 228.9 KB (228924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre11-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:da78e8cbfad1ccb74313059e1c3d3b49812d37a82356d61f97807220e0e877e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3959709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb9cb23be6c1a8fe587e9934956263d5946e324dc3ec345271363a49aa7d8ba0`

```dockerfile
```

-	Layers:
	-	`sha256:e06f3b9af2eb2a9d9be9689d646de718aaa12a61b31f1a063ef0517d66393a8e`  
		Last Modified: Fri, 21 Aug 2026 19:22:20 GMT  
		Size: 3.9 MB (3938340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dc7ec0f8302a26bb41ce7d1aa92108e294f0d4645e1b47a40291dc8835ff90d`  
		Last Modified: Fri, 21 Aug 2026 19:22:20 GMT  
		Size: 21.4 KB (21369 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre11-temurin-jammy` - linux; ppc64le

```console
$ docker pull tomcat@sha256:fe37c0601c249d24b837b7ef985d63de82c42fa8f2e9333084bdd044804eb529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.7 MB (109678312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:375ae549d307a75229b1b115e4911915b3c42efe4c7b7a21aa42faa50488f951`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:09:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:09:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:09:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:09:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:09:35 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 18 Aug 2026 01:10:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a6af3d61851f57eb79ef0189837522329717458bf230ee284da2d26634f1ea3a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        arm64)          ESUM='eabe05fb80626ad24db17cf1df137855e77fbacbc83c11aaf243cedd224467de';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        armhf)          ESUM='5d3e988cdc8291779068c957c01d339f26178ff65d13af4671107b169e80a69f';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_arm_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64el)          ESUM='11e58bf1eeae10f0dc1a98cc43bf97af270a0b516f6ff9fb3189024c5e22550a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4c311b19aa3922951be288076f0f41a831ab7af32284da9b3e21cdaa251a078a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:10:36 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:10:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:10:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 19 Aug 2026 22:46:21 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 19 Aug 2026 22:46:21 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 22:46:21 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 19 Aug 2026 22:46:22 GMT
WORKDIR /usr/local/tomcat
# Wed, 19 Aug 2026 22:46:22 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 19 Aug 2026 22:46:22 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 19 Aug 2026 22:46:22 GMT
ENV TOMCAT_MAJOR=10
# Wed, 19 Aug 2026 22:46:22 GMT
ENV TOMCAT_VERSION=10.1.57
# Wed, 19 Aug 2026 22:46:22 GMT
ENV TOMCAT_SHA512=2fa1866ec647d4222b07ea937a4cc266adee219a1a8870107e72fc2349248dd1e32b157fa18108451f4c6e3b162f0fdfbdd11dd7855d4e49a2f0f609004a77f3
# Wed, 19 Aug 2026 22:46:22 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 19 Aug 2026 22:46:28 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 22:46:29 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 19 Aug 2026 22:46:29 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 19 Aug 2026 22:46:29 GMT
ENTRYPOINT []
# Wed, 19 Aug 2026 22:46:29 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7828a02276f23af520fb4ec4c98cdd4cff28a3d7445aaac6c31b7ce46e1179b1`  
		Last Modified: Tue, 18 Aug 2026 01:10:09 GMT  
		Size: 17.6 MB (17582017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e724016d54d6510ca27234afd4e84d9e487f2cd1f15cc39f730e00922c03ebcc`  
		Last Modified: Tue, 18 Aug 2026 01:11:02 GMT  
		Size: 42.8 MB (42811263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:239d91063a20730144feac9cae8f6ad55cd38cc2c29e04e3629553d3ca48880a`  
		Last Modified: Tue, 18 Aug 2026 01:11:01 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efd7c35580239c621144dfdbcbdd826a77c0e1881350c3e3c5a416002a35ccd`  
		Last Modified: Tue, 18 Aug 2026 01:11:01 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c76c7b252318ee0e19c7716a0a1cff9e40b8bffb3e8c3a1e9b5711d51dbdc3`  
		Last Modified: Wed, 19 Aug 2026 22:46:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780107ba309afeab0eea578e5ea478c392f628875f6ce8aa743e0ee5854f822c`  
		Last Modified: Wed, 19 Aug 2026 22:46:47 GMT  
		Size: 14.4 MB (14384745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867bd983cb0278c24af5410ca40c2cb2e4b499ad5a6a39900929a5ec49964ebc`  
		Last Modified: Wed, 19 Aug 2026 22:46:47 GMT  
		Size: 259.5 KB (259499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre11-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:3af820ca0589ebf96fda7b33aac1928843b7d0a9dacffcf6ea9b82b49d4ed202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3963425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e6e9463270e39a8248942f4611fa5f9c960c7cde6b580e47b67b9f514bff5f9`

```dockerfile
```

-	Layers:
	-	`sha256:914d1b89a47dd488092d74b12723c74477c3c410718eb1f6f6f0a808952fc4b9`  
		Last Modified: Wed, 19 Aug 2026 22:46:47 GMT  
		Size: 3.9 MB (3942149 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c535dfa53fa37042b6c1d7f19d982e9369a13495a7287b5c2c2320128e37c63a`  
		Last Modified: Wed, 19 Aug 2026 22:46:47 GMT  
		Size: 21.3 KB (21276 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre11-temurin-jammy` - linux; s390x

```console
$ docker pull tomcat@sha256:7f6a581d64d42e4beea5ebffd4742bef1d46996dcc78ece534187c8f5322807d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.3 MB (100290781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104b0ffe6396d3ae3c4bb362f98d493f532f2483b4a04a3e12f16bbff034f6bd`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:22 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:24 GMT
ADD file:ebe1295278656f2efe95b21ab9586cdaa8c816836b56de7bf7a802fc92465272 in / 
# Mon, 10 Aug 2026 17:41:24 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:26:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:26:17 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:27:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='87ab4bf8dec10775d986957bc313816678f9227f1d033d7d6e6a1d00dace5b95';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='c65c7aada375e3f913ff7a9a8ce00a280b1de10a2ac1321789ac5909508cae76';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='c6b7d991b454f54f794503aabd36ebaae1647190f9a41ba72f021aa5721f2dd4';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='3d0ae354c2378f293bc99819be54bd82694640e295f62164a6a9683d1ebeb96d';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='c3b3cd2d00d3730d16b6dba15aeaaf726706fe62bdb2a55bf5f78ed9c4178213';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:27:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:27:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:27:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:19:37 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 21 Aug 2026 19:19:37 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:19:37 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 21 Aug 2026 19:19:38 GMT
WORKDIR /usr/local/tomcat
# Fri, 21 Aug 2026 19:19:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:19:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 21 Aug 2026 19:19:38 GMT
ENV TOMCAT_MAJOR=10
# Fri, 21 Aug 2026 19:19:38 GMT
ENV TOMCAT_VERSION=10.1.59
# Fri, 21 Aug 2026 19:19:38 GMT
ENV TOMCAT_SHA512=992a8e88fc9c0338445f018a1e4a2757c9e71708dba795e2864c9b1613f2b3b9b19c048e787682deae6d6bff9971defc746e31282085d52ef1d32192e09f7a0f
# Fri, 21 Aug 2026 19:19:38 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 21 Aug 2026 19:19:41 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:19:42 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 21 Aug 2026 19:19:42 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:19:42 GMT
ENTRYPOINT []
# Fri, 21 Aug 2026 19:19:42 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b23d28370dc53545b16fabc24326384a47b51246433af58dbd6125e09b8b56`  
		Last Modified: Fri, 21 Aug 2026 18:26:45 GMT  
		Size: 16.1 MB (16103464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f27b13836f39c8c11703449c287946ac56f71da8e3b830604ea776300293ed`  
		Last Modified: Fri, 21 Aug 2026 18:27:24 GMT  
		Size: 41.3 MB (41347007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ea09a8c286b76de26301709038ce32908e919bc110b1c5b90e4ec6278a5c46`  
		Last Modified: Fri, 21 Aug 2026 18:27:23 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f344795113c28668e59776c1edc4227dd1278aee1185231a067acb9f1b2dbb7`  
		Last Modified: Fri, 21 Aug 2026 18:27:23 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fad52316da8a29d13dda226f12e6a18369974163a45c0a5fc2e41ad13bbaf88`  
		Last Modified: Fri, 21 Aug 2026 19:19:55 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b9b5be1755367c293df30e308465da28444b4b48a29d86d21e2e74b53b7520c`  
		Last Modified: Fri, 21 Aug 2026 19:19:55 GMT  
		Size: 14.4 MB (14395301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f618c7ff975d4b03003bdde04042271de7a3cd54b3b6f891a8f5da3e9f6bc6df`  
		Last Modified: Fri, 21 Aug 2026 19:19:55 GMT  
		Size: 231.3 KB (231281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre11-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:c827a572d1973b3d53c74920809ab3a4faee6e683176f351889a944230c9bf9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3960871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dfeb317ec36ff53ac4ec0ea869864be6aec1c7f5d196c41004abd4df6df182d`

```dockerfile
```

-	Layers:
	-	`sha256:653ba7cc928e31215d4acdce353c89c03c49f3b1bbf009d3009796bac3fad02c`  
		Last Modified: Fri, 21 Aug 2026 19:19:55 GMT  
		Size: 3.9 MB (3939650 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54ed3e7a7b7d3128cb44e376cae08dc90aa66bb827e1c6ccc59ccc3bea9589e1`  
		Last Modified: Fri, 21 Aug 2026 19:19:55 GMT  
		Size: 21.2 KB (21221 bytes)  
		MIME: application/vnd.in-toto+json
