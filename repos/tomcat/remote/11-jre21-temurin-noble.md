## `tomcat:11-jre21-temurin-noble`

```console
$ docker pull tomcat@sha256:314deecb56a353531eb693a98e610a6319b4293426dd3b3b7017761ee18670c7
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

### `tomcat:11-jre21-temurin-noble` - linux; amd64

```console
$ docker pull tomcat@sha256:12f0c998763838aef6942f3a4819e739a43a5b705ca2f0d05631627186025cef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.9 MB (116944827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd0595bd8bc2881e4851758c49e9b3095e62e1e6a940fb7e62b5abc9666aeb9`
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
# Tue, 13 Oct 2026 00:11:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 13 Oct 2026 00:11:43 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:11:43 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 13 Oct 2026 00:11:43 GMT
WORKDIR /usr/local/tomcat
# Tue, 13 Oct 2026 00:11:43 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 13 Oct 2026 00:11:43 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 13 Oct 2026 00:11:43 GMT
ENV TOMCAT_MAJOR=11
# Tue, 13 Oct 2026 00:11:43 GMT
ENV TOMCAT_VERSION=11.0.27
# Tue, 13 Oct 2026 00:11:43 GMT
ENV TOMCAT_SHA512=a617896307cada4884b24f80c4e977ddad8b3e0f88ce0e2a6eea29d5f332498e276ae5976c227a9c8daecf05c7c90def684a3766dd5a81f47a56d8b1adf43dc3
# Tue, 13 Oct 2026 00:11:43 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 13 Oct 2026 00:11:49 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 00:11:50 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 13 Oct 2026 00:11:50 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 13 Oct 2026 00:11:50 GMT
ENTRYPOINT []
# Tue, 13 Oct 2026 00:11:50 GMT
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
	-	`sha256:98ea1cb9b18f9609f46d38509fdcd4081512ea142c1b404dd4a94fbd1f26d836`  
		Last Modified: Tue, 13 Oct 2026 00:11:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6e96dde99bfbbee8751be44ed9a51da3cc196fb0013cf3c938a304f5971477`  
		Last Modified: Tue, 13 Oct 2026 00:11:58 GMT  
		Size: 14.5 MB (14478753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f13ab705b78bc52e176428203575c83b9498b6e5f6d3a14f824037fbf097a4d5`  
		Last Modified: Tue, 13 Oct 2026 00:11:58 GMT  
		Size: 225.6 KB (225593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:e1e2148d498838998a2a4776c92e1163f9e86680b1728f8aea924b90609ef448
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3354149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a408759769571eab4d76334958e04d030e8d81c5d8a22ec75bd1c217483d2a8f`

```dockerfile
```

-	Layers:
	-	`sha256:f9256bde6fd47bfa26769d86bbf95cc0d502a0369e60bca3d06412e0191d0f63`  
		Last Modified: Tue, 13 Oct 2026 00:11:58 GMT  
		Size: 3.3 MB (3332599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fce87bd31be4c3d96d831470b1bfcf6515edc48da21abca063587294987926e`  
		Last Modified: Tue, 13 Oct 2026 00:11:58 GMT  
		Size: 21.6 KB (21550 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre21-temurin-noble` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:7ce8a26dde1f3670b69e31db831a7856633eeec16596fb3cc53c59eb12b84924
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.2 MB (115163738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e290b945794031a263e6a61e89bee0e383e1213ffd6365000d07c01b33e08e1a`
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
# Tue, 13 Oct 2026 00:11:19 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 13 Oct 2026 00:11:19 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:11:19 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 13 Oct 2026 00:11:19 GMT
WORKDIR /usr/local/tomcat
# Tue, 13 Oct 2026 00:11:19 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 13 Oct 2026 00:11:19 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 13 Oct 2026 00:11:19 GMT
ENV TOMCAT_MAJOR=11
# Tue, 13 Oct 2026 00:11:19 GMT
ENV TOMCAT_VERSION=11.0.27
# Tue, 13 Oct 2026 00:11:19 GMT
ENV TOMCAT_SHA512=a617896307cada4884b24f80c4e977ddad8b3e0f88ce0e2a6eea29d5f332498e276ae5976c227a9c8daecf05c7c90def684a3766dd5a81f47a56d8b1adf43dc3
# Tue, 13 Oct 2026 00:11:19 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 13 Oct 2026 00:11:27 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 00:11:27 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 13 Oct 2026 00:11:27 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 13 Oct 2026 00:11:27 GMT
ENTRYPOINT []
# Tue, 13 Oct 2026 00:11:27 GMT
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
	-	`sha256:466ce56b1525d593576b2d3d3a1fb4fe3391677c9fa1fd075f79dfda3dabe07b`  
		Last Modified: Tue, 13 Oct 2026 00:11:36 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1901f109d80ccde31145d6a699d4b6662d3e8fdcc82dcdf50e897a8e90128ee`  
		Last Modified: Tue, 13 Oct 2026 00:11:36 GMT  
		Size: 14.5 MB (14479777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c9e6506d0f67e9c8710c597baebcb4fcf3d0a4239201dedb72f6a132b89514c`  
		Last Modified: Tue, 13 Oct 2026 00:11:36 GMT  
		Size: 225.8 KB (225830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:0fc57dd52b1c52d3874c02cc5cd5cf3097342743e751cef32698d84f93f43410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3354782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0c5607cfd689e23d39c6b1c4feec202ffd29ebe1445404c1ced339b5adf03de`

```dockerfile
```

-	Layers:
	-	`sha256:80d87519b09627ef5a0e82ae47e8acc84fa77acb92f9e639073f7f394643496b`  
		Last Modified: Tue, 13 Oct 2026 00:11:36 GMT  
		Size: 3.3 MB (3333071 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc5655b32b0f039583622532435527e8ae0daebb722d852d29c47150e4c6931f`  
		Last Modified: Tue, 13 Oct 2026 00:11:36 GMT  
		Size: 21.7 KB (21711 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre21-temurin-noble` - linux; ppc64le

```console
$ docker pull tomcat@sha256:3070f27f2d6c4d517333eb55204e972c0048e0ee3481afd8bf8f66efdb1ebb56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123723135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b188de314bbd388277c7103febc3e60ea6f764dec5238a85f4f849d6a77f00f9`
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
# Tue, 13 Oct 2026 02:37:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 13 Oct 2026 02:37:29 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 02:37:29 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 13 Oct 2026 02:37:30 GMT
WORKDIR /usr/local/tomcat
# Tue, 13 Oct 2026 02:37:30 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 13 Oct 2026 02:37:30 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 13 Oct 2026 02:37:30 GMT
ENV TOMCAT_MAJOR=11
# Tue, 13 Oct 2026 02:37:30 GMT
ENV TOMCAT_VERSION=11.0.27
# Tue, 13 Oct 2026 02:37:30 GMT
ENV TOMCAT_SHA512=a617896307cada4884b24f80c4e977ddad8b3e0f88ce0e2a6eea29d5f332498e276ae5976c227a9c8daecf05c7c90def684a3766dd5a81f47a56d8b1adf43dc3
# Tue, 13 Oct 2026 02:37:31 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 13 Oct 2026 02:37:39 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 02:37:41 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 13 Oct 2026 02:37:41 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 13 Oct 2026 02:37:41 GMT
ENTRYPOINT []
# Tue, 13 Oct 2026 02:37:41 GMT
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
	-	`sha256:26699a9014437f98fd3772c934a6f255d958878edcb0507b345ed3bae3716daa`  
		Last Modified: Tue, 13 Oct 2026 02:38:04 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc18ea1dfaffec21dc78ca0fa8e8d721242aeb7c2aa1fc6aecd9cad430f2585`  
		Last Modified: Tue, 13 Oct 2026 02:38:05 GMT  
		Size: 14.5 MB (14490571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee7c07380f654f857ba8affb4f41bcf6d0e9ce6fe3007b2dd362a9f8335b4c98`  
		Last Modified: Tue, 13 Oct 2026 02:38:05 GMT  
		Size: 257.1 KB (257141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:5120f5ebd83d1601541999bac07a5b2a33d97899ee7151a0c0c8dff567d55dbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3358285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf99c19dd2a5fc3aa4a32c2935cb391ec92155eb3da05cef09d9b4d98e9e3fbc`

```dockerfile
```

-	Layers:
	-	`sha256:8d086784b093f61c92789edb5349a80d5b74c2224278f3c8afd284837a647b96`  
		Last Modified: Tue, 13 Oct 2026 02:38:05 GMT  
		Size: 3.3 MB (3336676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:767284ac8d925952463a29d820031ea8ad01d41404c4a6787158437766513976`  
		Last Modified: Tue, 13 Oct 2026 02:38:04 GMT  
		Size: 21.6 KB (21609 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre21-temurin-noble` - linux; riscv64

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

### `tomcat:11-jre21-temurin-noble` - unknown; unknown

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

### `tomcat:11-jre21-temurin-noble` - linux; s390x

```console
$ docker pull tomcat@sha256:6a9900a3ce691745a710406376f44146d0cce10eb56d07a9cc8d4669c6277d9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.0 MB (113958538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a7542440fec9d94f1c150a03f53fd421b64bb3603ee69715f8dc6ffcd55cb6d`
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
# Tue, 13 Oct 2026 00:10:28 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 13 Oct 2026 00:10:28 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 00:10:28 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 13 Oct 2026 00:10:28 GMT
WORKDIR /usr/local/tomcat
# Tue, 13 Oct 2026 00:10:28 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 13 Oct 2026 00:10:28 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 13 Oct 2026 00:10:28 GMT
ENV TOMCAT_MAJOR=11
# Tue, 13 Oct 2026 00:10:28 GMT
ENV TOMCAT_VERSION=11.0.27
# Tue, 13 Oct 2026 00:10:28 GMT
ENV TOMCAT_SHA512=a617896307cada4884b24f80c4e977ddad8b3e0f88ce0e2a6eea29d5f332498e276ae5976c227a9c8daecf05c7c90def684a3766dd5a81f47a56d8b1adf43dc3
# Tue, 13 Oct 2026 00:10:28 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 13 Oct 2026 00:10:30 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 13 Oct 2026 00:10:31 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 13 Oct 2026 00:10:31 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 13 Oct 2026 00:10:31 GMT
ENTRYPOINT []
# Tue, 13 Oct 2026 00:10:31 GMT
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
	-	`sha256:3ee24e458e618288fa4d4499f133870a91e66cfa410802d9aa64b315d4039cf9`  
		Last Modified: Tue, 13 Oct 2026 00:10:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:703128375024d8300b79942368fa753240a5a4f728d166d94f9943219dcbfff5`  
		Last Modified: Tue, 13 Oct 2026 00:10:45 GMT  
		Size: 14.5 MB (14482625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c721acd957d6b1aa1d604b69d5c900a62284da72d3ffdcc15431c76fb515fec4`  
		Last Modified: Tue, 13 Oct 2026 00:10:44 GMT  
		Size: 233.8 KB (233836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre21-temurin-noble` - unknown; unknown

```console
$ docker pull tomcat@sha256:9d7a3411b98c302c110b59860876e7b1f9918259865ca96391e2c303e34adf1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3356349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80c5ce8cfcd0dd37a50ecaf2212233c6dd57c5280ef09f837d07abd9ee013c59`

```dockerfile
```

-	Layers:
	-	`sha256:fdfa9b4e36e67faf0a27a5a9b7ca33cd2b40df9abe255594ca901b915c252975`  
		Last Modified: Tue, 13 Oct 2026 00:10:45 GMT  
		Size: 3.3 MB (3334798 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bfa268903a76a799449d2203bc291c0531aca53c7c95a6764bd4ec924398c28`  
		Last Modified: Tue, 13 Oct 2026 00:10:44 GMT  
		Size: 21.6 KB (21551 bytes)  
		MIME: application/vnd.in-toto+json
