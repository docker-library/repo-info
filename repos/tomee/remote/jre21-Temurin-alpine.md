## `tomee:jre21-Temurin-alpine`

```console
$ docker pull tomee@sha256:14494152e72ff4895978851590721deb4b081f89756b24e517a4a86c0ad9fcfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:jre21-Temurin-alpine` - linux; amd64

```console
$ docker pull tomee@sha256:c0914f3e91024f07cf1edb975c58d0276fae7984c8ea2ca8c1a5f28e5b6c500a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148670649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ab4d5cfb92f942c25e3b607bfb90ed09e9306d83e363f5b40deeb18118a97b`
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
# Fri, 21 Aug 2026 19:07:08 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:07:08 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 19:07:08 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 19:07:09 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 19:07:19 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 19:07:19 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 19:07:19 GMT
ENV TOMEE_BUILD=microprofile
# Fri, 21 Aug 2026 19:07:20 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 19:07:20 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:07:20 GMT
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
	-	`sha256:0774a98a8971ca4b7656f98f93fe9b12103e57b9f196598f726acaa1590ce6e8`  
		Last Modified: Fri, 21 Aug 2026 19:07:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df98d750e99001fc75de9273d6aa10a18dc2d1d894d06ad929490aa5dcd902d6`  
		Last Modified: Fri, 21 Aug 2026 19:07:31 GMT  
		Size: 822.3 KB (822300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0977e538ef3edd3a2e709e725c674e29e84f179b5d4d3edeb49dc5be7d08ca0`  
		Last Modified: Fri, 21 Aug 2026 19:07:31 GMT  
		Size: 75.7 KB (75657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8cd5c1f47314a0c7bf2e6ac0ea66f7442b3efba95c0d307b4a0696e899fb6f3`  
		Last Modified: Fri, 21 Aug 2026 19:07:33 GMT  
		Size: 73.7 MB (73704403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:jre21-Temurin-alpine` - unknown; unknown

```console
$ docker pull tomee@sha256:65117777f15fb93d405eed39ac86da4f19e51e4d76b657a97e21c523f06decb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1313836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7affa537d972975516721d7ae8c62db1d880436cb0c9d4aa1415071b9412ab4f`

```dockerfile
```

-	Layers:
	-	`sha256:c5fa2e374852e9b8d17b57aed6a22502f9f0dfd2627c8675977e134ed16b7cdf`  
		Last Modified: Fri, 21 Aug 2026 19:07:31 GMT  
		Size: 1.3 MB (1283550 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:483d7c1401352302ba0fe395f0c55b6a57a43abb33a6c5bab9b15c7238b076c0`  
		Last Modified: Fri, 21 Aug 2026 19:07:31 GMT  
		Size: 30.3 KB (30286 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:jre21-Temurin-alpine` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:ab5ffae96b6f4a377b7d70e6b43a6620c9dc823a82b8a8939b00fd26566399b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.0 MB (148002351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d58ace5a01da1a8328ef72191917e7f8e396612dd4765bf13e84a1ae5dd4e5`
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
# Fri, 21 Aug 2026 18:57:33 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:57:33 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 18:57:33 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 18:57:34 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:57:44 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 18:57:44 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 18:57:44 GMT
ENV TOMEE_BUILD=microprofile
# Fri, 21 Aug 2026 18:58:55 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 18:58:55 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:58:55 GMT
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
	-	`sha256:8cde3d9d540d00f0c0e824a1c161d4349a6dd1afe7b81c91d3e39faa3af4d2e8`  
		Last Modified: Fri, 21 Aug 2026 18:57:55 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4434078820a8139d222ff9482d665721bc34f3f36f170063ca42bfa3fbe02ba2`  
		Last Modified: Fri, 21 Aug 2026 18:57:55 GMT  
		Size: 824.8 KB (824825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cf862350cabd304bee4681d2ca72a6c3143c00171fd2c76447c26a91d03c3d8`  
		Last Modified: Fri, 21 Aug 2026 18:57:55 GMT  
		Size: 75.6 KB (75632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74ec3331098db72800d74b5344f47cc05a4a82270d4688866dd595b98b46f4cc`  
		Last Modified: Fri, 21 Aug 2026 18:59:07 GMT  
		Size: 73.7 MB (73704442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:jre21-Temurin-alpine` - unknown; unknown

```console
$ docker pull tomee@sha256:95aeba2b8d241c6bc948994791e78a00daa2692bcb65a2aa7c5e949b78f34e23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1313059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9b5a50492011235e46c4aa6db69adc96a6b4899b3cfcffb6bd58a27686bec38`

```dockerfile
```

-	Layers:
	-	`sha256:722901fc0e6fd84fe4558c2eea83d3cbcb0c9318543454f083e7d8f1a8e12d93`  
		Last Modified: Fri, 21 Aug 2026 18:59:05 GMT  
		Size: 1.3 MB (1282482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a3bf91f69979f67f80c4dd9bfcdd3f99ff4be99980d923a36991482dade597b`  
		Last Modified: Fri, 21 Aug 2026 18:59:05 GMT  
		Size: 30.6 KB (30577 bytes)  
		MIME: application/vnd.in-toto+json
