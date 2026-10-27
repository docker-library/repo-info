## `ibm-semeru-runtimes:open-21-jdk-noble`

```console
$ docker pull ibm-semeru-runtimes@sha256:3e118ea181df5b1c3bd777220dc912219e54d438e8ce5eaf0727e3a2d414f98b
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

### `ibm-semeru-runtimes:open-21-jdk-noble` - linux; amd64

```console
$ docker pull ibm-semeru-runtimes@sha256:fa0a1a3f571670b8c17392b6c934018f7671158dd0253a612de1edcc8e3a6abd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290603232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cefbf96cee7c43c4b4acbb4bf55961fdddd4acf99dc103627be7469d384246e`
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
# Mon, 26 Oct 2026 23:16:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:16:36 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:16:36 GMT
ENV JAVA_VERSION=21.0.12.15
# Mon, 26 Oct 2026 23:19:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='1d09a9d591f97fe22fb089ea382d46c6be17c7b32e2bd18ebfcc1a17a0948d91';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='5b62b53d61bde7e1b4901abea77b18c03e936234c37a9206f473d093f5e46d00';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='97113620ec93e32dad8efee6f1e221c6ca7af201d632bd2bb2b1484fbd4483d5';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='e0b8ec4011a08ed43c561e20e2f5f8958a410d32074d958de77bcb2a76745533';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_s390x_linux_21.0.12.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:19:44 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:19:44 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:20:50 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a617f0e043d03694f5f21a113f3f705cf1d35995690f2b80e5e7e7ea3147aa7`  
		Last Modified: Mon, 26 Oct 2026 23:18:02 GMT  
		Size: 12.8 MB (12792248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b661072a8c0ae5f6124d49e177f25ec31d965f1157a7e53cf6146d605ce062a7`  
		Last Modified: Mon, 26 Oct 2026 23:21:13 GMT  
		Size: 241.6 MB (241594411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484d1f18c9343e86d517618d293290f0b3530985aeb87d01b73dc2bebd1d7892`  
		Last Modified: Mon, 26 Oct 2026 23:21:09 GMT  
		Size: 6.4 MB (6448961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-21-jdk-noble` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:66b2c20f0f0cf95531644a666a795262f02cce216f437981275c1183619d092b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3265588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d3abd055ed742025f618497ef5c8d5a14e444627491b506f04b567cc051985`

```dockerfile
```

-	Layers:
	-	`sha256:7da3a9939b75f125895a464b47a20f81bd300ff33d3553d8a87e1ce11c1025b3`  
		Last Modified: Mon, 26 Oct 2026 23:21:09 GMT  
		Size: 3.2 MB (3240374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c2239bb19c6c451a4eaafc71a908226dc32331c757b2d34b590a14c8f159a17`  
		Last Modified: Mon, 26 Oct 2026 23:21:08 GMT  
		Size: 25.2 KB (25214 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-21-jdk-noble` - linux; arm64 variant v8

```console
$ docker pull ibm-semeru-runtimes@sha256:46668b4aac0b6bb21377538dbd3c8c3d9204502671c9520f2d57bad43c201e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.6 MB (285596897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3015273b051033950ef0fbcda20c4f49ba6077a20f329ace91bb3d48a533b926`
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
# Mon, 26 Oct 2026 23:24:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:24:45 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:24:45 GMT
ENV JAVA_VERSION=21.0.12.15
# Mon, 26 Oct 2026 23:24:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='1d09a9d591f97fe22fb089ea382d46c6be17c7b32e2bd18ebfcc1a17a0948d91';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='5b62b53d61bde7e1b4901abea77b18c03e936234c37a9206f473d093f5e46d00';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='97113620ec93e32dad8efee6f1e221c6ca7af201d632bd2bb2b1484fbd4483d5';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='e0b8ec4011a08ed43c561e20e2f5f8958a410d32074d958de77bcb2a76745533';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_s390x_linux_21.0.12.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:24:52 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:24:52 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:26:07 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36b029f7a0741fb18031dfd2ad03cbb333eb4e614db0ce4d8c7b7473a9a49063`  
		Last Modified: Mon, 26 Oct 2026 23:26:28 GMT  
		Size: 12.8 MB (12829970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a78057dd7b6ae5c29be8a77f32c46604a0bb8def93a7e262d681d683c0f630`  
		Last Modified: Mon, 26 Oct 2026 23:26:34 GMT  
		Size: 237.6 MB (237613411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a63d95c4ed226d7a9b801825e4f3071ffad64cd6a899a50aabfb71250ac4fc9`  
		Last Modified: Mon, 26 Oct 2026 23:26:27 GMT  
		Size: 6.2 MB (6213390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-21-jdk-noble` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:8ab473afbbe65ce188307c0d670e298a6a68becf019b3e60c9f40a36619b1ce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3264239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a0502021435ccf35f5899c73517a2046a0e2491baea7986ed9640d651facb3`

```dockerfile
```

-	Layers:
	-	`sha256:c580c75d371c7da1a1829f67f20705e37b26ab74565efb4b9928826e7cadbacc`  
		Last Modified: Mon, 26 Oct 2026 23:26:27 GMT  
		Size: 3.2 MB (3238916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f424da1c629e8cc5d5e10efcb7ada5fd478f7f3b288fa12a8b7927ed40912f9`  
		Last Modified: Mon, 26 Oct 2026 23:26:27 GMT  
		Size: 25.3 KB (25323 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-21-jdk-noble` - linux; ppc64le

```console
$ docker pull ibm-semeru-runtimes@sha256:bbdd0a91522091d823f264d54ebcb97655f3f8c65d7685984fe9bb26fc0f581e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.2 MB (299198651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3911d3ed8bcf389ee1a3c23e9229768905f340976e1d59861b1eb073b38898e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:53:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:53:20 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:53:20 GMT
ENV JAVA_VERSION=21.0.12.15
# Sat, 17 Oct 2026 01:11:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='1d09a9d591f97fe22fb089ea382d46c6be17c7b32e2bd18ebfcc1a17a0948d91';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='5b62b53d61bde7e1b4901abea77b18c03e936234c37a9206f473d093f5e46d00';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='97113620ec93e32dad8efee6f1e221c6ca7af201d632bd2bb2b1484fbd4483d5';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='e0b8ec4011a08ed43c561e20e2f5f8958a410d32074d958de77bcb2a76745533';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_s390x_linux_21.0.12.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Sat, 17 Oct 2026 01:11:07 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:11:07 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Sat, 17 Oct 2026 01:12:18 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc2751f29bf24a1f7e2b7adba0c7949c9fe35c09e60afb29d32eec95569d16c`  
		Last Modified: Sat, 17 Oct 2026 00:55:43 GMT  
		Size: 13.8 MB (13771352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a56f01fcfb5d2abcdc110dbd47bace24a27cc2652aa0dddf6940f4765a50e9`  
		Last Modified: Sat, 17 Oct 2026 01:13:10 GMT  
		Size: 245.7 MB (245738654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac2c3a357baf9eb8b9a18c80603ac8d407bfe5cd4c1539dea24926f540f890f`  
		Last Modified: Sat, 17 Oct 2026 01:13:05 GMT  
		Size: 5.3 MB (5310655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-21-jdk-noble` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:15241876a53f8b471e77405732ff37afce491c069dd50a4c7288af4608f1e403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3270884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df75bb55e14dc523c31c7c0e12347b86850f0c82155c63048a5021f08a966c6f`

```dockerfile
```

-	Layers:
	-	`sha256:103a909abc9b914b88b0bad786d32bb0632f17906f1e2430a6b065f0531d75f9`  
		Last Modified: Sat, 17 Oct 2026 01:13:04 GMT  
		Size: 3.2 MB (3245634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9762e516e2c74720a76bd1ccdb0e125ee159e01d468ca14140c9767bb347c20`  
		Last Modified: Sat, 17 Oct 2026 01:13:04 GMT  
		Size: 25.2 KB (25250 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-21-jdk-noble` - linux; s390x

```console
$ docker pull ibm-semeru-runtimes@sha256:b470f6cfeb41471586ebf5e265abcec19332f0fc3cfe7494bc40a6e26162ffab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 MB (295545399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c8e81805cb2c678ee979b1452afbbc44ff63b96e2a375e05589fbb1b79f1805`
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
# Mon, 26 Oct 2026 23:49:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:49:44 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:49:44 GMT
ENV JAVA_VERSION=21.0.12.15
# Mon, 26 Oct 2026 23:52:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='1d09a9d591f97fe22fb089ea382d46c6be17c7b32e2bd18ebfcc1a17a0948d91';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='5b62b53d61bde7e1b4901abea77b18c03e936234c37a9206f473d093f5e46d00';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='97113620ec93e32dad8efee6f1e221c6ca7af201d632bd2bb2b1484fbd4483d5';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='e0b8ec4011a08ed43c561e20e2f5f8958a410d32074d958de77bcb2a76745533';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_s390x_linux_21.0.12.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:52:58 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:52:58 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:54:03 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a54c74d85f10a6313e960fcdaea235b756e25a40d01da161ee3ef85d443429`  
		Last Modified: Mon, 26 Oct 2026 23:51:12 GMT  
		Size: 13.1 MB (13097978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31137308f9c0243c5cd3cdbce673ddd84a7e0e350fdbfddc0a1a915fb18e6ea5`  
		Last Modified: Mon, 26 Oct 2026 23:54:38 GMT  
		Size: 245.9 MB (245918617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e37b09d2567ea37992183c5eed170985a2f0d2c591e97f974008d345d042350`  
		Last Modified: Mon, 26 Oct 2026 23:54:34 GMT  
		Size: 6.6 MB (6581754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-21-jdk-noble` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:bcadc8a1c56f3199f6f0cdb4decec062ce4c681047cebb2a5d25fbcdc875d8c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3267786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af99ec26629490a5384ddaf9d5fe348323b019c0bd34fb474f57d3b80443b190`

```dockerfile
```

-	Layers:
	-	`sha256:be418e2f4f2f79dc36354a4dd5edb29e69c7fcc39b3390fe042d83374f5124ae`  
		Last Modified: Mon, 26 Oct 2026 23:54:34 GMT  
		Size: 3.2 MB (3242572 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0163bfe4c7c4ff5633cfe780472a2370c3819490bf7348b303554263d9e0bae`  
		Last Modified: Mon, 26 Oct 2026 23:54:34 GMT  
		Size: 25.2 KB (25214 bytes)  
		MIME: application/vnd.in-toto+json
