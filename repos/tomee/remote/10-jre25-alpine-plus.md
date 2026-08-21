## `tomee:10-jre25-alpine-plus`

```console
$ docker pull tomee@sha256:4a90ab125792c27c8c2a69fd900f99e3eb030f0047bb6a408db541f53daa49c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:10-jre25-alpine-plus` - linux; amd64

```console
$ docker pull tomee@sha256:bc882fa555f2e4c19090bf29d1b3f252a7cfa710e84416ef4c62b75c37f2faa3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160982616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792108f15463ca6c022c50538b6f816562d997c31a087e0be7f7e126427e6230`
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
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 19:04:53 GMT
ENV TOMEE_BUILD=plus
# Fri, 21 Aug 2026 19:06:34 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 19:06:34 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:06:34 GMT
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
	-	`sha256:76e8bd2f9a4d9b09686ed166d55fa9342a3efdc94ad940ec1ab1eee1ad33aa5f`  
		Last Modified: Fri, 21 Aug 2026 19:06:44 GMT  
		Size: 78.2 MB (78198824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-jre25-alpine-plus` - unknown; unknown

```console
$ docker pull tomee@sha256:43716a3ea08d3cb2f4055748f32fee68ab3c323966162f43be3ef016ab4fe36f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1311975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94705867f23e82c77dfd6cf87d65051537eee60aa8dc46ed1dc69f4548c27a92`

```dockerfile
```

-	Layers:
	-	`sha256:c5b726c2611e1d45db89a007d9a15b02981083b9e08c602b0b84930855e0b62a`  
		Last Modified: Fri, 21 Aug 2026 19:06:42 GMT  
		Size: 1.3 MB (1281876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7b933ab3c4b2cce30ddee24856ac028ea39f8fecaf5dd5035375400647b2a3b`  
		Last Modified: Fri, 21 Aug 2026 19:06:42 GMT  
		Size: 30.1 KB (30099 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:10-jre25-alpine-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:63069c5b9aec86312c22d6e543cc33cce4e4f8a36a84220b16ff8b087956d24a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.1 MB (160145323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e56e05a8d90b30d63cc39545403226011fed2ad2b557fe3ac6d29021434da2c`
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
# Fri, 21 Aug 2026 18:58:13 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:58:13 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 18:58:13 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 18:58:14 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:58:24 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 18:58:24 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 18:58:24 GMT
ENV TOMEE_BUILD=plus
# Fri, 21 Aug 2026 18:58:25 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 18:58:25 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:58:25 GMT
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
	-	`sha256:9ef3d050f7e995461281e61c3a534291074f8895072e502b8d82bb4c77db6039`  
		Last Modified: Fri, 21 Aug 2026 18:58:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876c873cb0115702d791a132ac2d40e4c6e653fa80b94d19c97484165e2bd0b6`  
		Last Modified: Fri, 21 Aug 2026 18:58:37 GMT  
		Size: 7.1 MB (7137024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:264153b5d1da60a9bab2e7dfd83b805b3e17b765b289fb2ae39b4ded66c32aa8`  
		Last Modified: Fri, 21 Aug 2026 18:58:36 GMT  
		Size: 75.7 KB (75654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93bbfc060e770a2e9b29cb3e062a11458e9e4fbaa64544a6fb6eb7c76a4d58e7`  
		Last Modified: Fri, 21 Aug 2026 18:58:39 GMT  
		Size: 78.2 MB (78198825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-jre25-alpine-plus` - unknown; unknown

```console
$ docker pull tomee@sha256:d47a16c6ed9e93f7548154840e2ff1900ef8b554d9a241fde89b5add126f213f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1311197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4ff382250c347562650f5d65e4a7f8b08871e095854871f394e7730d6ed4be`

```dockerfile
```

-	Layers:
	-	`sha256:9b1638157b24e4fa971b9444cb63996a91c69161b5d601c3c6cca7dba6bcda7d`  
		Last Modified: Fri, 21 Aug 2026 18:58:36 GMT  
		Size: 1.3 MB (1280805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9067ff7262e629e02465bf09f54e4a9cab95476b3615bec84dc787fb15b7ca92`  
		Last Modified: Fri, 21 Aug 2026 18:58:36 GMT  
		Size: 30.4 KB (30392 bytes)  
		MIME: application/vnd.in-toto+json
