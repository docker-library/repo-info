## `tomee:11-jre17-ubuntu-webprofile`

```console
$ docker pull tomee@sha256:065511cef6b19baea0bcb43201322adcf7f0f24d373412270c32631ba3d4d941
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:11-jre17-ubuntu-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:4e8b2b5bbc138f2ab41786f1925c8f70d0828e102f175cc6f6bbcfc83edf4ede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.3 MB (156335593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a77578babc8987164a681eed328d8a98b98150cc807155814865e37c8ae9fa4`
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
# Wed, 16 Sep 2026 04:30:20 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:30:20 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Wed, 16 Sep 2026 04:30:20 GMT
WORKDIR /usr/local/tomee
# Wed, 16 Sep 2026 04:30:24 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:30:34 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Wed, 16 Sep 2026 04:30:34 GMT
ENV TOMEE_VER=11.0.0-M1
# Wed, 16 Sep 2026 04:30:34 GMT
ENV TOMEE_BUILD=webprofile
# Wed, 16 Sep 2026 04:30:35 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Wed, 16 Sep 2026 04:30:35 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:30:35 GMT
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
	-	`sha256:c6fb4563cf152ac03c4dc422a0e6cb3b8a1fc0cfe72a86225c277b03da7c1fcd`  
		Last Modified: Wed, 16 Sep 2026 04:30:46 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca79e4507b85b9dcb1173b86c7c82900f490bad945b03e0b19f5607079fcbdc`  
		Last Modified: Wed, 16 Sep 2026 04:30:46 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3382dbcdc2a9ee25b024e25b8c33e8a3ec8ffbef2e488f990b1bdf0a15454049`  
		Last Modified: Wed, 16 Sep 2026 04:30:47 GMT  
		Size: 75.6 KB (75639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cda06f4d96a452b86a6dc72c499c5ed58ed93d71e0b849ed782b2123b079b5d`  
		Last Modified: Wed, 16 Sep 2026 04:30:48 GMT  
		Size: 62.0 MB (62025428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre17-ubuntu-webprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:88486e3ffc46e8d8c6fb45eae86c7352a761b38bef6eaff770fba9e179c22ceb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3569147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e668ae5b9f3037bdc4dd92f46f955d75f208d844389ca6255d74e5fe0a2b5480`

```dockerfile
```

-	Layers:
	-	`sha256:49a03ab65abd208f2b8504e0e7b5ae1c75809586b9561a4b6bc1e42c083d147b`  
		Last Modified: Wed, 16 Sep 2026 04:30:46 GMT  
		Size: 3.5 MB (3539818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d927db0b747da3a9002a3472f633c85bd671e3a9d2c05e168cce8b237816c5b`  
		Last Modified: Wed, 16 Sep 2026 04:30:46 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:11-jre17-ubuntu-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:4fb05760e3cc7a5a5959252f2b3f1069141e09531df381a60706f92783beac2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.0 MB (155005799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b8ea98a29c0300022b0477814a9b0e41df01556066c9fbd0d6049c1377ec342`
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
# Wed, 16 Sep 2026 04:30:41 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:30:41 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Wed, 16 Sep 2026 04:30:41 GMT
WORKDIR /usr/local/tomee
# Wed, 16 Sep 2026 04:30:45 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:30:55 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Wed, 16 Sep 2026 04:30:55 GMT
ENV TOMEE_VER=11.0.0-M1
# Wed, 16 Sep 2026 04:30:55 GMT
ENV TOMEE_BUILD=webprofile
# Wed, 16 Sep 2026 04:30:56 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Wed, 16 Sep 2026 04:30:56 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:30:56 GMT
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
	-	`sha256:a03d4dd335479ce6a55c2bcec8c941dc6b6a8b79b145cdda428a18cd4a008b03`  
		Last Modified: Wed, 16 Sep 2026 04:31:06 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd009679624d94f0a5164bc6d618da71e9117e1fdf0f070cf3930873f7512997`  
		Last Modified: Wed, 16 Sep 2026 04:31:06 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387f7da6184469d5011a0da5323f9f5c2147abda5da593745be5d67014a03c42`  
		Last Modified: Wed, 16 Sep 2026 04:31:06 GMT  
		Size: 75.6 KB (75633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69614bd3dfca3d700b451280afa78fbe7e6cd62720ae23b3b4722a0f5c7a4be2`  
		Last Modified: Wed, 16 Sep 2026 04:31:08 GMT  
		Size: 62.0 MB (62025514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre17-ubuntu-webprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:23e2bfa21767deba13ca38bc90206e3b2d21640c93e0b988b40121b630851bd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3569959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f397237ba1e013b03b9901bb27017607d149f2e3015857efcaacc3bc2c87ed`

```dockerfile
```

-	Layers:
	-	`sha256:ef11822d3bc8f9b9082b06ef0305f00438e9ddd4f0f8fd65e3ab6de6825d2266`  
		Last Modified: Wed, 16 Sep 2026 04:31:06 GMT  
		Size: 3.5 MB (3540385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:378dc274000edf146e6e67bf93cd5ccbf2ab46b0b6826a7be9c3099a78a3ba1e`  
		Last Modified: Wed, 16 Sep 2026 04:31:06 GMT  
		Size: 29.6 KB (29574 bytes)  
		MIME: application/vnd.in-toto+json
