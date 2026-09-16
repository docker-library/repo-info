## `tomee:11-jre17-plume`

```console
$ docker pull tomee@sha256:6909d8c2500ee606c2c7f5fea315c11961d077fee685538c53ab07d96ebf9992
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:11-jre17-plume` - linux; amd64

```console
$ docker pull tomee@sha256:28f56362cd4fb62c6abddb2d9ed83834ffbe5da2d4019b5a46be6a00b5bf7962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.2 MB (179227808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c5b6ec285917f59c72f120538e5fe5048aa28ae1aa262e4563260feb66b6a0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:17:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:17:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:17:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:17:27 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:17:27 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 16 Sep 2026 03:17:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='b3b1c5aa21111d9000a855008b0f08ca3f7cdd4d9ba99e2b9f0750eb82e261e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        riscv64)          ESUM='9c018e609c1f851018f053bb634e14473e8c0b6532aae400a105aa4d52c84d42';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:17:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:17:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:17:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:30:16 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:30:16 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Wed, 16 Sep 2026 04:30:16 GMT
WORKDIR /usr/local/tomee
# Wed, 16 Sep 2026 04:30:21 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:30:31 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Wed, 16 Sep 2026 04:30:31 GMT
ENV TOMEE_VER=11.0.0-M1
# Wed, 16 Sep 2026 04:30:31 GMT
ENV TOMEE_BUILD=plume
# Wed, 16 Sep 2026 04:30:32 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Wed, 16 Sep 2026 04:30:32 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:30:32 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef5a88f8f931d10f593aa65efa4a7938e70b8d12833478849bf129bd6d3d8b5`  
		Last Modified: Wed, 16 Sep 2026 03:17:43 GMT  
		Size: 16.9 MB (16947513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2cd6694d2c636dc94d41d1fda3a3b7d975f7b2457ae862860834a132784f0ce`  
		Last Modified: Wed, 16 Sep 2026 03:17:44 GMT  
		Size: 47.5 MB (47519577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f236fff9d3982165aa7611efd38fc3aa9a3a9d49d4a32c10d8d1e98076444f03`  
		Last Modified: Wed, 16 Sep 2026 03:17:43 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3807e9ee28faab9523b06552dd87fd4d1295c7f4119dee21e1eadd2f54da7a01`  
		Last Modified: Wed, 16 Sep 2026 03:17:28 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0af4bb5c7be0d4970aaecdf4a00e6d799e808969bcf523d374b0bf3d38978d0`  
		Last Modified: Wed, 16 Sep 2026 04:30:42 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdc705993c41a4b561285cfc17005fad369bef6862e305a2e47a9802efcbc7f`  
		Last Modified: Wed, 16 Sep 2026 04:30:42 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2974e08434952b536ea818bf698d838ec55c06db92cf261a43bfd5eabc47d8d3`  
		Last Modified: Wed, 16 Sep 2026 04:30:43 GMT  
		Size: 75.6 KB (75643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b36cdc21180275bda0310f3b2f2fc79ddfa15694b475164ec8524ce1b3e2c61`  
		Last Modified: Wed, 16 Sep 2026 04:30:46 GMT  
		Size: 84.9 MB (84917638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre17-plume` - unknown; unknown

```console
$ docker pull tomee@sha256:7c486de559af454899a386825cec3e453f6abff864f613e941cfa761b7398c1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3706405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99b2dba4f8e68662e0cde668ad861bf9b4c333c24a8afc49c1c1aa53d45e4cf5`

```dockerfile
```

-	Layers:
	-	`sha256:f2f7b46e70affa948e0d817cdf3f1aa944d9ef5dce4dc680a7509217fa59efaa`  
		Last Modified: Wed, 16 Sep 2026 04:30:44 GMT  
		Size: 3.7 MB (3677219 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4f685a32b6a336dbd06424a19fc62424e3016401af0a46d19eba69087f03a83`  
		Last Modified: Wed, 16 Sep 2026 04:30:43 GMT  
		Size: 29.2 KB (29186 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:11-jre17-plume` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:37bb5989b41ef40f68993b9578a07f9c0356a86d55adf756adec8afae4efb2d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.9 MB (177897930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45babab4bac6b485b5b2aaa07e07f3ce9de24e805b449749f1248c6a66fd5f7`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:16:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:16:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:16:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:16:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:16:58 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 16 Sep 2026 03:17:01 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='b3b1c5aa21111d9000a855008b0f08ca3f7cdd4d9ba99e2b9f0750eb82e261e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        riscv64)          ESUM='9c018e609c1f851018f053bb634e14473e8c0b6532aae400a105aa4d52c84d42';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:17:01 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:17:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:17:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:30:30 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:30:30 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Wed, 16 Sep 2026 04:30:30 GMT
WORKDIR /usr/local/tomee
# Wed, 16 Sep 2026 04:30:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:30:44 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Wed, 16 Sep 2026 04:30:44 GMT
ENV TOMEE_VER=11.0.0-M1
# Wed, 16 Sep 2026 04:30:44 GMT
ENV TOMEE_BUILD=plume
# Wed, 16 Sep 2026 04:30:46 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Wed, 16 Sep 2026 04:30:46 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:30:46 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a24a769b508e3a35ef1ffd7202246060a742e79351bbc7826bbfb0433e46ccb`  
		Last Modified: Wed, 16 Sep 2026 03:17:14 GMT  
		Size: 17.0 MB (16957455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad20269f0c7b320bc61f97dfc920926cce6b0c747cdbdcc3af6f93229820cb9`  
		Last Modified: Wed, 16 Sep 2026 03:17:15 GMT  
		Size: 47.0 MB (47002297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa22e2aa811befd262168075fe0aac8f24770d04b38b9eea19e2d3c136e64e20`  
		Last Modified: Wed, 16 Sep 2026 03:17:14 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f136f1acd4de400d824bdddadf31bf270e6558468c9af458d473bf880efb673`  
		Last Modified: Wed, 16 Sep 2026 03:17:14 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056593eedd412df0f99b553a5020fcd31666eb64c102b3182cf293213e780e01`  
		Last Modified: Wed, 16 Sep 2026 04:30:57 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b33288e3ff8e79cc98f7a84c3d1c1fb90860b9b9d6f9099cd9a347ee967f741d`  
		Last Modified: Wed, 16 Sep 2026 04:30:57 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c76a0cdc487163ae0893fd298251788807f11210f2f45e7a3a91e686b64513`  
		Last Modified: Wed, 16 Sep 2026 04:30:57 GMT  
		Size: 75.7 KB (75651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0868b9934204b256913a039e6ff115ed2a0969a3e1f2943c219ad9d5ba05c31c`  
		Last Modified: Wed, 16 Sep 2026 04:30:59 GMT  
		Size: 84.9 MB (84917628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre17-plume` - unknown; unknown

```console
$ docker pull tomee@sha256:66fe260b6204e9f3687e2ffa8161ef4d46f1719760e469a5f749b8f13d1b4ca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3707217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7da912c8faf49171df4cd9356a5e7ee6f79df138c423e58a42539bd3cec0e5e`

```dockerfile
```

-	Layers:
	-	`sha256:e7452f5622156b707f2d29457d98f5610ec6ec5877580295d2ada02de6526c09`  
		Last Modified: Wed, 16 Sep 2026 04:30:57 GMT  
		Size: 3.7 MB (3677786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:815f746b84b680939c7b6fc6717bc8a1ff59fa4478de8f1e5a6f95f1e099763c`  
		Last Modified: Wed, 16 Sep 2026 04:30:57 GMT  
		Size: 29.4 KB (29431 bytes)  
		MIME: application/vnd.in-toto+json
