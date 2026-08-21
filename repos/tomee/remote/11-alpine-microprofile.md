## `tomee:11-alpine-microprofile`

```console
$ docker pull tomee@sha256:2a881b9a3b55f3ddce9e614d4ed960452768a6086560e1b24ee69318c651ac9d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:11-alpine-microprofile` - linux; amd64

```console
$ docker pull tomee@sha256:4c3f7d6281a7bb02d573fb35d563c58c7ea028ea932e80e9c41d9f446e65b2e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.9 MB (154887644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11643444bc6d260f9947e961d377693974d1cb8ca8df130d8d541fcdac6286a6`
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
# Fri, 21 Aug 2026 19:04:30 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:04:30 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 19:04:30 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 19:04:31 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 19:04:41 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 19:04:41 GMT
ENV TOMEE_VER=11.0.0-M1
# Fri, 21 Aug 2026 19:04:41 GMT
ENV TOMEE_BUILD=microprofile
# Fri, 21 Aug 2026 19:04:42 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 19:04:42 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:04:42 GMT
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
	-	`sha256:9f696c11c204107a81ca69da6d5c64a4e871639ab3520199419a87de633a326c`  
		Last Modified: Fri, 21 Aug 2026 19:04:52 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646b830a04868353e9e667145473680af2ed5999786ac8c93249501b1f8a1099`  
		Last Modified: Fri, 21 Aug 2026 19:04:53 GMT  
		Size: 7.2 MB (7235048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798fe0c4e9243b0f87c02f20c727a3823dcbe3c4a9b4b5a09eae0acaab31ebd9`  
		Last Modified: Fri, 21 Aug 2026 19:04:53 GMT  
		Size: 75.6 KB (75637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee5c51e5e8d5d2bd84911d1bd89de09265e0dfea604410007bf2d556ebb6755`  
		Last Modified: Fri, 21 Aug 2026 19:04:55 GMT  
		Size: 72.1 MB (72103826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-alpine-microprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:81fd2b57ec137f65a92ecdbeef411539e8eae1caea37202bf54466528bc9f38a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1294920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64f7220897e5c99eb97bfc02d3be486956fc5c193ad03ac69a6dab6d66a5d17e`

```dockerfile
```

-	Layers:
	-	`sha256:6af36808fe51ed0fdfef62b72fe482b4ec519bf9d5639f634253d409677df51e`  
		Last Modified: Fri, 21 Aug 2026 19:04:53 GMT  
		Size: 1.3 MB (1261978 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6dab0dd639c4e2346758f860cce2f99d8ef2e95d7a2aa4ae1b0187fd4025dea`  
		Last Modified: Fri, 21 Aug 2026 19:04:52 GMT  
		Size: 32.9 KB (32942 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:11-alpine-microprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:57767d8f706a7874cecb0a358b236835bc2cf3d57cb62c4a7670911656a612b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.1 MB (154050329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:694a8e8b2a40fd8e6045d3fd0a243bf4a3befcd9f34836fe6ff3b463b6496cde`
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
# Fri, 21 Aug 2026 18:56:51 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:56:51 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 18:56:51 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 18:56:51 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:57:01 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 18:57:01 GMT
ENV TOMEE_VER=11.0.0-M1
# Fri, 21 Aug 2026 18:57:01 GMT
ENV TOMEE_BUILD=microprofile
# Fri, 21 Aug 2026 18:57:07 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 18:57:07 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:57:07 GMT
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
	-	`sha256:8b33b349b1221d6db3653670f9bc2ac97e21dce1cdfdff6c88463f1258698a33`  
		Last Modified: Fri, 21 Aug 2026 18:57:17 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83898979b748de542476b2db08f0a09a92585fd0cfea870717b6f02b4ee1acc2`  
		Last Modified: Fri, 21 Aug 2026 18:57:17 GMT  
		Size: 7.1 MB (7137009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:127487e3dbb1b725942f174b178f219c86369d742e04fd4bc241de98aca4a636`  
		Last Modified: Fri, 21 Aug 2026 18:57:17 GMT  
		Size: 75.6 KB (75638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c0931672081fec50ddd13ae4abf15e17cfa577e4b80fa0d23ce8f258a14028`  
		Last Modified: Fri, 21 Aug 2026 18:57:19 GMT  
		Size: 72.1 MB (72103863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-alpine-microprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:51ce342dbcf117029681db7d1c1494b79082589f366a3201d0548e10b876a9d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1294334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6016d6bebc028fcd3a23e2c8360be2c027bb1ea36458e6050599af8ddb524f1`

```dockerfile
```

-	Layers:
	-	`sha256:2ee679e38aa394252cdca054dacee876cf9c1146ee835b2881721a5624b8d8a6`  
		Last Modified: Fri, 21 Aug 2026 18:57:17 GMT  
		Size: 1.3 MB (1261003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ee2d89b8a9c128f96ceb2b4358afec9551398525a245c233da61b2a2dfdf48d`  
		Last Modified: Fri, 21 Aug 2026 18:57:16 GMT  
		Size: 33.3 KB (33331 bytes)  
		MIME: application/vnd.in-toto+json
