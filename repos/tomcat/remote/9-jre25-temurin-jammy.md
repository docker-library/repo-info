## `tomcat:9-jre25-temurin-jammy`

```console
$ docker pull tomcat@sha256:a0e4461154d877dc0013271ec0886e900bbb7d53d157b4c34a109c5cf62e9dca
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

### `tomcat:9-jre25-temurin-jammy` - linux; amd64

```console
$ docker pull tomcat@sha256:3b61f319a41f5d81c94891aaad2140e4b47ebe496ec1ecc955a801bbc0fc6577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.2 MB (118225911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97da90af3ec0bf36c27052f0e2cbb6d23a9ce08660ae046c2dee943d96394ea`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:22:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:22:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:22:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:22:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:22:10 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 02 Jul 2026 02:22:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:22:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:22:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:22:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 07 Jul 2026 17:54:57 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 07 Jul 2026 17:54:57 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 17:54:57 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 07 Jul 2026 17:54:58 GMT
WORKDIR /usr/local/tomcat
# Tue, 07 Jul 2026 17:54:58 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:54:58 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:54:58 GMT
ENV TOMCAT_MAJOR=9
# Tue, 07 Jul 2026 17:54:58 GMT
ENV TOMCAT_VERSION=9.0.120
# Tue, 07 Jul 2026 17:54:58 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 07 Jul 2026 17:54:58 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 07 Jul 2026 17:55:01 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:55:02 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 07 Jul 2026 17:55:02 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 07 Jul 2026 17:55:02 GMT
ENTRYPOINT []
# Tue, 07 Jul 2026 17:55:02 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a0b76e6ff6017e4488422faee94de20c0c6b2029b5e86116393017c476eff3a`  
		Last Modified: Thu, 02 Jul 2026 02:22:41 GMT  
		Size: 11.4 MB (11368725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a10dcffd11ab8ac7fa527d3b8a3340eff6a83a404fc45124bd8056a20bdebe`  
		Last Modified: Thu, 02 Jul 2026 02:22:42 GMT  
		Size: 63.0 MB (63010735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a1dfa6361521328637a041fbd3fba4d436cf92706c5f4b41bdd8dc35799f7c`  
		Last Modified: Thu, 02 Jul 2026 02:22:41 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1434a972512b34c495df47343865708a05541af0eef6a8f4cb432d327e43dead`  
		Last Modified: Tue, 07 Jul 2026 17:55:11 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56aeda0deaacb4379ef192f03d6483d064d05575135a7829f41ada39c6b38746`  
		Last Modified: Tue, 07 Jul 2026 17:55:11 GMT  
		Size: 13.9 MB (13891367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5943c9585c2121b8d01c31803436a6f36e8acf8d240b43526dd1e7ffb6f7dd`  
		Last Modified: Tue, 07 Jul 2026 17:55:11 GMT  
		Size: 213.7 KB (213685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:ce177f7115a0a831aeee5063d5896a007614896eb4a2fd80be6162dc822bcc82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3710562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0760a0af644a211da4e97be18ed36b8a0041861fe22afe71b9c8dcfeb73527b`

```dockerfile
```

-	Layers:
	-	`sha256:087d01fb52d21ec3840247aa45344eb0c89514b3b8209629ea4fd05fcb19e575`  
		Last Modified: Tue, 07 Jul 2026 17:55:11 GMT  
		Size: 3.7 MB (3689360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82a2613b23d78cfd911d50e7467ad1ce9b62e16f162092913772cea637ed3381`  
		Last Modified: Tue, 07 Jul 2026 17:55:10 GMT  
		Size: 21.2 KB (21202 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-jammy` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:aa76258d4ca596f54cfa1c193e6adcc94c2b06d232049a55cce183068664c8ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (114950072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54c2d0bc33a8776b5bc2d77a05e9f1d23dbaee491967f761f7a34d11eb57aba4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:21:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:21:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:21:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:21:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:21:10 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 02 Jul 2026 02:21:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:21:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:21:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:21:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 07 Jul 2026 17:55:05 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 07 Jul 2026 17:55:05 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 17:55:05 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 07 Jul 2026 17:55:05 GMT
WORKDIR /usr/local/tomcat
# Tue, 07 Jul 2026 17:55:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:55:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 07 Jul 2026 17:55:05 GMT
ENV TOMCAT_MAJOR=9
# Tue, 07 Jul 2026 17:55:05 GMT
ENV TOMCAT_VERSION=9.0.120
# Tue, 07 Jul 2026 17:55:05 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 07 Jul 2026 17:55:05 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 07 Jul 2026 17:55:10 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 17:55:11 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 07 Jul 2026 17:55:11 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 07 Jul 2026 17:55:11 GMT
ENTRYPOINT []
# Tue, 07 Jul 2026 17:55:11 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8767c383adbaa43df6334a44d213a244c08c83afc43fc73ce28385d21e1d1d4`  
		Last Modified: Thu, 02 Jul 2026 02:21:42 GMT  
		Size: 11.3 MB (11312794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa30331bfea77702d1d7cfc43b3bba09e565b1f5e926f1e7c02ad5512b813810`  
		Last Modified: Thu, 02 Jul 2026 02:21:43 GMT  
		Size: 61.9 MB (61912829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9717467f8ed04acdf735d36f506373609c2fad1b1f51b95c7da0bc9c51ff83d8`  
		Last Modified: Thu, 02 Jul 2026 02:21:41 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0503e302fdd954985044cffcb6533af6040bde18bafd0517e2b7e1a4a1671f9b`  
		Last Modified: Tue, 07 Jul 2026 17:55:19 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bcf6dbc05b192ffc63b4c89e3c5462d1d7472665279110a0a8fb62dd852ccdb`  
		Last Modified: Tue, 07 Jul 2026 17:55:20 GMT  
		Size: 13.9 MB (13896075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3106b9e7ed6d75470959db4cdceb0cfa03bf04388cf6514085877cf5d99d0f09`  
		Last Modified: Tue, 07 Jul 2026 17:55:20 GMT  
		Size: 212.7 KB (212670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:83af6c211e80691d15079f04809c44a7dccba26d8d674bcc086c18362072190b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3710361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4032ff9c6b2b9067fa1a166607687908a9519777c94f14e904e19e67208dc920`

```dockerfile
```

-	Layers:
	-	`sha256:53922418295dbec79ab1f6a296fe8a5e1296a67299e2d475e33916b99c9e049e`  
		Last Modified: Tue, 07 Jul 2026 17:55:20 GMT  
		Size: 3.7 MB (3689011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b97fa8b2455030ea7cc0926d2a54f1b832b74b21ec5015781ba4a6789ed24422`  
		Last Modified: Tue, 07 Jul 2026 17:55:20 GMT  
		Size: 21.4 KB (21350 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-jammy` - linux; ppc64le

```console
$ docker pull tomcat@sha256:b44c4a8ca5329b4035cfea63298fad1ea0262563f466553a5e4b78ef2a50a489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.1 MB (123069179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b02e578051ba5a6c89186a7534e6c25e7cc6abb7e66460daad3c90f694c3fc2`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 29 Jun 2026 10:35:02 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:35:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:35:02 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:35:06 GMT
ADD file:fe88ac7d2b59101d91924b906576ed0bd1506245791beb01e66dafe898d768bb in / 
# Mon, 29 Jun 2026 10:35:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:28:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:28:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:28:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:28:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:28:19 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 02 Jul 2026 02:28:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:28:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:28:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:28:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 08:16:15 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 02 Jul 2026 08:16:15 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 08:16:15 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 02 Jul 2026 08:16:16 GMT
WORKDIR /usr/local/tomcat
# Thu, 02 Jul 2026 08:16:16 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 08:16:16 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 08:16:16 GMT
ENV TOMCAT_MAJOR=9
# Thu, 02 Jul 2026 08:16:16 GMT
ENV TOMCAT_VERSION=9.0.120
# Thu, 02 Jul 2026 08:16:16 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 07 Jul 2026 19:08:51 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 07 Jul 2026 19:08:59 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 19:09:01 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 07 Jul 2026 19:09:01 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 07 Jul 2026 19:09:01 GMT
ENTRYPOINT []
# Tue, 07 Jul 2026 19:09:01 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b58f435ace747ffc0429cde4e7ad00c811ee8de2e6402f4a5968cf72c6e99893`  
		Last Modified: Thu, 02 Jul 2026 02:29:13 GMT  
		Size: 11.9 MB (11850909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba5e6e2291c59884be3d2a9ad7d3c5543ae4c76fe1c3dec7fd550b266acb9194`  
		Last Modified: Thu, 02 Jul 2026 02:29:15 GMT  
		Size: 62.4 MB (62411423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aacd411b57aadeca23f5b7e49e9dd74295f0be85ca910f20588eae0c51aa74ee`  
		Last Modified: Thu, 02 Jul 2026 02:29:12 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbacfe053d87b95fd5474c0da42153f401c2fc894fff298714dcb9e6dcb8f56`  
		Last Modified: Thu, 02 Jul 2026 08:16:50 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4d94c35269f3bbc7aa450930ffb6817af681b3026c7a8adb3d0a80279cf7d6`  
		Last Modified: Tue, 07 Jul 2026 19:09:22 GMT  
		Size: 13.9 MB (13918924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa2b892ec406de3ae13a2bc75e337b6664a988f643a43fa5167b4414349cbb7d`  
		Last Modified: Tue, 07 Jul 2026 19:09:21 GMT  
		Size: 243.5 KB (243537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:cebe17c5f6c8c9f9440b10190fd51bbcd12cc3db5232c18307abc804fede42da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3713954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a746c6862d578239e2260f1dec2560ce9eaa03c0b8c8222e968230bb8bfa351`

```dockerfile
```

-	Layers:
	-	`sha256:4124f1ff0458580c368f53bfcc2a8478d97e9788c3a45eab944e666e46f10d5e`  
		Last Modified: Tue, 07 Jul 2026 19:09:22 GMT  
		Size: 3.7 MB (3692700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b76de7f8d0c95fe23a7360ee99d276f81c2a1be09f4da393780267203edc24d`  
		Last Modified: Tue, 07 Jul 2026 19:09:21 GMT  
		Size: 21.3 KB (21254 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-jammy` - linux; s390x

```console
$ docker pull tomcat@sha256:bb4d839a47d9b83c7a180e7045714c73be2d9db310034733f0188029be739707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.3 MB (114262351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98359feaa0cb1249f74489b2b3bc93adf50c1d0582239da7f6c098ca2c51fe1e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 29 Jun 2026 10:41:48 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:41:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:41:48 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:41:49 GMT
ADD file:a7caac22d71edeca734e094edaefd29ba696f6b6850656befefab899becd4181 in / 
# Mon, 29 Jun 2026 10:41:49 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:15:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:15:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:15:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:15:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:15:37 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 02 Jul 2026 02:15:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:15:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:15:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:15:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 06:18:56 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Thu, 02 Jul 2026 06:18:56 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:18:56 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Thu, 02 Jul 2026 06:18:56 GMT
WORKDIR /usr/local/tomcat
# Thu, 02 Jul 2026 06:18:56 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 06:18:56 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Thu, 02 Jul 2026 06:18:56 GMT
ENV TOMCAT_MAJOR=9
# Thu, 02 Jul 2026 06:18:56 GMT
ENV TOMCAT_VERSION=9.0.120
# Thu, 02 Jul 2026 06:18:56 GMT
ENV TOMCAT_SHA512=07eb6d9639c3e69af81171a16ccff1c19b7fd5b2e87e3646851f0a3f42a4ce3c1bf128fbe40fc978a08935ba4f0400ef3b43ded3e470b9aaf23b97a9e1fa0858
# Tue, 07 Jul 2026 21:09:11 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 07 Jul 2026 21:09:14 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 21:09:15 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 07 Jul 2026 21:09:15 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 07 Jul 2026 21:09:15 GMT
ENTRYPOINT []
# Tue, 07 Jul 2026 21:09:15 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58828f9d6aec81425e03f067daaa1b112818978faaaa8aef2a6a1cf132f2782c`  
		Last Modified: Thu, 02 Jul 2026 02:16:07 GMT  
		Size: 11.5 MB (11456062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a068d6746cff7e40fc51663d301976bdb367e7219d0832d3244ad7ca65616750`  
		Last Modified: Thu, 02 Jul 2026 02:16:08 GMT  
		Size: 60.5 MB (60500712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b76de7f8832ad3acd7ad448568e489ec4ff5d2e08c15afb2df1b0d278e2e9d4`  
		Last Modified: Thu, 02 Jul 2026 02:16:07 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b8b9638f7fb0b6f3f570b3f07a520da0ceb7825aecf5d9d233f96da656b692`  
		Last Modified: Thu, 02 Jul 2026 06:19:12 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53b86c7b5ea702b5b5057f9e201db9c97c7608e45eb82757ea08e5029da229a`  
		Last Modified: Tue, 07 Jul 2026 21:09:32 GMT  
		Size: 13.9 MB (13884163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3babc5c98f88a7b0312be57bc4ff5983c8fc4bbd7b9024d88f4f725ca8689f76`  
		Last Modified: Tue, 07 Jul 2026 21:09:31 GMT  
		Size: 214.8 KB (214766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:5b5dd71084b726059bf38293788e3affa4360b675d874337dff032646e2b93d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3711546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed40e28fae7ff55bb8480aa6524ef63d33a5c886eabcf5dab0061021b87fc90a`

```dockerfile
```

-	Layers:
	-	`sha256:232287b4814132e0c57389b7830b0839fd601ebe8c2b654a0a08a0886a98e801`  
		Last Modified: Tue, 07 Jul 2026 21:09:31 GMT  
		Size: 3.7 MB (3690345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1058ccaa6176e217dd64b2ab3c2208c75ffa6a6d2edf21070740d7149e631da2`  
		Last Modified: Tue, 07 Jul 2026 21:09:31 GMT  
		Size: 21.2 KB (21201 bytes)  
		MIME: application/vnd.in-toto+json
