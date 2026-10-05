## `tomcat:11-jre21-temurin`

```console
$ docker pull tomcat@sha256:37144fef36ab9beba57d646796230870940b6ef93c5cc9412ecedc1c7bcbe201
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

### `tomcat:11-jre21-temurin` - linux; amd64

```console
$ docker pull tomcat@sha256:1d4acefd473d8f62d82987a6bcf7ee5a13bd1d25949ee70499ce8afc9c43cf5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116876265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94196afebc052e4baa2fdce38dd783491901af689eef94b38fd484e667cfb154`
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
# Fri, 02 Oct 2026 03:25:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:25:52 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:25:52 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:25:52 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:25:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:52 GMT
ENV TOMCAT_MAJOR=11
# Fri, 02 Oct 2026 03:25:52 GMT
ENV TOMCAT_VERSION=11.0.26
# Fri, 02 Oct 2026 03:25:52 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Fri, 02 Oct 2026 03:25:52 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:25:58 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:25:59 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:25:59 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:25:59 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:25:59 GMT
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
	-	`sha256:3262c2ed87a3de97b03d157b9faba7ecbe867978821964ed3929466381098f38`  
		Last Modified: Fri, 02 Oct 2026 03:26:08 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe2d94456eedc70d434d9b369da7faeb080837b1d9b1dd2b736292402a52621`  
		Last Modified: Fri, 02 Oct 2026 03:26:09 GMT  
		Size: 14.4 MB (14410175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8c83d87c6298b04554d316098fe5b2e60a85d86be3fa932a75442e7276ae54b`  
		Last Modified: Fri, 02 Oct 2026 03:26:08 GMT  
		Size: 225.6 KB (225610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:88c8a7325d4976dddf8a9508be073659c3308fa8c65b68b6a52a7f64349e2a12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71b452d45fb60ee7115c0b7b65bad5b9bed542a2dd417d0ebd37d90dbd353d25`

```dockerfile
```

-	Layers:
	-	`sha256:4a0b0b1edcf804f0e12585f8e4d0e29d6f554836d902c0ba92592ce400474373`  
		Last Modified: Fri, 02 Oct 2026 03:26:08 GMT  
		Size: 3.3 MB (3335095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46f5d4ffbd1752806af73bdfca6a98a8901da7d025fd829b58a1d520949849f6`  
		Last Modified: Fri, 02 Oct 2026 03:26:08 GMT  
		Size: 24.0 KB (24045 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre21-temurin` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:9b9aa2d2913df3471eaa4c095eca51862c122ead2dd721715b2bb9bcd444a1d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115095399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a1718313c152c5653b730e4aab95e1086b67e29a87fd784523ee96d72d68f23`
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
# Fri, 02 Oct 2026 03:25:06 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:25:06 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:25:06 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:25:08 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:25:08 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:08 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:08 GMT
ENV TOMCAT_MAJOR=11
# Fri, 02 Oct 2026 03:25:08 GMT
ENV TOMCAT_VERSION=11.0.26
# Fri, 02 Oct 2026 03:25:08 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Fri, 02 Oct 2026 03:25:09 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:25:14 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:25:15 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:25:15 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:25:15 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:25:15 GMT
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
	-	`sha256:0881ec17cbe97054da5efd97b73e1eaa46a26f9cc96e113a06fe28640f0e52e9`  
		Last Modified: Fri, 02 Oct 2026 03:25:23 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b509a1a412f7602d50d8f672f4ff4e84bb2a767f7d8a604ae2b18afdd8ae3610`  
		Last Modified: Fri, 02 Oct 2026 03:25:24 GMT  
		Size: 14.4 MB (14411503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a0466205c57d04805b243055674073599471da9bcaf59f26cf34fe7db861d6`  
		Last Modified: Fri, 02 Oct 2026 03:25:23 GMT  
		Size: 225.8 KB (225767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:50ecaf5f2420391a1819299486324c55680311446da3170b38aed7260748dc43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a6efd279ed90b1e48c5ef42272b5188dd3c9b72518baaa3d8c71d7ed0711c04`

```dockerfile
```

-	Layers:
	-	`sha256:9c52c8859e8eeba65077b58dfcc49e6cd65b0a081e10031c9cbd2dc958f31a4d`  
		Last Modified: Fri, 02 Oct 2026 03:25:23 GMT  
		Size: 3.3 MB (3335663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:010684cce87aace4f96d9be3d073005faa30cb37a6dcea90dcc68dc9570cc45f`  
		Last Modified: Fri, 02 Oct 2026 03:25:23 GMT  
		Size: 24.3 KB (24303 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre21-temurin` - linux; ppc64le

```console
$ docker pull tomcat@sha256:650adc55abd57305c7d3552a8ee6d81761c24e2173576829a3508bb48677ec2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123661260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0af6279bc7b4676b77df5400390834075d8b547aea1c117e87d0b93827d9e7`
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
ENV TOMCAT_MAJOR=11
# Fri, 02 Oct 2026 08:54:50 GMT
ENV TOMCAT_VERSION=11.0.26
# Fri, 02 Oct 2026 08:54:50 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Fri, 02 Oct 2026 08:54:53 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 08:55:02 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 08:55:05 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 08:55:05 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 08:55:05 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 08:55:05 GMT
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
	-	`sha256:cdfb130646f1d8558fa39fd97eb55c4d62c50afe06b2d1163bee831e3411e82c`  
		Last Modified: Fri, 02 Oct 2026 08:55:23 GMT  
		Size: 14.4 MB (14428671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:312faff233fb5943f31930305ec12b9cdb6f0d53e882a17bf0235e56c3ffc2b1`  
		Last Modified: Fri, 02 Oct 2026 08:55:23 GMT  
		Size: 257.2 KB (257168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:4c8cd100ec05d9d0d42b479ffec583019baeeb2ea84870a623a397fd01c8ecec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3363373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14e22a86dcbedfb0d192343fe68bc0c6cd4471996206e9d6b6378bbef1479994`

```dockerfile
```

-	Layers:
	-	`sha256:7dafb50b18c82bd184ce810647b549c607251fbd8ff1a29597f4c1745d695291`  
		Last Modified: Fri, 02 Oct 2026 08:55:23 GMT  
		Size: 3.3 MB (3339220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22e4904759d8ac6412ecfdd2daf76141b826619e9386431c38920ea6b807a02f`  
		Last Modified: Fri, 02 Oct 2026 08:55:23 GMT  
		Size: 24.2 KB (24153 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre21-temurin` - linux; riscv64

```console
$ docker pull tomcat@sha256:73e3fe09c03e7aab9f066b8808c80e2fdb20aa6a96ec56bf71da5bf4e7e54aa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118463010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450c02336144569480a6af6b568895deed97ad10411eebe5137c8377d4958b39`
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
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Sun, 04 Oct 2026 21:07:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='7b0731083e1f298d2216b266bfbb2ea600482cc025362af4129aaed758afc611';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sun, 04 Oct 2026 21:07:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sun, 04 Oct 2026 21:07:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sun, 04 Oct 2026 21:07:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 05 Oct 2026 16:46:30 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 05 Oct 2026 16:46:30 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 16:46:30 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 05 Oct 2026 16:46:30 GMT
WORKDIR /usr/local/tomcat
# Mon, 05 Oct 2026 16:46:30 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 16:46:30 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 16:46:30 GMT
ENV TOMCAT_MAJOR=11
# Mon, 05 Oct 2026 16:46:30 GMT
ENV TOMCAT_VERSION=11.0.26
# Mon, 05 Oct 2026 16:46:30 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Mon, 05 Oct 2026 16:46:32 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 16:47:17 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 16:47:25 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 16:47:25 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 16:47:25 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 16:47:25 GMT
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
	-	`sha256:59c6b0d20db0cc185d6fa458490a85ef9170cfb38434aa9a819a423a28e5748f`  
		Last Modified: Sun, 04 Oct 2026 21:10:04 GMT  
		Size: 52.6 MB (52597267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8dbe08289d70d33353dec04a7230a7893b1eabf4ee0d7952a460cbc8da39967`  
		Last Modified: Sun, 04 Oct 2026 21:09:55 GMT  
		Size: 162.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8fb498e7831d0979c7fa4a2639dbdc5b542ee1a50452d683b9853d069297bf`  
		Last Modified: Sun, 04 Oct 2026 21:09:56 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6859ac20cdb504ac228f92f41cc5f8e0e1ccb6428b32dd9130124e13809456cd`  
		Last Modified: Mon, 05 Oct 2026 16:49:20 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e907790e26aa5c2ad18255182f365fc26014404c8cef1bc5c70189bcb365135`  
		Last Modified: Mon, 05 Oct 2026 16:49:23 GMT  
		Size: 14.6 MB (14576342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ea8042ef468a89b3f22dd8257ab03523503d898e52c1de9277a78ffd41a57bd`  
		Last Modified: Mon, 05 Oct 2026 16:49:21 GMT  
		Size: 228.6 KB (228628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:b590850ad48664b38c5a88193542a3de7fb83c9e7847344be6f9418b39c546e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3351375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545aaa57d67ba2c65e1894b0b17779179405ca4ef722826556cedcc637ec27e3`

```dockerfile
```

-	Layers:
	-	`sha256:f7dfccac9feecde9b02e17b7907a00ffb475faf4379ff6094c529f38b759a835`  
		Last Modified: Mon, 05 Oct 2026 16:49:21 GMT  
		Size: 3.3 MB (3327222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b7c1363957c4a5cd6db88eb82f17fea74f952cacd067d0fe6a1d61edf3dad50`  
		Last Modified: Mon, 05 Oct 2026 16:49:20 GMT  
		Size: 24.2 KB (24153 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre21-temurin` - linux; s390x

```console
$ docker pull tomcat@sha256:cd99c78f3f553628721b576c1348a4e435079b080b00b20ea2bfd308b8ba4cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.9 MB (113895466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceea70f04c3458583e29f9c454dcc0cadd8b5a2a7d09d3afaa678e5d8f79f8f3`
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
ENV TOMCAT_MAJOR=11
# Fri, 02 Oct 2026 03:39:01 GMT
ENV TOMCAT_VERSION=11.0.26
# Fri, 02 Oct 2026 03:39:01 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Fri, 02 Oct 2026 03:39:02 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:39:05 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:39:06 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:39:06 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:39:06 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:39:06 GMT
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
	-	`sha256:7a0c0edb7255749d6ab671dd91a1ab76d861f24975e8cc30987240198a85f5df`  
		Last Modified: Fri, 02 Oct 2026 03:39:19 GMT  
		Size: 14.4 MB (14419592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00873a0eeb304467bc603ab4c7868ad99fa36b6b7c8c59c4a9ff6496ded83394`  
		Last Modified: Fri, 02 Oct 2026 03:39:19 GMT  
		Size: 233.8 KB (233797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre21-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:8a06a153767e0ac5c69c7ce43ca2f1e25459d85ac060834c6f9e5e69a7be157b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3361341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62270832e135131fd034e4186a147facf30dc1b655f575fcd05d80856a20baee`

```dockerfile
```

-	Layers:
	-	`sha256:05684883aa80ec208b8c34942d850a189a2c77755bb32dac3d418cada02c8cf4`  
		Last Modified: Fri, 02 Oct 2026 03:39:19 GMT  
		Size: 3.3 MB (3337294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5ee195564ceead8ceff0866a70aa3c0722796bac43af27da3c5a5d814d9d54f`  
		Last Modified: Fri, 02 Oct 2026 03:39:19 GMT  
		Size: 24.0 KB (24047 bytes)  
		MIME: application/vnd.in-toto+json
