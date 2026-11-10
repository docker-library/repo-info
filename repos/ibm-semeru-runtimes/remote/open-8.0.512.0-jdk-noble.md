## `ibm-semeru-runtimes:open-8.0.512.0-jdk-noble`

```console
$ docker pull ibm-semeru-runtimes@sha256:6980122076c6d53e53722f82aa679cfafc0138d9b791d982bc16bebed528d95c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibm-semeru-runtimes:open-8.0.512.0-jdk-noble` - linux; amd64

```console
$ docker pull ibm-semeru-runtimes@sha256:bed672fbf87755ac7cadc6daf38cd442803ccd28c5d65c7ec023e1fd6020c844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167672051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453be194a6a79c668c0e937180a7d3384628b908191f375770fdd8004e0fad8c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 23:36:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:36:10 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:36:10 GMT
ENV JAVA_VERSION=8.0.512.0
# Mon, 09 Nov 2026 23:36:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='2090ee80f0a05889c62dae44c0479687bff9ad606ead0e367cde496c9ffcadb2';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jdk_aarch64_linux_8.0.512.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='056992c8edf194aeba74e2a1d5e1bd4d259e3b822b13a229dbad4d41774854cf';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jdk_ppc64le_linux_8.0.512.0.tar.gz';          ;;        amd64|x86_64)          ESUM='bd45587130f56feb746056e30d1fa1ebe5dd0ef44ec7b496e8aa072201981f8e';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jdk_x64_linux_8.0.512.0.tar.gz';          ;;        s390x)          ESUM='4d428ebd9f81c26d1094e1be7ed30fb6f114a8d2ee1b06ab66fdb1e842827e6a';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jdk_s390x_linux_8.0.512.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:36:16 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:36:16 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:37:19 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51bc899f6ba9977578e5b75fd0acd328f6411243326c0700ea125106c33c0c5a`  
		Last Modified: Mon, 09 Nov 2026 23:37:33 GMT  
		Size: 12.8 MB (12793267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:418681ecdc2f89fac9f1f1814adaf00e2404b740443fe23389f542207ac8311c`  
		Last Modified: Mon, 09 Nov 2026 23:37:36 GMT  
		Size: 120.9 MB (120876422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca86b13c61e3c61603d805183c2b2639ae00c37e4feeeaf0643d0282beb4faf`  
		Last Modified: Mon, 09 Nov 2026 23:37:33 GMT  
		Size: 4.2 MB (4234750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-8.0.512.0-jdk-noble` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:9e98a120386b4b088236a2ce845cc147391f72788bfb936dd07e18f8f7ea643d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3371694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ad9f735e0dcab82fbd777990229bf212502d7b2565f476322d9573cb67703d0`

```dockerfile
```

-	Layers:
	-	`sha256:e2198b00c210d89903611342943747781c82f973ad0d305c2d86cf36b6b6f6d7`  
		Last Modified: Mon, 09 Nov 2026 23:37:33 GMT  
		Size: 3.3 MB (3346515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fecb0ff0014cb2149a1f2039411fad3d64211856b2c18e488994b9d560c267cf`  
		Last Modified: Mon, 09 Nov 2026 23:37:33 GMT  
		Size: 25.2 KB (25179 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-8.0.512.0-jdk-noble` - linux; arm64 variant v8

```console
$ docker pull ibm-semeru-runtimes@sha256:ad77d6c129e6a131e3150f49ee3f5cd06ef6a77df44d5c0e8cea7684008f0ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166794526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c1f3552313b398cd04fc5a25f5046a985240c8898405c1bd8b41f8ded50632`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 23:35:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:35:57 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:35:57 GMT
ENV JAVA_VERSION=8.0.512.0
# Mon, 09 Nov 2026 23:36:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='2090ee80f0a05889c62dae44c0479687bff9ad606ead0e367cde496c9ffcadb2';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jdk_aarch64_linux_8.0.512.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='056992c8edf194aeba74e2a1d5e1bd4d259e3b822b13a229dbad4d41774854cf';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jdk_ppc64le_linux_8.0.512.0.tar.gz';          ;;        amd64|x86_64)          ESUM='bd45587130f56feb746056e30d1fa1ebe5dd0ef44ec7b496e8aa072201981f8e';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jdk_x64_linux_8.0.512.0.tar.gz';          ;;        s390x)          ESUM='4d428ebd9f81c26d1094e1be7ed30fb6f114a8d2ee1b06ab66fdb1e842827e6a';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jdk_s390x_linux_8.0.512.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:36:02 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:36:02 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:37:06 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab146606eb9bff8eca4e0ab060bbe462f5f1479b83805eaf6eb55092d9b6a9f`  
		Last Modified: Mon, 09 Nov 2026 23:37:23 GMT  
		Size: 12.8 MB (12830287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:852e2711a40cca8e4a4e24e31f73e4a365eea384530650f08352a9848f1cafd1`  
		Last Modified: Mon, 09 Nov 2026 23:37:25 GMT  
		Size: 120.9 MB (120920251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93b2401009559fad684f148d3b102c5625a5711c6176b49961da9e853db918c`  
		Last Modified: Mon, 09 Nov 2026 23:37:22 GMT  
		Size: 4.1 MB (4103862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-8.0.512.0-jdk-noble` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:cbf4c7f345683cb6c9d29c1a7534b0e65bd2780ae73872860575c47af5cf15a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3372405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2dbdc870ebe6729ccedabde654a374e3536d4226e74bcd31fad9ddf87cdba7`

```dockerfile
```

-	Layers:
	-	`sha256:e922ef1749efeea46035fd186c65ec90d3595fff0204cf44b7d7e28473d68634`  
		Last Modified: Mon, 09 Nov 2026 23:37:22 GMT  
		Size: 3.3 MB (3347116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662eb89a9640a9b6450b485cc0eb47866fce72d0c4230181f6bee4dda316503a`  
		Last Modified: Mon, 09 Nov 2026 23:37:22 GMT  
		Size: 25.3 KB (25289 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-8.0.512.0-jdk-noble` - linux; s390x

```console
$ docker pull ibm-semeru-runtimes@sha256:bf4b9446fb1f22441a8e24dc33811e71f9c7cb41da705d5ee2e512298180bc5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171194939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a392182f847e8d0dda05b48c4429513ab7e59794395806991d774d7088e8a35`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:59 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:00 GMT
ADD file:c2156dcf753b3a0ab0d36b29087b8209a73050420505b4ce2fb173267e1306b5 in / 
# Sun, 25 Oct 2026 14:18:01 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:27:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 04 Nov 2026 22:27:26 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 22:27:26 GMT
ENV JAVA_VERSION=8.0.512.0
# Mon, 09 Nov 2026 23:36:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='2090ee80f0a05889c62dae44c0479687bff9ad606ead0e367cde496c9ffcadb2';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jdk_aarch64_linux_8.0.512.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='056992c8edf194aeba74e2a1d5e1bd4d259e3b822b13a229dbad4d41774854cf';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jdk_ppc64le_linux_8.0.512.0.tar.gz';          ;;        amd64|x86_64)          ESUM='bd45587130f56feb746056e30d1fa1ebe5dd0ef44ec7b496e8aa072201981f8e';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jdk_x64_linux_8.0.512.0.tar.gz';          ;;        s390x)          ESUM='4d428ebd9f81c26d1094e1be7ed30fb6f114a8d2ee1b06ab66fdb1e842827e6a';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jdk_s390x_linux_8.0.512.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:36:59 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:36:59 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:38:04 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e758432d89a0d5e0bbe8933e849b1d7c235982f78d967da4b5ecdfe5194f2d`  
		Last Modified: Wed, 04 Nov 2026 22:29:38 GMT  
		Size: 13.1 MB (13098537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e32c2416692d00009e62ec4dd251ab78fb6ea8350fa15e3679c9f87461c22e7b`  
		Last Modified: Mon, 09 Nov 2026 23:38:33 GMT  
		Size: 123.7 MB (123734619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f61d7c280478a75c83a2e11c81cacd6b672e383f76d8141b8780ac75d15a2cf`  
		Last Modified: Mon, 09 Nov 2026 23:38:31 GMT  
		Size: 4.4 MB (4414733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-8.0.512.0-jdk-noble` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:321c38f5a8433030f44ec2dc7850a436b14117a201550594e1aea913bf772c20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3374518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e462c3e81a52d56da7bcc035c9a7aadf0664ef87e8b8d8cc450bceaabfd563f`

```dockerfile
```

-	Layers:
	-	`sha256:9c5f7d54fb295fe072899f4a4e5b45e889db6cf18d0ba33840d4c15a25803138`  
		Last Modified: Mon, 09 Nov 2026 23:38:31 GMT  
		Size: 3.3 MB (3349339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66f61b4143bda80766dfeb4bfc5e859b8fdfcac7031f6166b67e6f2b6e3ce563`  
		Last Modified: Mon, 09 Nov 2026 23:38:31 GMT  
		Size: 25.2 KB (25179 bytes)  
		MIME: application/vnd.in-toto+json
