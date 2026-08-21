## `tomee:jre21-Temurin-alpine-plus`

```console
$ docker pull tomee@sha256:a930ede0a10a1b59b2d21a773742313b2eb840ab228eb2e24b7910a81b41fdd1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:jre21-Temurin-alpine-plus` - linux; amd64

```console
$ docker pull tomee@sha256:20b2f35c5a729ba6816b8373b7544e57f557aca5a7acb083a182a4b85b5d4578
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153165077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:856a1320f845cf59004c0d7662301cd95805ec89a11217b180e5f9c1a36dc33e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:24:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:24:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:24:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:24:09 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:24:09 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:25:05 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a4f70d2be5c55940dd60b6636643a05125e60e6c3dbc2a8402032b0346744dfa';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='9a7f8712a2741bb14e2452eed2de99f62d02e05617e27d59f1861a0cdad58486';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 21 Aug 2026 18:25:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:05:28 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:05:28 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 19:05:28 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 19:05:29 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 19:05:39 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 19:05:39 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 19:05:39 GMT
ENV TOMEE_BUILD=plus
# Fri, 21 Aug 2026 19:07:06 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 19:07:06 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:07:06 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7ed5940eebd779785c13f34a1b11489ad059b0670847f32d66f4b9c374c6e5`  
		Last Modified: Fri, 21 Aug 2026 18:24:23 GMT  
		Size: 17.0 MB (16963182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d265ab119d2b568721a3fa664d42c4d7dd1e3d09c07b0078d7eb96e0736028b`  
		Last Modified: Fri, 21 Aug 2026 18:25:18 GMT  
		Size: 53.3 MB (53255926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6f0d2e629f6a85e77001610611dd55da666c775a5f69a3fe2ba3d46e6293a2`  
		Last Modified: Fri, 21 Aug 2026 18:25:16 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda7269e79c96ae35b60164222a9b4ea8d74b66827f9453987cb35a26fdfa90f`  
		Last Modified: Fri, 21 Aug 2026 18:25:16 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159dd8413ab9e356110e7220f33c403ec8fd5573467e2556e17ae7e78530a49e`  
		Last Modified: Fri, 21 Aug 2026 19:05:49 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc69098f949253ffea0cd27b5540263a47a960e0a4abdea12a22bcbf2cabfa8c`  
		Last Modified: Fri, 21 Aug 2026 19:05:49 GMT  
		Size: 822.3 KB (822305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3205c6cb1253c8dd061124f9cdb6cc52750f41eda94381001a2686ae3e6151b4`  
		Last Modified: Fri, 21 Aug 2026 19:05:49 GMT  
		Size: 75.7 KB (75672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d80871e517d12510402652c8a4c839124fcccd7206e140324767e211e11bdcc`  
		Last Modified: Fri, 21 Aug 2026 19:07:18 GMT  
		Size: 78.2 MB (78198812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:jre21-Temurin-alpine-plus` - unknown; unknown

```console
$ docker pull tomee@sha256:99a9da701be6795da4838be214464df9161cb027b35919257afd2a0e2aea1584
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1318827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62b0931dc740dccbdb3878483c300a159d8897587f63aff9b6564bd0769a3179`

```dockerfile
```

-	Layers:
	-	`sha256:86dab2385de32bf9d76cb9afa6c3ada7569afe2f0150c51bcd78d9c3a5841612`  
		Last Modified: Fri, 21 Aug 2026 19:07:16 GMT  
		Size: 1.3 MB (1291293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eefa0755fad24d42f5414498f7ac69bd322129dd96e790d78a7d76543b3e8dc4`  
		Last Modified: Fri, 21 Aug 2026 19:07:16 GMT  
		Size: 27.5 KB (27534 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:jre21-Temurin-alpine-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:858f39219f7f1edfdb2da48db2aa583fd05f416e59e63819d09dc551da33ca62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.5 MB (152496752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:192e4f12f2fbc63145aaa8cff9779c70a1e2d36f2d7e49aff5d0d7dfda2f9d06`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:27:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:27:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:27:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:27:47 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:27:47 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:27:51 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='a4f70d2be5c55940dd60b6636643a05125e60e6c3dbc2a8402032b0346744dfa';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        x86_64)          ESUM='9a7f8712a2741bb14e2452eed2de99f62d02e05617e27d59f1861a0cdad58486';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Fri, 21 Aug 2026 18:27:51 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:27:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:27:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:58:51 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:58:51 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 18:58:51 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 18:58:52 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:59:02 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 18:59:02 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 18:59:02 GMT
ENV TOMEE_BUILD=plus
# Fri, 21 Aug 2026 18:59:03 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 18:59:03 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:59:03 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e362c2af781a9fd2c21b4bd913cc28ef105b0a035088be337d6388230664d84`  
		Last Modified: Fri, 21 Aug 2026 18:28:03 GMT  
		Size: 16.9 MB (16888502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d06197019954f365eabbb36464adf460fc8e02c67f8a59af17a33a02b2e4509`  
		Last Modified: Fri, 21 Aug 2026 18:28:04 GMT  
		Size: 52.3 MB (52323121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8d347ee066b8c461f3ee2151331c9a6aa598eea162b43b3fc05516d1d6ac47`  
		Last Modified: Fri, 21 Aug 2026 18:28:02 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14b3452119375b3fd04f6134cd55c3a1f123c57607c12f0e86532e379e3a12fb`  
		Last Modified: Fri, 21 Aug 2026 18:28:02 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1e43e83702ea8e11d0019e4a9d0239a742fdf2494eb2e58d056c74204c2ba6`  
		Last Modified: Fri, 21 Aug 2026 18:59:14 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b9d9c52828d2df311adbfc11f838e627efe5eb5e613ce4ecd24f7dd51eb68a`  
		Last Modified: Fri, 21 Aug 2026 18:59:14 GMT  
		Size: 824.8 KB (824827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593a574e52f5003cf3e11b11e7f6eb962b814cdf631142e29ef86856b68b2676`  
		Last Modified: Fri, 21 Aug 2026 18:59:14 GMT  
		Size: 75.6 KB (75627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f3b4e3c96c25a12e3b8d881f46513dc0410318390499a53df858bbd77d75894`  
		Last Modified: Fri, 21 Aug 2026 18:59:16 GMT  
		Size: 78.2 MB (78198845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:jre21-Temurin-alpine-plus` - unknown; unknown

```console
$ docker pull tomee@sha256:7d5e8148452dddf9fd872dd2e48f529b5698479c0bce68623f303cd6eaedf4f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1317860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a97a04b7a59a1927887012c1df2fe4a58fc1752329a8b122fdc6e264917ac4d`

```dockerfile
```

-	Layers:
	-	`sha256:e67ad8c5cd8a9e54f08a008d1d3b620a2edb46c47b0d408e18d8d33f0f2bdaf4`  
		Last Modified: Fri, 21 Aug 2026 18:59:14 GMT  
		Size: 1.3 MB (1290129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30cdca892187ca43bc99708e981baf24c7f945c262e5bb96dca4d6d9452c3992`  
		Last Modified: Fri, 21 Aug 2026 18:59:13 GMT  
		Size: 27.7 KB (27731 bytes)  
		MIME: application/vnd.in-toto+json
