## `tomee:11-jre17-Temurin-plus`

```console
$ docker pull tomee@sha256:2c42818b32a8d4e1760ae541940d4635757e2dc52cef85378b87bbcde28450e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:11-jre17-Temurin-plus` - linux; amd64

```console
$ docker pull tomee@sha256:0b47d07fb578a6eb268bb68f15c80cd86844f24a3640650c704702b2c6fcfae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171063390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:052f9d88b3f614ac8f83c9fbecee22238d10b92292853bfe6742727f17ae1d41`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:17:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:17:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:17:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:17:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:17:42 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:17:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='106afdb1779c2187312717f76d116b6920b96bf8acf8c4b9055655cd7d01415a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:17:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:17:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:17:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:41:55 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:41:55 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Thu, 12 Nov 2026 00:41:55 GMT
WORKDIR /usr/local/tomee
# Thu, 12 Nov 2026 00:41:58 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:42:07 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Thu, 12 Nov 2026 00:42:07 GMT
ENV TOMEE_VER=11.0.0-M1
# Thu, 12 Nov 2026 00:42:07 GMT
ENV TOMEE_BUILD=plus
# Thu, 12 Nov 2026 00:42:18 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Thu, 12 Nov 2026 00:42:18 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 12 Nov 2026 00:42:18 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94114971b85bfa3194afa6f23e955273440948820e9ed22a9a2613f14abc2ff2`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 17.0 MB (16968826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b654fdc2d9149d805c48af7c5ab75461ee1370739d3cb4d93b6204ea6468d7ef`  
		Last Modified: Wed, 11 Nov 2026 23:18:00 GMT  
		Size: 47.6 MB (47620388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b69eacf6b66607563f9c4534243931d16771001c0eab4b57df0c95f1b7f84e6c`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee9ac36f7e302f40c3073e049051c5591ae750746e9eaf2affeec16ab8c9e2a`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446bcf1fc7e93c23d006211e4c7edbe2aea65dcaf54b48f7f51a682c3e729267`  
		Last Modified: Thu, 12 Nov 2026 00:42:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeccf1bafe9eb46b43e9a8ca0e3e85cca8eae5e17e68183cca0069fa9f542981`  
		Last Modified: Thu, 12 Nov 2026 00:42:29 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc955db73dbbb2951762967b35f0bb7783185944383d5475c85343e056c39703`  
		Last Modified: Thu, 12 Nov 2026 00:42:29 GMT  
		Size: 75.7 KB (75650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c15b893fc97ab887e8e7803d226429a22c8326e89d15df45ef1eab9b53652c9`  
		Last Modified: Thu, 12 Nov 2026 00:42:31 GMT  
		Size: 76.6 MB (76601983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre17-Temurin-plus` - unknown; unknown

```console
$ docker pull tomee@sha256:c06c49d66843759f912f73573da0160312c12a36b96b31f6f69ff03b2fd812c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3683988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf50d9dbdde3d7877767a3eb8052018d6bda26a8f8a55b9027252d27ef77f422`

```dockerfile
```

-	Layers:
	-	`sha256:022a56322fc9fbf5b45b3ed5928c810c3d2dc2c4a85e5734e8a9846f77926f12`  
		Last Modified: Thu, 12 Nov 2026 00:42:29 GMT  
		Size: 3.7 MB (3654830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ba5840db471e54f094e58b8a4d7fff02abbbb19bd3ee1a808c4f04649f76255`  
		Last Modified: Thu, 12 Nov 2026 00:42:29 GMT  
		Size: 29.2 KB (29158 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:11-jre17-Temurin-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:3b07a0165cd472312611d437429b72b1e26351af0400da2743bf0f5a5426f93a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169752529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471959138b791ab02bda959a4b82cd62dbb920e04748e4c65fb829075c8173c8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:21:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:21:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:21:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:21:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:21:49 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 11 Nov 2026 23:21:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='106afdb1779c2187312717f76d116b6920b96bf8acf8c4b9055655cd7d01415a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:21:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:21:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:21:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:56:44 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:56:44 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Thu, 12 Nov 2026 00:56:44 GMT
WORKDIR /usr/local/tomee
# Thu, 12 Nov 2026 00:56:48 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:56:57 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Thu, 12 Nov 2026 00:56:57 GMT
ENV TOMEE_VER=11.0.0-M1
# Thu, 12 Nov 2026 00:56:57 GMT
ENV TOMEE_BUILD=plus
# Thu, 12 Nov 2026 00:57:19 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Thu, 12 Nov 2026 00:57:19 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 12 Nov 2026 00:57:19 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e89ce4e343282562307d8915dc0841e3a3a7a2c28a5bbc823a7481e83e29c8d`  
		Last Modified: Wed, 11 Nov 2026 23:22:06 GMT  
		Size: 17.0 MB (16978141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae5c24226a345d072e2421ad6941605b3d8680947d93c8ee862a5bd9d4d226d1`  
		Last Modified: Wed, 11 Nov 2026 23:22:07 GMT  
		Size: 47.1 MB (47128219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:636c979ea62f73ea9f354872f4c89b67519326e285d4ce7265c994a955989169`  
		Last Modified: Wed, 11 Nov 2026 23:22:05 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc73d827f8ce1f2abb7befe859f83c964e18c95b52c2ba60e3e1c9d23ad66d90`  
		Last Modified: Wed, 11 Nov 2026 23:22:05 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e3ace355e2f76767f30cabaa4f9f9af58b8bb4c508a539636a4e80ee4ba336e`  
		Last Modified: Thu, 12 Nov 2026 00:57:30 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a71dcb62ffd010dcdac7e1c33bbc2539b8032f8d2a5ec05966bd23648edaf9`  
		Last Modified: Thu, 12 Nov 2026 00:57:30 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9970299befc9c705b0b833fd8b08c629a8991d5615e123809582b00d6f77f610`  
		Last Modified: Thu, 12 Nov 2026 00:57:30 GMT  
		Size: 75.7 KB (75652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc0400ed29941248f8d7663ab70b7284693df5c6ad383f6dacdea12f73430ce`  
		Last Modified: Thu, 12 Nov 2026 00:57:33 GMT  
		Size: 76.6 MB (76601942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre17-Temurin-plus` - unknown; unknown

```console
$ docker pull tomee@sha256:42ca6e5c32d1d68c18d9aae47df1daa9f217362bf2919a4b9426b0128459daa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3684801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2b149703286fca427bc8671f25debccd8d441fe58092df5fdfd1934bd8e2928`

```dockerfile
```

-	Layers:
	-	`sha256:48422d843ef0823be7cccbaa9523d7105dc97157b1b60fc9eb7dd9d602489fae`  
		Last Modified: Thu, 12 Nov 2026 00:57:30 GMT  
		Size: 3.7 MB (3655397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03a1b780694cc5d4612b81422172c3a1182ef87dc83babffcac51df613d2186e`  
		Last Modified: Thu, 12 Nov 2026 00:57:30 GMT  
		Size: 29.4 KB (29404 bytes)  
		MIME: application/vnd.in-toto+json
