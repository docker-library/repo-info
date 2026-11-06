## `tomee:10-jre17-alpine`

```console
$ docker pull tomee@sha256:ec5729ff164c10b8c28be30199bedfed2c3a066084963ea6f45e8f410a0c2255
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `tomee:10-jre17-alpine` - linux; amd64

```console
$ docker pull tomee@sha256:a1f301db7884046422aefdbc9dc2817457cc899afc8c3f4304f57e768bdbcb74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.7 MB (142727642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61ee60764a74313a3185b1bfb21ac8f87bf99af3b3ced7c2ee1c1e8e3886f10a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 19:18:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:18:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 05 Nov 2026 19:18:20 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 19:18:20 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Thu, 05 Nov 2026 19:18:23 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='e42129db57e3965d9d8befdb097531d7887916690338ff0be7d1b0113287c872';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_alpine-linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz; # buildkit
# Thu, 05 Nov 2026 19:18:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 05 Nov 2026 19:18:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 05 Nov 2026 19:18:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 05 Nov 2026 20:25:56 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 20:25:56 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Thu, 05 Nov 2026 20:25:56 GMT
WORKDIR /usr/local/tomee
# Thu, 05 Nov 2026 20:25:56 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl   && rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 20:26:06 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Thu, 05 Nov 2026 20:26:06 GMT
ENV TOMEE_VER=10.2.0
# Thu, 05 Nov 2026 20:26:06 GMT
ENV TOMEE_BUILD=microprofile
# Thu, 05 Nov 2026 20:26:26 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Thu, 05 Nov 2026 20:26:26 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 20:26:26 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c1466a5ca3232269f244aa3094532f0316913add44aba17d25893be1044bc4`  
		Last Modified: Thu, 05 Nov 2026 19:18:33 GMT  
		Size: 17.0 MB (16969909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62fc65da0c5fbc0036993160c5218ccf5f099137891cc3173dd0584fe80ca6ec`  
		Last Modified: Thu, 05 Nov 2026 19:18:34 GMT  
		Size: 47.3 MB (47277859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cd29f11df7190b54d024588b636720cf0dce330a910e4b9e777e712485e9c2b`  
		Last Modified: Thu, 05 Nov 2026 19:18:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1d02633a996e89809e5ec77ed71a8ec39581554fbb82ae1d86ca5ff7613e95`  
		Last Modified: Thu, 05 Nov 2026 19:18:33 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01c4be7798450413dbf9887f6617f7b66b5e7551c929cf855e031ce3ba4538fe`  
		Last Modified: Thu, 05 Nov 2026 20:26:17 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:322dbb2d9bfe4e41e419692fd4667f7acb5d604c6e3b7f11b5cf3e2d68494b51`  
		Last Modified: Thu, 05 Nov 2026 20:26:17 GMT  
		Size: 843.4 KB (843366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0db3845ee0369c66c2fa0feadd80ace308320b404a795a0d9b17c393479c8c79`  
		Last Modified: Thu, 05 Nov 2026 20:26:17 GMT  
		Size: 75.6 KB (75627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed187ab69c60df3b2c1a743fdd87cba78241d9e8645be4c9cbf2a437295e19d5`  
		Last Modified: Thu, 05 Nov 2026 20:26:36 GMT  
		Size: 73.7 MB (73704417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:10-jre17-alpine` - unknown; unknown

```console
$ docker pull tomee@sha256:99ee7addd4645485b8e16d3bfe79b9d1854c809279a47ffd0cf21566c749480e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1311948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21b49ee03002d3d9325d061152cf76bfd1de9d0749b9073caea7b24714551798`

```dockerfile
```

-	Layers:
	-	`sha256:9e417ba67c3a68e9b903c631fe52e7d03ce15c887fb78044ac4c74ac9b3a097c`  
		Last Modified: Thu, 05 Nov 2026 20:26:35 GMT  
		Size: 1.3 MB (1281662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f1aa452b83178b2d8f72381560e7902eda8015f84f640bb8873d2358807ece3`  
		Last Modified: Thu, 05 Nov 2026 20:26:34 GMT  
		Size: 30.3 KB (30286 bytes)  
		MIME: application/vnd.in-toto+json
