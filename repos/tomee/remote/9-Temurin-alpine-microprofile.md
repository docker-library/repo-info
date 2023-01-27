## `tomee:9-Temurin-alpine-microprofile`

```console
$ docker pull tomee@sha256:d63d94ab8ae200d9eae1908c2a27ed010986fed171e7137a8920ce0e8536b9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `tomee:9-Temurin-alpine-microprofile` - linux; amd64

```console
$ docker pull tomee@sha256:217f8c980105ecb061bcd8171f5af55901aaaaa69abca6dc23d0a864f721d48d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.6 MB (144630610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:182be9af1088e8648ba2ad9c9e1a81d82defe45b9b62949393bafd638a2e462b`
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
# Tue, 24 Jan 2023 18:45:19 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 18:46:49 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='f3f7ef4b01143ce99651a5d14b7a96cf9f8920822291a3c2ca547232675fbda7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_alpine-linux_hotspot_17.0.6_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac; 	  wget -O /tmp/openjdk.tar.gz ${BINARY_URL}; 	  echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -; 	  mkdir -p "$JAVA_HOME"; 	  tar --extract 	      --file /tmp/openjdk.tar.gz 	      --directory "$JAVA_HOME" 	      --strip-components 1 	      --no-same-owner 	  ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;
# Tue, 24 Jan 2023 18:46:50 GMT
RUN echo Verifying install ...     && fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java     && echo java --version && java --version     && echo Complete.
# Tue, 24 Jan 2023 23:42:21 GMT
ENV PATH=/usr/local/tomee/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 23:42:21 GMT
RUN mkdir -p /usr/local/tomee
# Tue, 24 Jan 2023 23:42:21 GMT
WORKDIR /usr/local/tomee
# Tue, 24 Jan 2023 23:42:46 GMT
RUN apk add --no-cache gpg gpg-agent gpg-agent dirmngr curl   && rm -rf /var/cache/apk/*
# Tue, 24 Jan 2023 23:42:55 GMT
RUN set -xe;   for key in   9056B710F1E332780DE7AF34CBAEBE39A46C4CA1   F067B8140F5DD80E1D3B5D92318242FE9A0B1183   223D3A74B068ECA354DC385CE126833F9CF64915   DBCCD103B8B24F86FFAAB025C8BB472CD297D428   7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF   B8B301E6105DF628076BD92C5483E55897ABD9B9   FAA603D58B1BA4EDF65896D0ED340E0E6D545F97   A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1   82D8419BA697F0E7FB85916EE91287822FDB81B1   B7574789F5018690043E6DD9C212662E12F3E1DD   C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1   678F2D98F1FD9643811639FB622B8F2D043F71D8   BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF   D11DF12CC2CA4894BDE638B967C1227A2678363C   C92604B0DEC5C62CFF5801E73D4683C24EDC64D1   626C542EDA7C113814B77AF09C04914D63645D20   3948829384B269D333CC5B98358807C52B4B0E23   B83D15E72253ED1104EB4FBBDAB472F0E5B8A431   ; do     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$key" ||     gpg --batch --keyserver hkp://pgp.mit.edu:80 --recv-keys "$key" ;   done
# Tue, 24 Jan 2023 23:47:37 GMT
ENV TOMEE_VER=9.0.0
# Tue, 24 Jan 2023 23:47:37 GMT
ENV TOMEE_BUILD=microprofile
# Tue, 24 Jan 2023 23:47:46 GMT
RUN set -x   && curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.asc -o tomee.tar.gz.asc   && curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz.sha512 -o tomee.tar.gz.sha512   && curl -fSL https://dist.apache.org/repos/dist/release/tomee/tomee-${TOMEE_VER}/apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz -o apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && gpg --batch --verify tomee.tar.gz.asc apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && sed "s/\t/  /" tomee.tar.gz.sha512 | sha512sum -c -   && tar -zxf apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && mv apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}/* /usr/local/tomee   && rm apache-tomee-${TOMEE_VER}-${TOMEE_BUILD}.tar.gz   && rm -Rf apache-tomee-${TOMEE_BUILD}-${TOMEE_VER}   && rm bin/*.bat   && rm bin/*.exe   && rm bin/*.tar.gz*   && rm tomee.tar.gz.asc   && rm tomee.tar.gz*
# Tue, 24 Jan 2023 23:47:46 GMT
EXPOSE 8080
# Tue, 24 Jan 2023 23:47:46 GMT
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
	-	`sha256:7f516ed68e97f9655d26ae3312c2aeede3dfda2dd3d19d2f9c9c118027543e87`  
		Last Modified: Tue, 24 Jan 2023 18:55:21 GMT  
		Size: 46.7 MB (46704464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e88daf71a034bed777eda8657762faad07639a9e27c7afb719b9a117946d1b8a`  
		Last Modified: Tue, 24 Jan 2023 18:55:15 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fcd07b06de5ddc7e00829b9b0674b538ee9411dbd367e444debc953b204871`  
		Last Modified: Wed, 25 Jan 2023 00:08:56 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ef35a930b2f35485900d4a921a5cf36fc4da197d959786744618803d3dc190`  
		Last Modified: Wed, 25 Jan 2023 00:10:16 GMT  
		Size: 6.5 MB (6472763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39482fd0acdde7678a1f6f4bbf22897a36d7704a2a3b7f6a35b68d0a44c4ab6f`  
		Last Modified: Wed, 25 Jan 2023 00:10:15 GMT  
		Size: 62.9 KB (62891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed3cc37367b2aa20920be8db6d3f08cdc439e554deb962665d0352ab708d55e1`  
		Last Modified: Wed, 25 Jan 2023 00:25:24 GMT  
		Size: 76.0 MB (75999397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
