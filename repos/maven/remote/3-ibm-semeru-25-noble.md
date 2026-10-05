## `maven:3-ibm-semeru-25-noble`

```console
$ docker pull maven@sha256:2068644f3bf1ea6a02f7f7947e7114a5b73e6640874e2288aad46a8d87bd5650
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
$ docker pull maven@sha256:c34f14861f49120ca4a8f16504afd4390428321b3642d094cc36bd03b00be05c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334232616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d70f60862d3327779f46d62693e52586968c06acede5fc8edaffe6015ae4735b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:23:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:23:47 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:23:47 GMT
ENV JAVA_VERSION=25.0.4.15
# Fri, 02 Oct 2026 01:27:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='df7c6142e8a2c090426792cdaa5a4d16d86eccd86ffd6ba65ede029aac0b5f09';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_aarch64_linux_25.0.4.15.tar.gz';          ;;        amd64|x86_64)          ESUM='56c26f137607ce5b4301a9958e4a43fa32a04c2e66bb75282ca19b4c12be8433';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_x64_linux_25.0.4.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='b754aba019a080c27a7542cc80fc0b41bafd5fed828ac3e0353f6a3ebe052848';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.15.tar.gz';          ;;        s390x)          ESUM='eda0444abf07e2842846d9c2948b09337828b8fb67d3eb8c490b2f7d58cb8637';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_s390x_linux_25.0.4.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Fri, 02 Oct 2026 01:27:09 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:27:09 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Fri, 02 Oct 2026 01:28:12 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Fri, 02 Oct 2026 01:28:12 GMT
CMD ["jshell"]
# Mon, 05 Oct 2026 21:30:01 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:30:01 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:30:01 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:30:01 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:30:01 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:30:01 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:30:01 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:30:01 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:30:01 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:30:01 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:30:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:30:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:30:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275fba8b144328f5ab55ef5b8a83e3ba86eec57e02c615d2449168d76961ddfd`  
		Last Modified: Fri, 02 Oct 2026 01:25:02 GMT  
		Size: 15.2 MB (15193221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9a7e5fbd2228e06fd7ac1042a7063b799fc85d18d905a35254b627bcb1d94b0`  
		Last Modified: Fri, 02 Oct 2026 01:28:35 GMT  
		Size: 250.0 MB (249963669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e613c1a6b084c4ac6ada31490b9e052223ab87d382751ff76269e587e97a10`  
		Last Modified: Fri, 02 Oct 2026 01:28:31 GMT  
		Size: 6.7 MB (6671521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58cb9cd78bada17faf102400299d324d3c511bfbcdb9643e285f10cb9822e84`  
		Last Modified: Mon, 05 Oct 2026 21:30:15 GMT  
		Size: 22.6 MB (22579777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80fcf8f149c11b84c1b9db5ad17a96cade00a60834cb980a7b2857035e0d055a`  
		Last Modified: Mon, 05 Oct 2026 21:30:15 GMT  
		Size: 10.1 MB (10059003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5addbe263028518f13818fe3d439329d4b955c9146fd8b581453a0dbdbda6fc`  
		Last Modified: Mon, 05 Oct 2026 21:30:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8407b6cbce2816f78a6f8e6fbc3e2920b27560eb0829929315049cb049ddc2f8`  
		Last Modified: Mon, 05 Oct 2026 21:30:14 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:5e7f992df6aae43655f72302a9740e18b905049e378bc8f1bf9b8dd94909b813
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4803816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7175a0495191fb5b7b267541622dcc45e2360ad59894aa811aec5a34a63a8a74`

```dockerfile
```

-	Layers:
	-	`sha256:ae462232b3e5c9e943585301f384bfd62c091647c029bc10af05fbbc5f12e799`  
		Last Modified: Mon, 05 Oct 2026 21:30:15 GMT  
		Size: 4.8 MB (4786945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f4eac0bab8925cabe62efba994dc62f6d01b8515b4a078d83fae1abe56cfa40`  
		Last Modified: Mon, 05 Oct 2026 21:30:14 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-25-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:f87f98a65039cf22d5d00f2827af0d950034de0c30cd45d7ee55fbd1bb29072b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.2 MB (329175201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:335d613492e0a01b89f65fae8db83cc7d1d483d1b442418d8db67f220afbd354`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:23:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:23:15 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:23:15 GMT
ENV JAVA_VERSION=25.0.4.15
# Fri, 02 Oct 2026 01:26:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='df7c6142e8a2c090426792cdaa5a4d16d86eccd86ffd6ba65ede029aac0b5f09';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_aarch64_linux_25.0.4.15.tar.gz';          ;;        amd64|x86_64)          ESUM='56c26f137607ce5b4301a9958e4a43fa32a04c2e66bb75282ca19b4c12be8433';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_x64_linux_25.0.4.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='b754aba019a080c27a7542cc80fc0b41bafd5fed828ac3e0353f6a3ebe052848';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.15.tar.gz';          ;;        s390x)          ESUM='eda0444abf07e2842846d9c2948b09337828b8fb67d3eb8c490b2f7d58cb8637';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_s390x_linux_25.0.4.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Fri, 02 Oct 2026 01:26:47 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:26:47 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Fri, 02 Oct 2026 01:27:51 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Fri, 02 Oct 2026 01:27:51 GMT
CMD ["jshell"]
# Mon, 05 Oct 2026 21:31:39 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:31:39 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:31:39 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:31:39 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:31:39 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:31:39 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:31:39 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:31:39 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:31:39 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:31:39 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:31:39 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:31:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:31:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2090ef6440ffb4684264d9b76510e1a1cc5a15ecae283251d3d36828ef40368f`  
		Last Modified: Fri, 02 Oct 2026 01:24:32 GMT  
		Size: 15.1 MB (15087392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:595605eaadbc9fb1698151f4be8d7ce5a5d035f79937f524b02c5203903b2ec4`  
		Last Modified: Fri, 02 Oct 2026 01:28:16 GMT  
		Size: 245.9 MB (245889344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ba5d87fc2b5bc938347eae8eca03aaf03a597681c55b7801a1c89ca22b41c3`  
		Last Modified: Fri, 02 Oct 2026 01:28:12 GMT  
		Size: 6.6 MB (6560833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f92b9785693f0fe17c8c6ca2799816a96a6e3de925d9e7bcee100d4a2aa8b66c`  
		Last Modified: Mon, 05 Oct 2026 21:31:53 GMT  
		Size: 22.6 MB (22637526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e418859098631b1a2081fb7f2328ff49790bc3e2f9c0a4da09bbf1911a4ff25f`  
		Last Modified: Mon, 05 Oct 2026 21:31:53 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac51009d790bc2106fb2d3f41bc3a1c9a04caffe2b024f26d77e35bec0d52b5d`  
		Last Modified: Mon, 05 Oct 2026 21:31:52 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff0d5cbbda56f6f27f6cb3cca4a208e0bb57f59b824dc4e7bf33dcfcb457702`  
		Last Modified: Mon, 05 Oct 2026 21:31:52 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:022b4072c7076874c062a1e3fd2b9ca34d3bb8b819bf328206b5a9e80ce6147a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4808555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c0158d7652c5669c5d5954d29544c37f452cc39ae9f98f1d70ace13969da558`

```dockerfile
```

-	Layers:
	-	`sha256:2fed6ad83baa65c71b757a26b636e97bbe943bf03f641d6c331637f09592aabd`  
		Last Modified: Mon, 05 Oct 2026 21:31:53 GMT  
		Size: 4.8 MB (4791551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b450b475a614adc4eb079722f027b69c6bee63dd33b9f8549b48871385ca2000`  
		Last Modified: Mon, 05 Oct 2026 21:31:52 GMT  
		Size: 17.0 KB (17004 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-25-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:cf1081f5d89b1f11b37e509f5b3d59f11df6de6d428b67574e99aadc27e8e378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.5 MB (345480874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56492143af77efe99acd47cf86c4f2a1ec3a6287b1c6ee162e6ede5c2bbe0119`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 04:08:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 04:08:28 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 04:08:28 GMT
ENV JAVA_VERSION=25.0.4.15
# Fri, 02 Oct 2026 04:31:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='df7c6142e8a2c090426792cdaa5a4d16d86eccd86ffd6ba65ede029aac0b5f09';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_aarch64_linux_25.0.4.15.tar.gz';          ;;        amd64|x86_64)          ESUM='56c26f137607ce5b4301a9958e4a43fa32a04c2e66bb75282ca19b4c12be8433';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_x64_linux_25.0.4.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='b754aba019a080c27a7542cc80fc0b41bafd5fed828ac3e0353f6a3ebe052848';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.15.tar.gz';          ;;        s390x)          ESUM='eda0444abf07e2842846d9c2948b09337828b8fb67d3eb8c490b2f7d58cb8637';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_s390x_linux_25.0.4.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Fri, 02 Oct 2026 04:31:16 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 04:31:16 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Fri, 02 Oct 2026 04:32:22 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Fri, 02 Oct 2026 04:32:22 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 12:26:31 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 12:26:32 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 02 Oct 2026 12:26:32 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:26:32 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 02 Oct 2026 12:26:32 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 02 Oct 2026 12:26:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 02 Oct 2026 12:26:32 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 02 Oct 2026 12:26:32 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 02 Oct 2026 12:26:33 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 02 Oct 2026 12:26:33 GMT
ARG USER_HOME_DIR=/root
# Fri, 02 Oct 2026 12:26:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 02 Oct 2026 12:26:33 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 02 Oct 2026 12:26:33 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd403c91de8e06cd8da5a0a31c266fa5060ae1a70af0b2814b716d1f4af21fe`  
		Last Modified: Fri, 02 Oct 2026 04:10:08 GMT  
		Size: 16.5 MB (16455482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a818a38419d1615b8257de54b2cd583333932a7853548164b81aef51ea7aa59`  
		Last Modified: Fri, 02 Oct 2026 04:33:14 GMT  
		Size: 252.4 MB (252393822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dac43f08155bf13460e28b1149e4a7dfca28dac67bb586aa9d13499e9c710ab`  
		Last Modified: Fri, 02 Oct 2026 04:33:08 GMT  
		Size: 5.6 MB (5579658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e805748934585e63f0c0e9a88b5c9275b4e1f756060ed35027cc6f7bd449378`  
		Last Modified: Fri, 02 Oct 2026 12:27:07 GMT  
		Size: 26.6 MB (26615377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcea550964550abd1d600598444a7fb132ed172744d39ff7edd3bcff5d85c468`  
		Last Modified: Fri, 02 Oct 2026 12:27:07 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50b40f9b1de9717e5e33ba8340a541b5138fd517dda6d9563dd233903989ddd`  
		Last Modified: Fri, 02 Oct 2026 12:27:06 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce9611b55802eaf5d78b4a73dc3fd6ff8ef9d8c9efd91141e3146b5417dfcea`  
		Last Modified: Fri, 02 Oct 2026 12:27:06 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:951050333e31d28f07d21c306379e9d094ff771823b977ab181849c63dfb3e68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4798252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd4203ac23af85880508c9ca3eba921a086f225100426cd5cded0fbff4e88de`

```dockerfile
```

-	Layers:
	-	`sha256:4d21977e7829d37dabba37a74b64a7f4ceba70b5a0a6638e9a2c8a133e4a34bc`  
		Last Modified: Fri, 02 Oct 2026 12:27:07 GMT  
		Size: 4.8 MB (4781332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:576cf335948fce7a916bb7b25daca92ee47a87c9abee523f26be954a734eab96`  
		Last Modified: Fri, 02 Oct 2026 12:27:06 GMT  
		Size: 16.9 KB (16920 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-25-noble` - linux; s390x

```console
$ docker pull maven@sha256:dd8c79350152ea65787d6547758ffa4996213684d53afcaf055bbb2092b841f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.7 MB (339724721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6130795196f8007901b982281834800139108deec3b001f16b89f914368a22`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 18 Sep 2026 21:22:48 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:22:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:22:48 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:22:50 GMT
ADD file:dbe84e9fbddf57955eb8069675a3842837c04eb1416213c2d50049efd3dad787 in / 
# Fri, 18 Sep 2026 21:22:50 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:43:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:43:48 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:43:48 GMT
ENV JAVA_VERSION=25.0.4.15
# Fri, 02 Oct 2026 01:59:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='df7c6142e8a2c090426792cdaa5a4d16d86eccd86ffd6ba65ede029aac0b5f09';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_aarch64_linux_25.0.4.15.tar.gz';          ;;        amd64|x86_64)          ESUM='56c26f137607ce5b4301a9958e4a43fa32a04c2e66bb75282ca19b4c12be8433';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_x64_linux_25.0.4.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='b754aba019a080c27a7542cc80fc0b41bafd5fed828ac3e0353f6a3ebe052848';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_ppc64le_linux_25.0.4.15.tar.gz';          ;;        s390x)          ESUM='eda0444abf07e2842846d9c2948b09337828b8fb67d3eb8c490b2f7d58cb8637';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.4.15/ibm-semeru-open-jdk_s390x_linux_25.0.4.15.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Fri, 02 Oct 2026 01:59:42 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:59:42 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Fri, 02 Oct 2026 02:00:46 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Fri, 02 Oct 2026 02:00:46 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 04:00:23 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:21:57 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 05 Oct 2026 21:21:57 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:21:57 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 05 Oct 2026 21:21:57 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 05 Oct 2026 21:21:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 05 Oct 2026 21:21:57 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 05 Oct 2026 21:21:57 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 05 Oct 2026 21:21:57 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 05 Oct 2026 21:21:57 GMT
ARG USER_HOME_DIR=/root
# Mon, 05 Oct 2026 21:21:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 05 Oct 2026 21:21:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 05 Oct 2026 21:21:57 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:108aebd72dd457ee7da6e519c157e975c9f75fedf3563478a69f28606232305c`  
		Last Modified: Fri, 18 Sep 2026 22:30:25 GMT  
		Size: 29.9 MB (29945320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02519c38a5412dcf35c56202f2b64285f4e3c46ace32836fc6dd10bfc9f34f5b`  
		Last Modified: Fri, 02 Oct 2026 01:45:53 GMT  
		Size: 15.2 MB (15196202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8964a2b0bedc411cd1f94bbfdd74e865678d5cb35da3a25c3df3a7dd3d31804`  
		Last Modified: Fri, 02 Oct 2026 02:01:26 GMT  
		Size: 253.8 MB (253803120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f24b13ada25f55ce3c4946969356fda94af4945b14e0ca15969f67f0f0b33fa`  
		Last Modified: Fri, 02 Oct 2026 02:01:21 GMT  
		Size: 7.0 MB (7010792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10774bcc989fb676ba077844cf02c570f254a9a5c53608a0f3d55712769aea62`  
		Last Modified: Fri, 02 Oct 2026 04:00:48 GMT  
		Size: 23.7 MB (23709267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115553e0c16972e4e2b72580ec0f390aff3165b80726454e1a8573f260abec94`  
		Last Modified: Mon, 05 Oct 2026 21:22:15 GMT  
		Size: 10.1 MB (10059015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ada97bb24b976c6bc8055dc8a72430c8cc3927f5a0809dc9a372d374e8c5466`  
		Last Modified: Mon, 05 Oct 2026 21:22:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecbf77e44f12dd471dd4f2a1885ac2c680ac9a8a6d193685dedd95074848b9b`  
		Last Modified: Mon, 05 Oct 2026 21:22:15 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-25-noble` - unknown; unknown

```console
$ docker pull maven@sha256:4c982bdd75c588e0e3e41557d988b7df0488db5acdfae544bdde7e66a94c4d7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4792567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4828c3fa56325811d4cedc5610021fed42376955ec56aca906c40f4412939953`

```dockerfile
```

-	Layers:
	-	`sha256:d8db11010d1a749d62c163d4f5db6a5bc91eebe9d7d5931bf4ec05ef1d96e4c2`  
		Last Modified: Mon, 05 Oct 2026 21:22:15 GMT  
		Size: 4.8 MB (4775696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15aaf9b736eecf45c83c7676cc4bcef280722f6a330c858a28c65eeffc38079c`  
		Last Modified: Mon, 05 Oct 2026 21:22:15 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json
