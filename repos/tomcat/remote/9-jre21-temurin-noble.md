## `tomcat:9-jre21-temurin-noble`

```console
$ docker pull tomcat@sha256:f10f491b8bde1022fc366df990e33259f5bc8c9a324b0762de8658656675400f
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

### `tomcat:9-jre21-temurin-noble` - linux; amd64

```console
$ docker pull tomcat@sha256:f5493380c0b71f044aa4d0362dc119f350c62dc157f753be6dcf1e3099520d7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.3 MB (116342514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e666c40df9d3ded59b29d34b2e84c12d1e9bb3e961cb954cfbc97b32fe25a8d5`
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
# Fri, 02 Oct 2026 01:17:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:29 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:19:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:27:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:27:01 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:27:01 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:27:01 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:27:01 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:27:01 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:27:01 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 03:27:01 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 03:27:01 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 03:27:02 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:27:08 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:27:08 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:27:08 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:27:08 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:27:08 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b14164d4d96e593cb68db980906b691931cdcde6f60b918280317c89e55462`  
		Last Modified: Fri, 02 Oct 2026 01:17:43 GMT  
		Size: 19.4 MB (19375635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c48d168a51b541814c6814256cd298e11114f5f088e4511cffb4f6b3622d1b6`  
		Last Modified: Fri, 02 Oct 2026 01:19:20 GMT  
		Size: 53.1 MB (53097597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5165dac19553999758e23bf9247e5bac05f0d26ee503d13bf70c1e8873eb8d37`  
		Last Modified: Fri, 02 Oct 2026 01:19:18 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e0e048361058af7411fe47569c4d90b68a917dba037514c3831b7bf7029c7b`  
		Last Modified: Fri, 02 Oct 2026 01:19:18 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:499737abb1278394391cda1df4f0198ff28d420e97feaa587cee6712fbe1fa49`  
		Last Modified: Fri, 02 Oct 2026 03:27:18 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a268b8c5f36192d122c0661e6ef9d57f93c00deaa18baabf25f68592b6d755fd`  
		Last Modified: Fri, 02 Oct 2026 03:27:18 GMT  
		Size: 13.9 MB (13876444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f8a15a1fa8858413b04693a4cfa9a0d8652856ff7ed157edde3597793e52f22`  
		Last Modified: Fri, 02 Oct 2026 03:27:18 GMT  
		Size: 225.6 KB (225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:d754ac914af04704e2b36ceeb23a96dfff58a2d623453153ad2465f1e0fa4551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3354588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec67943dde4135d876ee2557facae8ae848ec898d52e674d07c41f9700fdb1cd`

```dockerfile
```

-	Layers:
	-	`sha256:bf0d7534a5dcca18a814fb5abdc6a813fda050b97e1d159960fdf2c6d8bf00c4`  
		Last Modified: Fri, 02 Oct 2026 03:27:18 GMT  
		Size: 3.3 MB (3331489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd58b7fa4f89e7351d0e12443243d4b4aafaaaf0a42253485dfcf6f1e3e8e32c`  
		Last Modified: Fri, 02 Oct 2026 03:27:18 GMT  
		Size: 23.1 KB (23099 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-noble` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:7717dc4a56179eaf9807ec603e78f558cf981759c9894562bba26607f287f3ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114573566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1afe29c8be57a22857f808217865954f6cd3d0ab3996b518dd8d5661ab285301`
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
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:19:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:26:06 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:26:06 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:26:06 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:26:06 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:26:06 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:06 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:26:06 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 03:26:06 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 03:26:06 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 03:26:06 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:26:13 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:26:14 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:26:14 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:26:14 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:26:14 GMT
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
	-	`sha256:f6a82f4237959aa9d80d4135827058db2b23e5fcaeeeec0570b524044aa9ce41`  
		Last Modified: Fri, 02 Oct 2026 01:19:21 GMT  
		Size: 52.3 MB (52273842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e98619ad31209554cf888d01a927e8eacc51b5b26cd74f6c150c0daafc6690d`  
		Last Modified: Fri, 02 Oct 2026 01:19:19 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baae1338e74a2d60cbc4c8b6599e3cb5e1480d72d2fd8e6bb14911288c467627`  
		Last Modified: Fri, 02 Oct 2026 01:19:20 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0877097465c327d5c2242efb1967da540947c179ee1fc017d9b6bf617d7847`  
		Last Modified: Fri, 02 Oct 2026 03:26:22 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5e947084811607ef2011d4c278291006e02814ad7354a4bde400557f77aaf3`  
		Last Modified: Fri, 02 Oct 2026 03:26:22 GMT  
		Size: 13.9 MB (13889652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e53e3a130dd3580b09d29236a94fce39c97ba8d9807f70f8760da483a12106e`  
		Last Modified: Fri, 02 Oct 2026 03:26:22 GMT  
		Size: 225.8 KB (225784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:1aa28f58cef37ae0b2976867dc1512b62de1911231fa3d17bfdffdcd54288641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3355340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dfccd8b34196699e744558f0a46bc685fd7e1baf0661154768ebb43d4c29b3b`

```dockerfile
```

-	Layers:
	-	`sha256:f7a090fe2d8b3a8332dfa603132c4f5e4471f72cbaadddcfd6d70f5b1d2116f9`  
		Last Modified: Fri, 02 Oct 2026 03:26:22 GMT  
		Size: 3.3 MB (3332021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d1715a07ce4792089b24853c516665918b44e88071d5bb3e6253d573e749017`  
		Last Modified: Fri, 02 Oct 2026 03:26:22 GMT  
		Size: 23.3 KB (23319 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-noble` - linux; ppc64le

```console
$ docker pull tomcat@sha256:126bcc3c82f50e1022d099fa97a281e74bfe694e41499ceb4914e18f72f9f32a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123149267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07b19b55faad6102a6aa35c78e0542cf13a44d6c2a242b814679ea16c171ab9`
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
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 03:50:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:50:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:50:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:50:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 08:54:49 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 08:54:49 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 08:54:49 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 08:54:50 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 08:54:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 08:54:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 08:54:50 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 08:54:50 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 08:54:50 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 09:01:40 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 09:01:49 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 09:01:51 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 09:01:51 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 09:01:51 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 09:01:51 GMT
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
	-	`sha256:f553c8148f7f60429fd84c9290f300e68849d6943a4395a9abfab21e5cc36490`  
		Last Modified: Fri, 02 Oct 2026 03:51:15 GMT  
		Size: 53.1 MB (53114420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02574e4f57b8a6b6caa98a2163b75770c2b68b2597ebaacc6dd13c93e09b805`  
		Last Modified: Fri, 02 Oct 2026 03:51:13 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87407c4fc213d4b34b8ce0b7cff9b4499adac506a72e1dd2551d150779540c05`  
		Last Modified: Fri, 02 Oct 2026 03:51:13 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b3b3be7ce32b1090a7de89dfb423a59e358f3ec0fb57d6ab5f406cf15c8c0b0`  
		Last Modified: Fri, 02 Oct 2026 08:55:23 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a88fe7c33e8f531ccfb4279375d6fca511f08a38e667182659acc6c6149f44`  
		Last Modified: Fri, 02 Oct 2026 09:02:26 GMT  
		Size: 13.9 MB (13916680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb8fd08e30b3c6d7a8afe0349cfa02a1237f014664baa820587f04e31adf689`  
		Last Modified: Fri, 02 Oct 2026 09:02:26 GMT  
		Size: 257.2 KB (257166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:270872bd68d1fab2eebcaee1fb1f753fc9c5b80feacbb3e7c78f5f925ea8769d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3358783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed4132a994c6531f88d2dbb1553233c2f0fa18462786988a7378b84e5b39a36`

```dockerfile
```

-	Layers:
	-	`sha256:17d552270bca576a59ea49b227d1d049964c8b2fb2a504568d73401128b6b0d3`  
		Last Modified: Fri, 02 Oct 2026 09:02:26 GMT  
		Size: 3.3 MB (3335596 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cfdf0118283ce1bda016d3ad13e1a3413f7900527e932b2dd2ddfc26c401e76`  
		Last Modified: Fri, 02 Oct 2026 09:02:26 GMT  
		Size: 23.2 KB (23187 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-noble` - linux; riscv64

```console
$ docker pull tomcat@sha256:153279b71bed54e8f5862a75f8609eab0bb9a936d08cf5a27aed4c27ffdd96b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.1 MB (116101031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab994c022ee78b29fab7b4cb8fc62e7f6f5ebece6d907b11eb0db2e281946e4a`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 07 Sep 2026 07:43:12 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:43:13 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:43:13 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:44:03 GMT
ADD file:b9e2d6d291d1ed94a7f69f48c708e50bb181af64736f283e384c42c217fefce1 in / 
# Mon, 07 Sep 2026 07:44:07 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:25:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:25:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:25:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:25:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:25:43 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 02:35:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        riscv64)          ESUM='e1fabd17fd266409221323a754b0a5467a0bdc118b06302646f7b795cd49d95a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:35:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:35:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:35:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 08:44:41 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 09 Sep 2026 08:44:41 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 08:44:41 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 09 Sep 2026 08:44:41 GMT
WORKDIR /usr/local/tomcat
# Wed, 09 Sep 2026 08:44:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 08:44:41 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 08:44:41 GMT
ENV TOMCAT_MAJOR=9
# Wed, 09 Sep 2026 08:44:41 GMT
ENV TOMCAT_VERSION=9.0.121
# Wed, 09 Sep 2026 08:44:41 GMT
ENV TOMCAT_SHA512=16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11
# Wed, 09 Sep 2026 09:00:08 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 09 Sep 2026 09:01:02 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 09:01:10 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 09 Sep 2026 09:01:10 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 09 Sep 2026 09:01:10 GMT
ENTRYPOINT []
# Wed, 09 Sep 2026 09:01:10 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:43253cac98e0bd3027a1f91776c6624571e5e05e6df478c1452294560ee5ff91`  
		Last Modified: Mon, 07 Sep 2026 07:57:26 GMT  
		Size: 31.0 MB (31049202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c056f9390c296ff4fa8e89e5a2f29b4ef26bb7e181e0224000d439a221d5c01e`  
		Last Modified: Wed, 09 Sep 2026 02:28:25 GMT  
		Size: 17.8 MB (17836225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6af5e8443ee98fefbd75526ca9c6f3c505d109f61f7391d37968568d010d24f`  
		Last Modified: Wed, 09 Sep 2026 02:37:45 GMT  
		Size: 52.6 MB (52595603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d93ed51479bbd492e28c447facec979ec1104a161fb500b4d90e949591c4f3`  
		Last Modified: Wed, 09 Sep 2026 02:37:36 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:648e7e85f03fd5a25423c321ca88b10aac01bf1087c78ee83df597c638fd4e8d`  
		Last Modified: Wed, 09 Sep 2026 02:37:37 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e118afc3f2e74a833085d9598c1cefc57906c0105575ec56c610846d2aad99a6`  
		Last Modified: Wed, 09 Sep 2026 08:47:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f022df0c4d1237d2772d3d1627bcb9baa9962b99c33ee49c2d50a85f517337`  
		Last Modified: Wed, 09 Sep 2026 09:02:54 GMT  
		Size: 14.4 MB (14388639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f3e0cefbe29edece5722129a300e110ea7489ad3828e83c0b30105a4388d8fc`  
		Last Modified: Wed, 09 Sep 2026 09:02:52 GMT  
		Size: 228.5 KB (228535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:ffeff13bed3ca2605d1d40ce4a3f0d136d0d3a2ee77b6182ab44a474b9b2d99b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3346761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95cdfd395799886159c30883159e5b4d2d5b85700791fb38763a9bef12b4053d`

```dockerfile
```

-	Layers:
	-	`sha256:729e2ea85ad958f92cf76b7b4fd64072e69cb24e5e94b6946d1d2386835eac4e`  
		Last Modified: Wed, 09 Sep 2026 09:02:53 GMT  
		Size: 3.3 MB (3323580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29205decba0cf066402c8ffaf5a8c42207629d0fbb8dee104109ae0d29ac4372`  
		Last Modified: Wed, 09 Sep 2026 09:02:51 GMT  
		Size: 23.2 KB (23181 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre21-temurin-noble` - linux; s390x

```console
$ docker pull tomcat@sha256:2d5e16d0a0ee2f8cd024a48c39ed331d7c6651e9dd97d24e1a49ee4ddc190224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.4 MB (113365583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0306d8ca2a62f9fece4fb1808f7c76454f4e682ad0444d33ab4ffa2b72776a43`
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
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:27:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:27:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:27:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:27:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:39:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:39:01 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:39:01 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:39:01 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:39:01 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:39:01 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:39:01 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 03:39:01 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 03:39:01 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 03:42:45 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:42:48 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:42:49 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:42:49 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:42:49 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:42:49 GMT
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
	-	`sha256:f5d8ff162e17453d567344f260c09b1178a0616d733d029c12970d06a83a057d`  
		Last Modified: Fri, 02 Oct 2026 01:28:33 GMT  
		Size: 49.6 MB (49638275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1740d3ce14e43bd164a558f06cc6b9e21a145d36c7943e8fa8fb85c2246f87f7`  
		Last Modified: Fri, 02 Oct 2026 01:28:27 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50b072f087a75f056834f909431b61f115f6411d82860c45959e260f51421d3`  
		Last Modified: Fri, 02 Oct 2026 01:28:27 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6325ca5ce23af7c7ecd86f3aae535364c6c39dea6c138b5dff9ece7a14d37bf`  
		Last Modified: Fri, 02 Oct 2026 03:39:19 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fd6a4df0bfd9e692b52ef99ba820bddb94cc7baca16365fb307064c78478d1`  
		Last Modified: Fri, 02 Oct 2026 03:43:00 GMT  
		Size: 13.9 MB (13889585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b04258d10897ed8735db00f24d752dd944d09b6350b7e46390c179c5aac87f4`  
		Last Modified: Fri, 02 Oct 2026 03:43:00 GMT  
		Size: 233.9 KB (233921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:a16c0a8d5d9002b3cc3a09e4d4483d7bc05850077f32a378ded01968ec5e3493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3356787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01f71d894d9aff47dbcd8d41cf9b7f565af31eea59e5d4f866ad5b62fd805086`

```dockerfile
```

-	Layers:
	-	`sha256:2faf3ec7ab8ad2ca9d52a0b843544a60190590ec30d459fccbf427c3cec2b606`  
		Last Modified: Fri, 02 Oct 2026 03:43:00 GMT  
		Size: 3.3 MB (3333688 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:235a3fd85a63ebd9ada74a16c86f5a9a69af19bb4ae98a32156b1f94338085da`  
		Last Modified: Fri, 02 Oct 2026 03:43:00 GMT  
		Size: 23.1 KB (23099 bytes)  
		MIME: application/vnd.in-toto+json
