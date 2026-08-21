## `tomee:10-jre17-Temurin`

```console
$ docker pull tomee@sha256:1ae37c9cefe673d3f344a3a7f992dde4520feef97b5f339d052ae88a4286b7fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:10-jre17-Temurin` - linux; amd64

```console
$ docker pull tomee@sha256:b4ba12d9587958091afb52c9f2ca21c2ed0a31df53b22def390cb4a93233c2d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168001977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f41112bfb29707353e75d0fec260ebf1fed0f9cbac4e641562fc99ee75646864`
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
# Fri, 21 Aug 2026 19:07:31 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:07:31 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 19:07:31 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 19:07:34 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:07:44 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 19:07:44 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 19:07:44 GMT
ENV TOMEE_BUILD=microprofile
# Fri, 21 Aug 2026 19:07:45 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 19:07:45 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:07:45 GMT
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
	-	`sha256:22a3f0dcfb57fde234398f7d9c720664006c0cf0b56099aa809c6baa68807c3c`  
		Last Modified: Fri, 21 Aug 2026 19:07:55 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc566d15965a9d69b274e5a221ffde7aa61c10c2ede4730b428b578a20c3959`  
		Last Modified: Fri, 21 Aug 2026 19:07:55 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dda300bff705200bc6fcf79a75881c82eabbbfb077b7cd81de1fa7f1a91ecbe`  
		Last Modified: Fri, 21 Aug 2026 19:07:55 GMT  
		Size: 75.7 KB (75668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d2ec2a1d5438f6103bdb2c1a5c3628cdd39a9f93789cd85568622524a9b118`  
		Last Modified: Fri, 21 Aug 2026 19:07:57 GMT  
		Size: 73.7 MB (73704412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-jre17-Temurin` - unknown; unknown

```console
$ docker pull tomee@sha256:3180f5b39421e4408955bf80bddf7806afdd5286805c387a509ad54e94680479
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3697686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d16e36374c69164ff6ed2b01409df355227278fb2f62e3f002de02b6cd0af91`

```dockerfile
```

-	Layers:
	-	`sha256:41bae8a9d0dc39d4ac7ff6c20c303c0218b43e64a792fcb7c10886d406efdb4c`  
		Last Modified: Fri, 21 Aug 2026 19:07:55 GMT  
		Size: 3.7 MB (3661926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6501c1d4f976fc5d010772fe176c606b1227eb7bb1de530133a37e9a3ef57b2f`  
		Last Modified: Fri, 21 Aug 2026 19:07:55 GMT  
		Size: 35.8 KB (35760 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:10-jre17-Temurin` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:ed3689543a7766d7265cdf13e61b4e2c6b9ead2441ebf71e4ea46f9af3f6db5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.6 MB (166624589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9baf38590e1f10719367a689808d9ead29e36b1ca94ae0735f49f5ec1004854d`
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
# Fri, 21 Aug 2026 18:58:03 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:58:03 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 18:58:03 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 18:58:08 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:58:18 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 18:58:18 GMT
ENV TOMEE_VER=10.2.0
# Fri, 21 Aug 2026 18:58:18 GMT
ENV TOMEE_BUILD=microprofile
# Fri, 21 Aug 2026 18:58:59 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 18:58:59 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:58:59 GMT
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
	-	`sha256:1661350a8e84a3a76952458c993336b9372c91e6f5de08df41076b16716ead94`  
		Last Modified: Fri, 21 Aug 2026 18:58:29 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e718501252e3b2b92926b0b82230ea8bfe88690ef23148901cc3a62e8827c581`  
		Last Modified: Fri, 21 Aug 2026 18:58:29 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeaf65d101b994447919ea9ead4763d40429f245a06d958b641d0bed9d07d00e`  
		Last Modified: Fri, 21 Aug 2026 18:58:29 GMT  
		Size: 75.6 KB (75632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06d8215c41cd1c764901a35d807d540c18506113c111a25a22576f7a0fd81d5`  
		Last Modified: Fri, 21 Aug 2026 18:59:11 GMT  
		Size: 73.7 MB (73704422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-jre17-Temurin` - unknown; unknown

```console
$ docker pull tomee@sha256:ba888afae99bc7ec73604914a88f2b1064cfc0316dd35d99ea2a02c2b9603f89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3698978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c170c286aefd797711aab806d7ffc4b38526d35884f089936511b5c34d7b46e`

```dockerfile
```

-	Layers:
	-	`sha256:8385bb7122689e7afe27b308f379d8e11ccf382114b77838f508270a2077e77d`  
		Last Modified: Fri, 21 Aug 2026 18:59:09 GMT  
		Size: 3.7 MB (3662733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:903a81c80d8d06eda9f63950a412aaa9f59387db1f9ef601bd3a98a3859f799b`  
		Last Modified: Fri, 21 Aug 2026 18:59:09 GMT  
		Size: 36.2 KB (36245 bytes)  
		MIME: application/vnd.in-toto+json
