## `tomee:10-jre17-Temurin-ubuntu-plus`

```console
$ docker pull tomee@sha256:e20c11b7e27d3c9397d20a046b921e73e2878434b093dd19dd87355fe5b9d0fe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:10-jre17-Temurin-ubuntu-plus` - linux; amd64

```console
$ docker pull tomee@sha256:c6144380ad8243b7008eea2ba94734b7e58a0a80ab47fca428de6d437f249e15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172508958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02879c390de5196a09d3370acbeee0cd3354170abef22b81d8c0fd019a0b37a2`
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
# Wed, 16 Sep 2026 04:30:58 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:30:58 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Wed, 16 Sep 2026 04:30:58 GMT
WORKDIR /usr/local/tomee
# Wed, 16 Sep 2026 04:31:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:31:12 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Wed, 16 Sep 2026 04:31:12 GMT
ENV TOMEE_VER=10.2.0
# Wed, 16 Sep 2026 04:31:12 GMT
ENV TOMEE_BUILD=plus
# Wed, 16 Sep 2026 04:31:13 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Wed, 16 Sep 2026 04:31:13 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:31:13 GMT
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
	-	`sha256:8609c13d15fbdbf2f518fce06a95a866b9a6235ebe15e9edecf5ace3e538e656`  
		Last Modified: Wed, 16 Sep 2026 04:31:24 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede5dcf69f6396f58bcd5561d8a33f0fe660d220390beeb3ac62fa2f461fd5b6`  
		Last Modified: Wed, 16 Sep 2026 04:31:24 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193e200ef66055a28b8792c71a5ebae13484f716acfecc4108952802badfccb7`  
		Last Modified: Wed, 16 Sep 2026 04:31:24 GMT  
		Size: 75.6 KB (75640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e541754fd956ef22b8d7d2dca1e168b0f79cab9e0f22c4823fffd31a29f219c`  
		Last Modified: Wed, 16 Sep 2026 04:31:26 GMT  
		Size: 78.2 MB (78198792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-jre17-Temurin-ubuntu-plus` - unknown; unknown

```console
$ docker pull tomee@sha256:5a355ec210746a2fed33ba899bbf8e2fe7cd5722ccd2a4f2d79ccd223b9dd376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3697492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ec0e204c4095d98151f825ee87c9bb46593d4bf240a950123e074d570c1fba`

```dockerfile
```

-	Layers:
	-	`sha256:5fc2e5458cd63539587390bdaf9f4d91f802d380f1f5d63e942b0fcd5e66b526`  
		Last Modified: Wed, 16 Sep 2026 04:31:24 GMT  
		Size: 3.7 MB (3667089 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:716dc78394ca0aa1cdcb9f00795047a601e734af49ffd776acc45d7bed0cc009`  
		Last Modified: Wed, 16 Sep 2026 04:31:24 GMT  
		Size: 30.4 KB (30403 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:10-jre17-Temurin-ubuntu-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:55cb523e618b3dcdb0b54cb74869787950aa18ff19aae89581d87c87197929c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171179143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c44ddeaec8acf36223b568f6d19ad8797821be7544c02507de552af3caaa3b32`
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
# Wed, 16 Sep 2026 04:30:39 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:30:39 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Wed, 16 Sep 2026 04:30:39 GMT
WORKDIR /usr/local/tomee
# Wed, 16 Sep 2026 04:30:44 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:30:54 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Wed, 16 Sep 2026 04:30:54 GMT
ENV TOMEE_VER=10.2.0
# Wed, 16 Sep 2026 04:30:54 GMT
ENV TOMEE_BUILD=plus
# Wed, 16 Sep 2026 04:31:16 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Wed, 16 Sep 2026 04:31:16 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:31:16 GMT
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
	-	`sha256:0ce82de42d13e882e1939e9e4daf2a4379cc99342753bb784ad92587675df6f2`  
		Last Modified: Wed, 16 Sep 2026 04:31:06 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac84c4931696cf0d0505c2f2ee8c5783e410927ed6c15d9a69bfb7f55a8699a`  
		Last Modified: Wed, 16 Sep 2026 04:31:06 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93836448e3e78efa026848d1f58b39daf1af892e640819186fec503b47c61a6`  
		Last Modified: Wed, 16 Sep 2026 04:31:06 GMT  
		Size: 75.6 KB (75649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ef5ff3f18a1b8ae9f6eddd8ba079b36722e4175073b28a811c611a1889f01c`  
		Last Modified: Wed, 16 Sep 2026 04:31:28 GMT  
		Size: 78.2 MB (78198841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-jre17-Temurin-ubuntu-plus` - unknown; unknown

```console
$ docker pull tomee@sha256:45a8bc5976dbeb85cea4c53a2349b7862a8f7eadb437587f230121d776b03710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3698401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c70315f7f933bfc481cecb8c19a96b16d2cb2fe04e477d0b91539c96a2b6f0e`

```dockerfile
```

-	Layers:
	-	`sha256:3f1c3ec9e6335b489479de3cea3fb9af3cc9acf5854ef9b66793108d586084dc`  
		Last Modified: Wed, 16 Sep 2026 04:31:26 GMT  
		Size: 3.7 MB (3667704 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52202f24798518a38f42ba4ce02ac8788a27ebbf683807b82c3ca9471ceb0231`  
		Last Modified: Wed, 16 Sep 2026 04:31:26 GMT  
		Size: 30.7 KB (30697 bytes)  
		MIME: application/vnd.in-toto+json
