## `ibm-semeru-runtimes:open-26.0.2.0-jdk-jammy`

```console
$ docker pull ibm-semeru-runtimes@sha256:9a8f9b53aa9fd65e991558510b3906a6864e53ae6e50f08080c8e2996920dfdd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibm-semeru-runtimes:open-26.0.2.0-jdk-jammy` - linux; amd64

```console
$ docker pull ibm-semeru-runtimes@sha256:b588fcb3cca16106fb003baef590c40e2f4ab6fb3e616ccde87a6fd07c781a52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.9 MB (302912817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b549664c0767818a678915f3c1e123d4c5cbbdeece84596905bded21728db846`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:33:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:33:14 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:33:14 GMT
ENV JAVA_VERSION=26.0.2.0
# Tue, 04 Aug 2026 01:38:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='8b3ce9228de73e4ffda61a1cf77ae399acf14f28ef54b202126d02832b7efa87';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_aarch64_linux_26.0.2.0.tar.gz';          ;;        amd64|x86_64)          ESUM='17853b8335187854792540f863ed7d09b7a7b1c939543f37ed71ff27c3fcad34';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_x64_linux_26.0.2.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='ef7f8910db16ec710a668ce0d3d005bdce06cf5ec6374ec54c67bafd2c3405b8';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_ppc64le_linux_26.0.2.0.tar.gz';          ;;        s390x)          ESUM='b2588feb808e7ddb15b41a229ffa2584624ef39776f3dbc8726108eeafe61ab1';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_s390x_linux_26.0.2.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 01:38:02 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:38:02 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 01:39:05 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 01:39:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e403fe477ae591109f81766ada4064099a6f8180afa691d7dd61eda616ee0b40`  
		Last Modified: Tue, 04 Aug 2026 01:34:33 GMT  
		Size: 12.1 MB (12124366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00e91e9c938fb0239a2f32bba1f6cf5dcc0467af88e0e5250aa4e11cc1275b9`  
		Last Modified: Tue, 04 Aug 2026 01:39:30 GMT  
		Size: 254.3 MB (254327122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc27f73ccbaddf191f608b28ee61157638163f60cc3207cbdb5af6358c65746`  
		Last Modified: Tue, 04 Aug 2026 01:39:25 GMT  
		Size: 6.7 MB (6724812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-26.0.2.0-jdk-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:ae6734e06cdc9b970aed916c0dcfc9bddc32f602c9365728c59d307829cf423f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3829854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa352438258fefccf01e864660608b95c5cc3bfb7ed3bc640e498d0266f4332f`

```dockerfile
```

-	Layers:
	-	`sha256:7a85b3a7153b4ec37930bc331e57f7c9e7a5f9234983769604c052e363741ada`  
		Last Modified: Tue, 04 Aug 2026 01:39:25 GMT  
		Size: 3.8 MB (3804668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee531f971da137668a5026eb99141e34d6b6b1c8bbbcc2115cbd41b663cc4acd`  
		Last Modified: Tue, 04 Aug 2026 01:39:25 GMT  
		Size: 25.2 KB (25186 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-26.0.2.0-jdk-jammy` - linux; arm64 variant v8

```console
$ docker pull ibm-semeru-runtimes@sha256:2fff71649e38b840ad573c8a990948af5ccebac572d3c3b17475ebd8d73456e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296534145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75dddf49ffaf904af2ded8dffb4f00db79046652d80d461a4ab725c25f1afa32`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:34:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:34:31 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:34:31 GMT
ENV JAVA_VERSION=26.0.2.0
# Tue, 04 Aug 2026 01:38:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='8b3ce9228de73e4ffda61a1cf77ae399acf14f28ef54b202126d02832b7efa87';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_aarch64_linux_26.0.2.0.tar.gz';          ;;        amd64|x86_64)          ESUM='17853b8335187854792540f863ed7d09b7a7b1c939543f37ed71ff27c3fcad34';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_x64_linux_26.0.2.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='ef7f8910db16ec710a668ce0d3d005bdce06cf5ec6374ec54c67bafd2c3405b8';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_ppc64le_linux_26.0.2.0.tar.gz';          ;;        s390x)          ESUM='b2588feb808e7ddb15b41a229ffa2584624ef39776f3dbc8726108eeafe61ab1';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_s390x_linux_26.0.2.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 01:38:07 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:38:07 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 01:39:11 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 01:39:11 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f60aeea8d8c9a82c7188eefa4732c09670421d85640795fc773f1a1835693a`  
		Last Modified: Tue, 04 Aug 2026 01:35:51 GMT  
		Size: 12.1 MB (12094550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8b289c5b0180a6e4fbd409b9be8d3bdcab81f51dadbce7bf25cb604d942fc09`  
		Last Modified: Tue, 04 Aug 2026 01:39:36 GMT  
		Size: 250.3 MB (250265795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c951ffdcecdff7a6cd1646d09259952b877edc05072f917b82158a77990d4e0e`  
		Last Modified: Tue, 04 Aug 2026 01:39:31 GMT  
		Size: 6.6 MB (6553768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-26.0.2.0-jdk-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:e28f19f3e4c4cc5a352c83ad757146ca58bbf69f6f0515d9c2aa5dbb768d580e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3827713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58b7dd77c0016a351f422cc935920b11a818ce6a276bb31abe600f63895c17f`

```dockerfile
```

-	Layers:
	-	`sha256:f6de49588c950c270794ad51406ebc1ad8510c60b95d2b3a3986a986631e6353`  
		Last Modified: Tue, 04 Aug 2026 01:39:31 GMT  
		Size: 3.8 MB (3802417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d32d3f23b2a5f161d5fd843f15e4412a2f6aa27f5650fdfd733082c0cd78cf97`  
		Last Modified: Tue, 04 Aug 2026 01:39:31 GMT  
		Size: 25.3 KB (25296 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-26.0.2.0-jdk-jammy` - linux; ppc64le

```console
$ docker pull ibm-semeru-runtimes@sha256:e1267e2b68ed78e485bc3ea57bd0019df91d96ef315015492520901fbb4c65e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.9 MB (309895798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7784b45adf6780e7af599fdf9d8dc5075e18447ff8f06a07d9a9f25b2421e764`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 21:52:30 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:52:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:52:30 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:52:33 GMT
ADD file:f48db2a791f6b574e2518d202e6b75268dc7b57826c0aa7a238e41ef3f2dbaeb in / 
# Fri, 31 Jul 2026 21:52:34 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:40:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:40:15 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:40:15 GMT
ENV JAVA_VERSION=26.0.2.0
# Tue, 04 Aug 2026 12:57:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='8b3ce9228de73e4ffda61a1cf77ae399acf14f28ef54b202126d02832b7efa87';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_aarch64_linux_26.0.2.0.tar.gz';          ;;        amd64|x86_64)          ESUM='17853b8335187854792540f863ed7d09b7a7b1c939543f37ed71ff27c3fcad34';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_x64_linux_26.0.2.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='ef7f8910db16ec710a668ce0d3d005bdce06cf5ec6374ec54c67bafd2c3405b8';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_ppc64le_linux_26.0.2.0.tar.gz';          ;;        s390x)          ESUM='b2588feb808e7ddb15b41a229ffa2584624ef39776f3dbc8726108eeafe61ab1';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_s390x_linux_26.0.2.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 12:57:54 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 12:57:54 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 12:59:00 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 12:59:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7e2a26a81f9331143ad8079590dfa6e921056e20b7f8a283df22d129452982`  
		Last Modified: Tue, 04 Aug 2026 01:41:49 GMT  
		Size: 12.9 MB (12854032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c06ec696c750e64007efdb9c2fc9fb865c7c57810d21ed6c3ff78f934062ae`  
		Last Modified: Tue, 04 Aug 2026 12:59:46 GMT  
		Size: 256.9 MB (256879937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4523aa7ddb07ec4f8ca5709b64e2b30460e583d506ce502a06b01915810ff2b1`  
		Last Modified: Tue, 04 Aug 2026 12:59:41 GMT  
		Size: 5.5 MB (5524163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-26.0.2.0-jdk-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:7aa25e288d40e6c444185655d69e13cc9ebc5a09033c6eaa11312b1fa0f41803
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3822104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d36ad848a9ed8351c122936caf6d5b2e3610af5ae031814f9609da75c45aeac2`

```dockerfile
```

-	Layers:
	-	`sha256:0ad28a01c6a40a997b7324cab2ee0960de57fadeadf5fa50b2ba98f0ea645a42`  
		Last Modified: Tue, 04 Aug 2026 12:59:41 GMT  
		Size: 3.8 MB (3796883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac812f51b8ffdce704defca0a365eae88321d0785ab64de97d3264968323e4df`  
		Last Modified: Tue, 04 Aug 2026 12:59:41 GMT  
		Size: 25.2 KB (25221 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-26.0.2.0-jdk-jammy` - linux; s390x

```console
$ docker pull ibm-semeru-runtimes@sha256:ee5ff82a73981f8c8db7ae8a990b1222fdb9ee0d4bc4707d33df01d223283cc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.2 MB (298167042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30de872d447f4cca1701be05c3546ba4987fb51178a17569af924f106c4e40a`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 31 Jul 2026 21:55:19 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:55:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:55:19 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:55:21 GMT
ADD file:98836c73e1ff3d764fd3ad911919bc2fa26732cdc016cedf045ad454f04a7e20 in / 
# Fri, 31 Jul 2026 21:55:21 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:46:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:46:33 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:46:33 GMT
ENV JAVA_VERSION=26.0.2.0
# Tue, 04 Aug 2026 01:46:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='8b3ce9228de73e4ffda61a1cf77ae399acf14f28ef54b202126d02832b7efa87';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_aarch64_linux_26.0.2.0.tar.gz';          ;;        amd64|x86_64)          ESUM='17853b8335187854792540f863ed7d09b7a7b1c939543f37ed71ff27c3fcad34';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_x64_linux_26.0.2.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='ef7f8910db16ec710a668ce0d3d005bdce06cf5ec6374ec54c67bafd2c3405b8';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_ppc64le_linux_26.0.2.0.tar.gz';          ;;        s390x)          ESUM='b2588feb808e7ddb15b41a229ffa2584624ef39776f3dbc8726108eeafe61ab1';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jdk_s390x_linux_26.0.2.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 01:46:37 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:46:37 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 01:47:41 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 01:47:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0c891f1f0f7387672dc5f23b57a662b266f4decb4523b0b77d0abc0b1e165161`  
		Last Modified: Fri, 31 Jul 2026 22:54:24 GMT  
		Size: 28.2 MB (28210302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d005bc94f41e40cfee848d83cd4df05ff07bff04444e205efe9ab0580480a33`  
		Last Modified: Tue, 04 Aug 2026 01:48:13 GMT  
		Size: 12.2 MB (12177263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc6fc02f61f3dab43eb8a2f6de18d7ff8bda5f91eeeac9d8d0e174fc2234d2a2`  
		Last Modified: Tue, 04 Aug 2026 01:48:17 GMT  
		Size: 250.8 MB (250824011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa9f10aaf3cfd1821872aff1872d5638771b0c68ee870fa31dea75f88561e297`  
		Last Modified: Tue, 04 Aug 2026 01:48:12 GMT  
		Size: 7.0 MB (6955466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-26.0.2.0-jdk-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:f1ba8187e748f56c7d14ae633a7421b5a4afc5ead1fbb2e3ed86aec508a1fdd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3819034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896f0b6a1bb1559c942633adf55f84002f6671825dc1a998353878e6c7ede802`

```dockerfile
```

-	Layers:
	-	`sha256:9e5f6223c8011316cc1b920f668b4c2cebf8f58dcee3d98b8f24b68fd6f5e4ab`  
		Last Modified: Tue, 04 Aug 2026 01:48:12 GMT  
		Size: 3.8 MB (3793848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c0813864034cda3aaeadda5e98ddb7e542837551739e336e8018edffe6a3d2c`  
		Last Modified: Tue, 04 Aug 2026 01:48:12 GMT  
		Size: 25.2 KB (25186 bytes)  
		MIME: application/vnd.in-toto+json
