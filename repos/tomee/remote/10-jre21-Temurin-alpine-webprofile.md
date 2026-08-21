## `tomee:10-jre21-Temurin-alpine-webprofile`

```console
$ docker pull tomee@sha256:637022803b30ae268fc45b7c4233aea30637995acc8872cf3714e40be90045f2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:10-jre21-Temurin-alpine-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:484aa802da7414a9fa50e9270616830c83636f20de8ebf6c7e8aabf98db6ed15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.0 MB (138003525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80333b98ab1361239f1f46385598334f7df4bc3baa33aa4562515e16c989e300`
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
# Fri, 21 Aug 2026 19:07:09 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:07:09 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 19:07:09 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 19:07:10 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 19:07:20 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 19:07:20 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 19:07:20 GMT
ENV TOMEE_BUILD=webprofile
# Fri, 21 Aug 2026 19:07:21 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 19:07:21 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:07:21 GMT
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
	-	`sha256:246f6c6a89354d4fe81342cef6ce4941b7c1c44f8d80c4e674f5ee2be9e16487`  
		Last Modified: Fri, 21 Aug 2026 19:07:29 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf676f935c6f04c062b25ec92b542ed19aa60cf88fd1ce3a4c0d75f161cf5197`  
		Last Modified: Fri, 21 Aug 2026 19:07:29 GMT  
		Size: 822.3 KB (822302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c79ae1dffd97752655ba5a67145a4766132836fb626bfae43b4c9cc18e2b239`  
		Last Modified: Fri, 21 Aug 2026 19:07:29 GMT  
		Size: 75.6 KB (75630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6c513abfee25903833dfb08fdc3e413d69d8a43560341610cf20984d2bcf62`  
		Last Modified: Fri, 21 Aug 2026 19:07:31 GMT  
		Size: 63.0 MB (63037304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-jre21-Temurin-alpine-webprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:5e83e8cba0357776e7f77aedd643ac82c3361cc9a5bced69270f7590e0dba44f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1190820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ef22798496cec5d9d0ebb386b5880925d3020eece41e05438c46e6e7c2f508`

```dockerfile
```

-	Layers:
	-	`sha256:9e1322a1fb9cac65e8c05f33ffc1eede16253ca08e8165a22cd8aa013a99b932`  
		Last Modified: Fri, 21 Aug 2026 19:07:29 GMT  
		Size: 1.2 MB (1163164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee6b20f04981e21551e11000bf94e7dd02e73c171efa39e07a91057d6bcfe564`  
		Last Modified: Fri, 21 Aug 2026 19:07:29 GMT  
		Size: 27.7 KB (27656 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:10-jre21-Temurin-alpine-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:201dff91ebb3a3d29537a2b1b458bd07fb8ae9707faf582e4ffd1566f3c327f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137335157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2f074834fc7cb0cbfb797e1ff2aca759646232db68440c4495fe3caaa7ecf4`
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
# Fri, 21 Aug 2026 18:57:30 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:57:30 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 18:57:30 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 18:58:50 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:59:00 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 18:59:00 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 18:59:00 GMT
ENV TOMEE_BUILD=webprofile
# Fri, 21 Aug 2026 18:59:02 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 18:59:02 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:59:02 GMT
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
	-	`sha256:6f9c38d5576d2a07eb0bd4558695eb185a81ed0703dbf039732ef403cf1d6e95`  
		Last Modified: Fri, 21 Aug 2026 18:57:51 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a5b40125b6d9d26385a779b72e51bddb117a4a4281f47963bc2c5fdbc9b9c5`  
		Last Modified: Fri, 21 Aug 2026 18:59:11 GMT  
		Size: 824.8 KB (824836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff4ffbb00f906d627064ea31e26243e814cc09b6a19ae5785cd94d0cb2e48764`  
		Last Modified: Fri, 21 Aug 2026 18:59:11 GMT  
		Size: 75.6 KB (75623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecbf2927c3ce7730ff449d0109950bf8094aeaea8362b2b693752a160f618387`  
		Last Modified: Fri, 21 Aug 2026 18:59:13 GMT  
		Size: 63.0 MB (63037245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-jre21-Temurin-alpine-webprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:cd6b43b011ca559a8a03e2d4c2ff287e87ddc033fd048a6b087451080cc1dd10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1189853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a253db07e639be4ffccefe2511bbaf04407a51252cc7a4567dc00f8abd53a9b8`

```dockerfile
```

-	Layers:
	-	`sha256:7060ec198cc9e39da3851e2de465392306d80968beeda96cbf67290e4796284c`  
		Last Modified: Fri, 21 Aug 2026 18:59:11 GMT  
		Size: 1.2 MB (1162000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48b17732e56b0c8dbc453e94bdc585cf904ac837ae8ad420e9c3b2138d966108`  
		Last Modified: Fri, 21 Aug 2026 18:59:11 GMT  
		Size: 27.9 KB (27853 bytes)  
		MIME: application/vnd.in-toto+json
