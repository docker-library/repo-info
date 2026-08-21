## `tomee:jre17-ubuntu-plus`

```console
$ docker pull tomee@sha256:fdaec6937d6542ce6dfdaaeec83e1ee624833b72592b5ba8bd2feaf009163cd8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:jre17-ubuntu-plus` - linux; amd64

```console
$ docker pull tomee@sha256:372440f4c12acfefa996abef88b0d935724ed545fa03598e3a7737ca94232d2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.5 MB (172496385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7b4d37da0a618c777647a46b208a7812442e790ceb6ed10a30fb391e34e5533`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:24:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:24:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:24:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:24:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:24:36 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:24:39 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='b3b1c5aa21111d9000a855008b0f08ca3f7cdd4d9ba99e2b9f0750eb82e261e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        riscv64)          ESUM='9c018e609c1f851018f053bb634e14473e8c0b6532aae400a105aa4d52c84d42';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:24:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:24:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:24:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:07:27 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:07:27 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 19:07:27 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 19:07:31 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:07:41 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 19:07:41 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 19:07:41 GMT
ENV TOMEE_BUILD=plus
# Fri, 21 Aug 2026 19:07:42 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 19:07:42 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:07:42 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c722390b31252b8e4581c53045f5ea491be2eab8fe933411bc16d0f1328bb840`  
		Last Modified: Fri, 21 Aug 2026 18:24:51 GMT  
		Size: 16.9 MB (16946183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7dbad1875499d21533379ea45b8d0753e456baf7b12c77aee55b90702edf36`  
		Last Modified: Fri, 21 Aug 2026 18:24:52 GMT  
		Size: 47.5 MB (47519585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284b08c15581cb63007940cd01cc6373c66988cdc982ae23d42ffb61ac003d89`  
		Last Modified: Fri, 21 Aug 2026 18:24:50 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bda6782c1cba0d2926bce23635c830ba8cd3704d03e04589be4323b1a5e6107`  
		Last Modified: Fri, 21 Aug 2026 18:24:50 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee15d17655b9e5bacba3bf0188d8a71d64b1016f922e284b107b15e9b9c6ca36`  
		Last Modified: Fri, 21 Aug 2026 19:07:53 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd79ab148440b2b8537abc1c1b1dbf47323cce63709843e0d36180c000a7a301`  
		Last Modified: Fri, 21 Aug 2026 19:07:53 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c816d60af140c278da5f03371fbd76dd8129bc9f306e3c080e08428e16b7d18`  
		Last Modified: Fri, 21 Aug 2026 19:07:53 GMT  
		Size: 75.7 KB (75660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5826d47c769d27b94d3e74c9b6a17c19059e573931f48978dec90a6c3c89ce57`  
		Last Modified: Fri, 21 Aug 2026 19:07:55 GMT  
		Size: 78.2 MB (78198828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:jre17-ubuntu-plus` - unknown; unknown

```console
$ docker pull tomee@sha256:a5a3caefdc133ce41642e35c35e6bb2b62ccec4f2a5ebbbb57b8df8b5ddd0b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3697469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a8f45ce055923a638ff2c9d691eb08471a3db0913ab10e14fcb227adab7b9c`

```dockerfile
```

-	Layers:
	-	`sha256:6be8602e4311d01fbafb700336c66b3ca9ff92ad5c2aebce763b095e39e4bd59`  
		Last Modified: Fri, 21 Aug 2026 19:07:53 GMT  
		Size: 3.7 MB (3667065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662da256027d8a59785c6e409b7535f0a2239c8e582cd434ec3b66b6c005bd3c`  
		Last Modified: Fri, 21 Aug 2026 19:07:53 GMT  
		Size: 30.4 KB (30404 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:jre17-ubuntu-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:341620d21856c976e92347b20af34b3dac924ddc26ff0e38cf243b113a9bc601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171118916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51bf32dc64ca6240b38a4282316d685aee8765eb96c62f283170cc68f0e2e868`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:27:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:27:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:27:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:27:16 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:27:16 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:27:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='b3b1c5aa21111d9000a855008b0f08ca3f7cdd4d9ba99e2b9f0750eb82e261e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        riscv64)          ESUM='9c018e609c1f851018f053bb634e14473e8c0b6532aae400a105aa4d52c84d42';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_riscv64_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:27:20 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:27:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:27:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:58:01 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:58:01 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 18:58:01 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 18:58:06 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:58:16 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 18:58:16 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 18:58:16 GMT
ENV TOMEE_BUILD=plus
# Fri, 21 Aug 2026 18:59:06 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 18:59:06 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:59:06 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102ff69b25668d2c1e0fdfaf46d1b03dd0c30aa6f3e61986d1a48e7a1880e6c6`  
		Last Modified: Fri, 21 Aug 2026 18:27:32 GMT  
		Size: 17.0 MB (16951710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b78dd2412b740e9b1ffc229fe0abae151176eb95f766dcf6497c29908b4ce5`  
		Last Modified: Fri, 21 Aug 2026 18:27:33 GMT  
		Size: 47.0 MB (47002268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:877b7fed7c374f9528988662d4ffd975de84813d24b73708f87fcc7d90644335`  
		Last Modified: Fri, 21 Aug 2026 18:27:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1864c453fef9980b8a44cbc49f1ca3bd22315b4ccb194bd904fd65e3bbb923`  
		Last Modified: Fri, 21 Aug 2026 18:27:32 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d131b440f751f1cdd900b969e3ae8b3d9a12508ba3e388f37a02fce02f3f94`  
		Last Modified: Fri, 21 Aug 2026 18:58:28 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:946e1f58480c8d2c229a07bebef4dbe271098a38a475fbacd2206e069eeba379`  
		Last Modified: Fri, 21 Aug 2026 18:58:28 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b028a9d4b25982097b1b81e1b0e967b5fa2ceaba9a6440cd8dfb93a7999b2440`  
		Last Modified: Fri, 21 Aug 2026 18:58:28 GMT  
		Size: 75.6 KB (75630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29dd4e824c6f5e6929b4f372d86f9573ab048898939c492f2234af4f119ac1ff`  
		Last Modified: Fri, 21 Aug 2026 18:59:18 GMT  
		Size: 78.2 MB (78198749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:jre17-ubuntu-plus` - unknown; unknown

```console
$ docker pull tomee@sha256:e6827ca335306463196830ad359d388780327674bcd60d7c26a2d0e4b971d309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3698377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b308421e6f46849fb2da68e7f62466fccc5b74a826da7aff49dac039e9540d6`

```dockerfile
```

-	Layers:
	-	`sha256:054f4dad602b8d38705af6b019e313338cb1933338be26e3c92434d2f2ccc7cb`  
		Last Modified: Fri, 21 Aug 2026 18:59:16 GMT  
		Size: 3.7 MB (3667680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09ea3b98d43e3913846b2f8810a50cb2b75e5babe520f07af023b19eebd4857d`  
		Last Modified: Fri, 21 Aug 2026 18:59:16 GMT  
		Size: 30.7 KB (30697 bytes)  
		MIME: application/vnd.in-toto+json
