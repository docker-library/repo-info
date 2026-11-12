## `maven:3-ibm-semeru-17-noble`

```console
$ docker pull maven@sha256:7c837ca5c9d2b84860b6a74f8114f9b5906abc0b11c676253640de1a8b0e8311
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

### `maven:3-ibm-semeru-17-noble` - linux; amd64

```console
$ docker pull maven@sha256:6c83172ea3213af1d4788e259bd26cb241b9cbc2997523ffa588dc4c4fb7c603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.4 MB (312443343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d31e0e00b17d25a5a3acd3788099605ebf7ad824c4d884bb794a3c0a9e1a659`
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
ENV JAVA_VERSION=17.0.21.0
# Wed, 11 Nov 2026 23:24:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='9e92ab55b5088d6f8f9170b4f4e70baff7d39416e454583306e6b576c2262e67';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_aarch64_linux_17.0.21.0.tar.gz';          ;;        amd64|x86_64)          ESUM='854268feba1ebddcad42cf97915b3c48e44a543bbbe8f43e587a722921a16c42';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_x64_linux_17.0.21.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='894653088969fec74799b3b95020bc234ed0136a355c809f9f64271eebd84448';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_ppc64le_linux_17.0.21.0.tar.gz';          ;;        s390x)          ESUM='138f42844b91920b86aa257cc871c546b4cf93dd02c4f10a8c921db5299ebb95';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_s390x_linux_17.0.21.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:24:11 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:24:11 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:25:15 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
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
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58056f3dc355743e8cd3a70d4b28ee27d88a1c785db9830d21a8e05f145c1327`  
		Last Modified: Wed, 11 Nov 2026 23:25:35 GMT  
		Size: 12.8 MB (12793030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6745e93ccf80b1bcbdb15e2f45a30a116c04ad515137b142d6b9e4baeb30fd`  
		Last Modified: Wed, 11 Nov 2026 23:25:39 GMT  
		Size: 228.6 MB (228564065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b4cb3734c8bc5e807589b4375ffbb54a782f271228f2ce57dadab1c11492220`  
		Last Modified: Wed, 11 Nov 2026 23:25:35 GMT  
		Size: 6.2 MB (6239738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25cea9365622c3a7fcdc952ec5f5d19fe9bbe873dc376657bd090e2cf2200e9`  
		Last Modified: Thu, 12 Nov 2026 02:16:17 GMT  
		Size: 25.0 MB (24993263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2ec9b4da2bf2d29d726846c2d1474ab27d13014f7c28b9a3dce1c7b0b80338`  
		Last Modified: Thu, 12 Nov 2026 02:16:17 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52caea18c50e25166d1cb4f1467a7e9e8bea4436d8a74122ebc864de009b8e73`  
		Last Modified: Thu, 12 Nov 2026 02:16:17 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7b6d9c397c3c2ce287e4d44780d2491abc143e8167045949f7d85927edb825`  
		Last Modified: Thu, 12 Nov 2026 02:16:17 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-17-noble` - unknown; unknown

```console
$ docker pull maven@sha256:84c2cb3c62060d71028725cf999e6303c4f4309753c1251c4a024c1c1ab6b44b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4793714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f39a2766fbae2526a7132e667fe6a747352de6430a7a892f30970d964062ec`

```dockerfile
```

-	Layers:
	-	`sha256:7895e64ed9496fb617e02cefa4b62a956870400c5b26cdceeb5d7d12f011e90f`  
		Last Modified: Thu, 12 Nov 2026 02:16:17 GMT  
		Size: 4.8 MB (4776843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06d08ce05f95744e8ccd90b7f6ad422871db62267575cb44d479fec8b479f938`  
		Last Modified: Thu, 12 Nov 2026 02:16:16 GMT  
		Size: 16.9 KB (16871 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-17-noble` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:b995976a86f619dbd35483a1464c2277e0c61974bac032d5081ea6498a85d09c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.1 MB (305117574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86b3cca9dd9521bf98880d0675e0acf2a98204db8eaa552a3cd2b634d3aa0753`
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
# Wed, 11 Nov 2026 23:25:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:25:48 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:25:48 GMT
ENV JAVA_VERSION=17.0.21.0
# Wed, 11 Nov 2026 23:27:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='9e92ab55b5088d6f8f9170b4f4e70baff7d39416e454583306e6b576c2262e67';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_aarch64_linux_17.0.21.0.tar.gz';          ;;        amd64|x86_64)          ESUM='854268feba1ebddcad42cf97915b3c48e44a543bbbe8f43e587a722921a16c42';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_x64_linux_17.0.21.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='894653088969fec74799b3b95020bc234ed0136a355c809f9f64271eebd84448';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_ppc64le_linux_17.0.21.0.tar.gz';          ;;        s390x)          ESUM='138f42844b91920b86aa257cc871c546b4cf93dd02c4f10a8c921db5299ebb95';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_s390x_linux_17.0.21.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:27:22 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:27:22 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:28:26 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 02:15:56 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:15:56 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 02:15:56 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:15:56 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 02:15:56 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 02:15:56 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 02:15:56 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 02:15:56 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 02:15:56 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 02:15:56 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 02:15:56 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 02:15:56 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 02:15:56 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764fd22acf93d865c617d02868eac138c011ed4ee61973bf4c45232d2379cb15`  
		Last Modified: Wed, 11 Nov 2026 23:27:05 GMT  
		Size: 12.8 MB (12830382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40cef9d04e6a62fb3c95c49cd55a76b361561977a166bf7c1c1ecbe887599f37`  
		Last Modified: Wed, 11 Nov 2026 23:28:50 GMT  
		Size: 224.6 MB (224603938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78bb1414ff9140bce8683db1d75d01668b224ca95d973239a9cfa5a8211458c9`  
		Last Modified: Wed, 11 Nov 2026 23:28:45 GMT  
		Size: 6.0 MB (6013282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:066ef1f6e4cdadcb075321670a4ced09ad14c25909df0034a242cdd47b210820`  
		Last Modified: Thu, 12 Nov 2026 02:16:11 GMT  
		Size: 22.6 MB (22644691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af1dc587dbc9d5d860616fbe90084399b184933ee7f1d1779a2f13164cd3d83`  
		Last Modified: Thu, 12 Nov 2026 02:16:11 GMT  
		Size: 10.1 MB (10059018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44065a88a352ca5a99c6665bf467eb60f450396245b006803f3ba24daf52f0be`  
		Last Modified: Thu, 12 Nov 2026 02:16:10 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981e032c2b7038ecbe2b8303a94398ce0ab552585926e57987854fcbbceda7ee`  
		Last Modified: Thu, 12 Nov 2026 02:16:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-17-noble` - unknown; unknown

```console
$ docker pull maven@sha256:dae96d4f0a68b84472846b0e2201fdbcac5939008e7a80059f40a1c9d1e3404e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4798453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9b5a79ae6e2a94d90d6162a80f019765c90b4bbb875ad59ad441f5ac32167dd`

```dockerfile
```

-	Layers:
	-	`sha256:d4244fefc7193cb3edfd5e4ca4d129f5840c95bd4d16fa75e0e155b2897ad57b`  
		Last Modified: Thu, 12 Nov 2026 02:16:10 GMT  
		Size: 4.8 MB (4781449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e976d661a6a6b9fd09beaf662e3bfcc89ee1ebd87d81ef6cf32cedb318f61ec8`  
		Last Modified: Thu, 12 Nov 2026 02:16:10 GMT  
		Size: 17.0 KB (17004 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-17-noble` - linux; ppc64le

```console
$ docker pull maven@sha256:e738eda8e2ab2280d66726c844a7eef624787ef0b0377a9d3869a953f831ee5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.7 MB (322705134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1064840c46f1caaff92afc87b1282cb5e1c3d771b38dc281e737085dedbfa42`
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
ENV JAVA_VERSION=17.0.21.0
# Thu, 12 Nov 2026 02:44:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='9e92ab55b5088d6f8f9170b4f4e70baff7d39416e454583306e6b576c2262e67';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_aarch64_linux_17.0.21.0.tar.gz';          ;;        amd64|x86_64)          ESUM='854268feba1ebddcad42cf97915b3c48e44a543bbbe8f43e587a722921a16c42';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_x64_linux_17.0.21.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='894653088969fec74799b3b95020bc234ed0136a355c809f9f64271eebd84448';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_ppc64le_linux_17.0.21.0.tar.gz';          ;;        s390x)          ESUM='138f42844b91920b86aa257cc871c546b4cf93dd02c4f10a8c921db5299ebb95';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_s390x_linux_17.0.21.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Thu, 12 Nov 2026 02:44:35 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 02:44:35 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Thu, 12 Nov 2026 02:45:45 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 11:29:28 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 11:29:29 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 11:29:29 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 11:29:29 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 11:29:29 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 11:29:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 11:29:29 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 11:29:29 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 11:29:29 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 11:29:29 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 11:29:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 11:29:29 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 11:29:29 GMT
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
	-	`sha256:7474dab22b85779b95fe027578347d639f08a7592dad57c85e94a71c21fa4f6f`  
		Last Modified: Thu, 12 Nov 2026 02:47:14 GMT  
		Size: 232.6 MB (232604242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2881292e03c79e9e0e5c1a0abf71e61dc9ba18c635763484117795477c1aaf9`  
		Last Modified: Thu, 12 Nov 2026 02:47:09 GMT  
		Size: 5.3 MB (5252640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdb89c9dd7807428f774e0a373c453b274f19ec71412403b6b77f63747b662af`  
		Last Modified: Thu, 12 Nov 2026 11:30:03 GMT  
		Size: 26.6 MB (26615579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9438bac96a02cb64ad76085693a36dc0616d1a24a909fb2986d2f115082c30fb`  
		Last Modified: Thu, 12 Nov 2026 11:30:02 GMT  
		Size: 10.1 MB (10059013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022c9597f9fcf742f092e5912cdc2048d58172262083a9ef432711f9fecee70a`  
		Last Modified: Thu, 12 Nov 2026 11:30:02 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90cb7cf78a7459811b15b064a455552229d0a74c7bb080652153298545df9523`  
		Last Modified: Thu, 12 Nov 2026 11:30:02 GMT  
		Size: 154.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-17-noble` - unknown; unknown

```console
$ docker pull maven@sha256:ef0abce82a06b6be0077088dd215d68beb34b5f360c72ae2f318f771ec248429
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4801186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:866fd16bbc058a26c2ea18cb446a2ce19fe00307f127003c92c4e1565c8e1ecc`

```dockerfile
```

-	Layers:
	-	`sha256:f3c7b64b7f9c1982cddfab9a14811212f064e9727934fbc5c245177a40bf2577`  
		Last Modified: Thu, 12 Nov 2026 11:30:02 GMT  
		Size: 4.8 MB (4784266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4174d5e932854d3130e049c36b6f940d499e64e36cffa112047957a9dc365701`  
		Last Modified: Thu, 12 Nov 2026 11:30:02 GMT  
		Size: 16.9 KB (16920 bytes)  
		MIME: application/vnd.in-toto+json

### `maven:3-ibm-semeru-17-noble` - linux; s390x

```console
$ docker pull maven@sha256:3a4e7b240bcf8176bdcf8a92a8eef6cb43a8d173b60bdfd4536a05e3f7b47c69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.0 MB (315966414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:760536a9665510ef9e7d7df41ccf2110adc70fdbdf88c258dd3fc10bcc8d5b60`
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
ENV JAVA_VERSION=17.0.21.0
# Wed, 11 Nov 2026 23:20:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='9e92ab55b5088d6f8f9170b4f4e70baff7d39416e454583306e6b576c2262e67';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_aarch64_linux_17.0.21.0.tar.gz';          ;;        amd64|x86_64)          ESUM='854268feba1ebddcad42cf97915b3c48e44a543bbbe8f43e587a722921a16c42';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_x64_linux_17.0.21.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='894653088969fec74799b3b95020bc234ed0136a355c809f9f64271eebd84448';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_ppc64le_linux_17.0.21.0.tar.gz';          ;;        s390x)          ESUM='138f42844b91920b86aa257cc871c546b4cf93dd02c4f10a8c921db5299ebb95';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jdk_s390x_linux_17.0.21.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:20:10 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:10 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:21:14 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 03:11:16 GMT
RUN apt-get update   && apt-get install -y git openssh-client --no-install-recommends   && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 03:11:16 GMT
LABEL org.opencontainers.image.title=Apache Maven
# Thu, 12 Nov 2026 03:11:16 GMT
LABEL org.opencontainers.image.source=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 03:11:16 GMT
LABEL org.opencontainers.image.url=https://github.com/carlossg/docker-maven
# Thu, 12 Nov 2026 03:11:16 GMT
LABEL org.opencontainers.image.description=Apache Maven is a software project management and comprehension tool. Based on the concept of a project object model (POM), Maven can manage a project's build, reporting and documentation from a central piece of information.
# Thu, 12 Nov 2026 03:11:16 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 12 Nov 2026 03:11:16 GMT
COPY /usr/share/maven /usr/share/maven # buildkit
# Thu, 12 Nov 2026 03:11:16 GMT
COPY /usr/local/bin/mvn-entrypoint.sh /usr/local/bin/mvn-entrypoint.sh # buildkit
# Thu, 12 Nov 2026 03:11:16 GMT
RUN ln -s ${MAVEN_HOME}/bin/mvn /usr/bin/mvn # buildkit
# Thu, 12 Nov 2026 03:11:16 GMT
ARG USER_HOME_DIR=/root
# Thu, 12 Nov 2026 03:11:16 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 12 Nov 2026 03:11:16 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 12 Nov 2026 03:11:16 GMT
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
	-	`sha256:2b7ba57373b709f3f9ffd61d1c9693148251e1aafacafff46da22d14064bf3e8`  
		Last Modified: Wed, 11 Nov 2026 23:22:00 GMT  
		Size: 232.8 MB (232760462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78310aeec17cde6b02763accce2dbd4140f0915b9530026bd0301cdcd61cea8`  
		Last Modified: Wed, 11 Nov 2026 23:21:56 GMT  
		Size: 6.4 MB (6366962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24798872c32a35fe8e1fa73cfe60ec581b23126120751e012d0cb563750c3f2e`  
		Last Modified: Thu, 12 Nov 2026 03:11:40 GMT  
		Size: 23.7 MB (23713286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5991f32aaf4bf9ff0975e7ee18a63a3f4c22165920981c301cf03d753ab491`  
		Last Modified: Thu, 12 Nov 2026 03:11:40 GMT  
		Size: 10.1 MB (10059012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d06c96aa7cc5e901785cc3a3e7ab09685da6adb53dd044bac73c316d897d8f0`  
		Last Modified: Thu, 12 Nov 2026 03:11:39 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e829373e529d968ed138154a689302e9a579eb7239148c95c33cc0c3ca538012`  
		Last Modified: Thu, 12 Nov 2026 03:11:39 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `maven:3-ibm-semeru-17-noble` - unknown; unknown

```console
$ docker pull maven@sha256:ce62e4c7386b1b40bb94c324e81e8c40dd95a017b573327f22e90e72bdbe9fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4795500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13720f37345ee1cfb09a00f4ac66720851723235f0fab22fedcd23e044f38909`

```dockerfile
```

-	Layers:
	-	`sha256:907dac6c473d69214c42d9eaa81e8b02fe00e27cd129635450416b8c88423539`  
		Last Modified: Thu, 12 Nov 2026 03:11:39 GMT  
		Size: 4.8 MB (4778630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:289596603c1a24e99acd04259971db38586ffc578ec9ac0607626a4ed4825282`  
		Last Modified: Thu, 12 Nov 2026 03:11:39 GMT  
		Size: 16.9 KB (16870 bytes)  
		MIME: application/vnd.in-toto+json
