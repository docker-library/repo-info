## `tomee:10-Temurin-alpine-plume`

```console
$ docker pull tomee@sha256:d9a026e826d1ea2f8c0f44b83e3cff58ec71b981660dc233ab003be422d63ba6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:10-Temurin-alpine-plume` - linux; amd64

```console
$ docker pull tomee@sha256:6608cb62c5c6a15f3449233e9fdc8eb1a0832d93f5dee95c3be05f955fe791a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169116784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47e2b1ca28883d27b80b416c35fec9c48d4974c22e54d20b892ea74a4d96aae4`
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
# Fri, 21 Aug 2026 19:06:33 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:06:33 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 19:06:33 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 19:06:34 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl  && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 19:06:44 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 19:06:44 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 19:06:44 GMT
ENV TOMEE_BUILD=plume
# Fri, 21 Aug 2026 19:06:45 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 19:06:45 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:06:45 GMT
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
	-	`sha256:2ddbea7f3cf5a07cefc4c48b639cd5b89a7e279fa2730fb88d89b02b29536d91`  
		Last Modified: Fri, 21 Aug 2026 19:06:56 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7f9ec89bac2e4b69e12ca5748efbb14d7af54d2d7ffff247df6e015f59dd5e`  
		Last Modified: Fri, 21 Aug 2026 19:06:56 GMT  
		Size: 7.2 MB (7235056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e37b13530381f5b43d272a0b4e4db4a636a98f9b1a235b5be942659ef8bb2d`  
		Last Modified: Fri, 21 Aug 2026 19:06:56 GMT  
		Size: 75.6 KB (75635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2ca7e25e1dac0031bb21687897d84bc19956e235e67d3d14b5a8706899ed197`  
		Last Modified: Fri, 21 Aug 2026 19:06:59 GMT  
		Size: 86.3 MB (86332959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-Temurin-alpine-plume` - unknown; unknown

```console
$ docker pull tomee@sha256:8647def5a95cae32ab02a642f3c6045375abf2616ae90e808cd8bde4a0eafa3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1330856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7bef90d926f283995f9423ed3f11a5fa08eab8708672780ee44d8d71b50e8a`

```dockerfile
```

-	Layers:
	-	`sha256:19c7b357920c1a8ec37d0f467c7276c42956f96a31a12d64b3c56496b39d4384`  
		Last Modified: Fri, 21 Aug 2026 19:06:56 GMT  
		Size: 1.3 MB (1300723 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c323e10187ed0e70fc5cdc659023a968e8180bf381d9382a6fb6603b7eb71a92`  
		Last Modified: Fri, 21 Aug 2026 19:06:56 GMT  
		Size: 30.1 KB (30133 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:10-Temurin-alpine-plume` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:95b0864c8ed1ff5e06f07281b53dd998e01d73b7f715efe92597dbf6f80d914e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.3 MB (168279475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb778d550b0c951784dd72c7068c370cbfd81210ab47e3d36570ebf1397d060`
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
RUN apk add --no-cache gpg gpg-agent dirmngr curl  && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:58:24 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 18:58:24 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 18:58:24 GMT
ENV TOMEE_BUILD=plume
# Fri, 21 Aug 2026 18:58:30 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 18:58:30 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:58:30 GMT
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
	-	`sha256:4af6f9478b55cbeaf3540d1ed1910baa1cf492014143e0d350f05c5832820c16`  
		Last Modified: Fri, 21 Aug 2026 18:58:40 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72d26f1c9647eabd438a9863a8a94eee34272237f19eeda67cb11c70e1b0f592`  
		Last Modified: Fri, 21 Aug 2026 18:58:41 GMT  
		Size: 7.1 MB (7137054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff6da5e181beccb890e1d2e60424d19c0ed8cd2aa27114aca112c7224ff4168e`  
		Last Modified: Fri, 21 Aug 2026 18:58:40 GMT  
		Size: 75.6 KB (75635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279081c185362172eaa672059d31c0ac62d300eae740dce4a61ccafd23bbe61d`  
		Last Modified: Fri, 21 Aug 2026 18:58:43 GMT  
		Size: 86.3 MB (86332967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-Temurin-alpine-plume` - unknown; unknown

```console
$ docker pull tomee@sha256:ad0af3a9106d23bc3ca70493e27ef89c789d415af298dd5505533f9113c4af33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1330078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a788b52e25971729a3b91cd8f8391f2cbc58262bdf4da7c5e2eaa9f66ab0d2`

```dockerfile
```

-	Layers:
	-	`sha256:79093c7a437c54c60c1253c696a57d2e29cfa89e4aedca2d7e92d6a9acc6a129`  
		Last Modified: Fri, 21 Aug 2026 18:58:40 GMT  
		Size: 1.3 MB (1299652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2f708c51d8fc7ac1d52016db666f529ab6cfddb0becedec022d548286a6ccbc`  
		Last Modified: Fri, 21 Aug 2026 18:58:40 GMT  
		Size: 30.4 KB (30426 bytes)  
		MIME: application/vnd.in-toto+json
