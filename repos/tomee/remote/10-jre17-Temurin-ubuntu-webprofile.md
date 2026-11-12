## `tomee:10-jre17-Temurin-ubuntu-webprofile`

```console
$ docker pull tomee@sha256:609df2bf7bf9343bf0960b06b02f285fa255c4bbee23444a1632ace0efeb8760
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:10-jre17-Temurin-ubuntu-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:f9e8ec75506aeb695d00f59d9fc525769bc05599900fba70eb2d290162a42c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.5 MB (157498719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:570640f82b7f9a5b8eadf5e1ea0f74faebc9ad0e690dcb60cdded6b4d613cf86`
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
ENV TOMEE_VER=10.2.0
# Thu, 12 Nov 2026 00:42:07 GMT
ENV TOMEE_BUILD=webprofile
# Thu, 12 Nov 2026 00:43:54 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Thu, 12 Nov 2026 00:43:54 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 12 Nov 2026 00:43:54 GMT
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
	-	`sha256:6f1f4d707f2f0b3867b27b2b6e30237ee7740f2edd43ad70d0125efddfb9ae00`  
		Last Modified: Thu, 12 Nov 2026 00:44:04 GMT  
		Size: 63.0 MB (63037312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-jre17-Temurin-ubuntu-webprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:565341b39aac5d2420f1b0b0a86eee28636767ae9fd034d8529c0c59009ed83d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3569655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b1e50dc03ca48bb2fd54b8e708d940eea66dbaf1c113880d98aa32cf1eb9071`

```dockerfile
```

-	Layers:
	-	`sha256:cf92a98fb67700f6993dae83bf4f97d74145d9dc9e79803afb9c06d973d3bb71`  
		Last Modified: Thu, 12 Nov 2026 00:44:03 GMT  
		Size: 3.5 MB (3539034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:254de3a397a1899be4ecf7a06b1681ceff9565b69ec57fbb360d8c26c9f917b1`  
		Last Modified: Thu, 12 Nov 2026 00:44:02 GMT  
		Size: 30.6 KB (30621 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:10-jre17-Temurin-ubuntu-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:4b16091352ebe72c82862fd6a645b10162267f81a646acddfef2ec4c61322e5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.2 MB (156187865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21992bc0103fe324018484a94dc9789a39e8d9cddf098380524bc691063fc0eb`
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
# Thu, 12 Nov 2026 00:58:53 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:58:53 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Thu, 12 Nov 2026 00:58:53 GMT
WORKDIR /usr/local/tomee
# Thu, 12 Nov 2026 00:58:57 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:59:07 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Thu, 12 Nov 2026 00:59:07 GMT
ENV TOMEE_VER=10.2.0
# Thu, 12 Nov 2026 00:59:07 GMT
ENV TOMEE_BUILD=webprofile
# Thu, 12 Nov 2026 00:59:14 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Thu, 12 Nov 2026 00:59:14 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 12 Nov 2026 00:59:14 GMT
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
	-	`sha256:ec684e03268fe2f620a0cac9bf9d9a160d699fb058c3f2b103389f95f0e86f2e`  
		Last Modified: Thu, 12 Nov 2026 00:59:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7139a5c6e5dd8b6dccd51646cd28858927d5d476fa619d77ff7b46d31cc4a5`  
		Last Modified: Thu, 12 Nov 2026 00:59:25 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39d702a1b52dadd6ef4d1e58af5e27b2389e6110cf4a3e647c086d82359c168`  
		Last Modified: Thu, 12 Nov 2026 00:59:25 GMT  
		Size: 75.6 KB (75648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ac37575fb4d8ee4e8f570f3513a39898e91e3b0d2417e26736471400059c733`  
		Last Modified: Thu, 12 Nov 2026 00:59:27 GMT  
		Size: 63.0 MB (63037280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-jre17-Temurin-ubuntu-webprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:b914e15a008272447d1e8e0455b511aa4eac39678fb3d073b1db3d7d39a865ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3570564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db2e3c3af0c0dcd999040921da55e48b0ab139977ed8a36bd782ed9e197ddcf`

```dockerfile
```

-	Layers:
	-	`sha256:1b5f789de5029b0c7c2870bca700ff7c93e209b651f6c347cc84df55b7a92c60`  
		Last Modified: Thu, 12 Nov 2026 00:59:25 GMT  
		Size: 3.5 MB (3539649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba3f045a9030af28a2c6313528d9a53c55acbeb505d39489ba757d076dbbd670`  
		Last Modified: Thu, 12 Nov 2026 00:59:25 GMT  
		Size: 30.9 KB (30915 bytes)  
		MIME: application/vnd.in-toto+json
