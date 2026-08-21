## `tomee:10-jre21-Temurin-alpine-plume`

```console
$ docker pull tomee@sha256:99cad6b5e29b7f7ed650d8db9e0447b6484d5e1bc534ee9b47aa556ae368fb99
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:10-jre21-Temurin-alpine-plume` - linux; amd64

```console
$ docker pull tomee@sha256:a9a06774318fddf2511a17fdb0608651875911ae31904c1b35d3af11b7e74e30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.3 MB (161299204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb21a6a075b4d6d542caa87d71e73370fd8d97faaa8fb32afce4a7253f3e64fa`
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
# Fri, 21 Aug 2026 19:07:06 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:07:06 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 19:07:06 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 19:07:06 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl  && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 19:07:16 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 19:07:16 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 19:07:16 GMT
ENV TOMEE_BUILD=plume
# Fri, 21 Aug 2026 19:07:18 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 19:07:18 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:07:18 GMT
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
	-	`sha256:2812151bf3fcef209b6efb0c8c99940ad6cd605ff216beadb00305b516c7564e`  
		Last Modified: Fri, 21 Aug 2026 19:07:28 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5d19cc1786fd3521ba2730c31d18a04e9ce7f76d015bd8749477954571716c`  
		Last Modified: Fri, 21 Aug 2026 19:07:29 GMT  
		Size: 822.3 KB (822297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f2c72f9db58e771e16fae785dafd8e4565e8dad5ef55db9060b9d8ddc33ac63`  
		Last Modified: Fri, 21 Aug 2026 19:07:29 GMT  
		Size: 75.7 KB (75654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081bb52cffadac9d2fb264906d2cbb3da68bee21df94a1ce7b03d1fbef5e35bd`  
		Last Modified: Fri, 21 Aug 2026 19:07:31 GMT  
		Size: 86.3 MB (86332964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-jre21-Temurin-alpine-plume` - unknown; unknown

```console
$ docker pull tomee@sha256:6c1864a02c6b9264ec38e6a4220d8044c1f84c7ec078b89fa52d8ece0396a280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1337676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c9ec91f10d654cc3bac16c15ad4245351aa2af08b2b8da7814be222eaa8ea6`

```dockerfile
```

-	Layers:
	-	`sha256:492474562040a5ba6b859b24dfdf780172f94ad7035b86878633c96ccd712f1c`  
		Last Modified: Fri, 21 Aug 2026 19:07:29 GMT  
		Size: 1.3 MB (1310124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be0884b3d80fb0cd35a675b76da33d528374387e27c66139efcab9c0aacaa73d`  
		Last Modified: Fri, 21 Aug 2026 19:07:28 GMT  
		Size: 27.6 KB (27552 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:10-jre21-Temurin-alpine-plume` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:7c7b5e92cd087a0f05d5e79ab7739cbd506e6aa3a541597fe4308496e51879d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160630865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4be50a6914502468be85000986169732ca8c815d570196d8b0c5ab8d101c258`
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
# Fri, 21 Aug 2026 18:58:48 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl  && rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:58:58 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 18:58:58 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 18:58:58 GMT
ENV TOMEE_BUILD=plume
# Fri, 21 Aug 2026 18:59:00 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 18:59:00 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:59:00 GMT
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
	-	`sha256:3463c0c20b5a75e49b9f98ed953a6e69a72cf7e4327d58081a2f2ff12b72467d`  
		Last Modified: Fri, 21 Aug 2026 18:59:10 GMT  
		Size: 824.8 KB (824827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99764b51846043d8d95c8fc24423c4f535796ca32400982d1ba41401f836a8f7`  
		Last Modified: Fri, 21 Aug 2026 18:59:10 GMT  
		Size: 75.6 KB (75631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e11c6aaa14940442afdc35ef1b5bd700e63fd2fe5a8e2d9c68d1636c4f2e803`  
		Last Modified: Fri, 21 Aug 2026 18:59:12 GMT  
		Size: 86.3 MB (86332954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-jre21-Temurin-alpine-plume` - unknown; unknown

```console
$ docker pull tomee@sha256:90a1784037caa2c6488ae103ebcddc58282f7bed2816429219f54da1e1aedda7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1336709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a6468a0472f41ca310a48db9122ab82116c179e60568014c35711f5159cedd`

```dockerfile
```

-	Layers:
	-	`sha256:a56efaf374a52476c27ecb77d065973f482c475832a3d42fe7ada57cdc0d069d`  
		Last Modified: Fri, 21 Aug 2026 18:59:10 GMT  
		Size: 1.3 MB (1308960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0685a18cc6ba8304c632105fbe4103e5b90e5259248b38dc31d488e379e1927a`  
		Last Modified: Fri, 21 Aug 2026 18:59:10 GMT  
		Size: 27.7 KB (27749 bytes)  
		MIME: application/vnd.in-toto+json
