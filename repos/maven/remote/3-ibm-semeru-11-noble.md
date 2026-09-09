## `maven:3-ibm-semeru-11-noble`

```console
$ docker pull maven@sha256:b2b78879c06c98fa4ba44b9f42f05bd4a883c886a14618e5333e6c4c2e151c2b
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
$ docker pull maven@sha256:cb1e1df4af8106d81ffdf56536de387273b7bc8b5da3950d82cb292e65bb1a0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.6 MB (302647105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53c274a13e4b09431d568cc4daae1e3166c6690d3bd867ca72aef108d0e6bc06`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:26:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:26:05 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:26:05 GMT
ENV JAVA_VERSION=11.0.32.10
# Wed, 09 Sep 2026 02:26:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='9403e9d872d611c663273157d6a8a07eee843d71bacdfa7ea4b3b4e250514f99';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_aarch64_linux_11.0.32.10.tar.gz';          ;;        amd64|x86_64)          ESUM='e20d7b93c0293d9a1db89d415725776a9e4c237d194d7a35531b08cd37f9c546';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_x64_linux_11.0.32.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='f62cffcfac961321db7eca4fa9bf5efbe6de9d375d08d57a964212ca97821eab';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_ppc64le_linux_11.0.32.10.tar.gz';          ;;        s390x)          ESUM='c92dc7faec97a0f4a4bcb36243a7776cd86bb90827358aeb316e7d15d31bdbdc';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_s390x_linux_11.0.32.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 02:26:11 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:26:11 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 09 Sep 2026 02:27:14 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 09 Sep 2026 02:27:14 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 04:38:11 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:38:11 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:38:11 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:38:11 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:38:11 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:38:11 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:38:11 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:38:11 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:38:11 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:38:11 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:38:11 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:38:11 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:38:11 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97862a287cfbce7d4f021c6606fc9a5e61a7a6343c73bd4160ffc36ba5090dea`  
		Last Modified: Wed, 09 Sep 2026 02:27:33 GMT  
		Size: 12.8 MB (12772585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723d200d64b318a1b019b49041e241498cd4f37b6ee77dd94980db3dd0594eb1`  
		Last Modified: Wed, 09 Sep 2026 02:27:38 GMT  
		Size: 222.7 MB (222704387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147778d2a4f7fb3a4e61398ef1d291527af64858aa5c2bb59e2cc6401e9c61ec`  
		Last Modified: Wed, 09 Sep 2026 02:27:34 GMT  
		Size: 5.5 MB (5468866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991652058f17e977e991f25748e6aaa7f2390be6ffa9bcbbf038b245d97c3c35`  
		Last Modified: Wed, 09 Sep 2026 04:38:26 GMT  
		Size: 22.6 MB (22577040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c43a52d7b9b2e3eabc90f01bc90bd29bc9f1d50c84cdc5da88c8880f65363c9`  
		Last Modified: Wed, 09 Sep 2026 04:38:25 GMT  
		Size: 9.4 MB (9359969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b20611d0899013466c85b54abeea46890926d3b898333cd7352cfdfb6bb44ba9`  
		Last Modified: Wed, 09 Sep 2026 04:38:25 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e831e8aa3a8d6162a6442197d681d3f342bc4b0bdc234e9f634ce7257568f0`  
		Last Modified: Wed, 09 Sep 2026 04:38:25 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:6f4754f46b0892a10740b11cfd8dc53d31ea4a0b94ef02ae930c85f4ff1448bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4804397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e1ca90f4e1646ba05266618ec47035e5d6803669cf9c77e3933df0455b89cf`

```dockerfile
```

-	Layers:
	-	`sha256:1f1ed6332d21935722eca3dee283a31a7067d4d1866990e8a3848ebfdca2d843`  
		Last Modified: Wed, 09 Sep 2026 04:38:25 GMT  
		Size: 4.8 MB (4787530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c6469e9ae1ad4040cf1e4f6a37e6116f9b61a13e1cdf0beaa1eb7fad51ec415`  
		Last Modified: Wed, 09 Sep 2026 04:38:25 GMT  
		Size: 16.9 KB (16867 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-11-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:87e60f444299db300b6090087f5d99be9abaae72783a4f53ee9c0566797665eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.5 MB (298486640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fe44bd056973bdc08cefc64f39da54417f3458350afd79aa04ed11d17816caa`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:23:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:23:27 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:23:27 GMT
ENV JAVA_VERSION=11.0.32.10
# Wed, 09 Sep 2026 02:23:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='9403e9d872d611c663273157d6a8a07eee843d71bacdfa7ea4b3b4e250514f99';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_aarch64_linux_11.0.32.10.tar.gz';          ;;        amd64|x86_64)          ESUM='e20d7b93c0293d9a1db89d415725776a9e4c237d194d7a35531b08cd37f9c546';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_x64_linux_11.0.32.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='f62cffcfac961321db7eca4fa9bf5efbe6de9d375d08d57a964212ca97821eab';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_ppc64le_linux_11.0.32.10.tar.gz';          ;;        s390x)          ESUM='c92dc7faec97a0f4a4bcb36243a7776cd86bb90827358aeb316e7d15d31bdbdc';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_s390x_linux_11.0.32.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 02:23:33 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:23:33 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 09 Sep 2026 02:24:36 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 09 Sep 2026 02:24:36 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 04:25:14 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 04:25:14 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 04:25:14 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:25:14 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 04:25:14 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 04:25:14 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 04:25:14 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 04:25:14 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 04:25:14 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 04:25:14 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 04:25:14 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 04:25:14 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 04:25:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c5aa840355c24c90a0fd34e6be8bec5188da4819f18ed6c4374ada3ea0ac06`  
		Last Modified: Wed, 09 Sep 2026 02:24:57 GMT  
		Size: 12.8 MB (12807223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd5e4489173f34e9ea2c00ffbefec7494bdedc52f6373a2a84d9857ba713e31`  
		Last Modified: Wed, 09 Sep 2026 02:25:01 GMT  
		Size: 219.4 MB (219426604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04d7a3666706ffcbf0a03fad1ff8a6275f994724dfe44cdd91bdeb3a4fb9949a`  
		Last Modified: Wed, 09 Sep 2026 02:24:56 GMT  
		Size: 5.3 MB (5314991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d7e529b62e703757df885816f23036133daf26553604604f45a961002cebeb3`  
		Last Modified: Wed, 09 Sep 2026 04:25:28 GMT  
		Size: 22.6 MB (22636829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1012fae44660235d3bba86bba1842f28dadcc20511e63785127578d0291665`  
		Last Modified: Wed, 09 Sep 2026 04:25:27 GMT  
		Size: 9.4 MB (9359970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cecc8940ca1925fc804aa63a6320ef5eeb90484dd1ff8e5b4a7bf2c224fd1f9`  
		Last Modified: Wed, 09 Sep 2026 04:25:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f56fff3e5416c817a03be4f885e30a3d7a69a0b511c8cb7cea965efc9c5247`  
		Last Modified: Wed, 09 Sep 2026 04:25:27 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:4b57a0d1dbf26e4a04ba4a34c06a46ab233f9eedac3f723a68ff9327539c280e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4809135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23762ad041311a052858e38f035494adb4565621a7064fff49fafc641fe1fe8f`

```dockerfile
```

-	Layers:
	-	`sha256:effb416571cb8148cdad70ae8579deb38e6e189c5caa7473c9e3bb10939d491d`  
		Last Modified: Wed, 09 Sep 2026 04:25:27 GMT  
		Size: 4.8 MB (4792136 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b62814f589314331a97d8f6f27573d513f35f93cd04b1c2a7cb842a708519820`  
		Last Modified: Wed, 09 Sep 2026 04:25:27 GMT  
		Size: 17.0 KB (16999 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-11-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:3b4a20b61cd379e75a398631d63b5e9108cc428b2e52be3e200037064e9dba13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315221388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d0d2b98850acfa87f2b1f34cdd8b307b9a3f20bc7f173fe121d5ef942163114`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 07 Sep 2026 07:38:39 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:38:39 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:38:43 GMT
ADD file:b613d8cbbfcdd39316d0cc2ab20f713e42c2ffc939072314f82208cec1f794df in / 
# Mon, 07 Sep 2026 07:38:44 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:11:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:11:40 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:11:40 GMT
ENV JAVA_VERSION=11.0.32.10
# Wed, 09 Sep 2026 02:15:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='9403e9d872d611c663273157d6a8a07eee843d71bacdfa7ea4b3b4e250514f99';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_aarch64_linux_11.0.32.10.tar.gz';          ;;        amd64|x86_64)          ESUM='e20d7b93c0293d9a1db89d415725776a9e4c237d194d7a35531b08cd37f9c546';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_x64_linux_11.0.32.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='f62cffcfac961321db7eca4fa9bf5efbe6de9d375d08d57a964212ca97821eab';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_ppc64le_linux_11.0.32.10.tar.gz';          ;;        s390x)          ESUM='c92dc7faec97a0f4a4bcb36243a7776cd86bb90827358aeb316e7d15d31bdbdc';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_s390x_linux_11.0.32.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 09 Sep 2026 02:15:26 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:15:26 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 09 Sep 2026 02:16:44 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 09 Sep 2026 02:16:44 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 12:15:59 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 12:16:00 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Wed, 09 Sep 2026 12:16:00 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:16:00 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Wed, 09 Sep 2026 12:16:00 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Wed, 09 Sep 2026 12:16:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 09 Sep 2026 12:16:00 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Wed, 09 Sep 2026 12:16:00 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Wed, 09 Sep 2026 12:16:01 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Wed, 09 Sep 2026 12:16:01 GMT
ARG USER_HOME_DIR=/root
# Wed, 09 Sep 2026 12:16:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 09 Sep 2026 12:16:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 09 Sep 2026 12:16:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4b9f3660b529a1e81f04825056359c345d486cfb05010302b88737a58d21db86`  
		Last Modified: Mon, 07 Sep 2026 07:57:18 GMT  
		Size: 34.4 MB (34376879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364bc9a40dd7be69d10bc2fb7e3031461610bf052ed1b5ab6844eccf7f5aea49`  
		Last Modified: Wed, 09 Sep 2026 02:13:37 GMT  
		Size: 13.8 MB (13750492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee0a8c63d455bffc0f87cc8238455a9eca7e086433413d99d71b9800661c8dba`  
		Last Modified: Wed, 09 Sep 2026 02:17:54 GMT  
		Size: 226.6 MB (226606137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:744992635230cff6dd8d69cf5dacd08cea60e9bbb46a989587cbb1c8a47a6fb4`  
		Last Modified: Wed, 09 Sep 2026 02:17:50 GMT  
		Size: 4.5 MB (4518344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32f5de6277c56dd3857170b49d1a2f5d0128896ccf8e4e32d0deaa73c5e0c039`  
		Last Modified: Wed, 09 Sep 2026 12:16:48 GMT  
		Size: 26.6 MB (26608575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808cbfd3ad2ddea52e502eddd58dd3eae5804f7e3be555ee776af2a4b9c1b84f`  
		Last Modified: Wed, 09 Sep 2026 12:16:47 GMT  
		Size: 9.4 MB (9359957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c778e5b8d97b42a371aeefe6da1b77fee052aeae3bc2fd94e67dcc3fdf22c61`  
		Last Modified: Wed, 09 Sep 2026 12:16:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93454ab52a8ebe3729812727c1aafff8b69c48896776dfe3a171488be698c35`  
		Last Modified: Wed, 09 Sep 2026 12:16:47 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:8edb85034c6b278a2b997cb1fe7f9f09e0a6103f1fdd2ba33ae360a2e08fec43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4811870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e48f744b6f58612938a13cabf56ca3df4d66f8c9d9225d267efa9d3518721de`

```dockerfile
```

-	Layers:
	-	`sha256:634e3520da1193cb26a3583c9556b7316b2901c96d2b54407170a96a6e538889`  
		Last Modified: Wed, 09 Sep 2026 12:16:47 GMT  
		Size: 4.8 MB (4794953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3bcb04f73613313472fc79dd992baaf7139fe7c0f260d16968ff190d0febc4a`  
		Last Modified: Wed, 09 Sep 2026 12:16:46 GMT  
		Size: 16.9 KB (16917 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-11-noble` - linux; s390x

```console
$ docker pull maven@sha256:acc65b0a08a476bdfa0b8ec3fcaa4bbb197973c6763780f4bd8f9946552ae20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313555905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fafabc53ef9a4fd2825101048b7f3995055968f7acbc8ef80cb4ed827d4dcf4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:10 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:10 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:12 GMT
ADD file:4483a9a8fede37e8d587c88a49ab036598c57a1cdc8558d50175c642d747d633 in / 
# Mon, 17 Aug 2026 13:37:12 GMT
CMD ["/bin/bash"]
# Mon, 31 Aug 2026 18:32:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 18:32:29 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 18:32:29 GMT
ENV JAVA_VERSION=11.0.32.10
# Mon, 31 Aug 2026 20:17:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='9403e9d872d611c663273157d6a8a07eee843d71bacdfa7ea4b3b4e250514f99';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_aarch64_linux_11.0.32.10.tar.gz';          ;;        amd64|x86_64)          ESUM='e20d7b93c0293d9a1db89d415725776a9e4c237d194d7a35531b08cd37f9c546';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_x64_linux_11.0.32.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='f62cffcfac961321db7eca4fa9bf5efbe6de9d375d08d57a964212ca97821eab';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_ppc64le_linux_11.0.32.10.tar.gz';          ;;        s390x)          ESUM='c92dc7faec97a0f4a4bcb36243a7776cd86bb90827358aeb316e7d15d31bdbdc';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jdk_s390x_linux_11.0.32.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 20:17:29 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 20:17:29 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 20:18:33 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 20:18:33 GMT
CMD ["jshell"]
# Mon, 31 Aug 2026 21:19:40 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 21:19:40 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Mon, 31 Aug 2026 21:19:40 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Mon, 31 Aug 2026 21:19:40 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Mon, 31 Aug 2026 21:19:40 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Mon, 31 Aug 2026 21:19:40 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 31 Aug 2026 21:19:40 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Mon, 31 Aug 2026 21:19:40 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 21:19:41 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Mon, 31 Aug 2026 21:19:41 GMT
ARG USER_HOME_DIR=/root
# Mon, 31 Aug 2026 21:19:41 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 31 Aug 2026 21:19:41 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 31 Aug 2026 21:19:41 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0515f78e3efa42d97d65248f6c9e1d89eac93d88d4d0f56efe8a2f63e077d57`  
		Last Modified: Mon, 31 Aug 2026 18:33:57 GMT  
		Size: 15.2 MB (15177974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd82f4e048d92dff2bd3f5fa1aa1ba47cdbfebfead0401d44b2b94006457e01`  
		Last Modified: Mon, 31 Aug 2026 20:19:08 GMT  
		Size: 227.0 MB (227033668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51777e10c52e62f02a34fbb5f1f378cfb98a5b0c9b5460b2e185576101aded8f`  
		Last Modified: Mon, 31 Aug 2026 20:19:04 GMT  
		Size: 5.7 MB (5716000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781ed73307672ab2f4524004bbbb7f157f581457be78b04d4e079f8c68589748`  
		Last Modified: Mon, 31 Aug 2026 21:20:04 GMT  
		Size: 26.3 MB (26332012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a91d9d7570e482c931480f38079c3d17e161688403cf56c336a965e3502c16`  
		Last Modified: Mon, 31 Aug 2026 21:20:04 GMT  
		Size: 9.4 MB (9359987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1147282b0d318b7add7da24a207f5f04dfe9a9bc516a8300e3301a00c546f18e`  
		Last Modified: Mon, 31 Aug 2026 21:20:03 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c863c299dcf0baa8529a5896549b580bb9235969f39b6c8fff14630406d8577`  
		Last Modified: Mon, 31 Aug 2026 21:20:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-11-noble` - unknown; unknown

```console
$ docker pull maven@sha256:67e62f7e05aeecb94aadfc033cfbac22ff57f1011bef5b40975e331ef1b4d5d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4806170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ea33ac3f27340c2792036d3c875bd57e7c3aa0c481bc77a97482b373c37cf3`

```dockerfile
```

-	Layers:
	-	`sha256:0af5e5cde9363a27440bc9f7721ef7fd97723f5cfb59e2910de04c9bdd70c06d`  
		Last Modified: Mon, 31 Aug 2026 21:20:04 GMT  
		Size: 4.8 MB (4789303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51d4e12dcbe1f3f892ddbd9153aa30db14e9d4decd64411ca360d96a5c2cb150`  
		Last Modified: Mon, 31 Aug 2026 21:20:03 GMT  
		Size: 16.9 KB (16867 bytes)  
		MIME: application/vnd.in-toto+json
