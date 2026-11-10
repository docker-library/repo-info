## `ibm-semeru-runtimes:open-11-jre-jammy`

```console
$ docker pull ibm-semeru-runtimes@sha256:648c857609daf2eccac69bd2215efda1aca9d7858a7b17151fd9584c2e9868be
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

### `ibm-semeru-runtimes:open-11-jre-jammy` - linux; amd64

```console
$ docker pull ibm-semeru-runtimes@sha256:11a7198353ddb0423e62655778c5acb1adc00561df2df6fe19006c22815c4d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102880804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d979b3eafa5eee8b909e7693b5c5065fdd74e7c39b312d21ebe0c73b47b58b3`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 23:37:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:37:25 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:37:25 GMT
ENV JAVA_VERSION=11.0.33.0
# Mon, 09 Nov 2026 23:37:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bfa025a565fb64a4d73545aa2828111686d6c483dfa449b97aafef85f78be8cd';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_aarch64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a1c19a487b34d1ed81505d3018b647f7bc98d508a32ae7fcce0bb7907aa878d2';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_ppc64le_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='271b1e06189027d09c4cc80c964ac5e8d4bf77bfb34700e392a35ac15de7d5fb';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_x64_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='ea5279e211e620752918080fe4387f9ad90d35dc70004ef47523e2bb26c7a907';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:37:29 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:37:29 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:38:32 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16b002c0b32d9d7b90725a228a190c90c5ad57b80f794c999eb87b2722796411`  
		Last Modified: Mon, 09 Nov 2026 23:38:45 GMT  
		Size: 12.1 MB (12140707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34445d1fe84fa7eba06f8c14b2cd6c79adfe8927bf01c58694e4b73138eb0f1`  
		Last Modified: Mon, 09 Nov 2026 23:38:46 GMT  
		Size: 56.5 MB (56455175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f454d49f405e72f75b6332e505c84372f0427f1522b4fbfb2c9d19f2ae616e3`  
		Last Modified: Mon, 09 Nov 2026 23:38:45 GMT  
		Size: 4.5 MB (4532434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-11-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:fec7e8401b556bffe6176647145a733e39442181be3d8bf9f0a8575430238f54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3753131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e74b1a9bdcfdd42f8973d0af8b774ec39e53773ac4cf419314eed27fdd9c55`

```dockerfile
```

-	Layers:
	-	`sha256:c9601c5af8af5d9c555caa11abec826a8f25b304c95f0f0dc9029e0fb985d618`  
		Last Modified: Mon, 09 Nov 2026 23:38:45 GMT  
		Size: 3.7 MB (3727938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c956259e4f10bb972d747a9be494ecf32eefd9162efdc5d67f976f05c6bfd05d`  
		Last Modified: Mon, 09 Nov 2026 23:38:45 GMT  
		Size: 25.2 KB (25193 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-11-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull ibm-semeru-runtimes@sha256:03f690ad5d7962c56a3cf9247ad3811a64c430f2911ba93be481e1b821eef057
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98845074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab5b854b753ab0a49ec792e54bb62e57e7f1ad85f4567f93cd8324fea020ade0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 23:37:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:37:09 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:37:09 GMT
ENV JAVA_VERSION=11.0.33.0
# Mon, 09 Nov 2026 23:37:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bfa025a565fb64a4d73545aa2828111686d6c483dfa449b97aafef85f78be8cd';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_aarch64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a1c19a487b34d1ed81505d3018b647f7bc98d508a32ae7fcce0bb7907aa878d2';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_ppc64le_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='271b1e06189027d09c4cc80c964ac5e8d4bf77bfb34700e392a35ac15de7d5fb';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_x64_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='ea5279e211e620752918080fe4387f9ad90d35dc70004ef47523e2bb26c7a907';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:37:13 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:37:13 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:38:16 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6bd1b5d84924a4e522c959599b2c755df85d0fb864f6feb407cada801322d4`  
		Last Modified: Mon, 09 Nov 2026 23:38:29 GMT  
		Size: 12.1 MB (12105882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e61bd5ed9d08ebce5cf8ae0df6458631bf3e5671bbd6b45a185e0275f4867d`  
		Last Modified: Mon, 09 Nov 2026 23:38:30 GMT  
		Size: 54.7 MB (54690057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02da8c804ffa6d085c670ab16bb6ee159f0081d2ef88d003110c8efd55cf9b05`  
		Last Modified: Mon, 09 Nov 2026 23:38:29 GMT  
		Size: 4.4 MB (4364528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-11-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:3f9577d5bcaf8333bb985e374fc345e20d8b61065e0bbfeb0460d539adcc38dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3750990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9786b0bd1b0d91671431eea644be5ab9a630fb06bcf740456b70710b97e0ff9`

```dockerfile
```

-	Layers:
	-	`sha256:1e2a98e051da2ba94d84a365a89468b12a2239a12352ebd11dcc1d537f26a3f9`  
		Last Modified: Mon, 09 Nov 2026 23:38:29 GMT  
		Size: 3.7 MB (3725687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ebd297eec75904cf50ce41d03678594aa05f8d959034906e5e2c130dfbf0f29`  
		Last Modified: Mon, 09 Nov 2026 23:38:28 GMT  
		Size: 25.3 KB (25303 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-11-jre-jammy` - linux; ppc64le

```console
$ docker pull ibm-semeru-runtimes@sha256:d808232bc9a2ec167581e2f5f9e5df3146589d883f8dd8d4436bb9fbaf97d1c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.6 MB (109585715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68f395895ece9a88957b0404d1ebe65b702980d4ada274cc911abc81286ea8f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:11:53 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:11:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:11:53 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:11:58 GMT
ADD file:7feec6d52a7b8ecb88e64539851a17e874a49369018261edc3896e7f84f3b268 in / 
# Sun, 25 Oct 2026 20:11:58 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:23:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 04 Nov 2026 22:23:15 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 22:23:15 GMT
ENV JAVA_VERSION=11.0.33.0
# Mon, 09 Nov 2026 23:47:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bfa025a565fb64a4d73545aa2828111686d6c483dfa449b97aafef85f78be8cd';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_aarch64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a1c19a487b34d1ed81505d3018b647f7bc98d508a32ae7fcce0bb7907aa878d2';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_ppc64le_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='271b1e06189027d09c4cc80c964ac5e8d4bf77bfb34700e392a35ac15de7d5fb';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_x64_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='ea5279e211e620752918080fe4387f9ad90d35dc70004ef47523e2bb26c7a907';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:47:36 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:47:36 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:48:42 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:8f018a5a2acab966ca4e7a98422ebd9c5113430dc173e16eddd8ea016705c52b`  
		Last Modified: Sun, 25 Oct 2026 20:45:41 GMT  
		Size: 34.7 MB (34703933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a263553cedddb1c34bdbd8543a10035ab131244cde898dc3f01d3c5437d7c54`  
		Last Modified: Wed, 04 Nov 2026 22:27:31 GMT  
		Size: 12.9 MB (12864976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba359e5e7de45a1e07403ce7e2f65626ce35e3b054614ecf01f5b88062dae5dc`  
		Last Modified: Mon, 09 Nov 2026 23:49:16 GMT  
		Size: 58.4 MB (58414949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14aaa5bd7979fc3928d1b24d034eadadec668603c8319a77a1679315700c35eb`  
		Last Modified: Mon, 09 Nov 2026 23:49:14 GMT  
		Size: 3.6 MB (3601857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-11-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:de6e71efa4c8de3d76e3048b7ff45460fd6c81891df85f25d28affc283cd64cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3757792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e138994b2dc5e56bb0f5d3123857a5f90d2256fe539d9bbee76bd5ea81ff9d0a`

```dockerfile
```

-	Layers:
	-	`sha256:81679cc14c0153a799b67c80cb0c1870880937021b598643ea8d305cbf34649c`  
		Last Modified: Mon, 09 Nov 2026 23:49:15 GMT  
		Size: 3.7 MB (3732565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:907f6f4494997e0190743a857a9abca246698e9f48bdb661e993e8779665f5b5`  
		Last Modified: Mon, 09 Nov 2026 23:49:14 GMT  
		Size: 25.2 KB (25227 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-11-jre-jammy` - linux; s390x

```console
$ docker pull ibm-semeru-runtimes@sha256:6f68e825cd7c4b477c98a1b500b66a198a35c4152848acf48bc74df20131fb88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.5 MB (103545089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e292da36df373408e1c0c6355cd483fcaa918ce0fe42e829e946aceef26f5e2b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:46:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:46:02 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:46:02 GMT
ENV JAVA_VERSION=11.0.32.15
# Mon, 26 Oct 2026 23:48:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0e90f35f418c30e5caf320e7b9eed851001f49f286bbad7ee029f807a8d69808';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.15/ibm-semeru-open-jre_aarch64_linux_11.0.32.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='44190dfe1d44dcd3610656499ddcf73c37d1e26121deffbc90bc9d2150a5cf35';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.15/ibm-semeru-open-jre_ppc64le_linux_11.0.32.15.tar.gz';          ;;        amd64|x86_64)          ESUM='7dffc293c05e6d85388474695ab89ad2dfe64e06631a727a9a49fb0a55f469e3';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.15/ibm-semeru-open-jre_x64_linux_11.0.32.15.tar.gz';          ;;        s390x)          ESUM='1f1eafd40015cf9508979f5ef905ea05a960ac2ec2b48a2a45f2a871e6e23a5a';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.15/ibm-semeru-open-jre_s390x_linux_11.0.32.15.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:48:49 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:48:49 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:49:54 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8956641311e2ae30ab2cb955a24b0789015cb149a65d07d2fd8ea3dfb42a36e0`  
		Last Modified: Mon, 26 Oct 2026 23:47:42 GMT  
		Size: 12.2 MB (12188376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4441fa8f7a18051c2fd27108d3e3e3f3a2eec7cb779fc8f411cbdb534ad4ee85`  
		Last Modified: Mon, 26 Oct 2026 23:50:14 GMT  
		Size: 58.5 MB (58511307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c154aa9cb334f75b5f620e3b22b4f1beef8ab65bf0d3254a367ea2357c27af6`  
		Last Modified: Mon, 26 Oct 2026 23:50:13 GMT  
		Size: 4.6 MB (4622600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-11-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:baa246db0d1e81566f659e7e1db98387bde3e6d1c11a7ec8b5f5de815ae27203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3754755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1ca7c408b44717c2c25d1d0f95c281f47505400bcb124ddb9e6cc6fdb7e2a4`

```dockerfile
```

-	Layers:
	-	`sha256:6b32c2256023390eb9d290cde9fa2863a739917b61c3fdacfed352e2b2f6a309`  
		Last Modified: Mon, 26 Oct 2026 23:50:13 GMT  
		Size: 3.7 MB (3729538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c34972c9de2bf49fec7ecae32c75a90d4c05d6183688849ce2a2c251de65bd1`  
		Last Modified: Mon, 26 Oct 2026 23:50:13 GMT  
		Size: 25.2 KB (25217 bytes)  
		MIME: application/vnd.in-toto+json
