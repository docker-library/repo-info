## `tomee:11-jre17-Temurin-microprofile`

```console
$ docker pull tomee@sha256:2a9a1751e8f83fed529143df7a8629e0fa6d06278e0036e1dab4f2f61c74f833
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:11-jre17-Temurin-microprofile` - linux; amd64

```console
$ docker pull tomee@sha256:6fd1aea0d8713a150554d4c76451024edb2db653f2e0f2e8a521e454afa33633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166401399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20f384b656667ca9327ced66c4126c610d6e18208bbb529a3972ba366f094809`
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
# Fri, 21 Aug 2026 19:05:31 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:05:31 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 19:05:31 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 19:05:35 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:05:45 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 19:05:45 GMT
ENV TOMEE_VER=11.0.0-M1
# Fri, 21 Aug 2026 19:05:45 GMT
ENV TOMEE_BUILD=microprofile
# Fri, 21 Aug 2026 19:05:46 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 19:05:46 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:05:46 GMT
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
	-	`sha256:1e70b1502b9d8d24fc764c38c43f225c603bfb6957a4a5a450549097777a1c3d`  
		Last Modified: Fri, 21 Aug 2026 19:05:57 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d5dd5bc63f9cd0122728cbb3288080cd0e2cacb836be09ab73d812a606f090`  
		Last Modified: Fri, 21 Aug 2026 19:05:57 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc48ff9e0dd3f4572b4d9652162888d54de29aa0aa8b814c91eaddd118646ed`  
		Last Modified: Fri, 21 Aug 2026 19:05:57 GMT  
		Size: 75.6 KB (75635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d69e933e3007d3a85637a76866379f63e01321f250acb00b73673566a23ffa53`  
		Last Modified: Fri, 21 Aug 2026 19:05:59 GMT  
		Size: 72.1 MB (72103868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre17-Temurin-microprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:dd08f29ab33a5b8ae72ba1229674c4ed6fcda33d4279f404ef8e97d2a84d5a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3680398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10916b209a32ac5452c895b2787dd9455096fa879e685693a6c287db7162ff0c`

```dockerfile
```

-	Layers:
	-	`sha256:41ef01b115784cfffaf6cab83a53a8fe2986a9bdfdeff625b0e0de03492ca473`  
		Last Modified: Fri, 21 Aug 2026 19:05:57 GMT  
		Size: 3.6 MB (3647159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:371ba61053dd534f75a7cecf98c32fa50fad332b136a3dfb8be62b0ddf1b670f`  
		Last Modified: Fri, 21 Aug 2026 19:05:57 GMT  
		Size: 33.2 KB (33239 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:11-jre17-Temurin-microprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:45a176c83f5ec2087046ca93bc091630a4a59033090829a595161efc5d831c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (165024053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e967a7d25b38124db9a73f6cfbc3ff9e0b4bdbdb013bc290ab852ec70109ae1`
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
# Fri, 21 Aug 2026 18:57:36 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:57:36 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 18:57:36 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 18:57:41 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:57:51 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 18:57:51 GMT
ENV TOMEE_VER=11.0.0-M1
# Fri, 21 Aug 2026 18:57:51 GMT
ENV TOMEE_BUILD=microprofile
# Fri, 21 Aug 2026 18:57:52 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 18:57:52 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:57:52 GMT
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
	-	`sha256:3ec8669895adb1997fe0734123b7f20339cef38468dbfc4d172397d59db40308`  
		Last Modified: Fri, 21 Aug 2026 18:58:04 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345b79eeef7c480c92d85f5bcb4f844faa57ed974e0cc208ecb98f10d4b8c6e0`  
		Last Modified: Fri, 21 Aug 2026 18:58:04 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeaf5ec944bba0d9aa4aca0c0a08c50160337c9dbc1ec827fd0ce8cb31adce31`  
		Last Modified: Fri, 21 Aug 2026 18:58:04 GMT  
		Size: 75.7 KB (75674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e5784c008ec242f0f133d680209af7d3b9e7b4088a75558e262c06a4911f34`  
		Last Modified: Fri, 21 Aug 2026 18:58:06 GMT  
		Size: 72.1 MB (72103843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre17-Temurin-microprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:6ea76203800d836ca6ed5763a8ee09879279a0e07b0b4e72c8faeca711199a9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3681498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4316a9099c9c1bf6e2f7b578124bccb912536f35daef73fed7102458a8489363`

```dockerfile
```

-	Layers:
	-	`sha256:098309de7c7ea4ce732e3962a87100e8748fd95fdabb684d98b03cdb33327f00`  
		Last Modified: Fri, 21 Aug 2026 18:58:04 GMT  
		Size: 3.6 MB (3647870 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb05cc3f546e9d48ee50a442c4298a447c449a4ebabce4f6a1edfc2092ada72f`  
		Last Modified: Fri, 21 Aug 2026 18:58:04 GMT  
		Size: 33.6 KB (33628 bytes)  
		MIME: application/vnd.in-toto+json
