## `maven:3-ibm-semeru-21-noble`

```console
$ docker pull maven@sha256:24c3cabf012655912a7c2ebc70868b995ee276a938359caf78138f4b6e85b43e
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
$ docker pull maven@sha256:7cf67ed3ce3d49031fb589eb946d41781fadc1b4406e62c9c833a8f7f92c210b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.3 MB (326269173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59098c24d4626522772b9383af5938ad2f9b7a15bef73099187d27bf3530d045`
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
# Wed, 11 Nov 2026 23:24:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:24:43 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:24:43 GMT
ENV JAVA_VERSION=21.0.13.0
# Wed, 11 Nov 2026 23:24:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='c8730b3746f3c2e5eb5ce7cc4415d4b86260cf7e9b12de469607c0c9c3c32dfb';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_aarch64_linux_21.0.13.0.tar.gz';          ;;        amd64|x86_64)          ESUM='0c92b61ea02efe73a7b6d346f1d8324efd50fe1fb848bf3a031a577dc1181d45';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_x64_linux_21.0.13.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='992b583b2f477eca176dc77b997048b8baf63e465c26846e4e5456b21a536196';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_ppc64le_linux_21.0.13.0.tar.gz';          ;;        s390x)          ESUM='b72fb0510300707defbc73771509fd8bcfccb27cf5a17155a60ac5605155e67c';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_s390x_linux_21.0.13.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:24:50 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:24:50 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:25:53 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 02:16:06 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:16:06 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:16:06 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:06 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:16:06 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:16:06 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:16:06 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:16:06 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:16:06 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:16:06 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:16:06 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:16:06 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:16:06 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3894667e0d5cfc087eb8b26b77f9d752f7159399e3192387e3252eb2bdc6f8d8`  
		Last Modified: Wed, 11 Nov 2026 23:26:15 GMT  
		Size: 12.8 MB (12793060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e2f78d8bb84c0e0856fdd580d626f73910443307bc03c4d660c797c71107c55`  
		Last Modified: Wed, 11 Nov 2026 23:26:19 GMT  
		Size: 242.1 MB (242122618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e44be0b1ffa77c2f23f7d2531460135f9ba006c9f3cb974d4790e88644923a3`  
		Last Modified: Wed, 11 Nov 2026 23:26:15 GMT  
		Size: 6.5 MB (6506957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2201f6070038dc1bd52d06d16e9a40c9d7b1dc4fe39b36da1b843b98608aac`  
		Last Modified: Thu, 12 Nov 2026 02:16:21 GMT  
		Size: 25.0 MB (24993300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2458cbe58b5b15ded9d2ede465edafce1cee6744e67e76a36855565023322b3`  
		Last Modified: Thu, 12 Nov 2026 02:16:20 GMT  
		Size: 10.1 MB (10059010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8176281439b4df1e935fdf6f915f8940b4b77d266b7c333a7630e9572e73db7`  
		Last Modified: Thu, 12 Nov 2026 02:16:19 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6780863d4a8e14cc3f2ffe04dca6a005e2c908e0162a045c88fb4d0871ac484e`  
		Last Modified: Thu, 12 Nov 2026 02:16:19 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:9352b5a6b5f4d43021a1ca4de4e3b18fc28861519f4308525dac8cd6502078a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4796205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01593c9c808ab5af9f2a5a361255330a569f405c7c4cd12b423ca06cae815fad`

```dockerfile
```

-	Layers:
	-	`sha256:598cf8b312f7b4429caa5306a3db5c0064d70ea2fc876b73a260c39c0d60f818`  
		Last Modified: Thu, 12 Nov 2026 02:16:20 GMT  
		Size: 4.8 MB (4779334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25c7ff2b5d4690e7afd82696b26645bf5d6965be4f84980b8b7cd0f8f94f6b87`  
		Last Modified: Thu, 12 Nov 2026 02:16:19 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-21-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:58b5de7aafee3d3d040c2fe5da1163cf5dd4af3589fb0c85096a7d4a7a765d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.0 MB (318992157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc5ba5c70cfa17fc97a0855047a61c40654baee72a5a2e52aabbc17d0bc30211`
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
# Wed, 11 Nov 2026 23:28:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:28:45 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:28:45 GMT
ENV JAVA_VERSION=21.0.13.0
# Wed, 11 Nov 2026 23:28:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='c8730b3746f3c2e5eb5ce7cc4415d4b86260cf7e9b12de469607c0c9c3c32dfb';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_aarch64_linux_21.0.13.0.tar.gz';          ;;        amd64|x86_64)          ESUM='0c92b61ea02efe73a7b6d346f1d8324efd50fe1fb848bf3a031a577dc1181d45';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_x64_linux_21.0.13.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='992b583b2f477eca176dc77b997048b8baf63e465c26846e4e5456b21a536196';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_ppc64le_linux_21.0.13.0.tar.gz';          ;;        s390x)          ESUM='b72fb0510300707defbc73771509fd8bcfccb27cf5a17155a60ac5605155e67c';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_s390x_linux_21.0.13.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:28:53 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:28:53 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:29:56 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 02:15:57 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:15:57 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:15:57 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:15:57 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:15:57 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:15:57 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:15:57 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:15:57 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:15:57 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:15:57 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:15:57 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:15:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:15:57 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c97d9a41cea8098ce34818a4aa859c53ce18a9f69a6413ea8ddf3c87542a4e7`  
		Last Modified: Wed, 11 Nov 2026 23:30:17 GMT  
		Size: 12.8 MB (12830415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb917eaa999f200abc2b1d8952d4248af23450e7faf89b39a5266794dd04e42`  
		Last Modified: Wed, 11 Nov 2026 23:30:21 GMT  
		Size: 238.2 MB (238172035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1993e25afbbd61d3db03e5f441988b0bd575fed59685993e8f56748fd6d79910`  
		Last Modified: Wed, 11 Nov 2026 23:30:17 GMT  
		Size: 6.3 MB (6319768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0e2ecced2cc4aff81e827193edb9943f610b95a6561c845acfc5e4f84953f7`  
		Last Modified: Thu, 12 Nov 2026 02:16:11 GMT  
		Size: 22.6 MB (22644661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a100d50c8be8a2b7be4e516c7c4908bfc2a226ed899c4470b9968350ad3501`  
		Last Modified: Thu, 12 Nov 2026 02:16:11 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbafa2f65070c93568d5791fb852ad2d6aa688f441e04cfb80cf0b72ccae0872`  
		Last Modified: Thu, 12 Nov 2026 02:16:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090a40f340db0b9774ccd65061569fcc9fa96111c048b254830f7560eb245474`  
		Last Modified: Thu, 12 Nov 2026 02:16:10 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:725d1cdfad27f40d1f11a0e75f44599eeaa99815b8cc59f35b0699fc2e26e565
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4800943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f14c0ad6c52c844b5160fd0c4718f61d3913852a160e8fb451387559a307c51`

```dockerfile
```

-	Layers:
	-	`sha256:d15d1deb6240af16a9eccf93a0b2601faede63dac84a4acd57cdb0b7bb302261`  
		Last Modified: Thu, 12 Nov 2026 02:16:11 GMT  
		Size: 4.8 MB (4783940 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d74a7e644de2f0ee5aea628dacf19409a2b10e23ceac81e4f31e53da7eb2bdf3`  
		Last Modified: Thu, 12 Nov 2026 02:16:10 GMT  
		Size: 17.0 KB (17003 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-21-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:2b49fff636b924c50c824692fdb2fca32956ad971d168b60e51ca590fdb52e6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336562699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c0eab0e548406ff3450bf4190088668a80f357d4012e34c2c2a7c3a08a379b`
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
ENV JAVA_VERSION=21.0.13.0
# Thu, 12 Nov 2026 02:53:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='c8730b3746f3c2e5eb5ce7cc4415d4b86260cf7e9b12de469607c0c9c3c32dfb';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_aarch64_linux_21.0.13.0.tar.gz';          ;;        amd64|x86_64)          ESUM='0c92b61ea02efe73a7b6d346f1d8324efd50fe1fb848bf3a031a577dc1181d45';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_x64_linux_21.0.13.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='992b583b2f477eca176dc77b997048b8baf63e465c26846e4e5456b21a536196';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_ppc64le_linux_21.0.13.0.tar.gz';          ;;        s390x)          ESUM='b72fb0510300707defbc73771509fd8bcfccb27cf5a17155a60ac5605155e67c';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_s390x_linux_21.0.13.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Thu, 12 Nov 2026 02:53:54 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 02:53:54 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Thu, 12 Nov 2026 02:55:02 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 11:30:35 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 11:30:35 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 11:30:35 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 11:30:35 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 11:30:35 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 11:30:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 11:30:35 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 11:30:36 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 11:30:37 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 11:30:37 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 11:30:37 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 11:30:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 11:30:37 GMT
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
	-	`sha256:a64fc863fc48573134cb701c912f6a68ee7f7e2448fbbd2b7860bda65e804618`  
		Last Modified: Thu, 12 Nov 2026 02:56:49 GMT  
		Size: 246.3 MB (246300135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f4881f7b9f2348872977f7ce3d2e58539512b067fbcc257be0c181a6d585ac3`  
		Last Modified: Thu, 12 Nov 2026 02:56:44 GMT  
		Size: 5.4 MB (5414179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b659cba87be2e96a8fe89792892b667863e3c1fab956f435e38607ad5d4464`  
		Last Modified: Thu, 12 Nov 2026 11:31:10 GMT  
		Size: 26.6 MB (26615710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237dbb6e18cc1d85e4cefc9c77cf8c1318a589bee5ca491b292d06f46f656e0a`  
		Last Modified: Thu, 12 Nov 2026 11:31:10 GMT  
		Size: 10.1 MB (10059014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac25bd2010321ae2f9609e888c54628dda0c020e0cc4fade6910974484e61da`  
		Last Modified: Thu, 12 Nov 2026 11:31:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911bd60d2a1c39c1fd71cd216b50a9e16c25126bbd9cd86a4da32620aaa18daa`  
		Last Modified: Thu, 12 Nov 2026 11:31:09 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:8b4efc79924e7e96743cbf1d3f843a52450bf43d64cd208e0d90f9fbcf95719e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4803678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:644dc3eb4ed5510df204fddf11010c1a0759cdafc64ce8b1908f67d24b71222e`

```dockerfile
```

-	Layers:
	-	`sha256:5f2b57d04c8a6baf96dd9a312eb08434420c95de56e4bf3c0c9455f7cf19b880`  
		Last Modified: Thu, 12 Nov 2026 11:31:09 GMT  
		Size: 4.8 MB (4786757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a8047c84871162a1605463c6c084a2141a4ac23b524ffcbe8148bc1e94ebbb7`  
		Last Modified: Thu, 12 Nov 2026 11:31:09 GMT  
		Size: 16.9 KB (16921 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-21-noble` - linux; s390x

```console
$ docker pull maven@sha256:3636bc73a097a44cf4f28decbca53ef104b06a2fe770bc1e521a9330f37bc74f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.9 MB (329897663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39e074e893a0da7f5629fc9c42e9a31b8132dac0c03234ae09394a505e1c034d`
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
# Wed, 11 Nov 2026 23:19:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:19:05 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:19:05 GMT
ENV JAVA_VERSION=21.0.13.0
# Wed, 11 Nov 2026 23:37:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='c8730b3746f3c2e5eb5ce7cc4415d4b86260cf7e9b12de469607c0c9c3c32dfb';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_aarch64_linux_21.0.13.0.tar.gz';          ;;        amd64|x86_64)          ESUM='0c92b61ea02efe73a7b6d346f1d8324efd50fe1fb848bf3a031a577dc1181d45';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_x64_linux_21.0.13.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='992b583b2f477eca176dc77b997048b8baf63e465c26846e4e5456b21a536196';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_ppc64le_linux_21.0.13.0.tar.gz';          ;;        s390x)          ESUM='b72fb0510300707defbc73771509fd8bcfccb27cf5a17155a60ac5605155e67c';          BINARY_URL='https://github.com/ibmruntimes/semeru21-binaries/releases/download/jdk-21.0.13.0/ibm-semeru-open-jdk_s390x_linux_21.0.13.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:37:20 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:37:20 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:38:26 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 03:11:38 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 03:11:38 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 03:11:38 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 03:11:38 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 03:11:38 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 03:11:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 03:11:38 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 03:11:38 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 03:11:38 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 03:11:38 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 03:11:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 03:11:38 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 03:11:38 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f9b7990f10daaf474e83ccd2a525e7b4c76b857b054e76380c42a2ddad6bdb4`  
		Last Modified: Wed, 11 Nov 2026 23:20:30 GMT  
		Size: 13.1 MB (13098103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d89245539939ffe9e8de4779bec830cd5ca57545581769366664a884b157b99`  
		Last Modified: Wed, 11 Nov 2026 23:39:04 GMT  
		Size: 246.5 MB (246472686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3132f2fda381fda44baa7e7bdaeda4a2e655ce10624b6b47e7bf8845693168b4`  
		Last Modified: Wed, 11 Nov 2026 23:38:59 GMT  
		Size: 6.6 MB (6586155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97621007e329391a5c6a412a84e1a069bab8b6c8900299427b13b8d28abf0efc`  
		Last Modified: Thu, 12 Nov 2026 03:11:57 GMT  
		Size: 23.7 MB (23713113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181a8aa118ca36cc503caa241ec3ad4a8f641d6d0220f0ce79e244f2daa09824`  
		Last Modified: Thu, 12 Nov 2026 03:11:57 GMT  
		Size: 10.1 MB (10059017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666f34bf9c4b3afa94dabf5cdfdc64fb5708bafa85f38dc1a974d0e77f431ecd`  
		Last Modified: Thu, 12 Nov 2026 03:11:57 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5bea02e632256d4cd7f355e35e5116f9ae675ad878da3c3bd46f27b7ac2f179`  
		Last Modified: Thu, 12 Nov 2026 03:11:56 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-21-noble` - unknown; unknown

```console
$ docker pull maven@sha256:7abe4fb93286372bb5ffff7108e9622b582fe333bf91951eac5c77bd8cefddb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4797992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24e77e61e1bdebeac3c1883ef0e01a5c1b79363208335870780befc163501aaa`

```dockerfile
```

-	Layers:
	-	`sha256:760339cbf8b701e1af9f6a26fd640065c9b9ca05a8c1b5f2a3330689291f23b7`  
		Last Modified: Thu, 12 Nov 2026 03:11:57 GMT  
		Size: 4.8 MB (4781121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfc6f1198001949d5dce46b19fb32381535a949ec2f1647070a015db422c420c`  
		Last Modified: Thu, 12 Nov 2026 03:11:56 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json
