## `tomee:11-Temurin-webprofile`

```console
$ docker pull tomee@sha256:3c51aec9873867c403d4371a02877daa52109d285e36c57e1c5050b4d3574658
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:11-Temurin-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:b830279c1da741b042e37bc70d0dee1d3444faf2855c480b2aa5fc861fb56ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170868168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:387c4cb5cb13acaddf70769616abae76f5f158f08fb353901bceb9cd1dd220b2`
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
# Wed, 16 Sep 2026 03:18:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:18:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:18:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:18:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:18:07 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Wed, 16 Sep 2026 03:18:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:18:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:18:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:18:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:29:43 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:29:43 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Wed, 16 Sep 2026 04:29:43 GMT
WORKDIR /usr/local/tomee
# Wed, 16 Sep 2026 04:29:51 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent curl   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:30:00 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Wed, 16 Sep 2026 04:30:00 GMT
ENV TOMEE_VER=11.0.0-M1
# Wed, 16 Sep 2026 04:30:00 GMT
ENV TOMEE_BUILD=webprofile
# Wed, 16 Sep 2026 04:30:04 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Wed, 16 Sep 2026 04:30:04 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:30:04 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6feed5b2ec5c67c945da41769431e281d7fbcb031e3b459dbb256393b325dc7c`  
		Last Modified: Wed, 16 Sep 2026 03:18:36 GMT  
		Size: 11.4 MB (11438676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae73d3b72fc6f8297624a48ede7bb525cf859b2f0556cfc94f70164d7c5fca94`  
		Last Modified: Wed, 16 Sep 2026 03:18:37 GMT  
		Size: 63.1 MB (63075014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d53e85d07d743128353d5f8d3b8c17a8fbe83a1eeb8c4b0f09f036c8cd210a66`  
		Last Modified: Wed, 16 Sep 2026 03:18:35 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce679d0bb0e260a6bfd3e7a90fe1d8a223c212afd3d1775ee333ad8f3e128bf4`  
		Last Modified: Wed, 16 Sep 2026 04:30:14 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4e5423455e339709353c013a711595c459bd8c63fe6d585eb5174529c6eddb9`  
		Last Modified: Wed, 16 Sep 2026 04:30:14 GMT  
		Size: 4.5 MB (4486579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3524b3e1e3c3bdeb351d9036c3ed86b0260e3d696bc6ed95d17b1a198c7b1330`  
		Last Modified: Wed, 16 Sep 2026 04:30:14 GMT  
		Size: 75.7 KB (75653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7ca165cd2fa2bdf67387cb194069263c3a52b83046bfaa83ee5a2016f2e27a`  
		Last Modified: Wed, 16 Sep 2026 04:30:15 GMT  
		Size: 62.0 MB (62025428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-Temurin-webprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:ef23c9babfd086a9ac9c19845b7ce16c883a90822d8c486e74ad8ecc34df8682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3538406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcab21d1bde65578c477ec5d88488e43486a2294ea9482a700d2fe67a8919d8d`

```dockerfile
```

-	Layers:
	-	`sha256:9b7efa17685b4c5b735ba56c37de2293d875f346359064522b0990fc21f17082`  
		Last Modified: Wed, 16 Sep 2026 04:30:14 GMT  
		Size: 3.5 MB (3505090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbcf8d4bd796a54b1d547bb3489112b7d7e2cfb2c52b62f752bdec17377b97cb`  
		Last Modified: Wed, 16 Sep 2026 04:30:14 GMT  
		Size: 33.3 KB (33316 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:11-Temurin-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:6a965b3c1d6346461da939f96f959ded9e5edb7edcda5c9ee14dfd0c6e2bdfbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168909708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c2a74c05b11a89e690db13f8db4ef693dd41b9280d7e76e7559f5078d5bc0f`
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
# Wed, 16 Sep 2026 03:17:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 03:17:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 03:17:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 03:17:41 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:17:41 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Wed, 16 Sep 2026 03:17:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 16 Sep 2026 03:17:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 03:17:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:17:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 04:30:10 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:30:10 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Wed, 16 Sep 2026 04:30:10 GMT
WORKDIR /usr/local/tomee
# Wed, 16 Sep 2026 04:30:19 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent curl   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 04:30:29 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Wed, 16 Sep 2026 04:30:29 GMT
ENV TOMEE_VER=11.0.0-M1
# Wed, 16 Sep 2026 04:30:29 GMT
ENV TOMEE_BUILD=webprofile
# Wed, 16 Sep 2026 04:30:30 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Wed, 16 Sep 2026 04:30:30 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 16 Sep 2026 04:30:30 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8a5087e663295b00b16aaa100a872263295fa5c9f72698a6292f0055095638`  
		Last Modified: Wed, 16 Sep 2026 03:18:11 GMT  
		Size: 11.4 MB (11432745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd53919f526fd1ee9823f6b2ca4fdb23d24bd35d3ed8555054003ffe39b9b52`  
		Last Modified: Wed, 16 Sep 2026 03:18:13 GMT  
		Size: 61.9 MB (61923374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80494f661b5a9252ba12a08776b6ba23520eaa2e1e5df137eb0874aa01c1e894`  
		Last Modified: Wed, 16 Sep 2026 03:18:10 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aedc0a6169dc2f680c32e747cc5ea53c24a0ac383f3c777ddb4b1889c7d1d2dc`  
		Last Modified: Wed, 16 Sep 2026 04:30:39 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077f6c836e17acd1fb2122622cfbf9e7313d81494c39ab91f63218d67d47070d`  
		Last Modified: Wed, 16 Sep 2026 04:30:40 GMT  
		Size: 4.5 MB (4508246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60fd81439e9e86c428d6e606ccb57eb4a32b8bc1481d79a260f2aa5dd2ba36ae`  
		Last Modified: Wed, 16 Sep 2026 04:30:39 GMT  
		Size: 75.6 KB (75628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd0eef75daded41f04efd4ea5c1b801ad81fcfc18d5661ecd8a0baf8a67ba21`  
		Last Modified: Wed, 16 Sep 2026 04:30:41 GMT  
		Size: 62.0 MB (62025437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-Temurin-webprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:4d95e1caf95cbc63044854608e9db2d6dfa937476670605511c17e0fdf2b40b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3539503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c02b9607aa88fb82b3e7257ec8094f956e559f11ea27a799f3387eddf5d474a`

```dockerfile
```

-	Layers:
	-	`sha256:05c521a8719242165699ddb6b04c6d03a8d3eba1b8dd4f70d8d6b3c2106ba1d8`  
		Last Modified: Wed, 16 Sep 2026 04:30:40 GMT  
		Size: 3.5 MB (3505798 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:670e6a08e399cea7c0779157f08f6606150a28d6476cba8ed4bc8e8a7d151eb9`  
		Last Modified: Wed, 16 Sep 2026 04:30:39 GMT  
		Size: 33.7 KB (33705 bytes)  
		MIME: application/vnd.in-toto+json
