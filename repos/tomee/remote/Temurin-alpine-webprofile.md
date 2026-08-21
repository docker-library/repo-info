## `tomee:Temurin-alpine-webprofile`

```console
$ docker pull tomee@sha256:cc388df782a4b774dd6ceec04fd752fab0e7ea96158d1764c840498d0e3931c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:Temurin-alpine-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:2ea1e858fba7d425e29bf9edb5503984731ef7e131228acc7ef966ab46268136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.8 MB (145821091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5630d9ac1b2df4b2865e32f42c122a36fd0d3da8ecdd983a8427b645a015c3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:26:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:03 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:26:03 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:26:07 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='c9a48a33d65f308c6066bbfdfc0d4b9143793588a0def79df219760b25bb8b84';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='4a641bfa74e961efd9cc6dbfb6eccf0bec13014904433f00eb33df84c393318f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:26:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:06:37 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:06:37 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 19:06:37 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 19:06:38 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 19:06:48 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 19:06:48 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 19:06:48 GMT
ENV TOMEE_BUILD=webprofile
# Fri, 21 Aug 2026 19:06:50 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 19:06:50 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:06:50 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76ddb39a6b74360783352e38026832cbd501c34a637da62a4b40826ebbc5748`  
		Last Modified: Fri, 21 Aug 2026 18:26:19 GMT  
		Size: 9.5 MB (9501536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a1250704614a551e41ca03d4485964b9783a54f0467ef85d8b2fc340659d7c`  
		Last Modified: Fri, 21 Aug 2026 18:26:21 GMT  
		Size: 62.1 MB (62122417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae042fea25ae1b61992570e8acb8e2db0edbe2f6ae17f09ea59d15a858c89851`  
		Last Modified: Fri, 21 Aug 2026 18:26:18 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51c06ae8de15c24740d0ff89711760d6b1005548314337bf6f669c586ce079f3`  
		Last Modified: Fri, 21 Aug 2026 18:26:19 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8eef51630bc5790799857a33d47efcf95de67c5a74b03687c218663ecab04c2`  
		Last Modified: Fri, 21 Aug 2026 19:06:59 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:207fa6b7231c9af820d871469d8c3d83ad255744814b833ec462d0e37289a6b0`  
		Last Modified: Fri, 21 Aug 2026 19:06:59 GMT  
		Size: 7.2 MB (7235036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91032f7f6f5eff54364263b45e12b7eed13811e9fbc3bafed340abdf5ce41e5`  
		Last Modified: Fri, 21 Aug 2026 19:06:59 GMT  
		Size: 75.7 KB (75663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beffa63b12d89bed755d352544755ec6c30fc8f4c6bc169eb50c80d1de350ed7`  
		Last Modified: Fri, 21 Aug 2026 19:07:01 GMT  
		Size: 63.0 MB (63037259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:Temurin-alpine-webprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:caa4d3c1b6a56b1866d086e1b71abd489815f251e0b41b8b85117d92c8bd2791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1184160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:962ff19d36a2eb621eac53d8ac0bdbf2e83045594593e1285ff91e7eb06284c6`

```dockerfile
```

-	Layers:
	-	`sha256:05f04eba512df2bb121726386ff66e6b1a75ee5ae47b8058af94801a0b9fa781`  
		Last Modified: Fri, 21 Aug 2026 19:06:59 GMT  
		Size: 1.2 MB (1153843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f40b137e0d285fad44a962208c77d119b7aebab028252f63f99139f2072c878d`  
		Last Modified: Fri, 21 Aug 2026 19:06:59 GMT  
		Size: 30.3 KB (30317 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:Temurin-alpine-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:e56baaa37ccb900a80c22cd73415e3281f6993cbefc7a599a2dfc9e29ae96ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144983791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edef03035d2a85134cf5f351db29466a377de018a783cfc7b076a10eea54a60e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:28:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:28:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:28:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:28:56 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:28:56 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:29:01 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='c9a48a33d65f308c6066bbfdfc0d4b9143793588a0def79df219760b25bb8b84';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        x86_64)          ESUM='4a641bfa74e961efd9cc6dbfb6eccf0bec13014904433f00eb33df84c393318f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Fri, 21 Aug 2026 18:29:01 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:29:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:29:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:58:28 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:58:28 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 18:58:28 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 18:58:29 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:58:39 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 18:58:39 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 18:58:39 GMT
ENV TOMEE_BUILD=webprofile
# Fri, 21 Aug 2026 18:58:41 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 18:58:41 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:58:41 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c44362e98e8fae1f3d1b0d411f465c2163a7f3d299fb5d42ae9a18a8a1dff02a`  
		Last Modified: Fri, 21 Aug 2026 18:29:14 GMT  
		Size: 9.5 MB (9510966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74de35be562722fbe702fd7475543883ead96e669d2f55c3450d6384ee67a333`  
		Last Modified: Fri, 21 Aug 2026 18:29:15 GMT  
		Size: 61.0 MB (61037025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d605a128300bd6045792a17037e6bf84886a9727093251c02e0901ea550bfad`  
		Last Modified: Fri, 21 Aug 2026 18:29:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a28b8a4058bb39b2025db5ba9c5203522747a2460e339a33f902a7ee9e58d8`  
		Last Modified: Fri, 21 Aug 2026 18:29:13 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9904732858f66ba6aacebbe5e99067e62931893e46fae2457d78b335eb57c15`  
		Last Modified: Fri, 21 Aug 2026 18:58:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4c5c3b1890da00fd7af6d9a22cc47ae3b7244c3916b7420267080f2571a8a9`  
		Last Modified: Fri, 21 Aug 2026 18:58:51 GMT  
		Size: 7.1 MB (7137006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68afeedfea7c4436335d93305a24b4e24372b289b376f368c12a9894a649513`  
		Last Modified: Fri, 21 Aug 2026 18:58:51 GMT  
		Size: 75.7 KB (75664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b1b793b46aa05750cdf2835bbc275125c96b817d2b872c4de8684b73698788`  
		Last Modified: Fri, 21 Aug 2026 18:58:53 GMT  
		Size: 63.0 MB (63037301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:Temurin-alpine-webprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:b289d0b9c9bdbf342b04e9f324bbb4673542d0521ddabd630bf5b3964465dc0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1183382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cda6a525a116a2631240f9d3570d5c34707bc5e30e7a31fc8ba837d88c0456b`

```dockerfile
```

-	Layers:
	-	`sha256:5f9de77b2baea172e524eefeb7d85b41087cddcc705d02b4e8ffd640db6af661`  
		Last Modified: Fri, 21 Aug 2026 18:58:50 GMT  
		Size: 1.2 MB (1152772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed9c1988be0fc97950510f9fee6cf680677f5d823526cc78e075d4bfcc8f7e18`  
		Last Modified: Fri, 21 Aug 2026 18:58:50 GMT  
		Size: 30.6 KB (30610 bytes)  
		MIME: application/vnd.in-toto+json
