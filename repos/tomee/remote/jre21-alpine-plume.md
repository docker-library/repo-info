## `tomee:jre21-alpine-plume`

```console
$ docker pull tomee@sha256:9e60bc850ed5a6afc1df9e61c36b66704d95cb937ddccaab2f7f296fe0f735dc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `tomee:jre21-alpine-plume` - linux; amd64

```console
$ docker pull tomee@sha256:41b85cb24a0ed7198cbd288f014844034bbf345f025e3242d8813121b1964f6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.5 MB (161456639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5989eb51e0e6cb27aa155a97435bb880965df608ce2ab1e52b4823bce2ea3a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:17:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:17:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:17:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:17:30 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:17:30 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 19:18:47 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='382633eb2ba28cc5b97be1446eb1dd8d2a60a3795be0166a030e4cda338c490e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='9138eab0f7d230e17163953f015ec9ae2431dbc49069c658b7f991e45b54fb9b';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 19:18:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 20:26:34 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 20:26:34 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Thu, 05 Nov 2026 20:26:34 GMT
WORKDIR /usr/local/tomee
# Thu, 05 Nov 2026 20:26:34 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl  && rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 20:26:43 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Thu, 05 Nov 2026 20:26:43 GMT
ENV TOMEE_VER=10.2.0
# Thu, 05 Nov 2026 20:26:43 GMT
ENV TOMEE_BUILD=plume
# Thu, 05 Nov 2026 20:26:45 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Thu, 05 Nov 2026 20:26:45 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 20:26:45 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d99ac440d39bbade5ae9f2dd56b69d8234c4e540282df61003829295761e4fe`  
		Last Modified: Thu, 05 Nov 2026 19:17:43 GMT  
		Size: 17.0 MB (16969910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac8bacad3044dd68d9bbbc26ed22c6674c4149fc01ef8d074f009f484341d4f`  
		Last Modified: Thu, 05 Nov 2026 19:18:58 GMT  
		Size: 53.4 MB (53378320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85a6771097082b2df91a6477c3314ec25a91b894210dd741baae08d3e41b4b3`  
		Last Modified: Thu, 05 Nov 2026 19:18:57 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84ee4d88719efe0c0f5723556c11c87be2c0094c89dce0bb75f768f6dd74605`  
		Last Modified: Thu, 05 Nov 2026 19:18:57 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c887dd9533f447c98f6ec8b9be3f4e6f42e609b3038a4d6b721cc0149b564a62`  
		Last Modified: Thu, 05 Nov 2026 20:26:56 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a292d206f1d23b8987a0d3b344d640487807c25e8e7cf7c73064c31c883913`  
		Last Modified: Thu, 05 Nov 2026 20:26:56 GMT  
		Size: 843.4 KB (843362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd157c7746d1f8af5992842bd0c30224f2afc43c20092a7e4813cf2b7323851`  
		Last Modified: Thu, 05 Nov 2026 20:26:56 GMT  
		Size: 75.6 KB (75627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9921b31350ab969b93d61e549969393d1491a1fb003b37408acedac7324ca7e`  
		Last Modified: Thu, 05 Nov 2026 20:26:58 GMT  
		Size: 86.3 MB (86332958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:jre21-alpine-plume` - unknown; unknown

```console
$ docker pull tomee@sha256:d061d86d86165c197c8080f031fa5678ed34cc0c8b192c0e3cea298d3ff59bd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1337036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6eabf0c530cb43000b6ce59991e7b4894f4be7ec8ebd3c19fea88af805c6719`

```dockerfile
```

-	Layers:
	-	`sha256:2c4d148892be9478fba3ad6f13e1a909226ec96f4c521bf828e876e767c0d2c1`  
		Last Modified: Thu, 05 Nov 2026 20:26:56 GMT  
		Size: 1.3 MB (1309484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42f037e79fc29f807601c277025bcb4da542a47016b1e1aa1b90473cdabdb5e5`  
		Last Modified: Thu, 05 Nov 2026 20:26:56 GMT  
		Size: 27.6 KB (27552 bytes)  
		MIME: application/vnd.in-toto+json

### `tomee:jre21-alpine-plume` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:3baef419a8d8fc694b96e00be36eee385ac8d6e6e0bea462f64612d833a5684e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.8 MB (160792562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:274b5c7dbe87706c0a702adeb92bce031834f8f9ff30829e5304cdd3f49780ad`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:12:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:12:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:12:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:12:54 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:12:54 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 05 Nov 2026 19:13:19 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='382633eb2ba28cc5b97be1446eb1dd8d2a60a3795be0166a030e4cda338c490e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        x86_64)          ESUM='9138eab0f7d230e17163953f015ec9ae2431dbc49069c658b7f991e45b54fb9b';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_alpine-linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 19:13:19 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:13:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:13:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 21:34:29 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 21:34:29 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Thu, 05 Nov 2026 21:34:29 GMT
WORKDIR /usr/local/tomee
# Thu, 05 Nov 2026 21:34:30 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl  && rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 21:34:39 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Thu, 05 Nov 2026 21:34:39 GMT
ENV TOMEE_VER=10.2.0
# Thu, 05 Nov 2026 21:34:39 GMT
ENV TOMEE_BUILD=plume
# Thu, 05 Nov 2026 21:34:41 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Thu, 05 Nov 2026 21:34:41 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 21:34:41 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4efa11c9f730ef0ee6668a47a41bbb947261620ba96582f05ff816e2406ddc3`  
		Last Modified: Thu, 05 Nov 2026 19:13:31 GMT  
		Size: 16.9 MB (16899771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2396eed2b1e9d2811bc63bd58514b5972e90f244494bcfe8a691436b1df4f98c`  
		Last Modified: Thu, 05 Nov 2026 19:13:33 GMT  
		Size: 52.4 MB (52444405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5903ba1ef377b5a379223385f3cb6476a6deba30377e37d99c624421f4fdc5c`  
		Last Modified: Thu, 05 Nov 2026 19:13:31 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:482227507fd1c4761609dd9dff40bbb95c26de97b4339725ee245e6ff475f044`  
		Last Modified: Thu, 05 Nov 2026 19:13:31 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693f1324bf8046584a8bde27e49fadd3b550ffea4633505573c3b48371305a3b`  
		Last Modified: Thu, 05 Nov 2026 21:34:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2d1b68112c588fcb8a2f4779d034b4a4f3ce2f4312bc88121161e5826e24934`  
		Last Modified: Thu, 05 Nov 2026 21:34:51 GMT  
		Size: 846.4 KB (846362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3a45c54c5de8a1294a8b0fd0dc1b2d92fe42b34032af53b21b1e50e0bf016e`  
		Last Modified: Thu, 05 Nov 2026 21:34:51 GMT  
		Size: 75.7 KB (75653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf974ee906d868837370ee952473d699b4720d5fe939371520931d8851f66e1e`  
		Last Modified: Thu, 05 Nov 2026 21:34:53 GMT  
		Size: 86.3 MB (86332986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:jre21-alpine-plume` - unknown; unknown

```console
$ docker pull tomee@sha256:ca99042993029fcace916c16d90f190ce378e5fa0f2ce4ebc54d6d8809fb3d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1336069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc44fa4c472395571c9239a5a73c5283c126c976d14f2d3aec9334c77b9708ee`

```dockerfile
```

-	Layers:
	-	`sha256:dd80ab9765dbb99f06095601bbf23072c4341fa5c9445fe9419f0fcb33a32c01`  
		Last Modified: Thu, 05 Nov 2026 21:34:51 GMT  
		Size: 1.3 MB (1308320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df2d30c6855f17e33c2471e460a83beeb3e675ea193e1b9bdde861f90871f8f8`  
		Last Modified: Thu, 05 Nov 2026 21:34:51 GMT  
		Size: 27.7 KB (27749 bytes)  
		MIME: application/vnd.in-toto+json
