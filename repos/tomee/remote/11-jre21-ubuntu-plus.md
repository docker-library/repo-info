## `tomee:11-jre21-ubuntu-plus`

```console
$ docker pull tomee@sha256:224f0a039d2bc8e64b5f77ffc5ed865b099727471e0efe1e587bd01c34420aee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:11-jre21-ubuntu-plus` - linux; amd64

```console
$ docker pull tomee@sha256:63297f46dc775c740b48043667b58b65ad8987279544078e2494f6ca7c381e97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.7 MB (176655025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30a04a510c6294a7d5c94ef89d3495e25caa9a559341889c962367b970e1f51a`
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
# Wed, 11 Nov 2026 23:18:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:18:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:18:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:18:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:18:07 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 23:18:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='40c66736338abeb8b633d50036e5f83e3a3f55654723f31589fa09c081eec118';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:18:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:18:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:18:11 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:41:10 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:41:10 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Thu, 12 Nov 2026 00:41:10 GMT
WORKDIR /usr/local/tomee
# Thu, 12 Nov 2026 00:41:13 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:41:22 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Thu, 12 Nov 2026 00:41:22 GMT
ENV TOMEE_VER=11.0.0-M1
# Thu, 12 Nov 2026 00:41:22 GMT
ENV TOMEE_BUILD=plus
# Thu, 12 Nov 2026 00:42:14 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Thu, 12 Nov 2026 00:42:14 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 12 Nov 2026 00:42:14 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d7fe0cce39bf1577f26fa0c6d7ba9911b11fc24c23e6f4bcba9caeeff61563`  
		Last Modified: Wed, 11 Nov 2026 23:18:24 GMT  
		Size: 17.0 MB (16968755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7f4827ee3752ab5c37e1891efee826e0d7360c168a346b54fbc7d378f903cb`  
		Last Modified: Wed, 11 Nov 2026 23:18:25 GMT  
		Size: 53.2 MB (53212177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be1a0be4759630c40b3498a7435e9298a9b0eb9dd301840ef0d4045435982f9`  
		Last Modified: Wed, 11 Nov 2026 23:18:23 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98af0c3f7e450bcc48d25b4c827fc472d525977f134fed39f289c7c698f7fefd`  
		Last Modified: Wed, 11 Nov 2026 23:18:23 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac17407dbb17597a92ce1516ec0b57a1997b46732f7b68c4e793210bc3e166c`  
		Last Modified: Thu, 12 Nov 2026 00:42:25 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c4442d0c4804fba0d8bad41b13947a241cc974c1fd4e981df6aad4f55c3a2c`  
		Last Modified: Thu, 12 Nov 2026 00:42:25 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec1891ed3ea8af46b328ecb9de4e7fe4f9f47c156bdba432d848e20bb8dda1c`  
		Last Modified: Thu, 12 Nov 2026 00:42:25 GMT  
		Size: 75.6 KB (75635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75841fc0332552cf138e38aaffccb9dc33d097838947db342f314457e629e086`  
		Last Modified: Thu, 12 Nov 2026 00:42:28 GMT  
		Size: 76.6 MB (76601914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre21-ubuntu-plus` - unknown; unknown

```console
$ docker pull tomee@sha256:89094e494204d02acfe592ec7d76ce79e27c5b267e0df3f146ec70ae75759b3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3685237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4ff66ea972db4f8ae65654b687f3b1c97efdcfd9efcdae013a22542d60e09a`

```dockerfile
```

-	Layers:
	-	`sha256:670b232d1d68d359d6fb527634d71b3855f398cfd0260f838c182327cf5d12f7`  
		Last Modified: Thu, 12 Nov 2026 00:42:25 GMT  
		Size: 3.7 MB (3656078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c71e1b9c97adc48b60c6cf57770845445dcf42d40ba46291a54d1dbe24fdac49`  
		Last Modified: Thu, 12 Nov 2026 00:42:25 GMT  
		Size: 29.2 KB (29159 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:11-jre21-ubuntu-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:b7658bd7f54a3a4b27fa71facb7df68134da3277543769b8aeafc82d63c2cc71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.0 MB (175015217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97721db48337012cf0b2c9dc7f3b9530c571206a96d0564b2bc604193b8e20a2`
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
# Wed, 11 Nov 2026 23:20:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:20:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:20:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:20:14 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 23:22:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        riscv64)          ESUM='40c66736338abeb8b633d50036e5f83e3a3f55654723f31589fa09c081eec118';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_riscv64_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:22:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:22:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:22:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:55:58 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:55:58 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Thu, 12 Nov 2026 00:55:58 GMT
WORKDIR /usr/local/tomee
# Thu, 12 Nov 2026 00:56:02 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:56:11 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Thu, 12 Nov 2026 00:56:11 GMT
ENV TOMEE_VER=11.0.0-M1
# Thu, 12 Nov 2026 00:56:11 GMT
ENV TOMEE_BUILD=plus
# Thu, 12 Nov 2026 00:56:22 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Thu, 12 Nov 2026 00:56:22 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 12 Nov 2026 00:56:22 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3bad045730c9bbe2de8073b14d6d10b731904bf41945324b4d81a4ad352b84a`  
		Last Modified: Wed, 11 Nov 2026 23:20:28 GMT  
		Size: 17.0 MB (16978185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ba09b4b815c0cb9c1baf22e93311f667e715ba935e245f2e8ba9a1c7d559bf`  
		Last Modified: Wed, 11 Nov 2026 23:22:26 GMT  
		Size: 52.4 MB (52390824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d3caa3c76e7041e2c525d917f954b639781b9ded7685c0e434066741965756`  
		Last Modified: Wed, 11 Nov 2026 23:22:24 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eadd495fbe26ccf4336bc5eb75557d749b458c6d2d9387922d563248e58e156e`  
		Last Modified: Wed, 11 Nov 2026 23:22:25 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a38b1229d48958fabe40848710c7be5673395475d7ee849ea641668905686f61`  
		Last Modified: Thu, 12 Nov 2026 00:56:32 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba35250fcbf4e5524cb5ebb6844a5eb53c8c26635bfb6b90f7e75623568370e`  
		Last Modified: Thu, 12 Nov 2026 00:56:32 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873450c5c8f29fc21d4f67a709e1c7e034fa12360c10c2774d440c16816897b4`  
		Last Modified: Thu, 12 Nov 2026 00:56:32 GMT  
		Size: 75.7 KB (75657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7bfa01e49de0f8d1b254008576c9d5252016b8ba536c52301dd954f65fb92c`  
		Last Modified: Thu, 12 Nov 2026 00:56:35 GMT  
		Size: 76.6 MB (76601971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre21-ubuntu-plus` - unknown; unknown

```console
$ docker pull tomee@sha256:c7c80b098d31ffe05784d369c16a34e16573c928c12a4a347f10f72dc4a6106c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3686048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d71bed538efb64cbffb9bd05d3bec131238dfcd6c07300de74c5e251574507c`

```dockerfile
```

-	Layers:
	-	`sha256:14b071e91dba730317985583c9c8f13c68760c19d62c23d45866928c0b5f8075`  
		Last Modified: Thu, 12 Nov 2026 00:56:33 GMT  
		Size: 3.7 MB (3656645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e12d3380ecdfc930be293dac1803b000c461e366a567afddeff0827594ea2546`  
		Last Modified: Thu, 12 Nov 2026 00:56:32 GMT  
		Size: 29.4 KB (29403 bytes)  
		MIME: application/vnd.in-toto+json
