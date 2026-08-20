## `ibm-semeru-runtimes:open-26-jre`

```console
$ docker pull ibm-semeru-runtimes@sha256:47f6728c4b4d8ad5c8ec2d98ecbd46d7abead1df8e29776b2bdca3e1fcb59d82
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

### `ibm-semeru-runtimes:open-26-jre` - linux; amd64

```console
$ docker pull ibm-semeru-runtimes@sha256:0b142ecbb4cd630dd3eb15340a4c67fa0fb27aa0eafcf7602e33fd6bcebea6c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124632210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e6d090203794c17daaa3964614acbfe802d8b7775446362da7bb9696149a474`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Tue, 18 Aug 2026 19:19:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:19:08 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:19:08 GMT
ENV JAVA_VERSION=26.0.2.0
# Tue, 18 Aug 2026 19:22:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bc2b289aed2e496ac9fcab0e30a7dc3fa76c5104c015b709e6305587bc562520';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_aarch64_linux_26.0.2.0.tar.gz';          ;;        amd64|x86_64)          ESUM='3c08554784ff610cb21d35e3dbeb8f6d87498d234ea8ae062e488c7a1d3b11ac';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_x64_linux_26.0.2.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='be956d0d5ba6e925d8b76d1cbaa8548728b531374684ffd8c6e3599b0071089c';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_ppc64le_linux_26.0.2.0.tar.gz';          ;;        s390x)          ESUM='ad6269a05de0c18d19dab872b9d11f099a72b2fed3ffbc0f90eeba294f1b421f';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_s390x_linux_26.0.2.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 18 Aug 2026 19:22:32 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:22:32 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 18 Aug 2026 19:23:37 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 18 Aug 2026 19:23:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabe1cd8982ec0df711683c4e0cb9b1a9fa6a384ee774d267fdfef94635f96dc`  
		Last Modified: Tue, 18 Aug 2026 19:20:48 GMT  
		Size: 15.9 MB (15878855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d3226eecf2f7a30993156992aec0b1fcc27ebc3b93a90d19b7e5f5b5bfc9f5`  
		Last Modified: Tue, 18 Aug 2026 19:23:54 GMT  
		Size: 61.7 MB (61716569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113b4e9f80a4964274faf845c7c19886aa300d2660aea47e02a991741e3ecf51`  
		Last Modified: Tue, 18 Aug 2026 19:23:53 GMT  
		Size: 5.5 MB (5467190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-26-jre` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:c6e40a548699f5f9cbe66af9da98cc11bdc8657057910fef25f477e0c77a4ba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5017343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929e88db761a80e572b6ec166a0f9dc33873e4597b62f11dba2f6c3ec2e85181`

```dockerfile
```

-	Layers:
	-	`sha256:d6064a3126119ca7b94d22b215f0e5bc8a90614dd358db7e1ddc1be7369db3f2`  
		Last Modified: Tue, 18 Aug 2026 19:23:53 GMT  
		Size: 5.0 MB (4990848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f095a297e97eb3f91d7278a019b14b8e6fdd880546b6cf616f5b38ed7edc1d2e`  
		Last Modified: Tue, 18 Aug 2026 19:23:52 GMT  
		Size: 26.5 KB (26495 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-26-jre` - linux; arm64 variant v8

```console
$ docker pull ibm-semeru-runtimes@sha256:6ec79c79e926b2ceb4e02ede12f79ca85fc7317e4d0cb628d52f19d8d05e6eb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121628549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d16024545a65090614df62cbc911a8290fe350e09813db804442dd1636b664f8`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Tue, 18 Aug 2026 19:21:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:21:02 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:21:02 GMT
ENV JAVA_VERSION=26.0.2.0
# Tue, 18 Aug 2026 19:22:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bc2b289aed2e496ac9fcab0e30a7dc3fa76c5104c015b709e6305587bc562520';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_aarch64_linux_26.0.2.0.tar.gz';          ;;        amd64|x86_64)          ESUM='3c08554784ff610cb21d35e3dbeb8f6d87498d234ea8ae062e488c7a1d3b11ac';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_x64_linux_26.0.2.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='be956d0d5ba6e925d8b76d1cbaa8548728b531374684ffd8c6e3599b0071089c';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_ppc64le_linux_26.0.2.0.tar.gz';          ;;        s390x)          ESUM='ad6269a05de0c18d19dab872b9d11f099a72b2fed3ffbc0f90eeba294f1b421f';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_s390x_linux_26.0.2.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 18 Aug 2026 19:22:36 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:22:36 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 18 Aug 2026 19:23:50 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 18 Aug 2026 19:23:50 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14ca7ce91a3f49fbcbe5ca4ba80d550c3657c82297bb5f98f950aa135ee0d2f8`  
		Last Modified: Tue, 18 Aug 2026 19:22:26 GMT  
		Size: 15.7 MB (15740621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c7fc2bb9245683198bf06351565cf0734449ea588c475937730d6eee0e1835`  
		Last Modified: Tue, 18 Aug 2026 19:24:07 GMT  
		Size: 59.8 MB (59845154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:463210a90e8e8914b6d89d3ae47038860d88b10e5a380234e7c6fcb80fa1ecdb`  
		Last Modified: Tue, 18 Aug 2026 19:24:05 GMT  
		Size: 5.3 MB (5345959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-26-jre` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:57faf28a63a26eeee4a7472c2635b83e2a44e31d69e399065a8507897fb2c56a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5015238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b8020ef7fbb2406ac58550b4b12bcc421044971f2ba7a3323c671d23e49b3bc`

```dockerfile
```

-	Layers:
	-	`sha256:56e6f4349ba97277e52fd678faa658b411bba0254752b232b0a23f1eaa02b4d2`  
		Last Modified: Tue, 18 Aug 2026 19:24:05 GMT  
		Size: 5.0 MB (4988610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdce26c01ce64ecc1b707e0faff99781f6a347f51133b0a652d9f39ce9fcc131`  
		Last Modified: Tue, 18 Aug 2026 19:24:05 GMT  
		Size: 26.6 KB (26628 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-26-jre` - linux; ppc64le

```console
$ docker pull ibm-semeru-runtimes@sha256:535f0c2ef64c2b7380e89be70f28c0b107b7c2587fb40fc3f084345dfc6b9b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131662011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb634a7bd3e4546e2719ef8071560108846e670620228d78cc82573a5a0f4e9`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 08:53:35 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9147.tar --tag 26.04
# Mon, 17 Aug 2026 08:53:36 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 08:53:36 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 08:53:36 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 08:53:36 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T08:53:36.824104+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 08:53:36 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T08:53:36.824104+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 08:53:36 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9147.tar
# Wed, 19 Aug 2026 21:26:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 21:26:03 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 21:26:03 GMT
ENV JAVA_VERSION=26.0.2.0
# Wed, 19 Aug 2026 21:45:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bc2b289aed2e496ac9fcab0e30a7dc3fa76c5104c015b709e6305587bc562520';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_aarch64_linux_26.0.2.0.tar.gz';          ;;        amd64|x86_64)          ESUM='3c08554784ff610cb21d35e3dbeb8f6d87498d234ea8ae062e488c7a1d3b11ac';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_x64_linux_26.0.2.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='be956d0d5ba6e925d8b76d1cbaa8548728b531374684ffd8c6e3599b0071089c';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_ppc64le_linux_26.0.2.0.tar.gz';          ;;        s390x)          ESUM='ad6269a05de0c18d19dab872b9d11f099a72b2fed3ffbc0f90eeba294f1b421f';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_s390x_linux_26.0.2.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 19 Aug 2026 21:45:55 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 21:45:55 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 19 Aug 2026 21:47:04 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 19 Aug 2026 21:47:04 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4575477adcf5ffe1820f3ced3aac13a3694c59fb3c8b304078f083d7dfa6f4f0`  
		Last Modified: Mon, 17 Aug 2026 11:35:37 GMT  
		Size: 46.8 MB (46793956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e9092af05571bdb27167eaabd88747ae30aa92ab77006c96cfbc1c46320d3c`  
		Last Modified: Mon, 17 Aug 2026 11:35:39 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69417d4f240d75ca48a2e21fa33cf85f250fe4f18d50bb7a64d32daa06e63c88`  
		Last Modified: Wed, 19 Aug 2026 21:30:19 GMT  
		Size: 17.3 MB (17252978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3c73aff98b619a2893ed317558b14cf86fbc56929e0ce54515f1981eeb9b8e`  
		Last Modified: Wed, 19 Aug 2026 21:47:40 GMT  
		Size: 63.3 MB (63282277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7270bdffae0a5efdfef708e65e8dfb617bbf12ef38d67a1a2f3cf06574e08d1`  
		Last Modified: Wed, 19 Aug 2026 21:47:38 GMT  
		Size: 4.3 MB (4332408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-26-jre` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:38fe128eaa2cd3531de0fbc4921dc4723f6e8f8cb77b4d7ffc2833d19400d8c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5021203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a774df8ad0da2a95e9ea37a3d31581c13bf6de3486e84b8cded691b798a6a34a`

```dockerfile
```

-	Layers:
	-	`sha256:421fcc6fed77886f6ef40449c767b4d430a2f8d5925398e50f36e43a876f7f15`  
		Last Modified: Wed, 19 Aug 2026 21:47:38 GMT  
		Size: 5.0 MB (4994660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:232e2ab8627811ddac2a9703d5d2bcba0b18fa3c8a0ecb1aad61ba1b2438717b`  
		Last Modified: Wed, 19 Aug 2026 21:47:38 GMT  
		Size: 26.5 KB (26543 bytes)  
		MIME: application/vnd.in-toto+json

### `ibm-semeru-runtimes:open-26-jre` - linux; s390x

```console
$ docker pull ibm-semeru-runtimes@sha256:3c19086c91dc0052632d5707d859bdc5e1d0a44678762325e650e354adec9cbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.4 MB (123381350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a11aecc21beba917f5b6250593a4fc0d717f846c72cd75cd47a979d7883671a`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 08:51:48 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9176.tar --tag 26.04
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T08:51:49.237511+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T08:51:49.237511+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9176.tar
# Tue, 18 Aug 2026 19:15:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:15:28 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:15:28 GMT
ENV JAVA_VERSION=26.0.2.0
# Tue, 18 Aug 2026 23:08:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bc2b289aed2e496ac9fcab0e30a7dc3fa76c5104c015b709e6305587bc562520';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_aarch64_linux_26.0.2.0.tar.gz';          ;;        amd64|x86_64)          ESUM='3c08554784ff610cb21d35e3dbeb8f6d87498d234ea8ae062e488c7a1d3b11ac';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_x64_linux_26.0.2.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='be956d0d5ba6e925d8b76d1cbaa8548728b531374684ffd8c6e3599b0071089c';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_ppc64le_linux_26.0.2.0.tar.gz';          ;;        s390x)          ESUM='ad6269a05de0c18d19dab872b9d11f099a72b2fed3ffbc0f90eeba294f1b421f';          BINARY_URL='https://github.com/ibmruntimes/semeru26-binaries/releases/download/jdk-26.0.2.0/ibm-semeru-open-jre_s390x_linux_26.0.2.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 18 Aug 2026 23:08:58 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 23:08:58 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 18 Aug 2026 23:10:03 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 18 Aug 2026 23:10:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:b1aa13925330270ece5314333db4d2d0539a9fa79fb104cd43d7595fe5aa69fc`  
		Last Modified: Mon, 17 Aug 2026 11:36:08 GMT  
		Size: 41.1 MB (41147115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d201668f161ff89d301e6e21bd71b4f685b5539cc6d2cda9e1c09a9dd2d0d04`  
		Last Modified: Mon, 17 Aug 2026 11:36:11 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf403690e28d9ffe4d09407418c9e4b6b558cad55d7f57e62a4750c970aed23`  
		Last Modified: Tue, 18 Aug 2026 19:18:59 GMT  
		Size: 16.2 MB (16176318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8382e74beb6f88e1c36f94040efd95eaa70e401df67f5fc20ec20d38afacb77`  
		Last Modified: Tue, 18 Aug 2026 23:10:27 GMT  
		Size: 60.3 MB (60319052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d1187abd7fe2b9a0d218e3c1c4a348ad15f4223cf541b04cca29397cf45653`  
		Last Modified: Tue, 18 Aug 2026 23:10:25 GMT  
		Size: 5.7 MB (5738476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibm-semeru-runtimes:open-26-jre` - unknown; unknown

```console
$ docker pull ibm-semeru-runtimes@sha256:7adc025de0a836e8a189920c24c51d683acf2cc8dd40ff69f8fcd6ca7d33e13c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (5018751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5595d72282f88ca8d9bc2aff851cf16089e60d2ac30f22747a5718aa46090421`

```dockerfile
```

-	Layers:
	-	`sha256:8099aeadef3081827da1d24cad50fd47ece341f21f61840fafc1dc217ea1d126`  
		Last Modified: Tue, 18 Aug 2026 23:10:25 GMT  
		Size: 5.0 MB (4992256 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f432f3cf95d0d5ca10acba4657e148197b2d23e5f5f949ac98f59b45be98255a`  
		Last Modified: Tue, 18 Aug 2026 23:10:25 GMT  
		Size: 26.5 KB (26495 bytes)  
		MIME: application/vnd.in-toto+json
