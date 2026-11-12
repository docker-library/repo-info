## `maven:3-ibm-semeru-25-noble`

```console
$ docker pull maven@sha256:2db7fb948bfa25a807fc3e13a5fd60f2406c75e9b7592de78b9cbc53cb9b7844
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

### `maven:3-ibm-semeru-25-noble` - linux; amd64

```console
$ docker pull maven@sha256:2f0c45c43915c9b7c1aec0793c6f2b06c4540aa0a4b7a6e61978de9a38af1f24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334486428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91de0e8875dfd9b7885fb38da958761df3bec100c407e20a8100137ff947d3bb`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:24:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:24:05 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:24:05 GMT
ENV JAVA_VERSION=25.0.5.0
# Wed, 11 Nov 2026 23:26:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0d011789093c1e5e4da6843a8f40947a36c2f0af0199e6be64590d279e37e7cc';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_aarch64_linux_25.0.5.0.tar.gz';          ;;        amd64|x86_64)          ESUM='cb52686cd841bb76b55b66dabcbf890a303169158aa4bb10fa61040bf462f9b1';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_x64_linux_25.0.5.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7aabbcc493502d4d0cad10b690a0f6fdd90f62e87c3df775440ee7e888694e38';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_ppc64le_linux_25.0.5.0.tar.gz';          ;;        s390x)          ESUM='d1b89a09ac193531eb5c558a20712477c85c933e6c3544c3545821a3114f7110';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_s390x_linux_25.0.5.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:26:05 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:26:05 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:27:08 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 11 Nov 2026 23:27:08 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 02:16:15 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:16:15 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:16:15 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:15 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:15 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:16:15 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:16:15 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:16:15 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:16:15 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:16:15 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:16:15 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:16:15 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:16:15 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58056f3dc355743e8cd3a70d4b28ee27d88a1c785db9830d21a8e05f145c1327`  
		Last Modified: Wed, 11 Nov 2026 23:25:35 GMT  
		Size: 12.8 MB (12793030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efec27d21711c703f65a8df81fd753fb58e7ca883935e3b8bfb92952f3121aae`  
		Last Modified: Wed, 11 Nov 2026 23:27:34 GMT  
		Size: 250.1 MB (250099795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e02d765d8c8eb38836a16f3b15f0305b5de4a5cfb9f7568f542165ca0fa109`  
		Last Modified: Wed, 11 Nov 2026 23:27:28 GMT  
		Size: 6.7 MB (6747112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e2cb660298b416e769f50480fd2dd2b82c7c175965074619502b291898099a`  
		Last Modified: Thu, 12 Nov 2026 02:16:30 GMT  
		Size: 25.0 MB (24993247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3117508bd4ab741da418ec679aefacc1c278be3f097f7cdd4e9a5423e02e19f3`  
		Last Modified: Thu, 12 Nov 2026 02:16:30 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aba998b9eecadd70e0d405609f8a22f1a8836de9ebadb568b3725aa78934f24`  
		Last Modified: Thu, 12 Nov 2026 02:16:29 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d8f3b6d1f0acfe54fa2ec289528f5fcb7226ca76a443b59b58fee3581547e5`  
		Last Modified: Thu, 12 Nov 2026 02:16:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:43826e93463075f3ea3616aeb2cdcd5fb90d16d5f39fe1c3c5d082fc5effab4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4803181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07cd178abc11f543ef3f4e2fd0f1f031335d4a23e9c97587e2e71f5d1c5abf3b`

```dockerfile
```

-	Layers:
	-	`sha256:aebe145309b0e4c5422eab69dd10f6dc144ba01b69b7d9a482b7aef8d859c4a7`  
		Last Modified: Thu, 12 Nov 2026 02:16:29 GMT  
		Size: 4.8 MB (4786312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a836c31d65bfe298f12456300c570601ade228c3c2fcd24dfed566ef1ea47ec9`  
		Last Modified: Thu, 12 Nov 2026 02:16:29 GMT  
		Size: 16.9 KB (16869 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-25-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:2f324352547e60448ac3a77a94030bd38e2484b77ffa8d25dd76f6480bc129bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.1 MB (327086503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc53f7cb3b3d438fe782ba7667de3be93cfa132349db8fa9aa130134133d7a5b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:29:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:29:14 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:29:14 GMT
ENV JAVA_VERSION=25.0.5.0
# Wed, 11 Nov 2026 23:29:21 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0d011789093c1e5e4da6843a8f40947a36c2f0af0199e6be64590d279e37e7cc';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_aarch64_linux_25.0.5.0.tar.gz';          ;;        amd64|x86_64)          ESUM='cb52686cd841bb76b55b66dabcbf890a303169158aa4bb10fa61040bf462f9b1';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_x64_linux_25.0.5.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7aabbcc493502d4d0cad10b690a0f6fdd90f62e87c3df775440ee7e888694e38';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_ppc64le_linux_25.0.5.0.tar.gz';          ;;        s390x)          ESUM='d1b89a09ac193531eb5c558a20712477c85c933e6c3544c3545821a3114f7110';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_s390x_linux_25.0.5.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:29:21 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:29:21 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:30:26 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 11 Nov 2026 23:30:26 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 02:16:02 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:16:02 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:16:02 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:02 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:02 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:16:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:16:02 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:16:02 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:16:02 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:16:02 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:16:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:16:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:16:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4688baf52c6684e0609933760da1c25deb53495929d52e07daa4eb645f593edf`  
		Last Modified: Wed, 11 Nov 2026 23:30:48 GMT  
		Size: 12.8 MB (12830429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c21ec706b8617692f0036530b0563c7f8b28349dfea23439b35200eb31bf0b`  
		Last Modified: Wed, 11 Nov 2026 23:30:52 GMT  
		Size: 246.1 MB (246073565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c7af32e46cd25512016e22a76f0cf3a1df5c55b0b3681eb49b7d1aa547f361`  
		Last Modified: Wed, 11 Nov 2026 23:30:48 GMT  
		Size: 6.5 MB (6512478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a320f307bd682f9881808f2e0b292d1471b90840b59435464efb5c4e50be329f`  
		Last Modified: Thu, 12 Nov 2026 02:16:17 GMT  
		Size: 22.6 MB (22644749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff9d38b63e9fe3e77a3ef079c353529372b7f93de74ad3944d2ba3f53735b0b`  
		Last Modified: Thu, 12 Nov 2026 02:16:17 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172c8c4aa2855eaf235bc75bbedb67b32e1c2139e3283fc8bb0a7befdf5c4f21`  
		Last Modified: Thu, 12 Nov 2026 02:16:16 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87f7842d5dca0e7ab8195ec74ecf7d65d7655e9d392b2760f418f1e88a1c9c8`  
		Last Modified: Thu, 12 Nov 2026 02:16:16 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:dd86b71306548faeef2345a12e491075869101587fa5e35c1215be48df0d3f4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4807919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c0069f0fa59eb950222b72229a4abdfe23e0668ddb2d03318fe76bb1410996c`

```dockerfile
```

-	Layers:
	-	`sha256:963d5b8cb03ff8f2103c009c5599ec650ce9ce1da01d722b23a63837dd94d769`  
		Last Modified: Thu, 12 Nov 2026 02:16:17 GMT  
		Size: 4.8 MB (4790918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f96fcc04694ab92656d72b448f68e0a05bc28da2c2ab1c3f63e5799ca1f3f204`  
		Last Modified: Thu, 12 Nov 2026 02:16:16 GMT  
		Size: 17.0 KB (17001 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-25-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:7d2cdc1b665edb03e8e09eb51267e83a4e42efe9fbf854c756b5e9f1bca4f0f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.1 MB (343078200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb8e3ad040e3ac27144a4b89ad7e11718758fe5e94f604de43800909145c85e5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 02:27:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 02:27:47 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:27:47 GMT
ENV JAVA_VERSION=25.0.5.0
# Thu, 12 Nov 2026 03:05:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0d011789093c1e5e4da6843a8f40947a36c2f0af0199e6be64590d279e37e7cc';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_aarch64_linux_25.0.5.0.tar.gz';          ;;        amd64|x86_64)          ESUM='cb52686cd841bb76b55b66dabcbf890a303169158aa4bb10fa61040bf462f9b1';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_x64_linux_25.0.5.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7aabbcc493502d4d0cad10b690a0f6fdd90f62e87c3df775440ee7e888694e38';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_ppc64le_linux_25.0.5.0.tar.gz';          ;;        s390x)          ESUM='d1b89a09ac193531eb5c558a20712477c85c933e6c3544c3545821a3114f7110';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_s390x_linux_25.0.5.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Thu, 12 Nov 2026 03:05:47 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 03:05:47 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Thu, 12 Nov 2026 03:07:16 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 03:07:16 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 11:31:38 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 11:31:44 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 11:31:44 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 11:31:44 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 11:31:44 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 11:31:44 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 11:31:44 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 11:31:44 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 11:31:45 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 11:31:45 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 11:31:45 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 11:31:45 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 11:31:45 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adbbe4994dd94b7622ea53c9b0e1fb09d374bd2c86d5e7e4af6a67b50e0a6b38`  
		Last Modified: Thu, 12 Nov 2026 02:30:01 GMT  
		Size: 13.8 MB (13766144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5035d8f34d044e44a16c8fc7046eea433c9048e8672a796deef962e5dd9f1e5b`  
		Last Modified: Thu, 12 Nov 2026 03:08:58 GMT  
		Size: 252.6 MB (252568219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adf315c85c3552a93494c0224af5d6d17fe5b267d8d8536dcd9641ebc35b989`  
		Last Modified: Thu, 12 Nov 2026 03:08:51 GMT  
		Size: 5.7 MB (5661702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae20fe2d6780a7c3b81d6e12813903a1c55698dbcf5ccd26815ec9b4f8c79f7`  
		Last Modified: Thu, 12 Nov 2026 11:32:32 GMT  
		Size: 26.6 MB (26615611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8605e45d0ca2324d9cf473eb5f5725e582421e15cfe523b8924345931f78faf1`  
		Last Modified: Thu, 12 Nov 2026 11:32:31 GMT  
		Size: 10.1 MB (10059006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f7048016e5b7e906780717a624c56225f0ba9d07e2cae9c2f545fc87ee1dc5`  
		Last Modified: Thu, 12 Nov 2026 11:32:31 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544596e740d3249e37eccfcefba622224d6e1129ba148f4a206b15a0020534f2`  
		Last Modified: Thu, 12 Nov 2026 11:32:31 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:2bb818c641a37346036f529e982c3275bf71948d32265c65740328bc49ac2b36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4797618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c25c59e99225edac47250b5929ba4cf0b432bcc17ae4d0ff443d95b94bd1ba2`

```dockerfile
```

-	Layers:
	-	`sha256:204986a23d811c016ec00116316d44e1fa2ca02f571172070c2d4e18a8ef82c3`  
		Last Modified: Thu, 12 Nov 2026 11:32:31 GMT  
		Size: 4.8 MB (4780699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32c6f87fb98032b142655664b39e154f353fb66820b973c49f95990ce3c20ad4`  
		Last Modified: Thu, 12 Nov 2026 11:32:30 GMT  
		Size: 16.9 KB (16919 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-25-noble` - linux; s390x

```console
$ docker pull maven@sha256:62960e059b69843e321601a540a9f3158107c370080605ca5b91afa694a6da1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.7 MB (337728660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd39ca36777f932c2b9c5a5e740e906d9915a8745dd6efe3815702b20b0a7e54`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 08:37:01 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:37:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:37:01 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:37:02 GMT
ADD file:cd6ae236aa13077d423218b776b66e2af298e76f13baa19a6432bfa2416d84e1 in / 
# Tue, 10 Nov 2026 08:37:03 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:17:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:17:31 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:17:31 GMT
ENV JAVA_VERSION=25.0.5.0
# Wed, 11 Nov 2026 23:38:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0d011789093c1e5e4da6843a8f40947a36c2f0af0199e6be64590d279e37e7cc';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_aarch64_linux_25.0.5.0.tar.gz';          ;;        amd64|x86_64)          ESUM='cb52686cd841bb76b55b66dabcbf890a303169158aa4bb10fa61040bf462f9b1';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_x64_linux_25.0.5.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7aabbcc493502d4d0cad10b690a0f6fdd90f62e87c3df775440ee7e888694e38';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_ppc64le_linux_25.0.5.0.tar.gz';          ;;        s390x)          ESUM='d1b89a09ac193531eb5c558a20712477c85c933e6c3544c3545821a3114f7110';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_s390x_linux_25.0.5.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:38:58 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:38:58 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:40:02 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 11 Nov 2026 23:40:02 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 03:12:02 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 03:12:02 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 03:12:02 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 03:12:02 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 03:12:02 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 03:12:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 03:12:02 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 03:12:02 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 03:12:02 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 03:12:02 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 03:12:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 03:12:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 03:12:02 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c9967c8d1d1a0b372c4f98c4fd2c2cf747bbe659bbf91bbc44b05ec20247b2`  
		Last Modified: Wed, 11 Nov 2026 23:18:57 GMT  
		Size: 13.1 MB (13098261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e2009b7fce9fc53e9232c77b8fea9e8c58ac83262b770aae78dba1937f97e8`  
		Last Modified: Wed, 11 Nov 2026 23:40:37 GMT  
		Size: 254.0 MB (253969574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5982914cc8bd9ca53ca8e62082fe75bb725ba721f17179fd068179aa2be50fd1`  
		Last Modified: Wed, 11 Nov 2026 23:40:32 GMT  
		Size: 6.9 MB (6920285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e711ce487393889e066ce6005e3b1c861f1248479bfb795e2205f92054145a7`  
		Last Modified: Thu, 12 Nov 2026 03:12:21 GMT  
		Size: 23.7 MB (23712938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31f4bb59de0627aa274efdc1f80829a82f6f8db1c2c0e2e701d8505cfc74c3c`  
		Last Modified: Thu, 12 Nov 2026 03:12:20 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb90c0a10a877e0da051216001abbcbb345e523ddd8a8c26928e7c6b9033f8a2`  
		Last Modified: Thu, 12 Nov 2026 03:12:20 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27df677ba97692a2e4de28801320932302c2f92da17632341d78c9cc4e6388f`  
		Last Modified: Thu, 12 Nov 2026 03:12:20 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:4ab8acf7612daba61bf6ecf4baf9f1d5a65e0c4a0a8fa10f1d1065eb7e1479d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4791932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f381a52e593a6f0d3adea34f27fb06e5a2342ba1ca52ea8b9e13a088a12dd415`

```dockerfile
```

-	Layers:
	-	`sha256:b9ff528336d337394367aa5777a3e99b79c3001a7cf8ffd1c2cdc8c0b4735773`  
		Last Modified: Thu, 12 Nov 2026 03:12:20 GMT  
		Size: 4.8 MB (4775063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:822f6e41d0866ce2d23aab7287ccb5d924b6d0e43dedbfebf6d9b916a435506f`  
		Last Modified: Thu, 12 Nov 2026 03:12:20 GMT  
		Size: 16.9 KB (16869 bytes)  
		MIME: application/vnd.in-toto+json
