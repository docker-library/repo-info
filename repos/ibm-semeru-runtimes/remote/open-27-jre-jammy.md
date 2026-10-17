## `ibm-semeru-runtimes:open-27-jre-jammy`

```console
$ docker pull ibm-semeru-runtimes@sha256:b228bf75e7b05e61f7ac9f854e606ac6fb9abd63e75415bd5eb48ccc2e527c3d
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

### `ibm-semeru-runtimes:open-27-jre-jammy` - linux; amd64

```console
$ docker pull ibm-semeru-runtimes@sha256:019b11d2d9c62d6e65c67495f79f4f335b1c19db6ec613ccb7c4dab4e7c4827c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.9 MB (108907585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:122bc2ffe0636ae968bcf06ed3b26f3b3959e382e603d0ab2bc8b89b4ab85edb`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:24:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:24:00 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:24:00 GMT
ENV JAVA_VERSION=27.0.0.0
# Sat, 17 Oct 2026 00:29:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='988cb758c25c0739daf53fd5665f684c1ff0fbf138d1e0f0827208b07aa0ab64';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_aarch64_linux_27.0.0.0.tar.gz';          ;;        amd64|x86_64)          ESUM='9e6d9c1131da124bd08eb4183f7787a9f90111fc3d62c1231976c2d37372d59e';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_x64_linux_27.0.0.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='3c5999fb05f2b68ea1859e898b326718466611b60e7942e02c4defedba88c228';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_ppc64le_linux_27.0.0.0.tar.gz';          ;;        s390x)          ESUM='58a2e761384cdf2050fd48bc31521b5e2b8ddb98415523b175ae7be3ed3e5736';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_s390x_linux_27.0.0.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Sat, 17 Oct 2026 00:29:18 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:29:18 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Sat, 17 Oct 2026 00:30:24 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Sat, 17 Oct 2026 00:30:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b60d921bb3bd64394b12db0276e5111cd1a7051e6954e3a238903bd0007f099`  
		Last Modified: Sat, 17 Oct 2026 00:25:21 GMT  
		Size: 12.1 MB (12144838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64eeef2fe8d1f5eee3f4e080fff3fe845c8c3b3142f278b86335cca48e781dce`  
		Last Modified: Sat, 17 Oct 2026 00:30:39 GMT  
		Size: 61.3 MB (61328553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18e94c30503e195bbf0f99a0f1c4d703d9e56ce0070a2f5479c092d1ff5c3b6`  
		Last Modified: Sat, 17 Oct 2026 00:30:37 GMT  
		Size: 5.7 MB (5681718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-27-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:1701aa0540fa07cafd7cfc39cbb0cc915f4936d14b761bbb426bccfbf1044794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3745065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:290ad142a09b54b76ebbd2e284bf61759ca78d1d1366a3f7dec4f1a9af8d4ad0`

```dockerfile
```

-	Layers:
	-	`sha256:485589133def74072ce0db18247b7f9ed16fe89c30c5f863fcc6f0d4d86ca0c2`  
		Last Modified: Sat, 17 Oct 2026 00:30:37 GMT  
		Size: 3.7 MB (3719876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65b1ef73ea5f5f6144c74697d19536465c507535bbaa82a879ec836403d63ad6`  
		Last Modified: Sat, 17 Oct 2026 00:30:37 GMT  
		Size: 25.2 KB (25189 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-27-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull ibm-semeru-runtimes@sha256:772fe85d686edeb5dcc7f4dfd1f531c7147edfaf75ba579eb001b242e61eab4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104693327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565e88bf1c40421b310af2e98b9cb595b46b733ffb41e36cf6a47b141e48fcde`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:23:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:23:50 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:23:50 GMT
ENV JAVA_VERSION=27.0.0.0
# Sat, 17 Oct 2026 00:28:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='988cb758c25c0739daf53fd5665f684c1ff0fbf138d1e0f0827208b07aa0ab64';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_aarch64_linux_27.0.0.0.tar.gz';          ;;        amd64|x86_64)          ESUM='9e6d9c1131da124bd08eb4183f7787a9f90111fc3d62c1231976c2d37372d59e';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_x64_linux_27.0.0.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='3c5999fb05f2b68ea1859e898b326718466611b60e7942e02c4defedba88c228';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_ppc64le_linux_27.0.0.0.tar.gz';          ;;        s390x)          ESUM='58a2e761384cdf2050fd48bc31521b5e2b8ddb98415523b175ae7be3ed3e5736';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_s390x_linux_27.0.0.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Sat, 17 Oct 2026 00:28:58 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:28:58 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Sat, 17 Oct 2026 00:30:05 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Sat, 17 Oct 2026 00:30:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e6566579871d80b8cfa76490f684c59ebc444f58456b970d9b773012189ad7`  
		Last Modified: Sat, 17 Oct 2026 00:25:17 GMT  
		Size: 12.1 MB (12107611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07fc80415ef95816beb769b38c0c7b25744a15ebb306f088204ff1b6c982fe0a`  
		Last Modified: Sat, 17 Oct 2026 00:30:19 GMT  
		Size: 59.5 MB (59466302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ae3408afda6111ae2eccc691559703bc5c728c045b522d8f414456f22dda90`  
		Last Modified: Sat, 17 Oct 2026 00:30:17 GMT  
		Size: 5.4 MB (5434691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-27-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:22dcf99fced424bd3bc9541cb2ab6838198f1aea73d1a895fd5457c909488b52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3742924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649b443ae37dba287fc93a392f2857d10218eca09f5fc9cd03890c71a4a8ebb5`

```dockerfile
```

-	Layers:
	-	`sha256:c3bae902b336d92cb51c3cbcb0a3352e44a4e08cfee3cd8a225b027f7d705bda`  
		Last Modified: Sat, 17 Oct 2026 00:30:17 GMT  
		Size: 3.7 MB (3717625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1de45b6fb5e320f09ca536666817e2cde8c97d41027b046b9525697771bbbc5`  
		Last Modified: Sat, 17 Oct 2026 00:30:17 GMT  
		Size: 25.3 KB (25299 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-27-jre-jammy` - linux; ppc64le

```console
$ docker pull ibm-semeru-runtimes@sha256:82d6357b9b7f58254397516676c6ce4233f56ccc17b38c4c3d55469e5fe40224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114852579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719e6771809fd73e1e7f9d063af0b51e98f952bb957df77f252b609cc5e25b4d`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:05:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 04:05:06 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 04:05:06 GMT
ENV JAVA_VERSION=27.0.0.0
# Fri, 02 Oct 2026 04:40:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='988cb758c25c0739daf53fd5665f684c1ff0fbf138d1e0f0827208b07aa0ab64';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_aarch64_linux_27.0.0.0.tar.gz';          ;;        amd64|x86_64)          ESUM='9e6d9c1131da124bd08eb4183f7787a9f90111fc3d62c1231976c2d37372d59e';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_x64_linux_27.0.0.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='3c5999fb05f2b68ea1859e898b326718466611b60e7942e02c4defedba88c228';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_ppc64le_linux_27.0.0.0.tar.gz';          ;;        s390x)          ESUM='58a2e761384cdf2050fd48bc31521b5e2b8ddb98415523b175ae7be3ed3e5736';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_s390x_linux_27.0.0.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Fri, 02 Oct 2026 04:40:05 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 04:40:05 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Fri, 02 Oct 2026 04:41:12 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Fri, 02 Oct 2026 04:41:12 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6494dd8d5b83beaa9e791b8938e88e66d295379e869ef1348a72e1ebda851a`  
		Last Modified: Fri, 02 Oct 2026 04:07:06 GMT  
		Size: 12.9 MB (12860267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b98f9bbc3e23e5fd5ddaad185cf14012dc82e4ef11492a4d93fc03e31614769`  
		Last Modified: Fri, 02 Oct 2026 04:41:47 GMT  
		Size: 62.9 MB (62918811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9429eb12ecc6734c16a553c5749f3fccc7258ae0918562a8cadacc527ff8b2b0`  
		Last Modified: Fri, 02 Oct 2026 04:41:45 GMT  
		Size: 4.4 MB (4370293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-27-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:86556c5b17073eff5886d2f561ac29acb12e993dad742aacfede6ad8b8473ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9beb5718abbcf03cc451afbe88b4645b2e4ba5191d8d1cdaeaf1404f0ba1c3`

```dockerfile
```

-	Layers:
	-	`sha256:f13a88da5180fa2013e1196da3f8bb2bced3d356e824a72dfe954de9119b72d2`  
		Last Modified: Fri, 02 Oct 2026 04:41:45 GMT  
		Size: 3.7 MB (3726406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45750c47a36eb5bbe4b71f81478b52ce331fe13a289586ea07f34fb2baabc919`  
		Last Modified: Fri, 02 Oct 2026 04:41:45 GMT  
		Size: 25.2 KB (25225 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-27-jre-jammy` - linux; s390x

```console
$ docker pull ibm-semeru-runtimes@sha256:6928fa41b135ba05431834710678b494b197249514f60d36321bb8a64a1704a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.9 MB (109933098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6053676779e3946eec89da0c020dc3382936879ec7bb3e9a8c38615d9ccfad2`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:47 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:47 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:47 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:49 GMT
ADD file:37d95fb30f79d123e31757f3914721d25b7e55b974a72d49a4ef18cbdd2c5044 in / 
# Fri, 02 Oct 2026 10:22:49 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:22:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:22:44 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:22:44 GMT
ENV JAVA_VERSION=27.0.0.0
# Sat, 17 Oct 2026 01:13:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='988cb758c25c0739daf53fd5665f684c1ff0fbf138d1e0f0827208b07aa0ab64';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_aarch64_linux_27.0.0.0.tar.gz';          ;;        amd64|x86_64)          ESUM='9e6d9c1131da124bd08eb4183f7787a9f90111fc3d62c1231976c2d37372d59e';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_x64_linux_27.0.0.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='3c5999fb05f2b68ea1859e898b326718466611b60e7942e02c4defedba88c228';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_ppc64le_linux_27.0.0.0.tar.gz';          ;;        s390x)          ESUM='58a2e761384cdf2050fd48bc31521b5e2b8ddb98415523b175ae7be3ed3e5736';          BINARY_URL='https://github.com/ibmruntimes/semeru27-binaries/releases/download/jdk-27.0.0.0/ibm-semeru-open-jre_s390x_linux_27.0.0.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Sat, 17 Oct 2026 01:13:16 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:13:16 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Sat, 17 Oct 2026 01:14:31 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Sat, 17 Oct 2026 01:14:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1cc3b16ef800fa37e67e957552c6fceece7de8c1f49769006e2e5ee5704c33e0`  
		Last Modified: Fri, 02 Oct 2026 11:09:00 GMT  
		Size: 28.2 MB (28222770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df745dc1fab4d81ce0a295e03feda9400d9fac9df3cea16d26ecd28bec66ac58`  
		Last Modified: Sat, 17 Oct 2026 00:24:26 GMT  
		Size: 12.2 MB (12190607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e965cf93329158b692f083190816627cec3fdff62eabfa429ba273d0323da6`  
		Last Modified: Sat, 17 Oct 2026 01:15:23 GMT  
		Size: 63.6 MB (63643089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169ef3338bb3801cc10e2b732805184ac91f73d6825ff608cf83caaa15214465`  
		Last Modified: Sat, 17 Oct 2026 01:15:19 GMT  
		Size: 5.9 MB (5876632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-27-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:0a24c3190de01857fa1639bd956bbb92cf2888d5c603a90059d74aa1b15b0158
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3746656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee4ef66eee15b470a3df35856e7a7ec01999b873edcd1191e54101c0f7eb9031`

```dockerfile
```

-	Layers:
	-	`sha256:ad53c08ff49792df69bb8b507d773ea90633ac40bfc46565e5461e8bf51bd277`  
		Last Modified: Sat, 17 Oct 2026 01:15:18 GMT  
		Size: 3.7 MB (3721468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4f600d6312dd367970aa403107a8c9687a718c2187361ed2ff7cbaaa9c932c1`  
		Last Modified: Sat, 17 Oct 2026 01:15:19 GMT  
		Size: 25.2 KB (25188 bytes)  
		MIME: application/vnd.in-toto+json
