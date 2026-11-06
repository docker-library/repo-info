## `tomee:11-jre17-alpine-plume`

```console
$ docker pull tomee@sha256:7c850fafd0f433047fe1b05eb5cf09d19bd6d95fc4dfa6523db5bd2b7c5f07cf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `tomee:11-jre17-alpine-plume` - linux; amd64

```console
$ docker pull tomee@sha256:9cae59517fb9f38d0d7e6fbb293ace4cf74571acf68e16e907464fbb2b9ecae8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.9 MB (153940884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036647b5fef5d0927a2fff73d333143d713105e438f64e1fdeac0adeb7df1fe0`
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
# Thu, 05 Nov 2026 20:25:55 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 20:25:55 GMT
RUN mkdir -p /usr/local/tomee ~/.gnupg # buildkit
# Thu, 05 Nov 2026 20:25:55 GMT
WORKDIR /usr/local/tomee
# Thu, 05 Nov 2026 20:25:56 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl  && rm -rf /var/cache/apk/* # buildkit
# Thu, 05 Nov 2026 20:26:05 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   871638A21A7F2C38066471420306A354336B4F0D   85FBBE98D6C37CDA8A7D8FF9F9FF83A48D339D37   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done # buildkit
# Thu, 05 Nov 2026 20:26:05 GMT
ENV TOMEE_VER=11.0.0-M1
# Thu, 05 Nov 2026 20:26:05 GMT
ENV TOMEE_BUILD=plume
# Thu, 05 Nov 2026 20:26:07 GMT
RUN set -eux; 	ddist() { 		local f="$1"; shift; 		local distFile="$1"; shift; 		local success=; 		local distUrl=; 		for distUrl in 			https://dlcdn.apache.org/ 			https://archive.apache.org/dist/ 		; do 			if curl -fSL "$distUrl$distFile" -o "$f" && [ -s "$f" ]; then 				success=1; 				break; 			fi; 		done; 		[ -n "$success" ]; 	};   ddist tomee.tar.gz.asc tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc   && ddist tomee.tar.gz.sha512 tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512   && ddist apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz* # buildkit
# Thu, 05 Nov 2026 20:26:07 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 20:26:07 GMT
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
	-	`sha256:45be3817bdc4444029c47b030bb2f1ddcfa7886bab784436f2f9e1330b37b058`  
		Last Modified: Thu, 05 Nov 2026 20:26:16 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d78b62b1746f8db2e4087deed951b3d738b65ce8f4c5bc7440dd49490dd66e90`  
		Last Modified: Thu, 05 Nov 2026 20:26:17 GMT  
		Size: 843.4 KB (843368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32eabab0e5b9c18f9d5fb8a2590ca9036b411d8a10d1b24cb9a257b26fcc2a4b`  
		Last Modified: Thu, 05 Nov 2026 20:26:17 GMT  
		Size: 75.7 KB (75657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e38d8a470d0ad4bf33d32010854e4ef8dfb370f9932d519e1940b1164391a1`  
		Last Modified: Thu, 05 Nov 2026 20:26:19 GMT  
		Size: 84.9 MB (84917626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomee:11-jre17-alpine-plume` - unknown; unknown

```console
$ docker pull tomee@sha256:74d318b5986dd981e1da5bfc7b24d5ef712f0a0e3a0ef4336d21c7f29201ed7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1327049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26601bfaacd9005aaed6281f59a3bf44b4ee0d35af1281c7f559d513087d593`

```dockerfile
```

-	Layers:
	-	`sha256:2cd1b5bc77402b8972fb271fc1708acc282d64f25fd1a9a8324e97ca3cd6b332`  
		Last Modified: Thu, 05 Nov 2026 20:26:17 GMT  
		Size: 1.3 MB (1300135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8096cabc5238dfe6e4d86214679001b5195198de8ab6482280306b253cf7c30`  
		Last Modified: Thu, 05 Nov 2026 20:26:16 GMT  
		Size: 26.9 KB (26914 bytes)  
		MIME: application/vnd.in-toto+json
