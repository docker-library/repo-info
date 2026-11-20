## `maven:3-ibm-semeru-11-noble`

```console
$ docker pull maven@sha256:09e48c7dcc6d2fec1298765a5610bb9bd243668179b5b29bf9257bc206df46c9
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

### `maven:3-ibm-semeru-11-noble` - linux; amd64

```console
$ docker pull maven@sha256:894d1ea84079ab16daf4c7cf48d27e80fef4f00a470329d52aef377061a9a9a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.7 MB (309714513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec50c47acb07999a31a13df7706139eee476d62c6612596ddea1db08066c342f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:19:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:19:23 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:19:23 GMT
ENV JAVA_VERSION=11.0.33.0
# Fri, 20 Nov 2026 03:19:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='25947aef6c52a1ada2f53d73d8e71ee2e79398977f2f6f46e9f95886a917b085';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_aarch64_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='dc4c3d88a1e2d64152e5c14109b5fbf35a1654d45b92b3419a2325c91ab15013';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_x64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a9d283c104fae68b11af7c3c2fa800e1d42f3f370c50babcdfccec41f103b3b1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_ppc64le_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='8a006c70e7f5e735e61fed897c20777ebe1a20b5bdab304c30a65b08ad50e176';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 03:19:31 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:19:31 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Fri, 20 Nov 2026 03:20:35 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Fri, 20 Nov 2026 03:20:35 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:15:21 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:15:21 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:15:21 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:21 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:15:21 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:15:21 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:15:21 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:15:21 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:15:21 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:15:21 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:15:21 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:15:21 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:15:21 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3572fae0b2efea57d67dba860f82d0dcc0974eb9fb02b594907ed01b28bb42e`  
		Last Modified: Fri, 20 Nov 2026 03:20:53 GMT  
		Size: 18.9 MB (18888599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67e25b5fed4875b978e49cacc1fa5b5b315ea7b0fcdbca08b9bbc0deb808c2d`  
		Last Modified: Fri, 20 Nov 2026 03:20:57 GMT  
		Size: 222.9 MB (222860233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccceb88fea90a6843f531db1033462e6ef3bfd4fbde56eba47aec1ce80335d59`  
		Last Modified: Fri, 20 Nov 2026 03:20:52 GMT  
		Size: 5.5 MB (5533143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:686fa6def26e014df38996bf5b855dba21ee1c7110ea3dafd5181c2c200e8f92`  
		Last Modified: Fri, 20 Nov 2026 06:15:35 GMT  
		Size: 22.6 MB (22579215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5303a1e670dc82bef9fdbad3111f25e0c6b402dadc9651a79ae28689cb9459fc`  
		Last Modified: Fri, 20 Nov 2026 06:15:35 GMT  
		Size: 10.1 MB (10059021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8009fa9669746b10611a2071b10201d77cb4a648beee44dd5490cf12aa0592`  
		Last Modified: Fri, 20 Nov 2026 06:15:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8426e73fb2c174f133337a0cd9179081c6e8358b99c3a8960b748310774f25fe`  
		Last Modified: Fri, 20 Nov 2026 06:15:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:d40cd59c995a69cf5c3b8c8b147207d9d84e5ae3f27ae7c5d59f79ce61bfecc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4808821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc9450af394d456f00d2acc3a895a3ac0c64f46bd1be607aa85f050f3728369`

```dockerfile
```

-	Layers:
	-	`sha256:e060b35c1dfe6c1ec3bbcc502b86e512c166d5f06367eeb7ba002db5d1aff019`  
		Last Modified: Fri, 20 Nov 2026 06:15:34 GMT  
		Size: 4.8 MB (4791951 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d4b481cceded7d416797c9ed8306396bde6e1ac7e737e20cc2257637c20cad1`  
		Last Modified: Fri, 20 Nov 2026 06:15:34 GMT  
		Size: 16.9 KB (16870 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-11-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:0caa488a7a885eb86d042e86ba54e0b804bf850501f2a8df094420f455268507
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.3 MB (305273462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3059ca1265d5280138b570484fcb44d6884cb24f9a01573ba1cb66657c701c18`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:20:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:20:09 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:20:09 GMT
ENV JAVA_VERSION=11.0.33.0
# Fri, 20 Nov 2026 03:20:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='25947aef6c52a1ada2f53d73d8e71ee2e79398977f2f6f46e9f95886a917b085';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_aarch64_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='dc4c3d88a1e2d64152e5c14109b5fbf35a1654d45b92b3419a2325c91ab15013';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_x64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a9d283c104fae68b11af7c3c2fa800e1d42f3f370c50babcdfccec41f103b3b1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_ppc64le_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='8a006c70e7f5e735e61fed897c20777ebe1a20b5bdab304c30a65b08ad50e176';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 03:20:18 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:20:18 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Fri, 20 Nov 2026 03:21:21 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Fri, 20 Nov 2026 03:21:21 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 06:12:27 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:12:27 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 06:12:27 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:12:27 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 06:12:27 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 06:12:27 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 06:12:27 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 06:12:27 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 06:12:27 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 06:12:27 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 06:12:27 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 06:12:27 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 06:12:27 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e896bfa379b1c21e0465b8321666b397b366f708eb13232dac80c1ee02f6e72`  
		Last Modified: Fri, 20 Nov 2026 03:21:41 GMT  
		Size: 18.7 MB (18684078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f10e62e529ab0f375fdba28f5e70dace1f8ff104cff120393213e34cb4c0ee01`  
		Last Modified: Fri, 20 Nov 2026 03:21:45 GMT  
		Size: 219.6 MB (219616843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23f3e0a23b75fccc3c60b51ee0de6a7302e7e8480b45029243df9aa9cffbbc7`  
		Last Modified: Fri, 20 Nov 2026 03:21:41 GMT  
		Size: 5.3 MB (5302250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a1b84555a19a33f421dfa66b0ef4a953dad06bf76fc651d1dd1e65e88f7322`  
		Last Modified: Fri, 20 Nov 2026 06:12:41 GMT  
		Size: 22.6 MB (22644957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d259008d4e0061ccf84186d489d61e33955b609fde9f6ea61958f9e14c9edb`  
		Last Modified: Fri, 20 Nov 2026 06:12:40 GMT  
		Size: 10.1 MB (10059011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80cc718e75b236da04cb326e506df96f1686ff0027c369e66bf732c3f12dd30c`  
		Last Modified: Fri, 20 Nov 2026 06:12:40 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eacef40365817c72fbd68c89c8ea159165bd100ebccf09745149090476cb1f8`  
		Last Modified: Fri, 20 Nov 2026 06:12:40 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:e41962673d4508c4520b29c40555e78e3a4c31060703fed2a70943ee58de8983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4813561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42b8ed0f0474bbac7ef1a22766bb18c3f973f16cff065354c5f308fb9998cdd0`

```dockerfile
```

-	Layers:
	-	`sha256:947a0c52377fd7e9163a35b69516ca94062590d53afc516b63940ce3ab531bfd`  
		Last Modified: Fri, 20 Nov 2026 06:12:40 GMT  
		Size: 4.8 MB (4796557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bba03a9b0fa0b77535426be43993195d1df89bffbb999dbd63e467df12e69e6e`  
		Last Modified: Fri, 20 Nov 2026 06:12:40 GMT  
		Size: 17.0 KB (17004 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-11-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:026f000c111a4380a6296ff75c54398108e5ed10f00f17e46ebefbbf84c0331d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.1 MB (323106234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7fa59fdbbf79baea78d298c8f992409aadb7de34cdda8b25510e7b7eaabcdaf`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:29:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:29:34 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:29:34 GMT
ENV JAVA_VERSION=11.0.33.0
# Fri, 20 Nov 2026 03:30:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='25947aef6c52a1ada2f53d73d8e71ee2e79398977f2f6f46e9f95886a917b085';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_aarch64_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='dc4c3d88a1e2d64152e5c14109b5fbf35a1654d45b92b3419a2325c91ab15013';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_x64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a9d283c104fae68b11af7c3c2fa800e1d42f3f370c50babcdfccec41f103b3b1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_ppc64le_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='8a006c70e7f5e735e61fed897c20777ebe1a20b5bdab304c30a65b08ad50e176';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 03:30:54 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:30:54 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Fri, 20 Nov 2026 03:32:01 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Fri, 20 Nov 2026 03:32:01 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 09:20:16 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 09:20:17 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 09:20:17 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 09:20:17 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 09:20:17 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 09:20:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 09:20:17 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 09:20:18 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 09:20:19 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 09:20:19 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 09:20:19 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 09:20:19 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 09:20:19 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f335e0a45616c1a082b374572780f3510ef31d6290be41cf26baf777392265`  
		Last Modified: Fri, 20 Nov 2026 03:31:34 GMT  
		Size: 20.6 MB (20644241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d0e29f8395697fb8ca8843c84847459583f28fddb98d89d961ff00c7fd4186d`  
		Last Modified: Fri, 20 Nov 2026 03:32:51 GMT  
		Size: 226.8 MB (226783834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbdaf12ba969376e582d3b799d8c1dc938b907f3d376d750e0d4a906a864a571`  
		Last Modified: Fri, 20 Nov 2026 03:32:46 GMT  
		Size: 4.6 MB (4596536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf323db08a4fcbe468974cecc7b99804280a1eaccd7a5266d7961f4d19f371d`  
		Last Modified: Fri, 20 Nov 2026 09:20:54 GMT  
		Size: 26.6 MB (26615353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d018c8d30cac9a1eab88598379c84d0c711c7b4786b00dc2902ae66a687378`  
		Last Modified: Fri, 20 Nov 2026 09:20:54 GMT  
		Size: 10.1 MB (10059022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dabdde2d31eedddb0ad024e503170ea6a1472fb3cdb1ab94865fd6b42549e358`  
		Last Modified: Fri, 20 Nov 2026 09:20:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93704ced4402c6ba543638b9dfddec7f03d4f49515c921c3010c847477f08842`  
		Last Modified: Fri, 20 Nov 2026 09:20:53 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:9c742e6c4af468b861d3e046526ef32312260464bb0cbcb0512f6652c851328a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4816295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:440305415f57274a61e1081e522358b49bdba6e51270b3b70674999d0710362f`

```dockerfile
```

-	Layers:
	-	`sha256:9070067ce0a88faa68cf455a44ecfaeced59bcfeeee890bcf5492ea20a41a56d`  
		Last Modified: Fri, 20 Nov 2026 09:20:53 GMT  
		Size: 4.8 MB (4799374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e601d71b4b11a608a1313835c4eafe37b83948eefb174f5c8a23fcfc10f53dcc`  
		Last Modified: Fri, 20 Nov 2026 09:20:53 GMT  
		Size: 16.9 KB (16921 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-11-noble` - linux; s390x

```console
$ docker pull maven@sha256:c2b4beb18498525dc533fd61699c80f07684ffed3a467f6e8878937ec9ad5730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.1 MB (315054561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d905b7b9e5898117c6a9eaafe6a338e7e419380329b83f7a89f76a4ab5061af`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 10 Nov 2026 18:30:54 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:30:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:30:54 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:30:56 GMT
ADD file:f57d73889514e35770bca8a6b376ae28a49d35f7eca0530120c0e5edda118257 in / 
# Tue, 10 Nov 2026 18:30:56 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:13:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:13:10 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:13:10 GMT
ENV JAVA_VERSION=11.0.33.0
# Fri, 20 Nov 2026 07:08:21 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='25947aef6c52a1ada2f53d73d8e71ee2e79398977f2f6f46e9f95886a917b085';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_aarch64_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='dc4c3d88a1e2d64152e5c14109b5fbf35a1654d45b92b3419a2325c91ab15013';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_x64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a9d283c104fae68b11af7c3c2fa800e1d42f3f370c50babcdfccec41f103b3b1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_ppc64le_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='8a006c70e7f5e735e61fed897c20777ebe1a20b5bdab304c30a65b08ad50e176';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jdk_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Fri, 20 Nov 2026 07:08:21 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 07:08:21 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Fri, 20 Nov 2026 07:09:25 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Fri, 20 Nov 2026 07:09:25 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 08:10:00 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 08:10:00 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Fri, 20 Nov 2026 08:10:00 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 08:10:00 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Fri, 20 Nov 2026 08:10:00 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Fri, 20 Nov 2026 08:10:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 20 Nov 2026 08:10:00 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Fri, 20 Nov 2026 08:10:00 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Fri, 20 Nov 2026 08:10:00 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Fri, 20 Nov 2026 08:10:00 GMT
ARG USER_HOME_DIR=/root
# Fri, 20 Nov 2026 08:10:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 20 Nov 2026 08:10:00 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 20 Nov 2026 08:10:00 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:d6a4828736418640f88890fd03d6d03e5c40e83e24d598ed323f41ba7e349b4f`  
		Last Modified: Tue, 10 Nov 2026 20:09:53 GMT  
		Size: 30.0 MB (29967433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060f9e2a48814b3d0380d682019325c1db360f83a7c028ada54edceaf4b7e01a`  
		Last Modified: Fri, 20 Nov 2026 03:14:35 GMT  
		Size: 18.3 MB (18327453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5129cb3644674f052a70233cb26e196e41aca6daeef2be15c4edd5ad85385a6`  
		Last Modified: Fri, 20 Nov 2026 07:09:55 GMT  
		Size: 227.2 MB (227207360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46bed771ff727fecc7de7fbcbf03734497c83ac7cfff0294042f9c893f81118`  
		Last Modified: Fri, 20 Nov 2026 07:09:51 GMT  
		Size: 5.8 MB (5779373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0ff57140936ad984be408178e653154e71b949d65a71876a3cbbc917354569e`  
		Last Modified: Fri, 20 Nov 2026 08:10:20 GMT  
		Size: 23.7 MB (23712957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89928b0fb71fd79a5593d8bd896e0a6855dcac27bbc0eb39fb3d8122ec4aa798`  
		Last Modified: Fri, 20 Nov 2026 08:10:19 GMT  
		Size: 10.1 MB (10058980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb7c4f8aa4f8771d72f6ba244d34ce3239ae0e106e5e2d5157e9da5c2cfd25e`  
		Last Modified: Fri, 20 Nov 2026 08:10:19 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1f06ecda36896bc17f2f2b71dcd38eacfd8721159407db867f15c8291b78a5`  
		Last Modified: Fri, 20 Nov 2026 08:10:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:f0c3819c20ba073e232db3c159ae479fd658ba0c6c5935f52d29cf2b652b6370
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4810609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ca4e77f0a69304d4366332057a90a83ea84fa4b60520d4b32a26b4175aa2d6`

```dockerfile
```

-	Layers:
	-	`sha256:c03213601c11858b1b43ccf24ee52939bd6ae65d12b1bd7fa74d905a2c87026d`  
		Last Modified: Fri, 20 Nov 2026 08:10:19 GMT  
		Size: 4.8 MB (4793738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c9d6136055e1acbe2b2e52659749453a5cc84651015d2e6492559bf52928e8c`  
		Last Modified: Fri, 20 Nov 2026 08:10:19 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json
