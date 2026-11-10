## `ibm-semeru-runtimes:open-25-jre-jammy`

```console
$ docker pull ibm-semeru-runtimes@sha256:56f73ba6f89b7361dc5868d0e7855a24ba97d2a739f8725dc03c41b64fc9012b
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

### `ibm-semeru-runtimes:open-25-jre-jammy` - linux; amd64

```console
$ docker pull ibm-semeru-runtimes@sha256:14a84c76f4e4181e1baf6fc8717f93f09e1bba00c7d2fb63df8c3cde4257bc92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108187000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a43bc6f41edb6248572c5defe3a35c916411dc54068d0d363d7dc2731ee1227`
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
# Mon, 09 Nov 2026 23:40:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:40:19 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:40:19 GMT
ENV JAVA_VERSION=25.0.5.0
# Mon, 09 Nov 2026 23:40:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='7df1d21793596891bb4e76b63948d6cb08c23a3092f7f06fcdecdca80b6eab90';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_aarch64_linux_25.0.5.0.tar.gz';          ;;        amd64|x86_64)          ESUM='dead27a708a2b843ed0787b7fceb92fed04245718474da51577599183e54a958';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_x64_linux_25.0.5.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='5731821285dbf00c196b247828c135ec7ea8f8888b743c9b7e24f627a79b7ade';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_ppc64le_linux_25.0.5.0.tar.gz';          ;;        s390x)          ESUM='ef43f0f17b9d598121e9ca8766ef105a933dd501a7616951b08a35ca1efc21d7';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_s390x_linux_25.0.5.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:40:22 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:40:22 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:41:26 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 09 Nov 2026 23:41:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbcd257735d47187a2adbe64685c354344bd52d75488901497dee53cae74361`  
		Last Modified: Mon, 09 Nov 2026 23:41:41 GMT  
		Size: 12.1 MB (12140634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f8744bbc0fbf0cba1def03b5f43392cf0d4d5834c1366b9c53bf8227b0ff12`  
		Last Modified: Mon, 09 Nov 2026 23:41:42 GMT  
		Size: 60.8 MB (60795979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a078588078e0665966a24512c485a2c64e2ab32297b9de8e40da8c19cf9d97b9`  
		Last Modified: Mon, 09 Nov 2026 23:41:40 GMT  
		Size: 5.5 MB (5497899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:af1b741c24191b8c697fff71019cef8f61406968d7a72006f61b95f46adf618b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3746975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cafba6129a1ccb43a9620146c60b8c681f4ee174f4a8744649ef8aa8820c3e`

```dockerfile
```

-	Layers:
	-	`sha256:b86db0ec2716cc29be639cf96224371ca03c4e4c0a3895be23caaf814fd6c146`  
		Last Modified: Mon, 09 Nov 2026 23:41:40 GMT  
		Size: 3.7 MB (3721778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cab88877dae8e02947fc95cef2e8d07be8d7205cc3a362008fa381b502218db9`  
		Last Modified: Mon, 09 Nov 2026 23:41:40 GMT  
		Size: 25.2 KB (25197 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-25-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull ibm-semeru-runtimes@sha256:928276081efdef8b9178c6b4712872c996b2bdc76d74dc7fc8502e483c2fe354
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104042975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f319b02415fc7e0df97f28967cd1052e1587de5eb7d7c3d71de75a0c913d4e3`
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
ENV JAVA_VERSION=25.0.5.0
# Mon, 09 Nov 2026 23:40:01 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='7df1d21793596891bb4e76b63948d6cb08c23a3092f7f06fcdecdca80b6eab90';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_aarch64_linux_25.0.5.0.tar.gz';          ;;        amd64|x86_64)          ESUM='dead27a708a2b843ed0787b7fceb92fed04245718474da51577599183e54a958';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_x64_linux_25.0.5.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='5731821285dbf00c196b247828c135ec7ea8f8888b743c9b7e24f627a79b7ade';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_ppc64le_linux_25.0.5.0.tar.gz';          ;;        s390x)          ESUM='ef43f0f17b9d598121e9ca8766ef105a933dd501a7616951b08a35ca1efc21d7';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_s390x_linux_25.0.5.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:40:01 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:40:01 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:41:05 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 09 Nov 2026 23:41:05 GMT
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
	-	`sha256:e489a96d3a62a809822a3260f4577c41dce43bda10ab089dcf2aa9e2f211ffb7`  
		Last Modified: Mon, 09 Nov 2026 23:41:21 GMT  
		Size: 58.9 MB (58946805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6febea38fcfbb8bfc5f4cb8cd7a6bc9ad9047ae3d4227cff883344b6dff7529`  
		Last Modified: Mon, 09 Nov 2026 23:41:18 GMT  
		Size: 5.3 MB (5305609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:b08a52d3ad76312d0b499309b5619762f9ba41d868f699b8d69ced1642d4614e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3744834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40f2d4dbb7ceab10a96846bc261f50c6816e165d0b2422c98c829a32b7ed2263`

```dockerfile
```

-	Layers:
	-	`sha256:ecb41d9e634eb344b601d2d34d60ed16a791171195b836ea59f0f4b60f5867dd`  
		Last Modified: Mon, 09 Nov 2026 23:41:17 GMT  
		Size: 3.7 MB (3719527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:167db63d8ec67e7f500bb6b34d991bb24c68c145e093f928f3fae371e4604212`  
		Last Modified: Mon, 09 Nov 2026 23:41:17 GMT  
		Size: 25.3 KB (25307 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-25-jre-jammy` - linux; ppc64le

```console
$ docker pull ibm-semeru-runtimes@sha256:2ff3f6b7eddd93bfacbde1ad4e7237dd6dc9cea389004b74a4dc6449d46386c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.2 MB (114198690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd9ebae7abbbf3b694437a6d3ab5705626d257f866a3d29ab3fb3b03625b42a1`
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
ENV JAVA_VERSION=25.0.5.0
# Wed, 04 Nov 2026 22:35:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='7df1d21793596891bb4e76b63948d6cb08c23a3092f7f06fcdecdca80b6eab90';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_aarch64_linux_25.0.5.0.tar.gz';          ;;        amd64|x86_64)          ESUM='dead27a708a2b843ed0787b7fceb92fed04245718474da51577599183e54a958';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_x64_linux_25.0.5.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='5731821285dbf00c196b247828c135ec7ea8f8888b743c9b7e24f627a79b7ade';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_ppc64le_linux_25.0.5.0.tar.gz';          ;;        s390x)          ESUM='ef43f0f17b9d598121e9ca8766ef105a933dd501a7616951b08a35ca1efc21d7';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_s390x_linux_25.0.5.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 04 Nov 2026 22:35:20 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Nov 2026 22:35:20 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 10 Nov 2026 00:00:56 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 10 Nov 2026 00:00:56 GMT
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
	-	`sha256:f5651adf1e6e610e05d463913bc436fd0addb86a4b3a23ec645f94ba90547b25`  
		Last Modified: Wed, 04 Nov 2026 22:37:06 GMT  
		Size: 62.3 MB (62331614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc30b88351c020465522575b98a662ed8e08a6b38c32940b441ed26698e45e9`  
		Last Modified: Tue, 10 Nov 2026 00:01:14 GMT  
		Size: 4.3 MB (4298167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:7c69c8093296a1680d51e9fedf9dddc7eb291b0a76a0ffa21db810a4f7219cae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3751638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf35d5168040e955ab57379d61d50a1433f4f38d2bf0288cb8bfe99b5847054`

```dockerfile
```

-	Layers:
	-	`sha256:92cad9bcc60da046fb082690c1f22062a21f74cf85103fdb6defb60306234fc0`  
		Last Modified: Tue, 10 Nov 2026 00:01:13 GMT  
		Size: 3.7 MB (3726405 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69077b018b3b46a1e425057f10b220a5b3bd8627e2c5b114bc094d776997a934`  
		Last Modified: Tue, 10 Nov 2026 00:01:13 GMT  
		Size: 25.2 KB (25233 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-25-jre-jammy` - linux; s390x

```console
$ docker pull ibm-semeru-runtimes@sha256:679762c37fee0798e77a4fb6bc20f402e63707178cb88034ec8aae3b931d041d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109153830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6ebd3ecc384d4c840fc9323fdd7256fc0ee92029c882bec238b90e0f99b7a72`
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
# Wed, 04 Nov 2026 22:36:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 04 Nov 2026 22:36:25 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 22:36:25 GMT
ENV JAVA_VERSION=25.0.5.0
# Mon, 09 Nov 2026 23:45:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='7df1d21793596891bb4e76b63948d6cb08c23a3092f7f06fcdecdca80b6eab90';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_aarch64_linux_25.0.5.0.tar.gz';          ;;        amd64|x86_64)          ESUM='dead27a708a2b843ed0787b7fceb92fed04245718474da51577599183e54a958';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_x64_linux_25.0.5.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='5731821285dbf00c196b247828c135ec7ea8f8888b743c9b7e24f627a79b7ade';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_ppc64le_linux_25.0.5.0.tar.gz';          ;;        s390x)          ESUM='ef43f0f17b9d598121e9ca8766ef105a933dd501a7616951b08a35ca1efc21d7';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jre_s390x_linux_25.0.5.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:45:36 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:45:36 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:46:41 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 09 Nov 2026 23:46:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8f04f46c24d00b0435dc942bd1eba0d8107106fa2a771cec7011862fca7002b`  
		Last Modified: Wed, 04 Nov 2026 22:39:34 GMT  
		Size: 12.2 MB (12188580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf598ebdf7c56967a36076fc7aa1426ff0d6e0aff9f8fff1be3a33e39435c663`  
		Last Modified: Mon, 09 Nov 2026 23:47:12 GMT  
		Size: 63.0 MB (63036811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bef3eb0bbe57f6d8f13018ed1f1c7940907168e198fc89ef8d1cb464899f5287`  
		Last Modified: Mon, 09 Nov 2026 23:47:10 GMT  
		Size: 5.7 MB (5705633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jre-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:3873a33d20c04e3cd4d644512e037b7bc15cbbe34694ca156755c4ad22f0b9ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3748567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ac5f625e474058e26e4b4553ddc392cdc0c5e7732846aea20d187135fb694d`

```dockerfile
```

-	Layers:
	-	`sha256:ddefeaa53960f71ad7ea63593977891856de9f446f0e5cb77532a97948679985`  
		Last Modified: Mon, 09 Nov 2026 23:47:10 GMT  
		Size: 3.7 MB (3723370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16642ce0c35d3e78404acd322f7e911fc3e4be9e9fbdfe62250ac5478985cbe2`  
		Last Modified: Mon, 09 Nov 2026 23:47:09 GMT  
		Size: 25.2 KB (25197 bytes)  
		MIME: application/vnd.in-toto+json
