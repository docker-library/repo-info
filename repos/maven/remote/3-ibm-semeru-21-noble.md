## `maven:3-ibm-semeru-21-noble`

```console
$ docker pull maven@sha256:a16515c009f678bee12978cc8039ab6e211efe20110a84b8ed5bae9b0689b18f
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

### `maven:3-ibm-semeru-21-noble` - linux; amd64

```console
$ docker pull maven@sha256:e5437998f5a0d1e27f123b60926b190ac1cade673fb18d63279471f79a02e745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.0 MB (328044721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409a53b0fc1add024e48c7531e8e09243bbc6d0a0d2873c0bef4241c74af811d`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Thu, 01 Oct 2026 18:48:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 01 Oct 2026 18:48:41 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 18:48:41 GMT
ENV JAVA_VERSION=21.0.12.15
# Thu, 01 Oct 2026 18:50:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='1d09a9d591f97fe22fb089ea382d46c6be17c7b32e2bd18ebfcc1a17a0948d91';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='5b62b53d61bde7e1b4901abea77b18c03e936234c37a9206f473d093f5e46d00';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='97113620ec93e32dad8efee6f1e221c6ca7af201d632bd2bb2b1484fbd4483d5';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='e0b8ec4011a08ed43c561e20e2f5f8958a410d32074d958de77bcb2a76745533';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_s390x_linux_21.0.12.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Thu, 01 Oct 2026 18:50:26 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 18:50:26 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Thu, 01 Oct 2026 18:51:29 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 01 Oct 2026 20:11:19 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:11:19 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:11:19 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:19 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:11:19 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:11:19 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:11:19 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:11:19 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:11:20 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:11:20 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:11:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:11:20 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:11:20 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:928e2ba6d3c891ddbb9fea156ccb4174a7dec2cc317b9972240b7cdc81228bdb`  
		Last Modified: Thu, 01 Oct 2026 18:50:09 GMT  
		Size: 15.2 MB (15193083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b03fcc18b7372f5900134a57d0ea5e336a201d90ad7d969273b6e12a422a51`  
		Last Modified: Thu, 01 Oct 2026 18:51:52 GMT  
		Size: 241.6 MB (241594386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2a9669e1e893aea31e9f02a3368c5dff4cad1ee216b4faa7214b23c8cd932d`  
		Last Modified: Thu, 01 Oct 2026 18:51:47 GMT  
		Size: 6.4 MB (6444500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fb2fb8cb461e8e0db8b5ad1d1cda7a8de278f937195fdecb0e9f94b2fe3f2a`  
		Last Modified: Thu, 01 Oct 2026 20:11:35 GMT  
		Size: 25.0 MB (24988617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5dc5a30ab5939ca4069ae058e908d27bed56eb355942bfe889fe6ffa4f05513`  
		Last Modified: Thu, 01 Oct 2026 20:11:35 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4129ad4a8813b3219e620ac1b90ca5783177978369cf61da21d3eedd39f9b71c`  
		Last Modified: Thu, 01 Oct 2026 20:11:34 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecc6960be47dd27131b5ddef206baff61509db8e7513b762c7464fdb7c9e10c`  
		Last Modified: Thu, 01 Oct 2026 20:11:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:9964f71e1365c910081ed42b2ed6e58b5e4df94937275bbee7dea14c7a40483e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4796840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df12de0c1bcf66230984cecbd224d34ce0c93d7ecff6f6e8d8615432b6392e5`

```dockerfile
```

-	Layers:
	-	`sha256:142e4d1d1d36e50b54e411134421c3697276e2e5583773cf3e609640be26a7dc`  
		Last Modified: Thu, 01 Oct 2026 20:11:34 GMT  
		Size: 4.8 MB (4779967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad4cc3f83dc4ad1fea28ba9c73770436c8058fbd315992ed754b081070d5dc85`  
		Last Modified: Thu, 01 Oct 2026 20:11:34 GMT  
		Size: 16.9 KB (16873 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-21-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:8ef504210a8c9ff1f4ce504f3745795df99393e70af5968655d757cd97c1f91f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.9 MB (322928379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c6df5be027b4e609b39fd7e33313ff76dc3c50e327a88a5d37cd26f869c3ace`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Thu, 01 Oct 2026 18:48:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 01 Oct 2026 18:48:49 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 18:48:49 GMT
ENV JAVA_VERSION=21.0.12.15
# Thu, 01 Oct 2026 18:48:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='1d09a9d591f97fe22fb089ea382d46c6be17c7b32e2bd18ebfcc1a17a0948d91';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='5b62b53d61bde7e1b4901abea77b18c03e936234c37a9206f473d093f5e46d00';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='97113620ec93e32dad8efee6f1e221c6ca7af201d632bd2bb2b1484fbd4483d5';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='e0b8ec4011a08ed43c561e20e2f5f8958a410d32074d958de77bcb2a76745533';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_s390x_linux_21.0.12.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Thu, 01 Oct 2026 18:48:56 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 18:48:56 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Thu, 01 Oct 2026 18:49:59 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 01 Oct 2026 20:10:40 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:10:40 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:10:40 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:10:40 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:10:40 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:10:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:10:40 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:10:40 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:10:40 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:10:40 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:10:40 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:10:40 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:10:40 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:471da7286e67cb3e6d50d64778ca03086c5b38785ee35b3f78f0271586614fda`  
		Last Modified: Thu, 01 Oct 2026 18:50:21 GMT  
		Size: 15.1 MB (15087325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7c78af0f84fdcc82d1d328b04ed5bed0f5b67b454470a9f36eedd5a2c95bb7`  
		Last Modified: Thu, 01 Oct 2026 18:50:28 GMT  
		Size: 237.6 MB (237613408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c67fff7754eaacef61ee6ad8c68c9e97ec65edc9f977fd01ec6e7758169bc80`  
		Last Modified: Thu, 01 Oct 2026 18:50:21 GMT  
		Size: 6.2 MB (6203971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083b22538a37bcad2c0b39f72501ecedb0ad465281dc4039564404ecc7ab06c3`  
		Last Modified: Thu, 01 Oct 2026 20:10:54 GMT  
		Size: 25.0 MB (25022126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd7bbd68dca4e2bb8df07a6d36ab7e410c011862e39687f53ffc508ecb7e842`  
		Last Modified: Thu, 01 Oct 2026 20:10:54 GMT  
		Size: 10.1 MB (10058965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f3d32a78b1c227162009487aed469229080d9892cfd483d5fe47029847936c`  
		Last Modified: Thu, 01 Oct 2026 20:10:53 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b2c8777c5cce68fc953925fa300bb59446dd4e64b8379e5e534ec586a2992c2`  
		Last Modified: Thu, 01 Oct 2026 20:10:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:e78eba73e3e21b81f2d289238092480113e513a3240194046be362ec09477a41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4801579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6dbd452684901530f1f3ff6151a059d34fe4167cd3d2be7517037d68dd9674`

```dockerfile
```

-	Layers:
	-	`sha256:798cdf688a06dea492c6c236927e306c865c2f6e9f0ac50dd4a0b101da64693c`  
		Last Modified: Thu, 01 Oct 2026 20:10:54 GMT  
		Size: 4.8 MB (4784573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb220a731858b99fabfcd4efe1589bd89270bb116124828b799f94f1730b6c18`  
		Last Modified: Thu, 01 Oct 2026 20:10:53 GMT  
		Size: 17.0 KB (17006 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-21-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:7be6423b3a706622d6f84fed7019eb533f679bda47e6e6552c2baef6d8088654
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.1 MB (341057902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ea08bf9fae70c58fe1a52f8f699cbc2fa934d0d5edd4d3cfa6c9f5faf5c319`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Thu, 01 Oct 2026 18:46:11 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 01 Oct 2026 18:46:11 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 18:46:11 GMT
ENV JAVA_VERSION=21.0.12.15
# Thu, 01 Oct 2026 19:01:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='1d09a9d591f97fe22fb089ea382d46c6be17c7b32e2bd18ebfcc1a17a0948d91';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='5b62b53d61bde7e1b4901abea77b18c03e936234c37a9206f473d093f5e46d00';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='97113620ec93e32dad8efee6f1e221c6ca7af201d632bd2bb2b1484fbd4483d5';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='e0b8ec4011a08ed43c561e20e2f5f8958a410d32074d958de77bcb2a76745533';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_s390x_linux_21.0.12.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Thu, 01 Oct 2026 19:01:58 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 19:01:58 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Thu, 01 Oct 2026 19:03:04 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 01 Oct 2026 19:27:04 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:40:05 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:40:05 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:40:05 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:40:05 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:40:05 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:40:05 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:40:06 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:40:06 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:40:06 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:40:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:40:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:40:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944da8c4cbd1fe0d9c67e092a8a53f46a183168ffb5fc24aa7697b6ca2fd449d`  
		Last Modified: Thu, 01 Oct 2026 18:48:05 GMT  
		Size: 16.5 MB (16455429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea915e5706e39ab4552bcaa413800a96dd14e29a4af4ecea9fc74b97b739cc99`  
		Last Modified: Thu, 01 Oct 2026 19:03:58 GMT  
		Size: 245.7 MB (245738571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a950784229adcabba0e67d2043bfe01bd895337ff83b8ed52e9bb3e9513923`  
		Last Modified: Thu, 01 Oct 2026 19:03:53 GMT  
		Size: 5.3 MB (5253966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9b1eaaa535195d4734e0370adca6875504c3aab7834bb6f76994a44373068a`  
		Last Modified: Thu, 01 Oct 2026 19:27:53 GMT  
		Size: 29.2 MB (29172963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377c97e70697b86ae671869beff91491549a7706c77f3b10236ece3fbc15ff51`  
		Last Modified: Thu, 01 Oct 2026 20:40:32 GMT  
		Size: 10.1 MB (10059010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5394279fae80cf4fe4b9e169d317983d0f0121b7b646f5181510391e5d226e`  
		Last Modified: Thu, 01 Oct 2026 20:40:32 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:400210c057737ff69ee9c81910aa07e1b05c7f7112731c377666469cc6868bde`  
		Last Modified: Thu, 01 Oct 2026 20:40:32 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:622f226e21ff498ae5f294b694ab720b38999831b190f0755fa0f8d34c1a2adf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4804313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50111cff6d921788d0e2b317acc9fb9848c3ec0d1df5c6cc8688cd9320e59576`

```dockerfile
```

-	Layers:
	-	`sha256:858a978d14bbbc807ea2e431b61b7bfdb8688d5b1ca98d6adb16318d90fc0324`  
		Last Modified: Thu, 01 Oct 2026 20:40:32 GMT  
		Size: 4.8 MB (4787390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86d1efdf7c26914b42d853e723fde658447ee96be194695fbbb159d53d7fca6c`  
		Last Modified: Thu, 01 Oct 2026 20:40:32 GMT  
		Size: 16.9 KB (16923 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-21-noble` - linux; s390x

```console
$ docker pull maven@sha256:34b4146f7108c49e57e5557977a72d2108ed569d39a8a2b2785bceb66718819b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.1 MB (334147450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b17018c20bb4a4bdc98701b4a1526f650b7e6bbcb538476c03b5502a8f8b5ac6`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:08 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:08 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:08 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:09 GMT
ADD file:62feb922e0e5d063c128e1d59ecbc5c2274c804b45055ac83d490a0a0c953700 in / 
# Fri, 11 Sep 2026 11:53:09 GMT
CMD ["/bin/bash"]
# Thu, 01 Oct 2026 18:46:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 01 Oct 2026 18:46:05 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 18:46:05 GMT
ENV JAVA_VERSION=21.0.12.15
# Thu, 01 Oct 2026 19:29:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='1d09a9d591f97fe22fb089ea382d46c6be17c7b32e2bd18ebfcc1a17a0948d91';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_aarch64_linux_21.0.12.15.tar.gz';          ;;        amd64|x86_64)          ESUM='5b62b53d61bde7e1b4901abea77b18c03e936234c37a9206f473d093f5e46d00';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_x64_linux_21.0.12.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='97113620ec93e32dad8efee6f1e221c6ca7af201d632bd2bb2b1484fbd4483d5';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_ppc64le_linux_21.0.12.15.tar.gz';          ;;        s390x)          ESUM='e0b8ec4011a08ed43c561e20e2f5f8958a410d32074d958de77bcb2a76745533';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.12.15/ibm-semeru-open-jdk_s390x_linux_21.0.12.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Thu, 01 Oct 2026 19:29:06 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 19:29:06 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Thu, 01 Oct 2026 19:30:14 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 01 Oct 2026 20:23:55 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 20:23:55 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 01 Oct 2026 20:23:55 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:23:55 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 01 Oct 2026 20:23:55 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 01 Oct 2026 20:23:55 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 01 Oct 2026 20:23:55 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 01 Oct 2026 20:23:56 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 01 Oct 2026 20:23:56 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 01 Oct 2026 20:23:56 GMT
ARG USER_HOME_DIR=/root
# Thu, 01 Oct 2026 20:23:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 01 Oct 2026 20:23:56 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 01 Oct 2026 20:23:56 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e35527a9b4fe6c767b792dd1ac6944d2063d722ac40bc92b109c07b1605514`  
		Last Modified: Thu, 01 Oct 2026 18:47:40 GMT  
		Size: 15.2 MB (15195906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9be0eb85ffe713b5c5e28dd28ef3b7494cf09f57f2b8085f7d950f0ba59c432`  
		Last Modified: Thu, 01 Oct 2026 19:31:36 GMT  
		Size: 245.9 MB (245918616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1460dd49763257da059dd601fbd354e3b5bcb8c7dc72aa5dbb9abffe21c3b8`  
		Last Modified: Thu, 01 Oct 2026 19:31:28 GMT  
		Size: 6.7 MB (6689467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dda5765bb0dc3a65702be89ff586d41b750bf580379f1da290ea915a8b567a4`  
		Last Modified: Thu, 01 Oct 2026 20:24:22 GMT  
		Size: 26.3 MB (26338048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b581119c032ef832d5a3774d435426efdb16467f177c47d8522e397bb73d7f`  
		Last Modified: Thu, 01 Oct 2026 20:24:21 GMT  
		Size: 10.1 MB (10059016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e98d7cd69c927118eadcef5318e13c23611c22df82538e9377aa79f0795e447c`  
		Last Modified: Thu, 01 Oct 2026 20:24:21 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a767b5a8550124c02f0dc50e66daf3388fd8687a6f50d7489ad311132b3df1dd`  
		Last Modified: Thu, 01 Oct 2026 20:24:21 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:49f90e812f389045eb1802701f0758902d59157bf8a169ace9bc45df46a142eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4798627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fff5051321d970d18d53e16323be6a8cb0114683c2a195616b1ef9dbf1ed571`

```dockerfile
```

-	Layers:
	-	`sha256:903ab11247c0110802f9d3aa441ddebfef07893563037dc6cb205d80d90f412e`  
		Last Modified: Thu, 01 Oct 2026 20:24:21 GMT  
		Size: 4.8 MB (4781754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:914d7536f28984758786647ac67a1c6a1ff72051626cae681e1a1e9ca94c0792`  
		Last Modified: Thu, 01 Oct 2026 20:24:21 GMT  
		Size: 16.9 KB (16873 bytes)  
		MIME: application/vnd.in-toto+json
