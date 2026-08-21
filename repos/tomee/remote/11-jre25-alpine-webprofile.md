## `tomee:11-jre25-alpine-webprofile`

```console
$ docker pull tomee@sha256:81a8dfcde8302fe33526674ab0dcc5d56135b653c2a8a584f06315e9c6f8e741
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:11-jre25-alpine-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:3769be2b8d13b29aae04bc1a8c47a8f69d919c1d0ed07c93fbaab8c3ecfb64af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.8 MB (144809215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f8d3002fd52371496e4390f0d35262ae97a2c8789303017d7b6ab477891d0a4`
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
# Fri, 21 Aug 2026 19:04:42 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:04:42 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 19:04:42 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 19:04:42 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 19:04:53 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 19:04:53 GMT
ENV TOMEE_VER=11.0.0-M1
# Fri, 21 Aug 2026 19:04:53 GMT
ENV TOMEE_BUILD=webprofile
# Fri, 21 Aug 2026 19:04:54 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 19:04:54 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:04:54 GMT
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
	-	`sha256:f21cad362a6cb9be8ebe21f8f9658c87a7ed476187afd035ba9723967cc67a73`  
		Last Modified: Fri, 21 Aug 2026 19:05:02 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1226b62c6de039e7dd6c5f677d07fc76c21edee349fd0cf9dafbf9627f87dfbb`  
		Last Modified: Fri, 21 Aug 2026 19:05:02 GMT  
		Size: 7.2 MB (7235043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af11a5191f3f546f2b088bdd156c1c3b42391fe84a50cab9ead7950e1a4ceb17`  
		Last Modified: Fri, 21 Aug 2026 19:05:02 GMT  
		Size: 75.6 KB (75617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4575fd77acb6d01abf406a685ebc2da1f806cdb1cbfb2bfefdac9a249c8b2c7b`  
		Last Modified: Fri, 21 Aug 2026 19:05:04 GMT  
		Size: 62.0 MB (62025423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre25-alpine-webprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:2b4bf442483ac53011d20185823bed7473a0052d7c221f9aecf4bd6cb7bddea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1183620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4332c2b37db06d073a0418de767e7a539c56fd218e1ee6ed924a10d5f5f4d01d`

```dockerfile
```

-	Layers:
	-	`sha256:cef82c6086e06efae364247feb237fb7136e4939aed79a6cb86497f6fb5ae060`  
		Last Modified: Fri, 21 Aug 2026 19:05:02 GMT  
		Size: 1.2 MB (1154601 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50ced2999f3bc5e884f4e78d2f1974a6d4ad207b7ee7e79660b75afc867b4728`  
		Last Modified: Fri, 21 Aug 2026 19:05:02 GMT  
		Size: 29.0 KB (29019 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:11-jre25-alpine-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:ccc587ba2523dae3ccced7ff3510095ab6bad24e5b966acd14ecdf29f003f25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (143971951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3921b97c0dcb04547930c9ed8ffe4fcb254317c0ed0f69ce1fd3b04f6c2062f2`
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
# Fri, 21 Aug 2026 18:56:55 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:56:55 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 18:56:55 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 18:56:56 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:57:06 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 18:57:06 GMT
ENV TOMEE_VER=11.0.0-M1
# Fri, 21 Aug 2026 18:57:06 GMT
ENV TOMEE_BUILD=webprofile
# Fri, 21 Aug 2026 18:57:08 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 18:57:08 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:57:08 GMT
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
	-	`sha256:0c2665b2e37d508535d661666ab83dd679621b48fb29849602af198d051c5b9c`  
		Last Modified: Fri, 21 Aug 2026 18:57:17 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb1c52162800741a6eb6b8c420056e64f909506f63e62d5c8655034a949c0c2e`  
		Last Modified: Fri, 21 Aug 2026 18:57:18 GMT  
		Size: 7.1 MB (7137006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79712eea4b1f4ec0e13c84a3a746467a6058268cae16ff62640063857fb6023a`  
		Last Modified: Fri, 21 Aug 2026 18:57:17 GMT  
		Size: 75.7 KB (75670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50dcf087d77fbfb1240c26d4d058f98661dfd9611a6bd2252bccd7880f5d898d`  
		Last Modified: Fri, 21 Aug 2026 18:57:19 GMT  
		Size: 62.0 MB (62025455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre25-alpine-webprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:ed979397815347e6c1e6a81016cca4229b3dcd26b1b8ebc00cc3ac84ef418ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1182747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5faea7cdcbfc24dd3450a6c10f231c9aa7d57da87ef4e34fd3aeec8a50c4b3e3`

```dockerfile
```

-	Layers:
	-	`sha256:dc9f9a4a6ae77699b69ff511545078d778fc45db0c294dd0242278ba12aef577`  
		Last Modified: Fri, 21 Aug 2026 18:57:18 GMT  
		Size: 1.2 MB (1153482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b26dcaa32eb30330c5f6ff5492fb2d771efdf30cd5612477577170a554b560f5`  
		Last Modified: Fri, 21 Aug 2026 18:57:17 GMT  
		Size: 29.3 KB (29265 bytes)  
		MIME: application/vnd.in-toto+json
