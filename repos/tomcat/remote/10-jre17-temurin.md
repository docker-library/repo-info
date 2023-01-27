## `tomcat:10-jre17-temurin`

```console
$ docker pull tomcat@sha256:1e3934d25bfee95aec8afc5739267b23f9f4102914eed645fc11d4e435b5a2e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `tomcat:10-jre17-temurin` - linux; amd64

```console
$ docker pull tomcat@sha256:e0f404a1b6ab791025a6b337857b04c5edb24c36d3e5458a5bb4a88ebc3efff8
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.0 MB (107005616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af803be8c05b80a609469b546936093ecd62b1db9e2c800f46bf2206c30b05bf`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:30 GMT
ADD file:481dd2da6de71525248eba186feeeafcc73cc956ade0a196a4e8b0c2424e74b9 in / 
# Fri, 09 Dec 2022 01:20:31 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 01:42:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 09 Dec 2022 01:42:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Dec 2022 01:42:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 09 Dec 2022 01:45:53 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl wget ca-certificates fontconfig locales binutils     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2023 18:46:01 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 18:47:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='3797815cb853616b6415e1b8875cda4eaa004887561ea4ea2090d726b8d8582f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.6_10.tar.gz';          ;;        armhf|arm)          ESUM='bf7ef7ba477dc278f913e64174e76be9ae7f014c767352eae83b3f9581494fce';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.6_10.tar.gz';          ;;        ppc64el|powerpc:common64)          ESUM='f11b86bfd7fa4d7a0d05040ea235102296f03eaf064253f76d7ab94baa0352e3';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.6_10.tar.gz';          ;;        s390x|s390:64-bit)          ESUM='21a7156a29e7921bc7c6eadecb8ee4ac7161921cea85b75b61f0376f9c725caa';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.6_10.tar.gz';          ;;        amd64|i386:x86-64)          ESUM='fe669935609086e76cb0b829e92808766cbf8cb7bda57a76b47813b08584bfd2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.6_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac; 	  wget -O /tmp/openjdk.tar.gz ${BINARY_URL}; 	  echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -; 	  mkdir -p "$JAVA_HOME"; 	  tar --extract 	      --file /tmp/openjdk.tar.gz 	      --directory "$JAVA_HOME" 	      --strip-components 1 	      --no-same-owner 	  ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump;
# Tue, 24 Jan 2023 18:47:10 GMT
RUN echo Verifying install ...     && fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java     && echo java --version && java --version     && echo Complete.
# Tue, 24 Jan 2023 23:15:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 24 Jan 2023 23:15:52 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 23:15:53 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 24 Jan 2023 23:15:53 GMT
WORKDIR /usr/local/tomcat
# Tue, 24 Jan 2023 23:15:53 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 24 Jan 2023 23:15:53 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 24 Jan 2023 23:15:53 GMT
ENV GPG_KEYS=A9C5DF4D22E99998D9875A5110C01C5A2F6059E7
# Tue, 24 Jan 2023 23:17:26 GMT
ENV TOMCAT_MAJOR=10
# Tue, 24 Jan 2023 23:17:26 GMT
ENV TOMCAT_VERSION=10.1.5
# Tue, 24 Jan 2023 23:17:27 GMT
ENV TOMCAT_SHA512=7fa381d1344ca51d9425567575a30f6d8ca3279234aa00a59f85cb589f00f35274de873e2ade2030599074e65d39d2ad6b1bd445b01cde0eb59bb19799631c4b
# Tue, 24 Jan 2023 23:17:27 GMT
COPY dir:baa0c7c823b406df60ad16fcdaedef39aed6785785a8230e0af52355f8affd9a in /usr/local/tomcat 
# Tue, 24 Jan 2023 23:17:31 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2023 23:17:32 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 24 Jan 2023 23:17:32 GMT
EXPOSE 8080
# Tue, 24 Jan 2023 23:17:33 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:6e3729cf69e0ce2de9e779575a1fec8b7fb5efdfa822829290ab6d5d1bc3e797`  
		Last Modified: Thu, 08 Dec 2022 14:10:00 GMT  
		Size: 30.4 MB (30428708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8d923227d8dc300e1ddab1b65c83c0eff7f4a7105d958420872f7138b79735`  
		Last Modified: Fri, 09 Dec 2022 01:52:47 GMT  
		Size: 17.0 MB (16973851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaeb862900ba5360e78eaded5dde8d124907fd0176db409499f3a648fe29e15`  
		Last Modified: Tue, 24 Jan 2023 18:55:53 GMT  
		Size: 46.9 MB (46935502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dd3cf002b21cbddb0e873d3b27cfe3f3446d0b98bfee12e7f76f2bdb1d15d2`  
		Last Modified: Tue, 24 Jan 2023 18:55:46 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191ee7df3978d92db75c6de6146200c453c292464ba7fe3406d9812df9f30a3d`  
		Last Modified: Tue, 24 Jan 2023 23:29:39 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6712989eddf335e7450d06b5a2f8452edadda33f7dce8f0d099effc4b490dba7`  
		Last Modified: Tue, 24 Jan 2023 23:31:31 GMT  
		Size: 12.2 MB (12211330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fde0f704bf2a1f79111e79400cc8b9840bcf142d7b1a8493f3df240b88705bdd`  
		Last Modified: Tue, 24 Jan 2023 23:31:30 GMT  
		Size: 455.8 KB (455763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16bbf11cf47b585f8b6e995754d14602358994d4f0194119f8a46cefa89fb8a9`  
		Last Modified: Tue, 24 Jan 2023 23:31:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:10-jre17-temurin` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:bb03a0ac94ae7a8f014653f1547247260ba758f7a4887dc11e1dace7dcaf1ada
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.3 MB (101260644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a450620bd1ce65e979d5796ccab62539d97fb13778de54de61113eb5a264f5c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:30 GMT
ADD file:ca82b3c78a23b75345429f192c4b1f88b4e49e12808c85fccc2db04823c17d4e in / 
# Fri, 09 Dec 2022 01:36:30 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:08:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 09 Dec 2022 03:08:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Dec 2022 03:08:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 09 Dec 2022 03:11:45 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl wget ca-certificates fontconfig locales binutils     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2023 18:00:09 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 18:00:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='3797815cb853616b6415e1b8875cda4eaa004887561ea4ea2090d726b8d8582f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.6_10.tar.gz';          ;;        armhf|arm)          ESUM='bf7ef7ba477dc278f913e64174e76be9ae7f014c767352eae83b3f9581494fce';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.6_10.tar.gz';          ;;        ppc64el|powerpc:common64)          ESUM='f11b86bfd7fa4d7a0d05040ea235102296f03eaf064253f76d7ab94baa0352e3';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.6_10.tar.gz';          ;;        s390x|s390:64-bit)          ESUM='21a7156a29e7921bc7c6eadecb8ee4ac7161921cea85b75b61f0376f9c725caa';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.6_10.tar.gz';          ;;        amd64|i386:x86-64)          ESUM='fe669935609086e76cb0b829e92808766cbf8cb7bda57a76b47813b08584bfd2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.6_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac; 	  wget -O /tmp/openjdk.tar.gz ${BINARY_URL}; 	  echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -; 	  mkdir -p "$JAVA_HOME"; 	  tar --extract 	      --file /tmp/openjdk.tar.gz 	      --directory "$JAVA_HOME" 	      --strip-components 1 	      --no-same-owner 	  ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump;
# Tue, 24 Jan 2023 18:00:47 GMT
RUN echo Verifying install ...     && fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java     && echo java --version && java --version     && echo Complete.
# Tue, 24 Jan 2023 22:52:45 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 24 Jan 2023 22:52:45 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 22:52:46 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 24 Jan 2023 22:52:46 GMT
WORKDIR /usr/local/tomcat
# Tue, 24 Jan 2023 22:52:46 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 24 Jan 2023 22:52:46 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 24 Jan 2023 22:52:46 GMT
ENV GPG_KEYS=A9C5DF4D22E99998D9875A5110C01C5A2F6059E7
# Tue, 24 Jan 2023 22:54:36 GMT
ENV TOMCAT_MAJOR=10
# Tue, 24 Jan 2023 22:54:36 GMT
ENV TOMCAT_VERSION=10.1.5
# Tue, 24 Jan 2023 22:54:36 GMT
ENV TOMCAT_SHA512=7fa381d1344ca51d9425567575a30f6d8ca3279234aa00a59f85cb589f00f35274de873e2ade2030599074e65d39d2ad6b1bd445b01cde0eb59bb19799631c4b
# Tue, 24 Jan 2023 22:54:37 GMT
COPY dir:29b6ef72835b07232490b56a88e7ab22216025f7fe2595b53bce37b3a455490f in /usr/local/tomcat 
# Tue, 24 Jan 2023 22:54:41 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2023 22:54:42 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 24 Jan 2023 22:54:43 GMT
EXPOSE 8080
# Tue, 24 Jan 2023 22:54:43 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c38006c9acc492149d706593acba951110798e57a7ad05103ae7a2d5969c14b6`  
		Last Modified: Thu, 08 Dec 2022 18:49:27 GMT  
		Size: 27.0 MB (27023448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6fead26d897f0226328eb57da4817740f240c9183f841f0c698ed5801d6005`  
		Last Modified: Fri, 09 Dec 2022 03:20:49 GMT  
		Size: 17.1 MB (17093483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f601285184da01665ef3b429f8c7fd64cc989777457ec319977139e51c0e22`  
		Last Modified: Tue, 24 Jan 2023 18:07:25 GMT  
		Size: 44.5 MB (44528685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:971db51eb1e107a1b8e38b95f8f6a1a3b33cc0977031b57a328ee0bdd682d38e`  
		Last Modified: Tue, 24 Jan 2023 18:07:16 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b65e5bf3b9004e9e2d9903b44ed69ac6410b837dc00c649063ff86460c06039`  
		Last Modified: Tue, 24 Jan 2023 23:14:41 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9fe3ad5a65c42a685ca36f6c858d9504a5c18f14dc53dfb48f5b13b2f6760fd`  
		Last Modified: Tue, 24 Jan 2023 23:17:24 GMT  
		Size: 12.2 MB (12184839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96159533ca3d209ae75e70c81fcddf0de559b8cd11769db06807a54d54932ac`  
		Last Modified: Tue, 24 Jan 2023 23:17:23 GMT  
		Size: 429.8 KB (429761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285e07c000e1c69043ac89b0376d603736b1129c0038df77240fe913a8dc8c6b`  
		Last Modified: Tue, 24 Jan 2023 23:17:23 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:10-jre17-temurin` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:8a4cc414009612ed92f18587f1e066414ac28ba6ca89ce504312b7589b381f92
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105874780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8332882dea9fd6cdae623c8f76cd82c9185daaa656140de8cb4359d7ca185d53`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:57 GMT
ADD file:429a55a11d4bcd15647d1316d9debd9ead4b4ab5c0b9146894d07c39aa814290 in / 
# Fri, 09 Dec 2022 01:46:57 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 03:39:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 09 Dec 2022 03:39:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Dec 2022 03:39:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 09 Dec 2022 03:42:00 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl wget ca-certificates fontconfig locales binutils     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2023 17:43:08 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 17:44:01 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='3797815cb853616b6415e1b8875cda4eaa004887561ea4ea2090d726b8d8582f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.6_10.tar.gz';          ;;        armhf|arm)          ESUM='bf7ef7ba477dc278f913e64174e76be9ae7f014c767352eae83b3f9581494fce';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.6_10.tar.gz';          ;;        ppc64el|powerpc:common64)          ESUM='f11b86bfd7fa4d7a0d05040ea235102296f03eaf064253f76d7ab94baa0352e3';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.6_10.tar.gz';          ;;        s390x|s390:64-bit)          ESUM='21a7156a29e7921bc7c6eadecb8ee4ac7161921cea85b75b61f0376f9c725caa';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.6_10.tar.gz';          ;;        amd64|i386:x86-64)          ESUM='fe669935609086e76cb0b829e92808766cbf8cb7bda57a76b47813b08584bfd2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.6_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac; 	  wget -O /tmp/openjdk.tar.gz ${BINARY_URL}; 	  echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -; 	  mkdir -p "$JAVA_HOME"; 	  tar --extract 	      --file /tmp/openjdk.tar.gz 	      --directory "$JAVA_HOME" 	      --strip-components 1 	      --no-same-owner 	  ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump;
# Tue, 24 Jan 2023 17:44:02 GMT
RUN echo Verifying install ...     && fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java     && echo java --version && java --version     && echo Complete.
# Tue, 24 Jan 2023 22:32:40 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 24 Jan 2023 22:32:40 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 22:32:40 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 24 Jan 2023 22:32:41 GMT
WORKDIR /usr/local/tomcat
# Tue, 24 Jan 2023 22:32:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 24 Jan 2023 22:32:41 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 24 Jan 2023 22:32:41 GMT
ENV GPG_KEYS=A9C5DF4D22E99998D9875A5110C01C5A2F6059E7
# Tue, 24 Jan 2023 22:34:02 GMT
ENV TOMCAT_MAJOR=10
# Tue, 24 Jan 2023 22:34:02 GMT
ENV TOMCAT_VERSION=10.1.5
# Tue, 24 Jan 2023 22:34:02 GMT
ENV TOMCAT_SHA512=7fa381d1344ca51d9425567575a30f6d8ca3279234aa00a59f85cb589f00f35274de873e2ade2030599074e65d39d2ad6b1bd445b01cde0eb59bb19799631c4b
# Tue, 24 Jan 2023 22:34:02 GMT
COPY dir:296e2394aa544577617c1a1528fffbfff8dc7ebe85ad6f3762e9cac1292cda2e in /usr/local/tomcat 
# Tue, 24 Jan 2023 22:34:05 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2023 22:34:07 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 24 Jan 2023 22:34:07 GMT
EXPOSE 8080
# Tue, 24 Jan 2023 22:34:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:10175de2f0c4f7d306f660ee073bce12b824c8012dd19b3c140aae053fabd1cc`  
		Last Modified: Thu, 08 Dec 2022 18:50:01 GMT  
		Size: 28.4 MB (28384475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f2e5e37e706412c1481b71d2240df4fe659ef83ae4d2932a8ddfe42b0d3d20`  
		Last Modified: Fri, 09 Dec 2022 03:48:04 GMT  
		Size: 18.4 MB (18400373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be6470fbc36f7bfa7142c1e41ffd6ca4fa67772dc7cdba43d65ad6b5096dfde`  
		Last Modified: Tue, 24 Jan 2023 17:50:38 GMT  
		Size: 46.4 MB (46421352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb60f00590dc031bc79aa739297e34f2f2255680c86e5486e911eaf626868e60`  
		Last Modified: Tue, 24 Jan 2023 17:50:31 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:198b3a15b348c57cff7dd7ae4197eaea667a0d05abf0cbad0a7b728b6c1dd714`  
		Last Modified: Tue, 24 Jan 2023 22:45:14 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c2e0c687c02d37244aaae5800c732d7453ac15fa4c8830210717af8e579f57`  
		Last Modified: Tue, 24 Jan 2023 22:47:07 GMT  
		Size: 12.2 MB (12212140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d7b09f8fefd6f0ab35e7fbe36dd2f6c52ba4a7c075c517ec2b800529e9ede35`  
		Last Modified: Tue, 24 Jan 2023 22:47:06 GMT  
		Size: 456.0 KB (455980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243e71ff70c0bac0e13cbed1171447dce5dc8cd3c52b0a445d15068c1b0ef573`  
		Last Modified: Tue, 24 Jan 2023 22:47:06 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:10-jre17-temurin` - linux; ppc64le

```console
$ docker pull tomcat@sha256:0faa56a401365924a1f163eb8b18c5c367e4bed2bf246755d3a083fbf86e4d06
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.5 MB (113460318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d211957b17ec010d0cee33415b42c65ab8e87266ff1b0b39f3860e3f7dc754c5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:53 GMT
ADD file:1a2557b357a1dca8521ee846ec16c9b2bd8a53839b9d4fda21a28f9ceeecb4b7 in / 
# Fri, 09 Dec 2022 01:27:55 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:39:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 09 Dec 2022 02:39:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Dec 2022 02:39:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 09 Dec 2022 02:45:21 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl wget ca-certificates fontconfig locales binutils     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2023 18:21:19 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 18:23:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='3797815cb853616b6415e1b8875cda4eaa004887561ea4ea2090d726b8d8582f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.6_10.tar.gz';          ;;        armhf|arm)          ESUM='bf7ef7ba477dc278f913e64174e76be9ae7f014c767352eae83b3f9581494fce';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.6_10.tar.gz';          ;;        ppc64el|powerpc:common64)          ESUM='f11b86bfd7fa4d7a0d05040ea235102296f03eaf064253f76d7ab94baa0352e3';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.6_10.tar.gz';          ;;        s390x|s390:64-bit)          ESUM='21a7156a29e7921bc7c6eadecb8ee4ac7161921cea85b75b61f0376f9c725caa';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.6_10.tar.gz';          ;;        amd64|i386:x86-64)          ESUM='fe669935609086e76cb0b829e92808766cbf8cb7bda57a76b47813b08584bfd2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.6_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac; 	  wget -O /tmp/openjdk.tar.gz ${BINARY_URL}; 	  echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -; 	  mkdir -p "$JAVA_HOME"; 	  tar --extract 	      --file /tmp/openjdk.tar.gz 	      --directory "$JAVA_HOME" 	      --strip-components 1 	      --no-same-owner 	  ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump;
# Tue, 24 Jan 2023 18:23:17 GMT
RUN echo Verifying install ...     && fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java     && echo java --version && java --version     && echo Complete.
# Tue, 24 Jan 2023 22:14:16 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 24 Jan 2023 22:14:17 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 22:14:18 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 24 Jan 2023 22:14:18 GMT
WORKDIR /usr/local/tomcat
# Tue, 24 Jan 2023 22:14:19 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 24 Jan 2023 22:14:19 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 24 Jan 2023 22:14:19 GMT
ENV GPG_KEYS=A9C5DF4D22E99998D9875A5110C01C5A2F6059E7
# Tue, 24 Jan 2023 22:17:32 GMT
ENV TOMCAT_MAJOR=10
# Tue, 24 Jan 2023 22:17:33 GMT
ENV TOMCAT_VERSION=10.1.5
# Tue, 24 Jan 2023 22:17:33 GMT
ENV TOMCAT_SHA512=7fa381d1344ca51d9425567575a30f6d8ca3279234aa00a59f85cb589f00f35274de873e2ade2030599074e65d39d2ad6b1bd445b01cde0eb59bb19799631c4b
# Tue, 24 Jan 2023 22:17:34 GMT
COPY dir:4222b92bba0dc86e178e386ab203704a184eebe371ca93269325858ab42dc092 in /usr/local/tomcat 
# Tue, 24 Jan 2023 22:17:43 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2023 22:17:45 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 24 Jan 2023 22:17:45 GMT
EXPOSE 8080
# Tue, 24 Jan 2023 22:17:46 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ce75b47e476cd75b30dca46558ac79b39923aa94d7e4b0cc025e521404cdbab0`  
		Last Modified: Fri, 09 Dec 2022 01:30:32 GMT  
		Size: 35.7 MB (35708154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b742749281388888fe53f807ad7ae6b5c091713777c43c8f4f21cc50f873d5`  
		Last Modified: Fri, 09 Dec 2022 02:57:27 GMT  
		Size: 18.3 MB (18256829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36dc543ca372917015e784e2c9a86b0c7095980dafd26254cc04a4765d42b13`  
		Last Modified: Tue, 24 Jan 2023 18:35:01 GMT  
		Size: 46.8 MB (46780920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d9f96157b3570103c9583bf765f83e573fff66e5e35b0f6137497279af5191`  
		Last Modified: Tue, 24 Jan 2023 18:34:50 GMT  
		Size: 160.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5ec5d8fef3578bb3936ecbdd54da793c56376339c2cf3aeb239c9795ee5835`  
		Last Modified: Tue, 24 Jan 2023 22:41:48 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827a37543712b63ec930e7fd161ae0a21a9b59715a0b722c230dd868873dff37`  
		Last Modified: Tue, 24 Jan 2023 22:44:30 GMT  
		Size: 12.2 MB (12227232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf94d4089c333e8d08b87ccdacd86f01aadd56c568a2e1aa9b6589a2bd5d05c`  
		Last Modified: Tue, 24 Jan 2023 22:44:29 GMT  
		Size: 486.7 KB (486722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66430457d208f825cfeb52c4bf01e7547d2614cfae21b501696a697a723a5382`  
		Last Modified: Tue, 24 Jan 2023 22:44:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomcat:10-jre17-temurin` - linux; s390x

```console
$ docker pull tomcat@sha256:d8a155af3efb9b4aad2cdd16e432199a60f9778c4d0eafb3d79219160ad5c60b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101806033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07067b064f55979976adac3f0ad0e82a3788bb6522da08fa0639b8aea462b6f1`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 09 Dec 2022 01:52:57 GMT
ADD file:aa22431536efed6cf05ad353979a4d4d5557c975e4333985e7b89b125f013ade in / 
# Fri, 09 Dec 2022 01:53:00 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:13:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 09 Dec 2022 02:13:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Dec 2022 02:13:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 09 Dec 2022 02:17:14 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl wget ca-certificates fontconfig locales binutils     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2023 17:43:43 GMT
ENV JAVA_VERSION=jdk-17.0.6+10
# Tue, 24 Jan 2023 17:44:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='3797815cb853616b6415e1b8875cda4eaa004887561ea4ea2090d726b8d8582f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.6_10.tar.gz';          ;;        armhf|arm)          ESUM='bf7ef7ba477dc278f913e64174e76be9ae7f014c767352eae83b3f9581494fce';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_arm_linux_hotspot_17.0.6_10.tar.gz';          ;;        ppc64el|powerpc:common64)          ESUM='f11b86bfd7fa4d7a0d05040ea235102296f03eaf064253f76d7ab94baa0352e3';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.6_10.tar.gz';          ;;        s390x|s390:64-bit)          ESUM='21a7156a29e7921bc7c6eadecb8ee4ac7161921cea85b75b61f0376f9c725caa';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_s390x_linux_hotspot_17.0.6_10.tar.gz';          ;;        amd64|i386:x86-64)          ESUM='fe669935609086e76cb0b829e92808766cbf8cb7bda57a76b47813b08584bfd2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.6_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac; 	  wget -O /tmp/openjdk.tar.gz ${BINARY_URL}; 	  echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -; 	  mkdir -p "$JAVA_HOME"; 	  tar --extract 	      --file /tmp/openjdk.tar.gz 	      --directory "$JAVA_HOME" 	      --strip-components 1 	      --no-same-owner 	  ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump;
# Tue, 24 Jan 2023 17:44:38 GMT
RUN echo Verifying install ...     && fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java     && echo java --version && java --version     && echo Complete.
# Tue, 24 Jan 2023 20:16:43 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 24 Jan 2023 20:16:43 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Jan 2023 20:16:43 GMT
RUN mkdir -p "$CATALINA_HOME"
# Tue, 24 Jan 2023 20:16:44 GMT
WORKDIR /usr/local/tomcat
# Tue, 24 Jan 2023 20:16:44 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 24 Jan 2023 20:16:44 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 24 Jan 2023 20:16:44 GMT
ENV GPG_KEYS=A9C5DF4D22E99998D9875A5110C01C5A2F6059E7
# Tue, 24 Jan 2023 20:18:07 GMT
ENV TOMCAT_MAJOR=10
# Tue, 24 Jan 2023 20:18:07 GMT
ENV TOMCAT_VERSION=10.1.5
# Tue, 24 Jan 2023 20:18:07 GMT
ENV TOMCAT_SHA512=7fa381d1344ca51d9425567575a30f6d8ca3279234aa00a59f85cb589f00f35274de873e2ade2030599074e65d39d2ad6b1bd445b01cde0eb59bb19799631c4b
# Tue, 24 Jan 2023 20:18:08 GMT
COPY dir:9cd3cca2886d537c4cb5622fd1d38c6072f8939ee12c5fe62a6559d68a4e3dbb in /usr/local/tomcat 
# Tue, 24 Jan 2023 20:18:11 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/*
# Tue, 24 Jan 2023 20:18:12 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi
# Tue, 24 Jan 2023 20:18:12 GMT
EXPOSE 8080
# Tue, 24 Jan 2023 20:18:12 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:5125256a405e8f68b6edcff30c8e2e9761127daf8628a48134c73f8f45ce631f`  
		Last Modified: Fri, 09 Dec 2022 01:55:10 GMT  
		Size: 28.6 MB (28642146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2cb03cfd1cfc4a8cf03e540f9f3ee0b37424fdbfff1bddb037316f1b65d26a`  
		Last Modified: Fri, 09 Dec 2022 02:25:25 GMT  
		Size: 16.8 MB (16752899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dcfead89be5115a37ed70d71d22fa2d2690870f818b7c844bce88e73e5a467`  
		Last Modified: Tue, 24 Jan 2023 17:50:25 GMT  
		Size: 43.7 MB (43738811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd17cb1962fd3fe511fa6b662d7d1531c94a2066190e991425d0c15f994e276`  
		Last Modified: Tue, 24 Jan 2023 17:50:19 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c8fb1befb895a4d8d4cc5c7a92e9336288f338753e6dab2d3fb96d0a8ff7dd6`  
		Last Modified: Tue, 24 Jan 2023 20:30:42 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871be30b996656ada1224ac9e7c949bf4e519c8d81d8a752b33fa15636b39aae`  
		Last Modified: Tue, 24 Jan 2023 20:32:19 GMT  
		Size: 12.2 MB (12214506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dae34811eac13e4a655bd8341a39b4b89c4ca7a17704237570badfca6fd0b3d`  
		Last Modified: Tue, 24 Jan 2023 20:32:18 GMT  
		Size: 457.2 KB (457210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebb7d19da81a888ce8c09822a90abb5348e14b01c945c9559db55316852482e`  
		Last Modified: Tue, 24 Jan 2023 20:32:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
