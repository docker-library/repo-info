## `ibm-semeru-runtimes:open-25-jdk-jammy`

```console
$ docker pull ibm-semeru-runtimes@sha256:716ad131277d570c74b5bb18ad732aa4a778361fda5c862fcf46dd7423260dbc
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

### `ibm-semeru-runtimes:open-25-jdk-jammy` - linux; amd64

```console
$ docker pull ibm-semeru-runtimes@sha256:b9a251a83c6023d9fcc99ebb703bbfbe7f02e0ff488b4851e9ecf323772997fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.7 MB (298680318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4714678ece046bf23a27a74a0975425c3330c055eff260e59f70a6ed3671f6f7`
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
# Mon, 09 Nov 2026 23:36:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:36:28 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:36:28 GMT
ENV JAVA_VERSION=25.0.5.0
# Mon, 09 Nov 2026 23:39:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0d011789093c1e5e4da6843a8f40947a36c2f0af0199e6be64590d279e37e7cc';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_aarch64_linux_25.0.5.0.tar.gz';          ;;        amd64|x86_64)          ESUM='cb52686cd841bb76b55b66dabcbf890a303169158aa4bb10fa61040bf462f9b1';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_x64_linux_25.0.5.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7aabbcc493502d4d0cad10b690a0f6fdd90f62e87c3df775440ee7e888694e38';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_ppc64le_linux_25.0.5.0.tar.gz';          ;;        s390x)          ESUM='d1b89a09ac193531eb5c558a20712477c85c933e6c3544c3545821a3114f7110';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_s390x_linux_25.0.5.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:39:51 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:39:51 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:40:55 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 09 Nov 2026 23:40:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cad7f8a1424d091cdb3130472251e3ea4a3dfd3ad26ef55ef118dde3037b39`  
		Last Modified: Mon, 09 Nov 2026 23:37:46 GMT  
		Size: 12.1 MB (12140628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cce2bf2d2d2f2248feba88a63bae32076b12efcb5bd241c829ac49a89cca7c5`  
		Last Modified: Mon, 09 Nov 2026 23:41:18 GMT  
		Size: 250.1 MB (250099811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003cc815bce3618da951283095142a5f48e082bdaca980b7353b8260ec8dbda5`  
		Last Modified: Mon, 09 Nov 2026 23:41:13 GMT  
		Size: 6.7 MB (6687391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jdk-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:63df7716891c6f0f42440d5395f680dd69b4d55a9221b1a2318404630eaebd7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3831830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:229afb4fa8813e1770c54798a22f68106bd3c2879fcb0ab2a2e4fb1c85fdcede`

```dockerfile
```

-	Layers:
	-	`sha256:d18b3765bb60405730a1a1a2c4039c88a1bf9b441e83a9ff2017fd368e11e159`  
		Last Modified: Mon, 09 Nov 2026 23:41:13 GMT  
		Size: 3.8 MB (3806636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b791d860863632ef7b26c69f347766fecd00de159bd7becc80bcec2c38a91a3`  
		Last Modified: Mon, 09 Nov 2026 23:41:12 GMT  
		Size: 25.2 KB (25194 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-25-jdk-jammy` - linux; arm64 variant v8

```console
$ docker pull ibm-semeru-runtimes@sha256:03a81b5611ebf00391e056b72d2f3a8c8d85a5c7d72bd7de0fc1d9d0ad8af489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.3 MB (292345900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71deb136224190cd1b4af3f5d5ac4ea66e31583d7a5d89dfc81d0edf2b6755f`
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
# Mon, 09 Nov 2026 23:35:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:35:56 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:35:56 GMT
ENV JAVA_VERSION=25.0.5.0
# Mon, 09 Nov 2026 23:39:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0d011789093c1e5e4da6843a8f40947a36c2f0af0199e6be64590d279e37e7cc';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_aarch64_linux_25.0.5.0.tar.gz';          ;;        amd64|x86_64)          ESUM='cb52686cd841bb76b55b66dabcbf890a303169158aa4bb10fa61040bf462f9b1';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_x64_linux_25.0.5.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7aabbcc493502d4d0cad10b690a0f6fdd90f62e87c3df775440ee7e888694e38';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_ppc64le_linux_25.0.5.0.tar.gz';          ;;        s390x)          ESUM='d1b89a09ac193531eb5c558a20712477c85c933e6c3544c3545821a3114f7110';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_s390x_linux_25.0.5.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:39:34 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:39:34 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:40:38 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 09 Nov 2026 23:40:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304ce75719e1353ed0ad83478209a71cd57a45fdea5cd11510bfd50310186fcd`  
		Last Modified: Mon, 09 Nov 2026 23:37:22 GMT  
		Size: 12.1 MB (12105932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e370ea3dd446791c177f557ec1085f58075cbde4294d2d8940fdc77f3cc0cb2`  
		Last Modified: Mon, 09 Nov 2026 23:41:03 GMT  
		Size: 246.1 MB (246073521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04c5cb942a6a48ebeaa07bd0137305fc176ec404b0dc9be47943f281877cc9a7`  
		Last Modified: Mon, 09 Nov 2026 23:40:58 GMT  
		Size: 6.5 MB (6481840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jdk-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:21a860a9aac8d1fb2d1af5537a5900bdbbdb39bb4269a346c9be595e83d5c168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3829689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13593d9341220d6d8bd05987c8e16dff5c2dcfffdc49c59c6b307bc33eb09c60`

```dockerfile
```

-	Layers:
	-	`sha256:37101c37ad89421c209aa99ab4f697a8380e2bd515d2e3db48d727b08a6ddc11`  
		Last Modified: Mon, 09 Nov 2026 23:40:58 GMT  
		Size: 3.8 MB (3804385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:159a1f4dbce460e8b4d676088bd6cf244993ee3f23fb2e3721202799e06696a6`  
		Last Modified: Mon, 09 Nov 2026 23:40:58 GMT  
		Size: 25.3 KB (25304 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-25-jdk-jammy` - linux; ppc64le

```console
$ docker pull ibm-semeru-runtimes@sha256:26f57e3febadc58bb5ad7da11641100be8f7cf3a4ef0fecaed2386e53276ce5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.7 MB (305721386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c8ea9458b923f0040343a7acb73d1fdea8d4f4cf204b8f504ff95835e961af`
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
# Wed, 04 Nov 2026 22:33:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0d011789093c1e5e4da6843a8f40947a36c2f0af0199e6be64590d279e37e7cc';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_aarch64_linux_25.0.5.0.tar.gz';          ;;        amd64|x86_64)          ESUM='cb52686cd841bb76b55b66dabcbf890a303169158aa4bb10fa61040bf462f9b1';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_x64_linux_25.0.5.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7aabbcc493502d4d0cad10b690a0f6fdd90f62e87c3df775440ee7e888694e38';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_ppc64le_linux_25.0.5.0.tar.gz';          ;;        s390x)          ESUM='d1b89a09ac193531eb5c558a20712477c85c933e6c3544c3545821a3114f7110';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_s390x_linux_25.0.5.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 04 Nov 2026 22:33:45 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Nov 2026 22:33:45 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 04 Nov 2026 22:34:55 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 04 Nov 2026 22:34:55 GMT
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
	-	`sha256:2ab8d44c655fa466669f5deaf4a98dd139196115dbe9b2153324cae3260528de`  
		Last Modified: Wed, 04 Nov 2026 22:35:46 GMT  
		Size: 252.6 MB (252568266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:057680a3d410333c15d29240cff6469bd2d509d028fd48d74b9ddf4b2d1df02e`  
		Last Modified: Wed, 04 Nov 2026 22:35:41 GMT  
		Size: 5.6 MB (5584211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jdk-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:4f23b00ace90ed5d83fda0ff1c8caea6a8c9789229ba54fcc5293bd0310c9d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3823457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:158836a85d385bfb63c3d63b45d046fd1a6eb746cf46a7e61d888645cb8c5927`

```dockerfile
```

-	Layers:
	-	`sha256:da75b2f5f349b40b7cde4b4bff7d276543d0625aa5bee40da65da2d29efa43b6`  
		Last Modified: Wed, 04 Nov 2026 22:35:41 GMT  
		Size: 3.8 MB (3798227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52155a6da95c446f73230697a5f5f0c7a85b01ded88c2d57ab49785f7986b96a`  
		Last Modified: Wed, 04 Nov 2026 22:35:40 GMT  
		Size: 25.2 KB (25230 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-25-jdk-jammy` - linux; s390x

```console
$ docker pull ibm-semeru-runtimes@sha256:647b36885ee4e8a9e077d9c2431a54259f142c9b027e701d1b83c55c1fc29210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.4 MB (301404420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebcd2e7df088a3cba7d6e46bdfd6d5e1a9705640b80f48d108095d4631bae059`
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
# Wed, 04 Nov 2026 22:36:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0d011789093c1e5e4da6843a8f40947a36c2f0af0199e6be64590d279e37e7cc';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_aarch64_linux_25.0.5.0.tar.gz';          ;;        amd64|x86_64)          ESUM='cb52686cd841bb76b55b66dabcbf890a303169158aa4bb10fa61040bf462f9b1';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_x64_linux_25.0.5.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7aabbcc493502d4d0cad10b690a0f6fdd90f62e87c3df775440ee7e888694e38';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_ppc64le_linux_25.0.5.0.tar.gz';          ;;        s390x)          ESUM='d1b89a09ac193531eb5c558a20712477c85c933e6c3544c3545821a3114f7110';          BINARY_URL='https://github.com/ibmruntimes/semeru25-binaries/releases/download/jdk-25.0.5.0/ibm-semeru-open-jdk_s390x_linux_25.0.5.0.tar.gz';          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 04 Nov 2026 22:36:36 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Nov 2026 22:36:36 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 04 Nov 2026 22:37:48 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 04 Nov 2026 22:37:48 GMT
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
	-	`sha256:dd4bc5410f16c3a208e0457e39845bb11e288b2e3c71c33e80d7457d9e80049b`  
		Last Modified: Wed, 04 Nov 2026 22:39:42 GMT  
		Size: 254.0 MB (253969574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae26923a409a68ecd22ba06462f09f9274993ea68e651be043d42cc5bd7db137`  
		Last Modified: Wed, 04 Nov 2026 22:39:33 GMT  
		Size: 7.0 MB (7023460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-25-jdk-jammy` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:3984c4569bef494540194c3d260c75ed6b28745f979f4bba71ca28f9d87063ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3820386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f60530e8f6e569b0ae11b8152ea0cda8535d5ad71990de11fd8953004ceeb73`

```dockerfile
```

-	Layers:
	-	`sha256:f4ca95aec2bc65540c9856e679b9b2ef89c90983dcfa01640b9a6f1add5a0625`  
		Last Modified: Wed, 04 Nov 2026 22:39:27 GMT  
		Size: 3.8 MB (3795192 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee9388112cbb03a36d13e9fe124207dc1bb3a4baec702748f94fcf62165f16f5`  
		Last Modified: Wed, 04 Nov 2026 22:39:21 GMT  
		Size: 25.2 KB (25194 bytes)  
		MIME: application/vnd.in-toto+json
