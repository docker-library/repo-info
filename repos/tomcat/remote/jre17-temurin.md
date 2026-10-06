## `tomcat:jre17-temurin`

```console
$ docker pull tomcat@sha256:e42060235b8ff7ad4d4e35160a5b62017a7adbaa7d7f0aaa8c61b488c4a29ed3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `tomcat:jre17-temurin` - linux; amd64

```console
$ docker pull tomcat@sha256:cb69414e1debb8119e030d9a48aa928c6b5786bbc6769ae0ae43afc944f9eaeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127105704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a273cbef4e50c8823d186b87732f1ea4501a7902b67da4aee48cb6844a733c`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:18:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:44 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:44 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:18:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 05 Oct 2026 22:11:41 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 05 Oct 2026 22:11:41 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:11:41 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 05 Oct 2026 22:11:41 GMT
WORKDIR /usr/local/tomcat
# Mon, 05 Oct 2026 22:11:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:11:41 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:11:41 GMT
ENV TOMCAT_MAJOR=11
# Mon, 05 Oct 2026 22:11:41 GMT
ENV TOMCAT_VERSION=11.0.26
# Mon, 05 Oct 2026 22:11:41 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Mon, 05 Oct 2026 22:11:42 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 22:11:48 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 22:11:48 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 22:11:48 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 22:11:48 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 22:11:48 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109bc5b81bb63c3d24a369b867d6ff180fe2cc5e2d1a3cb2d44f4fd52147d103`  
		Last Modified: Fri, 02 Oct 2026 01:19:02 GMT  
		Size: 23.1 MB (23107585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7267ff71f0e484fd3473729d1137c6466573f5759b17549197455b229d0e181`  
		Last Modified: Fri, 02 Oct 2026 01:19:02 GMT  
		Size: 47.5 MB (47520117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15bf01d33b4f1b347e7c6c10b8354b3c65c96a7d1949d91957c631c76ade75c6`  
		Last Modified: Fri, 02 Oct 2026 01:19:01 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a920497d91be321d362568a1339a3cdc5356bce4d1a785a46589078bd5a7dc50`  
		Last Modified: Fri, 02 Oct 2026 01:19:01 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711db366e51d53b18a6c499fe9f4d276a0f997c7ab690e8a1338cd84a5feeca7`  
		Last Modified: Mon, 05 Oct 2026 22:11:58 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd0e41065e534ab3847a195fe6aa170667a7d8aaf73947cb165fd16729ccefe`  
		Last Modified: Mon, 05 Oct 2026 22:11:59 GMT  
		Size: 14.4 MB (14411054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b1100f701e7a4f71d29ef41f7385d3b7ca19cd70292a991133550d4c69e0821`  
		Last Modified: Mon, 05 Oct 2026 22:11:58 GMT  
		Size: 226.2 KB (226214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:06477594e6a02b2ab40e70dcc7d408e6f6d001fab73832a4253e95e890d8bac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f328c3f81c906ac1d8c5f02b6333e18c077d2d2f91abfddd0b915dd640895b8d`

```dockerfile
```

-	Layers:
	-	`sha256:c98a5b2bf50c171d5c08dc0e5e34179c1d5b3eef127037a1f25884c1f9c46074`  
		Last Modified: Mon, 05 Oct 2026 22:11:59 GMT  
		Size: 5.2 MB (5203150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30d34baccb986a8f281cf99e3ea6b025c693b1419e0a34ecf3958f448f10532b`  
		Last Modified: Mon, 05 Oct 2026 22:11:58 GMT  
		Size: 25.2 KB (25169 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:7a909e07148b572524627984e21062c01518d0e15c729203d5ef9043a39acfa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.1 MB (120070913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29ff53f2b7b0a1dfbd4d8a93375055b82b40434b2a074873973a5e834193679`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 27 Sep 2026 10:28:33 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9618.tar --tag 26.04
# Sun, 27 Sep 2026 10:28:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:28:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:28:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:28:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:28:34.968156+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:28:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:28:34.968156+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:28:35 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9618.tar
# Fri, 02 Oct 2026 01:12:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:12:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:12:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:12:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:12:19 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:12:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 05 Oct 2026 22:09:57 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 05 Oct 2026 22:09:57 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:09:57 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 05 Oct 2026 22:09:57 GMT
WORKDIR /usr/local/tomcat
# Mon, 05 Oct 2026 22:09:57 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:09:57 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:09:57 GMT
ENV TOMCAT_MAJOR=11
# Mon, 05 Oct 2026 22:09:57 GMT
ENV TOMCAT_VERSION=11.0.26
# Mon, 05 Oct 2026 22:09:57 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Mon, 05 Oct 2026 22:09:57 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 22:10:04 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 22:10:05 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 22:10:05 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 22:10:05 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 22:10:05 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:bf7b4836e7438e88b9c61586d9311de762063b89a9d0e3a79b787fb3046fad7b`  
		Last Modified: Sun, 27 Sep 2026 12:12:36 GMT  
		Size: 39.0 MB (39030395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d05a1bce55d568a59f618862891d55343aba4ed1af2455c1e2ca96a615344b9`  
		Last Modified: Sun, 27 Sep 2026 12:12:39 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9f4d325c5ca340576065085646723b0e6a65af6a15dd986f451c29a2e887c2d`  
		Last Modified: Fri, 02 Oct 2026 01:12:40 GMT  
		Size: 21.3 MB (21349347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b90dc288b650e9e294d566f9a8126918b9076f61e52a8126496b7f1039276dc`  
		Last Modified: Fri, 02 Oct 2026 01:12:40 GMT  
		Size: 45.1 MB (45102894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efcd13c4d50d5f9b28eedc0263ffd9bdb86233a192983d1ab0794912068895c1`  
		Last Modified: Fri, 02 Oct 2026 01:12:39 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83221ed38bbd0bee8f4a2961c1cfa86a985e5451c067439d3517f43efb87580f`  
		Last Modified: Fri, 02 Oct 2026 01:12:39 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d342a83f85f2d240a72335bdd7aedf0a8311eaaf1f948373ae2ea52f922b9b2d`  
		Last Modified: Mon, 05 Oct 2026 22:10:16 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88792a88118dee76a22bf0647a387e7deadc021b8bf842a28c5cf8bca56e6f6`  
		Last Modified: Mon, 05 Oct 2026 22:10:16 GMT  
		Size: 14.4 MB (14387087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52cef866382c261becf26ee1afc67847159a1c45dcffdce81b115aff467f80d8`  
		Last Modified: Mon, 05 Oct 2026 22:10:16 GMT  
		Size: 198.0 KB (197971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:d472ff44a829650ff1368fdad84ad69840712efdaee1374054097031115a71f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e00d65d1797efb71c93602f24ba185c67017cd353334bd3b9a8169a6ab45692c`

```dockerfile
```

-	Layers:
	-	`sha256:922cef026e0d8fb6c58916d26dc32f2daefece1e4c2b142eb2ff5c96b512a277`  
		Last Modified: Mon, 05 Oct 2026 22:10:16 GMT  
		Size: 5.2 MB (5204746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e230c6ecef1dec7e8e0f384fa67045fe05b5f2087f40878230d1aab8dc74d703`  
		Last Modified: Mon, 05 Oct 2026 22:10:16 GMT  
		Size: 25.4 KB (25361 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:f728b91a61d1dcc126549141ac853b7d19240a331bb9399f36900201da243576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125776627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f270d4b3c88d015cf16f820f94ed8b319296e844e7c74213841cc1f80c8cdfe0`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:18:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:40 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:18:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 05 Oct 2026 22:10:24 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 05 Oct 2026 22:10:24 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:10:24 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 05 Oct 2026 22:10:24 GMT
WORKDIR /usr/local/tomcat
# Mon, 05 Oct 2026 22:10:24 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:10:24 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:10:24 GMT
ENV TOMCAT_MAJOR=11
# Mon, 05 Oct 2026 22:10:24 GMT
ENV TOMCAT_VERSION=11.0.26
# Mon, 05 Oct 2026 22:10:24 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Mon, 05 Oct 2026 22:10:25 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 22:10:32 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 22:10:32 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 22:10:32 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 22:10:32 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 22:10:32 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5320babd49d050bda58cba3fedbe9f9118f2eab0b9c5af2b548af2b7799416`  
		Last Modified: Fri, 02 Oct 2026 01:18:59 GMT  
		Size: 23.3 MB (23270468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4ff5a44a909cc6d314b2fc8a3d748411e5acea8a6b5eb544c4fbd885f361c1b`  
		Last Modified: Fri, 02 Oct 2026 01:19:00 GMT  
		Size: 47.0 MB (47002295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc159d94561054acfa203f20f782efd944e6757968392e5e0a67ae6cfda7666`  
		Last Modified: Fri, 02 Oct 2026 01:18:58 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a43cb3a392993c9e2c3adb64bf615daa6b46e847d9cca84a9abd62fc7b264b`  
		Last Modified: Fri, 02 Oct 2026 01:18:58 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014c94aad0770ac92ab787ed5fc884672335aba56f371553796b324b6cc583e9`  
		Last Modified: Mon, 05 Oct 2026 22:10:43 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27b6ca2020605255aa29c430d743421885f7d0ab8ef5eea05f486d0add874d7`  
		Last Modified: Mon, 05 Oct 2026 22:10:44 GMT  
		Size: 14.4 MB (14411126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e66d0c8446408ca1a6ad183f1c4576ca824ef2c4bcba7ea1ed403b7c8d6bcb`  
		Last Modified: Mon, 05 Oct 2026 22:10:44 GMT  
		Size: 224.8 KB (224766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:79c656501d31ba24e29d46449e233a428bc87f9940a25cb9d61010f824547e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae74c1c4715918cd0594d7a52a98d268f0523e756f2819d1af30a17d6eaa7fd`

```dockerfile
```

-	Layers:
	-	`sha256:20842ad4f2c251379fd533f4b85760b921bdb897ab408df7f4b5695666a47b7b`  
		Last Modified: Mon, 05 Oct 2026 22:10:44 GMT  
		Size: 5.2 MB (5202916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0435323ecb9dd72799ae29c31a234e58adaa535c768f460d67d08939f93e5b8`  
		Last Modified: Mon, 05 Oct 2026 22:10:43 GMT  
		Size: 25.4 KB (25425 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin` - linux; ppc64le

```console
$ docker pull tomcat@sha256:0c67ca995e29d3b5316712aab559567125b5b700d8ad8a2ca2a969f6bdf0c80a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.0 MB (134986884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d60223300f7a9f0ba5814c791ba163d5ad2f49f51666709df1364695fef87c4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 27 Sep 2026 10:30:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9496.tar --tag 26.04
# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:30:04.151026+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:30:04.151026+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9496.tar
# Fri, 02 Oct 2026 03:32:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:32:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:32:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:32:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:32:29 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 03:44:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:44:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:44:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:44:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 05 Oct 2026 23:34:33 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 05 Oct 2026 23:34:33 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 23:34:33 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 05 Oct 2026 23:34:34 GMT
WORKDIR /usr/local/tomcat
# Mon, 05 Oct 2026 23:34:34 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 23:34:34 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 23:34:34 GMT
ENV TOMCAT_MAJOR=11
# Mon, 05 Oct 2026 23:34:34 GMT
ENV TOMCAT_VERSION=11.0.26
# Mon, 05 Oct 2026 23:34:34 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Mon, 05 Oct 2026 23:34:35 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 23:34:45 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 23:34:51 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 23:34:51 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 23:34:51 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 23:34:51 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:24cb2080a4f15f9f8f3e5b34cf3d351ca6a179e34ef7a5be195547649bea7b44`  
		Last Modified: Sun, 27 Sep 2026 12:12:27 GMT  
		Size: 47.0 MB (46963009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8f37a94bbdd591f234d1c72cb2519dfd51120a905756ba0cb98728f447abe93`  
		Last Modified: Sun, 27 Sep 2026 12:12:30 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04b2bedcb2373f2402ce4f875d6e620f72eee4e2a5f9e184d2bba9b49e8dd45a`  
		Last Modified: Fri, 02 Oct 2026 03:33:17 GMT  
		Size: 25.9 MB (25898810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8062867477bcc782a58f0aebf30b85232b9147ed445c1bcb7840703d5b2134b5`  
		Last Modified: Fri, 02 Oct 2026 03:45:14 GMT  
		Size: 47.4 MB (47428310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227d2f9328d5c0d08371c5748179e6bc00def590fc201bc2d47df0a416640773`  
		Last Modified: Fri, 02 Oct 2026 03:45:12 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e8f39c7ff165190a044588b640525cb3a1d5347e6218cc49ff36e5e6d68523`  
		Last Modified: Fri, 02 Oct 2026 03:45:12 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f22ef52d03d4c3b203a91d430c0aefa699dbbacca6573de2396034c874a5659`  
		Last Modified: Mon, 05 Oct 2026 23:35:28 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3438a7b447d402baeca11a74dd88e0e81acf8746964473a2610a782d7df5cf1`  
		Last Modified: Mon, 05 Oct 2026 23:35:29 GMT  
		Size: 14.4 MB (14430222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34114868dde04d40c174e2bcb424f6d0ed8e291e7bf1acedd249b81fad0b8437`  
		Last Modified: Mon, 05 Oct 2026 23:35:28 GMT  
		Size: 263.3 KB (263298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:3cec093aa0991987dc5ef227591916cd8913bf8cc0245fa69bbde5ab46582d33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5231740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1cffc3d42f0c35413d4f40e3d00863e143d23c24220434e3c3a2a4b4f859a3`

```dockerfile
```

-	Layers:
	-	`sha256:8aa993178d83e23d2df9e3d1f6cc5edf242fbb2c75aa2da2ac35320ebd5cd5bd`  
		Last Modified: Mon, 05 Oct 2026 23:35:28 GMT  
		Size: 5.2 MB (5206465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2947a782afc2e080fd2c29d1d7f6458e2c5a8cdee648ce51ff26eb7053191006`  
		Last Modified: Mon, 05 Oct 2026 23:35:28 GMT  
		Size: 25.3 KB (25275 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre17-temurin` - linux; s390x

```console
$ docker pull tomcat@sha256:f00d571e37de237bd71669dfbdebadc4c5d99b7e8dc03ce0f8c5d3e0a7d203d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124113335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4357983d9e60117918c409e4e72c98138710039c304eab90f4d1e23e23cc9c14`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9534.tar --tag 26.04
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:27:53.861327+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:27:53.861327+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9534.tar
# Fri, 02 Oct 2026 01:13:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:13:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:13:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:13:46 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:13:46 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:22:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:22:22 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:22:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:22:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 05 Oct 2026 22:09:03 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 05 Oct 2026 22:09:03 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:09:03 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 05 Oct 2026 22:09:03 GMT
WORKDIR /usr/local/tomcat
# Mon, 05 Oct 2026 22:09:03 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:09:03 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:09:03 GMT
ENV TOMCAT_MAJOR=11
# Mon, 05 Oct 2026 22:09:03 GMT
ENV TOMCAT_VERSION=11.0.26
# Mon, 05 Oct 2026 22:09:03 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Mon, 05 Oct 2026 22:09:04 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 22:09:07 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 22:09:07 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 22:09:07 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 22:09:07 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 22:09:07 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:d6ebc3b508a6f57d9b3b99430767da95a84a53508b118d1f4ba5df92e295dcbc`  
		Last Modified: Sun, 27 Sep 2026 12:12:55 GMT  
		Size: 41.6 MB (41627251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd388e78139fa95688128f54e9acd78f41931e116be2f83de83559b714894c3`  
		Last Modified: Sun, 27 Sep 2026 12:12:58 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf07f2fdcbc8d2522021e3d8c2973b623fb008aa9df2a1d374bdbc2380dbd9f3`  
		Last Modified: Fri, 02 Oct 2026 01:15:08 GMT  
		Size: 23.3 MB (23315056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f339608abd54ad2038b342dc376f28e595683f276d987a88eb05ae4a8fb0b2e0`  
		Last Modified: Fri, 02 Oct 2026 01:23:02 GMT  
		Size: 44.5 MB (44515245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:749cdf420b9f3d0d676a26e1ff4c9f8a7e6efb53b45ba3165d5b93819e4384f4`  
		Last Modified: Fri, 02 Oct 2026 01:22:59 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e541fcb6014f4fbdc7d39fa5ecad83dba4086d0e170712a4fe20a38d87f9856`  
		Last Modified: Fri, 02 Oct 2026 01:22:59 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f21fdb60938a122883e3757336c921482b9bd3470bd06c7c70d999c9057221`  
		Last Modified: Mon, 05 Oct 2026 22:09:23 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1965c92bb8fdca71e8b1894dfd8bbd15ece87d854c23a18e43c7bbca94ccf0c9`  
		Last Modified: Mon, 05 Oct 2026 22:09:24 GMT  
		Size: 14.4 MB (14419765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d638f104daefb75cde1c74588525e12391c01a3656477ffb36cfc059ab2bb894`  
		Last Modified: Mon, 05 Oct 2026 22:09:23 GMT  
		Size: 232.8 KB (232801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre17-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:e61385e4137472798030872e7b931af97f4f44031697930ed5caf52ee7f1ce61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5229726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:638fb7ff3aec5edefdd0970702be55ff8d01fb193d8a434622b867307e3cdd9d`

```dockerfile
```

-	Layers:
	-	`sha256:273261653369e24f9d272492e97958cf03f66f386f050e7949d1bdeede650f8a`  
		Last Modified: Mon, 05 Oct 2026 22:09:23 GMT  
		Size: 5.2 MB (5204557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc7a88cd7ad8767b11c2f22b8cc1e0c56dfbd533934017e713d493238b81e376`  
		Last Modified: Mon, 05 Oct 2026 22:09:23 GMT  
		Size: 25.2 KB (25169 bytes)  
		MIME: application/vnd.in-toto+json
