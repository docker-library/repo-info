## `tomee:jre25-Temurin-alpine-plus`

```console
$ docker pull tomee@sha256:e1b2e92efba3705dfec9c1c8fcf8f15865d80ccf82f4750971314950a73b66ad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:jre25-Temurin-alpine-plus` - linux; amd64

```console
$ docker pull tomee@sha256:a1f834c3ace8324c9c785fa36ecf903b3502e1696f7140c6428a1d74c6f6fa40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161077909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b360caccd1f516bc04baf1b44f59b2a903d83801afb25d45a609594f8fcd7265`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:19:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:19:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:19:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:19:00 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:19:00 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 05 Nov 2026 19:19:05 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='7c2b97b1b34947399f6c911e5aa69d171b745b0005ea79f47c4f3f1d47554bc2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='b46e981318decb77eda728e006c7678a1ac0c56cf81ae3ad245710c2e4fa1a55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:19:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:19:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:19:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 20:26:14 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 20:26:14 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Thu, 05 Nov 2026 20:26:14 GMT
WORKDIR /usr/local/tomee
# Thu, 05 Nov 2026 20:26:15 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 20:26:24 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Thu, 05 Nov 2026 20:26:24 GMT
ENV TOMEE_VER=10.2.0
# Thu, 05 Nov 2026 20:26:24 GMT
ENV TOMEE_BUILD=plus
# Thu, 05 Nov 2026 20:26:30 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Thu, 05 Nov 2026 20:26:30 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 20:26:30 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7dc3b41e2549bbda29ce631ed92075b356e7dbc8f190c19edbb271ef5462d71`  
		Last Modified: Thu, 05 Nov 2026 19:19:18 GMT  
		Size: 9.5 MB (9511808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:886b0114f75f2995724b83cf6e20572c51c82c5b0defa750c0ecb89660d7c999`  
		Last Modified: Thu, 05 Nov 2026 19:19:20 GMT  
		Size: 62.2 MB (62177478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46fe161d51f295187fa7ba49d3add5db4eed5c009e7aed28eb2fb3289b5edd26`  
		Last Modified: Thu, 05 Nov 2026 19:19:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da56067b048e2730bf53dd8674506b9f2664b462ee47d167df0d10b41a91805`  
		Last Modified: Thu, 05 Nov 2026 19:19:18 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ac4e7bdac9fb5cf8bba68da4693981f363806209db170deb712a5e2c496734`  
		Last Modified: Thu, 05 Nov 2026 20:26:41 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5137f2ef43dd1411409e46f171c293c3dd05fe057ffd8ada7ac8a5616bde6055`  
		Last Modified: Thu, 05 Nov 2026 20:26:41 GMT  
		Size: 7.3 MB (7257633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea7fd1c2b1c3fa2ad402ff445f14ac3ebf8a50f6daac97f21007cc6d41513b6`  
		Last Modified: Thu, 05 Nov 2026 20:26:41 GMT  
		Size: 75.7 KB (75662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688971b1799d7ea8ba56d9aaff911b037709375c990ca3242ac5024c2d5e1aad`  
		Last Modified: Thu, 05 Nov 2026 20:26:43 GMT  
		Size: 78.2 MB (78198862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:jre25-Temurin-alpine-plus` - unknown; unknown

```console
$ docker pull tomee@sha256:a3bfa625062c032f3626a8e2e3b99669d7809176de6d6f28758f8d5380e3baca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1311335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00effa9eb4eb78572b683faf8da3a1035d7d320835b05113b4cf31163e324fb`

```dockerfile
```

-	Layers:
	-	`sha256:9bf0edc2124cc5b80514d3bbaa9308b80e109cd19e7c6eb65d02e7b7357625a5`  
		Last Modified: Thu, 05 Nov 2026 20:26:41 GMT  
		Size: 1.3 MB (1281236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:415a955193939b99bcb50b52d6ef74005b3725a2ec70b83d17eabcc4334c4771`  
		Last Modified: Thu, 05 Nov 2026 20:26:41 GMT  
		Size: 30.1 KB (30099 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:jre25-Temurin-alpine-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:331867edc5c50e7f02abf094d194db76fe506684885090f7aca073ffcf6138ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160220176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85e9bbac6e7212b8592fde857e272ecbba7a8727510dcbe5f58d57f664c7a859`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:13:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:13:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:13:49 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:13:49 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 05 Nov 2026 19:13:54 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='7c2b97b1b34947399f6c911e5aa69d171b745b0005ea79f47c4f3f1d47554bc2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        x86_64)          ESUM='b46e981318decb77eda728e006c7678a1ac0c56cf81ae3ad245710c2e4fa1a55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_alpine-linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apk del --no-network .fetch-deps; # buildkit
# Thu, 05 Nov 2026 19:13:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:13:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:13:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 21:33:53 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 21:33:53 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Thu, 05 Nov 2026 21:33:53 GMT
WORKDIR /usr/local/tomee
# Thu, 05 Nov 2026 21:33:54 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 21:34:04 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Thu, 05 Nov 2026 21:34:04 GMT
ENV TOMEE_VER=10.2.0
# Thu, 05 Nov 2026 21:34:04 GMT
ENV TOMEE_BUILD=plus
# Thu, 05 Nov 2026 21:34:31 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Thu, 05 Nov 2026 21:34:31 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 21:34:31 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f09bfd4bb8ddfc5e350cfa996f72655b4bd5b39f108c716161c0b7c0c5a7d2`  
		Last Modified: Thu, 05 Nov 2026 19:14:06 GMT  
		Size: 9.5 MB (9515935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c15f72c250e709973c14b155fdfb496d878976c427ef963953d5b1257eef9ef`  
		Last Modified: Thu, 05 Nov 2026 19:14:08 GMT  
		Size: 61.1 MB (61076478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ce68906111f194a8166982ce165787d92d483eebdf9396d3e39466ad2ebe75`  
		Last Modified: Thu, 05 Nov 2026 19:14:06 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a615e90d1a74011a2bca2db9d9e225a5dff2566bdd78a2dbf18bd030f80c6e15`  
		Last Modified: Thu, 05 Nov 2026 19:14:06 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cddd9a74f31aef4b56131e613f460034230c0b3e06143ad8234be784d3cc87`  
		Last Modified: Thu, 05 Nov 2026 21:34:17 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d9f1927e34a451b7735a3fd5d5f9c35713e8ab78119fb5fed87e0459767218`  
		Last Modified: Thu, 05 Nov 2026 21:34:18 GMT  
		Size: 7.2 MB (7159917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdff2e50ac206bce9bd0338d09ded15364ec3e15a4753481af1a10247791c4f8`  
		Last Modified: Thu, 05 Nov 2026 21:34:17 GMT  
		Size: 75.6 KB (75620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211b6ff8bd23b61e69789d4d71043bb1fa4ab228e55968b2208f969c003cac7b`  
		Last Modified: Thu, 05 Nov 2026 21:34:42 GMT  
		Size: 78.2 MB (78198839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:jre25-Temurin-alpine-plus` - unknown; unknown

```console
$ docker pull tomee@sha256:9fbbfaa407bd3f32cf8ce248c2113895509d4d9fffba7150156b093ec447c097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1310556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d758ce2af99fbeeecb065fda65549efe4524e919d8e52850cb034e37310bcc`

```dockerfile
```

-	Layers:
	-	`sha256:2e5cae75599d0e5878e6e4a87df2b2992ed6e680b34248ea0d81f974009be917`  
		Last Modified: Thu, 05 Nov 2026 21:34:40 GMT  
		Size: 1.3 MB (1280165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f3ca867d759d7392c8e84e32a25b16e75add580de4c43be8d73591db3c05b96`  
		Last Modified: Thu, 05 Nov 2026 21:34:40 GMT  
		Size: 30.4 KB (30391 bytes)  
		MIME: application/vnd.in-toto+json
