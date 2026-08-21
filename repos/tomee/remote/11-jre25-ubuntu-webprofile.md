## `tomee:11-jre25-ubuntu-webprofile`

```console
$ docker pull tomee@sha256:ba8d5fbc25211ae432c8666635265441d72bc85343c33772c595c30eb39b9d18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:11-jre25-ubuntu-webprofile` - linux; amd64

```console
$ docker pull tomee@sha256:ed901e0de22777babca1d2c8891d6a3b715eb812cd7552fdadd9181d7d74b9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170853288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bfca551539f5352fe09502b924df409e3cf9468bd194d9823425ef68214e00f`
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
# Fri, 21 Aug 2026 18:26:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:26:21 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:26:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:26:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:04:18 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:04:18 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 19:04:18 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 19:04:23 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent curl   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 19:04:33 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 19:04:33 GMT
ENV TOMEE_VER=11.0.0-M1
# Fri, 21 Aug 2026 19:04:33 GMT
ENV TOMEE_BUILD=webprofile
# Fri, 21 Aug 2026 19:04:34 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 19:04:34 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 19:04:34 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe860d81cd49b3b4e6736f841a56605ac315b6061ca1fa0aa36201b3f470f0a8`  
		Last Modified: Fri, 21 Aug 2026 18:26:47 GMT  
		Size: 11.4 MB (11437454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9b4977682d696b24ee33229e1cb3bee4b674ebf368026218f3ee759aad09a0`  
		Last Modified: Fri, 21 Aug 2026 18:26:48 GMT  
		Size: 63.1 MB (63075050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1acd3d9c2420115ce6b7aaf5de44855ff9a8f624aa2a0d9e142040f5158ee4a5`  
		Last Modified: Fri, 21 Aug 2026 18:26:46 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e700354e030ae320e5ff19bb455ce55793c7bea39a5ff60182dc08f6c8aab8c`  
		Last Modified: Fri, 21 Aug 2026 19:04:46 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd9393e739b3f5ddbab2a1d989af4ad6fb3179a94cb7b1c58b26a2bc89e7d5a`  
		Last Modified: Fri, 21 Aug 2026 19:04:46 GMT  
		Size: 4.5 MB (4484177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c6214f0b9015104a0af766a888638bf8c17a45b2dff63d63bbfe3f9fd80470`  
		Last Modified: Fri, 21 Aug 2026 19:04:46 GMT  
		Size: 75.7 KB (75667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1da1f911d32f2fcc7f3f5e70b6df6e386b78e7756c1a5a61352476885741f23a`  
		Last Modified: Fri, 21 Aug 2026 19:04:48 GMT  
		Size: 62.0 MB (62025434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre25-ubuntu-webprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:3a95772c9c29a111260e954fb17b6e6292fef4f6e9c88dcbf659158a30ad211c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3538382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f767738cbe946fded007cd59ea6292ddc06ef6f2d8965aaf80d1f9071b8e896`

```dockerfile
```

-	Layers:
	-	`sha256:85961e16893aba195f914801c91f817f430f8ebc861bee1d731bd91d2bdad4c3`  
		Last Modified: Fri, 21 Aug 2026 19:04:46 GMT  
		Size: 3.5 MB (3505066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b857b95049703344c5f989bb99c05825e4d82671a6e0d6c3a5264699fab9990`  
		Last Modified: Fri, 21 Aug 2026 19:04:46 GMT  
		Size: 33.3 KB (33316 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:11-jre25-ubuntu-webprofile` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:6d5667fcfd284570f09032c5b0c5d161dabaa9ca48bdf8fe258a15f6b12ea711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168850835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53537c3447b627e6be50068db4d09331df68a4d061dfc4d571465dd7b461f6e`
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
# Fri, 21 Aug 2026 18:29:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:29:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:29:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:29:27 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:29:27 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:29:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:29:43 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:29:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:29:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:56:43 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:56:43 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Fri, 21 Aug 2026 18:56:43 GMT
WORKDIR /usr/local/tomee
# Fri, 21 Aug 2026 18:56:50 GMT
RUN apt-get update   && apt-get install -y --no-install-recommends gpg dirmngr gpg-agent curl   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:56:59 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Fri, 21 Aug 2026 18:56:59 GMT
ENV TOMEE_VER=11.0.0-M1
# Fri, 21 Aug 2026 18:56:59 GMT
ENV TOMEE_BUILD=webprofile
# Fri, 21 Aug 2026 18:57:04 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && echo `cat tomee.tar.gz.sha512` | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Fri, 21 Aug 2026 18:57:04 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 21 Aug 2026 18:57:04 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b4386bd70c2954b2582a2981aa1e49491827ee714eab8c29eaab2a9b353052`  
		Last Modified: Fri, 21 Aug 2026 18:29:57 GMT  
		Size: 11.4 MB (11431041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb95e3836e0c5e3b34139686fd2e946b7a0af413c997a45fc2d6fd038335b0e`  
		Last Modified: Fri, 21 Aug 2026 18:29:59 GMT  
		Size: 61.9 MB (61923262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da00c517fa718e5b9e470c462fee10e7bf750b4bb9e76a32e451b66e0864c74`  
		Last Modified: Fri, 21 Aug 2026 18:29:57 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc7e52a5906d82d0e4c8e42be715f5044b3abfa14d1cad6ea856ea82e2c4281`  
		Last Modified: Fri, 21 Aug 2026 18:57:15 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096340d3bc44ca00538cb613fe9e1af7f4880c9f524dcf17f076dc05a8b4e35b`  
		Last Modified: Fri, 21 Aug 2026 18:57:15 GMT  
		Size: 4.5 MB (4505469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3483177be02c3be1f99eef24b8171864df4947b63fd3894ca502518906e7794d`  
		Last Modified: Fri, 21 Aug 2026 18:57:15 GMT  
		Size: 75.6 KB (75631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb9386b6bb41ae1fce248f7697ff0683f2cd0c4fda9f2e1db22acbd757f577e`  
		Last Modified: Fri, 21 Aug 2026 18:57:17 GMT  
		Size: 62.0 MB (62025495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre25-ubuntu-webprofile` - unknown; unknown

```console
$ docker pull tomee@sha256:ac0e80fc7c3bd1a7c18cb04e10fce8b4554655aada42c2c7df31571ea15e99e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3539479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4dc2263f5d5789654f634990ade7e26fd00ab0942c7c51505ad25f1b7bd1b5`

```dockerfile
```

-	Layers:
	-	`sha256:6d55a2efd1eea0c59b4cfe1e6b5c7824b330cd0eb918094189b0db11628f3a57`  
		Last Modified: Fri, 21 Aug 2026 18:57:15 GMT  
		Size: 3.5 MB (3505774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c43dbd9be70d20d149a75f42e6b3d301022f7b49c13b8fe402c7f0e82739fc4`  
		Last Modified: Fri, 21 Aug 2026 18:57:15 GMT  
		Size: 33.7 KB (33705 bytes)  
		MIME: application/vnd.in-toto+json
