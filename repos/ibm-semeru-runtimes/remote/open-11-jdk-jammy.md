## `ibm-semeru-runtimes:open-11-jdk-jammy`

```console
$ docker pull ibm-semeru-runtimes@sha256:6fcb03d4a0f9827510f3d51eb5a99d51c2fa840f1d25f18808b4099d06399f6d
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

### `ibm-semeru-runtimes:open-11-jdk-jammy` - linux; amd64

```console
$ docker pull ibm-semeru-runtimes@sha256:fdbbb492b3ca385499565365beefc908fc13b27b846dc903be4b980a4a8f5415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.3 MB (270291256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3251c7247b0e371cab43e638aa1774ad57fb6d8acc4bd42e2add34bdac7b0bb`
-	Default Command: `["jshell"]`

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
# Mon, 09 Nov 2026 23:36:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:36:40 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:36:40 GMT
ENV JAVA_VERSION=11.0.33.0
# Mon, 09 Nov 2026 23:36:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='25947aef6c52a1ada2f53d73d8e71ee2e79398977f2f6f46e9f95886a917b085';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_aarch64_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='dc4c3d88a1e2d64152e5c14109b5fbf35a1654d45b92b3419a2325c91ab15013';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_x64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a9d283c104fae68b11af7c3c2fa800e1d42f3f370c50babcdfccec41f103b3b1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_ppc64le_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='8a006c70e7f5e735e61fed897c20777ebe1a20b5bdab304c30a65b08ad50e176';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:36:51 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:36:51 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:37:54 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 09 Nov 2026 23:37:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee8faa80135b9032c13add0a5e0522b0cc81cc5e7c349ddaf5c3bce12fc10be`  
		Last Modified: Mon, 09 Nov 2026 23:38:14 GMT  
		Size: 12.1 MB (12140656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db92c34bcc27e767ca94a3e6f017b062fcf9b560bfa1c5164f1e8d154c68c7e5`  
		Last Modified: Mon, 09 Nov 2026 23:38:18 GMT  
		Size: 222.9 MB (222860233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6db154a4ef9296847bf40f0ca68d7911b8409ba2a9566972a88f30288dbade88`  
		Last Modified: Mon, 09 Nov 2026 23:38:13 GMT  
		Size: 5.5 MB (5537879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-11-jdk-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:384b5901df4254b089c5066734ec7a2dfff2f0adbdf1856d3710b698d97beffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6dcfd5a87c4a7a977332f727b60c4749235212aa9f90775dbedc39dfb9048dd`

```dockerfile
```

-	Layers:
	-	`sha256:56e51938ae1fc50a0a967ce6895088c2f35bf37f2a10633044b0e89301daeacb`  
		Last Modified: Mon, 09 Nov 2026 23:38:14 GMT  
		Size: 3.8 MB (3812261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:150c380bbefc827263760db09884e2364490a4fadefaec2b2dc70881ff456bb8`  
		Last Modified: Mon, 09 Nov 2026 23:38:13 GMT  
		Size: 25.2 KB (25215 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-11-jdk-jammy` - linux; arm64 variant v8

```console
$ docker pull ibm-semeru-runtimes@sha256:df70d61101c9345b74358e616fc89eb06ff42ada1cc18e4aabe69c4deaa2c12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.8 MB (264774151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966d7e9dc725df72e8425967256889e1c907eced8d8f6b1439f67aed5e5964c7`
-	Default Command: `["jshell"]`

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
# Mon, 09 Nov 2026 23:36:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:36:30 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:36:30 GMT
ENV JAVA_VERSION=11.0.33.0
# Mon, 09 Nov 2026 23:36:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='25947aef6c52a1ada2f53d73d8e71ee2e79398977f2f6f46e9f95886a917b085';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_aarch64_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='dc4c3d88a1e2d64152e5c14109b5fbf35a1654d45b92b3419a2325c91ab15013';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_x64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a9d283c104fae68b11af7c3c2fa800e1d42f3f370c50babcdfccec41f103b3b1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_ppc64le_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='8a006c70e7f5e735e61fed897c20777ebe1a20b5bdab304c30a65b08ad50e176';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:36:41 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:36:41 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:37:44 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 09 Nov 2026 23:37:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7443b5140a7f5ad30b6676274b3add663d0cb3e5d438004b051170613a7022a8`  
		Last Modified: Mon, 09 Nov 2026 23:38:05 GMT  
		Size: 12.1 MB (12105954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7034904036ed44688b37fc8829947c7cd12398a8395ec6bee9f5816735e77a`  
		Last Modified: Mon, 09 Nov 2026 23:38:08 GMT  
		Size: 219.6 MB (219616863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4888a3ff562f62ae8b36da7ebaaf755a3066de1c1c7f917109b10e2884a191ae`  
		Last Modified: Mon, 09 Nov 2026 23:38:04 GMT  
		Size: 5.4 MB (5366727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-11-jdk-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:f726ad3cef137671cd1d74a4dce8052b77e3b1abfe1134b027d7f2f122e8ba92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09aabad49257362b6dada34a904b26b42bc47e6a53d0834e957f452f44203505`

```dockerfile
```

-	Layers:
	-	`sha256:30454ca9892045e5f78c9cca5e6d6ac5856f05b4bec3ea3b902096865506142b`  
		Last Modified: Mon, 09 Nov 2026 23:38:04 GMT  
		Size: 3.8 MB (3810010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bd6916ea0e5c03c68dea5fe1b44accaa0ca808849d73a49a2948061614c8c74`  
		Last Modified: Mon, 09 Nov 2026 23:38:04 GMT  
		Size: 25.3 KB (25324 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-11-jdk-jammy` - linux; ppc64le

```console
$ docker pull ibm-semeru-runtimes@sha256:cf45086c5a87c810900a10dfd2bdd3e0aaabcd764d8182a81e3dfe7f56346229
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278963472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:611e3319b159f77b12274b6e91e4c9f9abf96dc42dd90cf39f24a5dbe303c00c`
-	Default Command: `["jshell"]`

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
# Mon, 09 Nov 2026 23:45:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='25947aef6c52a1ada2f53d73d8e71ee2e79398977f2f6f46e9f95886a917b085';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_aarch64_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='dc4c3d88a1e2d64152e5c14109b5fbf35a1654d45b92b3419a2325c91ab15013';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_x64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a9d283c104fae68b11af7c3c2fa800e1d42f3f370c50babcdfccec41f103b3b1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_ppc64le_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='8a006c70e7f5e735e61fed897c20777ebe1a20b5bdab304c30a65b08ad50e176';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:45:22 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:45:22 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:46:28 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 09 Nov 2026 23:46:28 GMT
CMD ["jshell"]
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
	-	`sha256:2ed85b0eeb0514f05966756536904cd7e5524bc256eb140dc95ad558f8cda4b3`  
		Last Modified: Mon, 09 Nov 2026 23:47:17 GMT  
		Size: 226.8 MB (226783859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52cba2c6b584777592167a7018eef6f460471d91094c8c84299cec450842a2b4`  
		Last Modified: Mon, 09 Nov 2026 23:47:12 GMT  
		Size: 4.6 MB (4610704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-11-jdk-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:95638cb57dbaf19933b6710ab2f30360081c05105f214c3a9d83fb3860ecaa3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3842137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17799cbccda19bff225598e9830bea74d514f7e83db363a0119366ca063aee3`

```dockerfile
```

-	Layers:
	-	`sha256:f3031bb826f5e39bce020c7fe939b98ffd454733e94b32cd483b1d0e0d4cc415`  
		Last Modified: Mon, 09 Nov 2026 23:47:12 GMT  
		Size: 3.8 MB (3816888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93b9ca9e2dba4cefa0577141c6182679c44ad80263ae3ed960c1479abf801998`  
		Last Modified: Mon, 09 Nov 2026 23:47:11 GMT  
		Size: 25.2 KB (25249 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-11-jdk-jammy` - linux; s390x

```console
$ docker pull ibm-semeru-runtimes@sha256:1c7cb7f87e92d321d2e3ef44959a36dfec71c15f5480a88873ee79e631b9860f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273332824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:193187cd6e0fba0f93ab21d8c2dabb9ee2c663aca45e361495ebbc81b6a1ef2d`
-	Default Command: `["jshell"]`

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
# Wed, 04 Nov 2026 22:24:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 04 Nov 2026 22:24:31 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 22:24:31 GMT
ENV JAVA_VERSION=11.0.33.0
# Tue, 10 Nov 2026 00:00:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='25947aef6c52a1ada2f53d73d8e71ee2e79398977f2f6f46e9f95886a917b085';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_aarch64_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='dc4c3d88a1e2d64152e5c14109b5fbf35a1654d45b92b3419a2325c91ab15013';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_x64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a9d283c104fae68b11af7c3c2fa800e1d42f3f370c50babcdfccec41f103b3b1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_ppc64le_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='8a006c70e7f5e735e61fed897c20777ebe1a20b5bdab304c30a65b08ad50e176';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 10 Nov 2026 00:00:52 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:00:52 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 10 Nov 2026 00:01:56 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 10 Nov 2026 00:01:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301886abf752fb756434174d7cd6a5dd24396ae06dbeda771fffea0edecae58b`  
		Last Modified: Wed, 04 Nov 2026 22:27:33 GMT  
		Size: 12.2 MB (12188480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ccd341a1f232ca1bd5c26b59c385c0636262709819dd8ac10eb78fad93c92a`  
		Last Modified: Tue, 10 Nov 2026 00:02:35 GMT  
		Size: 227.2 MB (227207454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48380448650add3886c8c5ee52b362b46c83097279e6afc28c176144e9550806`  
		Last Modified: Tue, 10 Nov 2026 00:02:31 GMT  
		Size: 5.7 MB (5714084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-11-jdk-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:fbe121f55eecf980c62158795c5fd6f5e900ddbb136e818ccc6a5b9f40294716
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3839068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e31776175e51e4710bec2de80fcc74563efcab647660a3913b006da0b48666`

```dockerfile
```

-	Layers:
	-	`sha256:b2a4668a7cff115c14e00bd83f1b6875cfeb6f2570e75216ed30b7f1ad93a4c3`  
		Last Modified: Tue, 10 Nov 2026 00:02:31 GMT  
		Size: 3.8 MB (3813853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c588ae081d756c183dad34c7ea5cb827e75defb7b5162008efe79eb2d2fc3fd`  
		Last Modified: Tue, 10 Nov 2026 00:02:31 GMT  
		Size: 25.2 KB (25215 bytes)  
		MIME: application/vnd.in-toto+json
