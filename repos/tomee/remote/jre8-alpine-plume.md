## `tomee:jre8-alpine-plume`

```console
$ docker pull tomee@sha256:5cb13a33f31c12c6b90d8ed50deefff5dabb058021f82da73918a40ccd4b1253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `tomee:jre8-alpine-plume` - linux; amd64

```console
$ docker pull tomee@sha256:e3fa83f64609e7d67b6772332916849c8ca68aedc53658970076f21760057c8a
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.6 MB (141589507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae350680ff507e04e42879c218efa70182cf282ce2898c0482997e7ce192c2b`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 17:40:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Jan 2023 17:40:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Jan 2023 17:40:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Jan 2023 17:40:11 GMT
RUN apk add --no-cache fontconfig libretls musl-locales musl-locales-lang ttf-dejavu tzdata zlib     && rm -rf /var/cache/apk/*
# Wed, 25 Jan 2023 19:19:44 GMT
ENV JAVA_VERSION=jdk8u362-b09
# Wed, 25 Jan 2023 19:20:36 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='f6da8a27ed9b4482bc23ef5c6074d345f2d3a32a64baa88567ef5c57c61075bc';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u362-b09/OpenJDK8U-jre_x64_alpine-linux_hotspot_8u362b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac; 	  wget -O /tmp/openjdk.tar.gz ${BINARY_URL}; 	  echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -; 	  mkdir -p "$JAVA_HOME"; 	  tar --extract 	      --file /tmp/openjdk.tar.gz 	      --directory "$JAVA_HOME" 	      --strip-components 1 	      --no-same-owner 	  ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;
# Wed, 25 Jan 2023 19:20:37 GMT
RUN echo Verifying install ...     && echo java -version && java -version     && echo Complete.
# Wed, 25 Jan 2023 20:51:00 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 25 Jan 2023 20:51:01 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 25 Jan 2023 20:51:01 GMT
WORKDIR /usr/local/tomee
# Wed, 25 Jan 2023 20:51:35 GMT
RUN apk add --no-cache gpg gpg-agent dirmngr curl  && rm -rf /var/cache/apk/*
# Wed, 25 Jan 2023 20:51:45 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Wed, 25 Jan 2023 20:51:45 GMT
ENV TOMEE_VER=8.0.14
# Wed, 25 Jan 2023 20:51:45 GMT
ENV TOMEE_BUILD=plume
# Wed, 25 Jan 2023 20:51:54 GMT
RUN set -x   && curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc -o tomee.tar.gz.asc   && curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512 -o tomee.tar.gz.sha512   && curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz -o apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz*
# Wed, 25 Jan 2023 20:51:54 GMT
EXPOSE 8080
# Wed, 25 Jan 2023 20:51:54 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846e3b32ee5a149e3ccb99051cdb52e96e11488293cdf72ee88168c88dd335c7`  
		Last Modified: Mon, 09 Jan 2023 17:44:40 GMT  
		Size: 12.0 MB (12020134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e4962f974bd8c0a3b34acee4771a3368ccd4a8e56a2d18757e4f37279e4f36`  
		Last Modified: Wed, 25 Jan 2023 19:27:17 GMT  
		Size: 41.8 MB (41771000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4590205f1d8a867cbfed9f8efd33f5683d9d960f172a093973bdbe8b8066d59c`  
		Last Modified: Wed, 25 Jan 2023 19:27:12 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7f841aaea52ada76f5392d7ffc1b739eb64deb331d238ba51f17259659ac74`  
		Last Modified: Wed, 25 Jan 2023 21:12:03 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371745032b1d447e1738b583cdead2e8f9a4cc413cdb7b2c26a96353634da75a`  
		Last Modified: Wed, 25 Jan 2023 21:13:11 GMT  
		Size: 6.5 MB (6472772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4c7cd23dd4367c13ebd3b91ad41ee6f07e3aecdb44b61fa8553819e1f79e38`  
		Last Modified: Wed, 25 Jan 2023 21:13:10 GMT  
		Size: 62.9 KB (62889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72be838c43d9af590c3dce06278a73000c35121505b904a6019a39ac7b430ebb`  
		Last Modified: Wed, 25 Jan 2023 21:13:15 GMT  
		Size: 77.9 MB (77891753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
