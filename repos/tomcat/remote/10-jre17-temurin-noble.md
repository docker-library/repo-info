## `tomcat:10-jre17-temurin-noble`

```console
$ docker pull tomcat@sha256:5b360e82b7f61d664b7f8529f693c3b80b0d9f4ef2bb092432aeb6aa6544110d
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

### `tomcat:10-jre17-temurin-noble` - linux; amd64

```console
$ docker pull tomcat@sha256:556b3763856037971328840bc7a5cfaf27dbd7a1db463100490d82fa3d17ba30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (109002636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40194027f60cb89095f8e66680f06df69edbb32ee69583d7329d886f0657299b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 21:57:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:57:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:57:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:57:41 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 21:57:41 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:57:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='106afdb1779c2187312717f76d116b6920b96bf8acf8c4b9055655cd7d01415a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 03 Nov 2026 21:57:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:57:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:57:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 23:04:18 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 03 Nov 2026 23:04:18 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 23:04:18 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 03 Nov 2026 23:04:18 GMT
WORKDIR /usr/local/tomcat
# Tue, 03 Nov 2026 23:04:18 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 23:04:18 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 23:04:18 GMT
ENV TOMCAT_MAJOR=10
# Tue, 03 Nov 2026 23:04:18 GMT
ENV TOMCAT_VERSION=10.1.61
# Tue, 03 Nov 2026 23:04:18 GMT
ENV TOMCAT_SHA512=35120a2b1182bac3d55438fbec0dc581d03b0f1c16ce692a930f3bb6a1097cf896b94b389152257071a87cb2928ac8c15f1bad08387c14acc7c17dbc1bb598fb
# Tue, 03 Nov 2026 23:04:18 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 03 Nov 2026 23:04:24 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:04:25 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 03 Nov 2026 23:04:25 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 03 Nov 2026 23:04:25 GMT
ENTRYPOINT []
# Tue, 03 Nov 2026 23:04:25 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2cdd8b4e71a51b28cc1b80eafadd55d8a4d18b2f6b7446c75012a555351544`  
		Last Modified: Tue, 03 Nov 2026 21:57:56 GMT  
		Size: 17.0 MB (16968683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3d153fed0594da3c78eda01b8c9bb87a55cba29c52bc51f23325628a847758`  
		Last Modified: Tue, 03 Nov 2026 21:57:57 GMT  
		Size: 47.6 MB (47620329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7ce50533a94a5f4658fb663db0fe6a13b3c41a2d2adbdd1168e6c854396414a`  
		Last Modified: Tue, 03 Nov 2026 21:57:55 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90761ade1b1f09e509bdb21ee6acdee926413e1fbfcca8936a88bfd33fd2c0cd`  
		Last Modified: Tue, 03 Nov 2026 21:57:55 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42acee9fca1553f72a2eb762c532560912807c025035e3baae194b4aa7966807`  
		Last Modified: Tue, 03 Nov 2026 23:04:33 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e7582c20232175ed38a6a962572d0b69fecc60c7795f918e5a7a222d556244`  
		Last Modified: Tue, 03 Nov 2026 23:04:34 GMT  
		Size: 14.4 MB (14417857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3f6b90634c7916531370aa6516251ce4fc68899506b213b625105da9ccf5e6`  
		Last Modified: Tue, 03 Nov 2026 23:04:33 GMT  
		Size: 225.3 KB (225326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:aa3102d73e32836077191d56da7ce02134555870d7dfcf14a0ddb6922f4a77cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3351618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3540ef94aa647164601b6f9cd86535e6b5e733e167bb53c4f6a8c51cc6e11772`

```dockerfile
```

-	Layers:
	-	`sha256:19155a666cc55c8ae897256e5ea80c34b2362dc79fb3dab6dcda6ca88b9b37d1`  
		Last Modified: Tue, 03 Nov 2026 23:04:33 GMT  
		Size: 3.3 MB (3330397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94a44db323a6960f99230c01cae7d8fdf74202754e35e54353ad0c142e00698b`  
		Last Modified: Tue, 03 Nov 2026 23:04:33 GMT  
		Size: 21.2 KB (21221 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin-noble` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:c8349eba3b0dee32d8a66d82ab86a3bb3edd4546d970a26ba78879f59a4d422b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (102989300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989926db238c01a3a0e82939c00ea9a39186cb3836c5a7b453d437668984da70`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:23 GMT
ADD file:3cbbfb6c4f8e63d9999d351c6c7c50b4ce512c57a42bc2c5bc2da9cb561f6eed in / 
# Tue, 10 Nov 2026 08:36:24 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:19:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:19:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:19:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:19:59 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:19:59 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:20:39 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='106afdb1779c2187312717f76d116b6920b96bf8acf8c4b9055655cd7d01415a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:20:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:20:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:20:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 01:05:31 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 12 Nov 2026 01:05:31 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:05:31 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 12 Nov 2026 01:05:32 GMT
WORKDIR /usr/local/tomcat
# Thu, 12 Nov 2026 01:05:32 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 01:05:32 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 12 Nov 2026 01:05:32 GMT
ENV TOMCAT_MAJOR=10
# Thu, 12 Nov 2026 01:05:32 GMT
ENV TOMCAT_VERSION=10.1.61
# Thu, 12 Nov 2026 01:05:32 GMT
ENV TOMCAT_SHA512=35120a2b1182bac3d55438fbec0dc581d03b0f1c16ce692a930f3bb6a1097cf896b94b389152257071a87cb2928ac8c15f1bad08387c14acc7c17dbc1bb598fb
# Thu, 12 Nov 2026 01:05:32 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Thu, 12 Nov 2026 01:05:37 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:05:38 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Thu, 12 Nov 2026 01:05:38 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 12 Nov 2026 01:05:38 GMT
ENTRYPOINT []
# Thu, 12 Nov 2026 01:05:38 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c9ad55dde9ad5376b797faf6b6dd0caa61cff4a20a14ef03107c1e7fdc9113f0`  
		Last Modified: Wed, 11 Nov 2026 22:58:50 GMT  
		Size: 26.9 MB (26922008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd325f0ba834363c8dbb0296e9c01ee3dffaab52091a6450e96f344d42c7e876`  
		Last Modified: Wed, 11 Nov 2026 23:20:25 GMT  
		Size: 16.3 MB (16286283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2345daa0927f63e35c91ee2255449dca718c141748b497026a03ede745fc4e6`  
		Last Modified: Wed, 11 Nov 2026 23:20:52 GMT  
		Size: 45.2 MB (45188533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4be1c6e3531d66fc4b06b87f8b3b54826363ce164622c02eb1257260fcb458`  
		Last Modified: Wed, 11 Nov 2026 23:20:50 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b255bc1cc80c2341cf1429f26a35ca19ce5ec80d4903f1d610212ff3f5995eee`  
		Last Modified: Wed, 11 Nov 2026 23:20:50 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f42486bedd72970d0f35886e22d31d25f9c845900b0772a9c9821ef9646b1e`  
		Last Modified: Thu, 12 Nov 2026 01:05:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9cbf9195227139047597e204a68154c79da4594733317a50c9287ceb5b00a8`  
		Last Modified: Thu, 12 Nov 2026 01:05:48 GMT  
		Size: 14.4 MB (14392862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d398483ad2297ed1952affe99dec12dc9cfef2816b130cc6af704bb1fccbafd`  
		Last Modified: Thu, 12 Nov 2026 01:05:47 GMT  
		Size: 196.8 KB (196790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:1d330a3a22e84db05f1a7adc76545aabcd0cee8e8045091a66cb12f78e52b70c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3354673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa2c0c06b57d897795ff8be6415df17c128a26d28bc98eef95c4cc2c4c0ea46`

```dockerfile
```

-	Layers:
	-	`sha256:1e73caff6a85a8ab9c1b7f497fcebd56f9ff4994529a51459700be6092264ede`  
		Last Modified: Thu, 12 Nov 2026 01:05:47 GMT  
		Size: 3.3 MB (3333333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5e803f5bbc96dc742970ed7668e641ca91bc295324d0e6dc2c23f762c271042`  
		Last Modified: Thu, 12 Nov 2026 01:05:47 GMT  
		Size: 21.3 KB (21340 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin-noble` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:ff3c30ef1071e445bb4c91b0f9685439225c976d969461ea898e0df93b06356e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107695335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8c5a241bd16556de6ddc57253868125058ebb0751c2c06e4e31a991fb95fd4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 21:57:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:57:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:57:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:57:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 21:57:17 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:57:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='106afdb1779c2187312717f76d116b6920b96bf8acf8c4b9055655cd7d01415a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 03 Nov 2026 21:57:20 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:57:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:57:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 22:57:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 03 Nov 2026 22:57:43 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:57:43 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 03 Nov 2026 22:57:43 GMT
WORKDIR /usr/local/tomcat
# Tue, 03 Nov 2026 22:57:43 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 22:57:43 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 22:57:43 GMT
ENV TOMCAT_MAJOR=10
# Tue, 03 Nov 2026 22:57:43 GMT
ENV TOMCAT_VERSION=10.1.61
# Tue, 03 Nov 2026 22:57:43 GMT
ENV TOMCAT_SHA512=35120a2b1182bac3d55438fbec0dc581d03b0f1c16ce692a930f3bb6a1097cf896b94b389152257071a87cb2928ac8c15f1bad08387c14acc7c17dbc1bb598fb
# Tue, 03 Nov 2026 22:57:43 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 03 Nov 2026 22:57:51 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 22:57:51 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 03 Nov 2026 22:57:51 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 03 Nov 2026 22:57:51 GMT
ENTRYPOINT []
# Tue, 03 Nov 2026 22:57:51 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7315f55c5eb4a4ddb7a47b2fb80c085f000f4a1b7c490638daea4bfb3ac1f9`  
		Last Modified: Tue, 03 Nov 2026 21:57:33 GMT  
		Size: 17.0 MB (16977855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24719943a163006967cd69044ec2b90e34546a8957efe1377e5f498c2da18dde`  
		Last Modified: Tue, 03 Nov 2026 21:57:34 GMT  
		Size: 47.1 MB (47128203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05668ed82642f7e8e75a751c1651dbe44d92c8469979da3cd17995479527bd58`  
		Last Modified: Tue, 03 Nov 2026 21:57:32 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96fae846b22e2f69daba1b5bf379ef5b3fa73b5917e5230ed18da2ca0c23db6e`  
		Last Modified: Tue, 03 Nov 2026 21:57:32 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:901917055651356272d5698ad335f45f66141b590f5ed12e570cec2c81e20a71`  
		Last Modified: Tue, 03 Nov 2026 22:58:00 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f60cf82fa0957a7af9bc1626914a5c6a7833423c27748886b3e7491310b519c`  
		Last Modified: Tue, 03 Nov 2026 22:58:00 GMT  
		Size: 14.4 MB (14420670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c0af2632f37eb16bf495b5fc424a76c46e0b40b049912cde5c27cca452a674`  
		Last Modified: Tue, 03 Nov 2026 22:58:00 GMT  
		Size: 225.7 KB (225654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:827567a5c5efa584dbdf4c2be8b931f007c2fc060d9bb976a3df3ce33cf765c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3352226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7eaeef370d2bf5f5543332409128e3b73e2e1d5626f7907d2ff261c81b31d36`

```dockerfile
```

-	Layers:
	-	`sha256:164d1996bdb176281a3aabe70fd317540fa077fbaf09b72af52194f9a6c43e02`  
		Last Modified: Tue, 03 Nov 2026 22:58:00 GMT  
		Size: 3.3 MB (3330857 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf96471a6918453169d305e84890b1b0c6e5ff990d055920e250214308f1f119`  
		Last Modified: Tue, 03 Nov 2026 22:58:00 GMT  
		Size: 21.4 KB (21369 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin-noble` - linux; ppc64le

```console
$ docker pull tomcat@sha256:3fe5317216b9b793f780f6e83bb028dc8822fc38b291470db74cf7ff377fd950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114830753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec3a74db4250bbeca9e1bacf081e8f2830f25304b6de294ee44a6724392ac9da`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 19:08:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:08:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:08:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:08:27 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:08:27 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 22:08:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='106afdb1779c2187312717f76d116b6920b96bf8acf8c4b9055655cd7d01415a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 03 Nov 2026 22:08:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 22:08:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 22:08:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 23:46:48 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 03 Nov 2026 23:46:48 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 23:46:48 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 03 Nov 2026 23:46:48 GMT
WORKDIR /usr/local/tomcat
# Tue, 03 Nov 2026 23:46:48 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 23:46:48 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 23:46:48 GMT
ENV TOMCAT_MAJOR=10
# Tue, 03 Nov 2026 23:46:48 GMT
ENV TOMCAT_VERSION=10.1.61
# Tue, 03 Nov 2026 23:46:48 GMT
ENV TOMCAT_SHA512=35120a2b1182bac3d55438fbec0dc581d03b0f1c16ce692a930f3bb6a1097cf896b94b389152257071a87cb2928ac8c15f1bad08387c14acc7c17dbc1bb598fb
# Tue, 03 Nov 2026 23:48:19 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 03 Nov 2026 23:48:26 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:48:28 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 03 Nov 2026 23:48:28 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 03 Nov 2026 23:48:28 GMT
ENTRYPOINT []
# Tue, 03 Nov 2026 23:48:28 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faafb4c1f1e0e43c96ecb84a444eb3defd7b9032cb6ed524d2baaf4404a693f8`  
		Last Modified: Thu, 29 Oct 2026 19:09:03 GMT  
		Size: 18.8 MB (18781406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b968bc2df36292d4a45d6e505f135861677dab098fb66cf763757152f004e76`  
		Last Modified: Tue, 03 Nov 2026 22:09:00 GMT  
		Size: 47.0 MB (46977641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e705da84fe87d229baa322c971e42cc74e1b7fe728a044d843e5d7ddb2eb3e1e`  
		Last Modified: Tue, 03 Nov 2026 22:08:58 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6af00b0e6e1a11429194c91d317145b3ba1762a0db04990d0a8f1610556bab5`  
		Last Modified: Tue, 03 Nov 2026 22:08:59 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d9d444b309dd924f25ac3f3c898b027b087aad4b672812857f65b24f5b6819d`  
		Last Modified: Tue, 03 Nov 2026 23:47:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc170d81d42c3dff3936b1291d616f50a2d5bca20ce1dfe95d49d9e82ee8592`  
		Last Modified: Tue, 03 Nov 2026 23:48:59 GMT  
		Size: 14.4 MB (14433729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3845cbbae9042a0f1aec5be0d55f18c061fcc5d9d43bdf0eb2b8efa9061e083e`  
		Last Modified: Tue, 03 Nov 2026 23:48:58 GMT  
		Size: 256.8 KB (256843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:c0847db0ec0fb7d30c86dea042cc348968b0ba50a97910098cb1cae76ef3b525
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3354495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe0179dd4b9541f2f9b3b9cdb3bc9175f8a192c9ab39910a7f117358c0e1f19d`

```dockerfile
```

-	Layers:
	-	`sha256:1e52690610f633aab52122ee413ef85edc35f4f9333350d2a6a2d24a5aa8b8ee`  
		Last Modified: Tue, 03 Nov 2026 23:48:58 GMT  
		Size: 3.3 MB (3333222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1583a58a683b6b44ee905c1218c832b7a6ac3c6c304666df19c918a591ceaf43`  
		Last Modified: Tue, 03 Nov 2026 23:48:58 GMT  
		Size: 21.3 KB (21273 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin-noble` - linux; riscv64

```console
$ docker pull tomcat@sha256:c6805eaab45191eb086d1c89c5b2daaa8a522f4ba41ec15daa8d7a9e78cd6e66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.9 MB (109861666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de529b84310070ee51fc13cc1d0cf4606c2e6a4f5c9c601db260b02fdf18135b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 14:40:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:41:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:41:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:41:55 GMT
ADD file:bd60d80275224295b295318dc71399dbd358b15bea499dc5c524ae8260970dd4 in / 
# Sun, 25 Oct 2026 14:42:00 GMT
CMD ["/bin/bash"]
# Sun, 01 Nov 2026 11:58:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 01 Nov 2026 11:58:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 01 Nov 2026 11:58:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sun, 01 Nov 2026 11:58:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 01 Nov 2026 11:58:03 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 04 Nov 2026 22:01:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='106afdb1779c2187312717f76d116b6920b96bf8acf8c4b9055655cd7d01415a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 04 Nov 2026 22:01:30 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 04 Nov 2026 22:01:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 04 Nov 2026 22:01:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 07:44:38 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 05 Nov 2026 07:44:38 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:44:38 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 05 Nov 2026 07:44:38 GMT
WORKDIR /usr/local/tomcat
# Thu, 05 Nov 2026 07:44:38 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 05 Nov 2026 07:44:38 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 05 Nov 2026 07:44:38 GMT
ENV TOMCAT_MAJOR=10
# Thu, 05 Nov 2026 07:44:38 GMT
ENV TOMCAT_VERSION=10.1.61
# Thu, 05 Nov 2026 07:44:38 GMT
ENV TOMCAT_SHA512=35120a2b1182bac3d55438fbec0dc581d03b0f1c16ce692a930f3bb6a1097cf896b94b389152257071a87cb2928ac8c15f1bad08387c14acc7c17dbc1bb598fb
# Thu, 05 Nov 2026 07:49:04 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Thu, 05 Nov 2026 07:49:48 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:49:55 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Thu, 05 Nov 2026 07:49:55 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 07:49:55 GMT
ENTRYPOINT []
# Thu, 05 Nov 2026 07:49:55 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:9c292ed508c8980046daab8996841e49bec6ec20e645ab48bb63b8228da83d11`  
		Last Modified: Sun, 25 Oct 2026 14:50:32 GMT  
		Size: 31.1 MB (31054629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493a9f29deec8fa4763b83642302f5b3162f5f6a4c43d4076be96a5e4bcdb1d5`  
		Last Modified: Sun, 01 Nov 2026 12:00:52 GMT  
		Size: 17.8 MB (17842434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7adaf3c331f7140083c4b868722372847c857ece52f515054a3788611659b6cf`  
		Last Modified: Wed, 04 Nov 2026 22:04:02 GMT  
		Size: 46.1 MB (46149873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f435b61696f09e3123094a244ad8880fb7037ba76b862371d71b8abadaf551c4`  
		Last Modified: Wed, 04 Nov 2026 22:03:55 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ee9a92d3359117f56a0454a5096f991284c16a0619e35c4c51c2bcbea78e86c`  
		Last Modified: Wed, 04 Nov 2026 22:03:55 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ce82c0197f7ecf1633a05b11e8bf5532ce509355c2cb4f9bbd153e079ee4d8`  
		Last Modified: Thu, 05 Nov 2026 07:47:26 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf6e7ce6c647f516c375bfdde6299ac22928905dccea93dc86b68d45cb77341`  
		Last Modified: Thu, 05 Nov 2026 07:51:49 GMT  
		Size: 14.6 MB (14582619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4569638f18491ecddc93ace6faf94b28be0f6d40f95827b4d9bbe14fabe9262f`  
		Last Modified: Thu, 05 Nov 2026 07:51:46 GMT  
		Size: 229.3 KB (229285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:ff486791e58d7858e8f4d3ea8d4c086ff1c48c28ae965f78625d82b5a2017614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ef16807b0b8641a56278d1ad96f70d4800d4d132e677d2ccdf96f4436b6ae7`

```dockerfile
```

-	Layers:
	-	`sha256:4be0eae9d99d61bd83e06498de066b536310100b033462f68ee499a9e7fe8d3b`  
		Last Modified: Thu, 05 Nov 2026 07:51:47 GMT  
		Size: 3.3 MB (3322470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47afc8caedd2e92b18cec8f27ee7eb0fa8d13c2e735077ac670292c9e4addbdf`  
		Last Modified: Thu, 05 Nov 2026 07:51:46 GMT  
		Size: 21.3 KB (21273 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin-noble` - linux; s390x

```console
$ docker pull tomcat@sha256:908492269ff49fc6fd7a90cb3ad25ea97a4996890f8eca44075dbf09a2c4eb8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106392725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054d88a28899868190481f226ee35ffdd93bf0c5d2cf3e820f6786d1d09a448b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:59 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:00 GMT
ADD file:c2156dcf753b3a0ab0d36b29087b8209a73050420505b4ce2fb173267e1306b5 in / 
# Sun, 25 Oct 2026 14:18:01 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 21:55:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 21:55:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 21:55:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 03 Nov 2026 21:55:56 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 21:55:56 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Tue, 03 Nov 2026 21:56:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='106afdb1779c2187312717f76d116b6920b96bf8acf8c4b9055655cd7d01415a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 03 Nov 2026 21:56:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 03 Nov 2026 21:56:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 03 Nov 2026 21:56:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 03 Nov 2026 22:58:15 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 03 Nov 2026 22:58:15 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:58:15 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 03 Nov 2026 22:58:16 GMT
WORKDIR /usr/local/tomcat
# Tue, 03 Nov 2026 22:58:16 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 22:58:16 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 03 Nov 2026 22:58:16 GMT
ENV TOMCAT_MAJOR=10
# Tue, 03 Nov 2026 22:58:16 GMT
ENV TOMCAT_VERSION=10.1.61
# Tue, 03 Nov 2026 22:58:16 GMT
ENV TOMCAT_SHA512=35120a2b1182bac3d55438fbec0dc581d03b0f1c16ce692a930f3bb6a1097cf896b94b389152257071a87cb2928ac8c15f1bad08387c14acc7c17dbc1bb598fb
# Tue, 03 Nov 2026 23:00:01 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 03 Nov 2026 23:00:13 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 03 Nov 2026 23:00:16 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 03 Nov 2026 23:00:16 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 03 Nov 2026 23:00:16 GMT
ENTRYPOINT []
# Tue, 03 Nov 2026 23:00:16 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:066cfef0f36ba368fe8c9dd2862565dce36654fe0cbf8d9a31bbd0b5deab478e`  
		Last Modified: Tue, 03 Nov 2026 21:56:17 GMT  
		Size: 17.6 MB (17557069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7027481648867543d36a9c0e0fbd21355db45488f8a5c23fd5ba3b163c48b1f`  
		Last Modified: Tue, 03 Nov 2026 21:56:18 GMT  
		Size: 44.2 MB (44227968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95be96ae5bb1b57aca4807c7aaf9df8043e9a5f75d6f683e3f22bd8f0270b15e`  
		Last Modified: Tue, 03 Nov 2026 21:56:17 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfcf83474c58975c3429ae31f135a9ae2df1f5d118441bd086afaa5c45ecf88c`  
		Last Modified: Tue, 03 Nov 2026 21:55:50 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add0b85840fb12e71f6c9e7f59f2a1dcb194cc2f3ec36fc1395b811fbd919e45`  
		Last Modified: Tue, 03 Nov 2026 22:59:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bcfcffee002df64f66a69f98f8d89bef6f53a7105e9d5290f09e3d0898ccd86`  
		Last Modified: Tue, 03 Nov 2026 23:01:06 GMT  
		Size: 14.4 MB (14424564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d3afea8569ca09caec53229a659e605c20b04fd6599c44540ccfef46435c8a`  
		Last Modified: Tue, 03 Nov 2026 23:01:05 GMT  
		Size: 233.2 KB (233246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:c99841faabc36ef276c89a7fbe70e1ddf94e5a4022a7093bac8933c6585b1160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3352571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33db847c5a4abae46c1376d73d1d296b9625b1ed3dad0f17b50ae705922f9cf2`

```dockerfile
```

-	Layers:
	-	`sha256:81da184d6366318b558e4b86202d43c100fa3555e2427244faf1f2eae52ad46c`  
		Last Modified: Tue, 03 Nov 2026 23:01:05 GMT  
		Size: 3.3 MB (3331350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b29ee54799ce19733df0df138fc5096a0b44a06646a5dab8a9f21031dc34ba8`  
		Last Modified: Tue, 03 Nov 2026 23:01:05 GMT  
		Size: 21.2 KB (21221 bytes)  
		MIME: application/vnd.in-toto+json
