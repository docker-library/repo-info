## `tomcat:10-jre17-temurin-resolute`

```console
$ docker pull tomcat@sha256:128cfca6f9ee2c94f155eb6e0bf8b3f16165e32672d1c59f5de0ac81ae84e30a
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

### `tomcat:10-jre17-temurin-resolute` - linux; amd64

```console
$ docker pull tomcat@sha256:1a9d04f95100893f0ed91e322c543585409df748a21f0497d78a4206092e4e58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127066052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d7c278796abf201b73eed38f54b954100be7a2871d70dc092ea3af4fa65f71`
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
# Mon, 05 Oct 2026 22:11:47 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 05 Oct 2026 22:11:47 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:11:47 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 05 Oct 2026 22:11:48 GMT
WORKDIR /usr/local/tomcat
# Mon, 05 Oct 2026 22:11:48 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:11:48 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:11:48 GMT
ENV TOMCAT_MAJOR=10
# Mon, 05 Oct 2026 22:11:48 GMT
ENV TOMCAT_VERSION=10.1.60
# Mon, 05 Oct 2026 22:11:48 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Mon, 05 Oct 2026 22:11:48 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 22:11:55 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 22:11:55 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 22:11:55 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 22:11:55 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 22:11:55 GMT
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
	-	`sha256:e980e5d4f8484dd71db5089650b63e888d6e4ed68a25434cd7d6d222a5876de5`  
		Last Modified: Mon, 05 Oct 2026 22:12:06 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65882eeff039e11219708354ef7c49b9502f7efaae7bbc4581258dd7d49b67b3`  
		Last Modified: Mon, 05 Oct 2026 22:12:07 GMT  
		Size: 14.4 MB (14371412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3054c3fe3c88c1de29a1f68a0e47d49110d08a91569dbec873f972d27c7e91f`  
		Last Modified: Mon, 05 Oct 2026 22:12:07 GMT  
		Size: 226.2 KB (226204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-resolute` - unknown; unknown

```console
$ docker pull tomcat@sha256:32364a14fd3d2e51dc61ffe5ab2e10fc0ad95c48fed5d2ec91a8636cde9c4371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5226447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f7adf56afbee11f85e5ab241ff9db193a5924acd4108d162de1246940dabd6`

```dockerfile
```

-	Layers:
	-	`sha256:f1e99a7a7e8fe413ad44cb6df0f156af18bc0e5c1ab87fec9800548084a7fda7`  
		Last Modified: Mon, 05 Oct 2026 22:12:07 GMT  
		Size: 5.2 MB (5202216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f1892c9259e9252f26bf2cbc36ce9e4e07b51888002bdcbe9abf4958c80bcb1`  
		Last Modified: Mon, 05 Oct 2026 22:12:07 GMT  
		Size: 24.2 KB (24231 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin-resolute` - linux; arm variant v7

```console
$ docker pull tomcat@sha256:cb449117731cbf2293e33dd283e641eab194f48aae3a27f8146d37f7199485a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120031139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d4ed5f1b273bd3e1ef4d1496c59bb0db53b900ada11c7a05d6caad047fce0a`
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
ENV TOMCAT_MAJOR=10
# Mon, 05 Oct 2026 22:09:57 GMT
ENV TOMCAT_VERSION=10.1.60
# Mon, 05 Oct 2026 22:09:57 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Mon, 05 Oct 2026 22:10:25 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 22:10:34 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 22:10:34 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 22:10:34 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 22:10:34 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 22:10:34 GMT
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
	-	`sha256:6e8e40fa44daa7421a6130c77ab4816d098d00ec71f047eef8d41427fe1ed928`  
		Last Modified: Mon, 05 Oct 2026 22:10:45 GMT  
		Size: 14.3 MB (14347292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae7f6d02d25361115a9ad4968721d27f1782c4a418aa6724bf55abbee93e34c4`  
		Last Modified: Mon, 05 Oct 2026 22:10:44 GMT  
		Size: 198.0 KB (197992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-resolute` - unknown; unknown

```console
$ docker pull tomcat@sha256:d878fd6dc7ce022920143d1ce20c106a7d7dbee9ebdc7fabbf89e090c2232fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9871563a50c77f454ede74ff300e947c0e5b9c06aa3e886a88632e778e687a4`

```dockerfile
```

-	Layers:
	-	`sha256:393e891c8882ea10908a3b24b69bda20f5f7a8e6f83a384a3990f51b28cc8c2f`  
		Last Modified: Mon, 05 Oct 2026 22:10:45 GMT  
		Size: 5.2 MB (5203788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ce614988aa9124857c7a6b304753eccc50414469da9fa2f411b9a7bb305d3fa`  
		Last Modified: Mon, 05 Oct 2026 22:10:44 GMT  
		Size: 24.4 KB (24398 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin-resolute` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:35195da4648f8f2245288f8a6b021a159f0c3ad481ede2d17e2e4e4f17b59f16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125737613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a69aff3a2732b2c34d398e6373101485dc86531070397daae8b57b5cf562853`
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
# Mon, 05 Oct 2026 22:10:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 05 Oct 2026 22:10:29 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:10:29 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 05 Oct 2026 22:10:31 GMT
WORKDIR /usr/local/tomcat
# Mon, 05 Oct 2026 22:10:31 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:10:31 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:10:31 GMT
ENV TOMCAT_MAJOR=10
# Mon, 05 Oct 2026 22:10:31 GMT
ENV TOMCAT_VERSION=10.1.60
# Mon, 05 Oct 2026 22:10:31 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Mon, 05 Oct 2026 22:10:31 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 22:10:39 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 22:10:39 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 22:10:39 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 22:10:39 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 22:10:39 GMT
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
	-	`sha256:c8bf0e81706f85f7a5ac40ac283015a7690f9dce69f8fa1882b834ce96941677`  
		Last Modified: Mon, 05 Oct 2026 22:10:50 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b45a14be688f8692a20a02bb60317c8f92e1b9e9731f4f063f372c75ca4a16`  
		Last Modified: Mon, 05 Oct 2026 22:10:51 GMT  
		Size: 14.4 MB (14372116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0730b8d1eb1fbd550dcce1fe1b55ff22c3d554e267577f4d53311b4fafc2ad`  
		Last Modified: Mon, 05 Oct 2026 22:10:50 GMT  
		Size: 224.8 KB (224763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-resolute` - unknown; unknown

```console
$ docker pull tomcat@sha256:46d4d4da23ff2e1ab6454d05c66fdca7855ce28df5c6eeab5ff3d8fd918f2b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5226397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:269cd4285bc8bb23d95289d8874555ac501141159daf647a886971870c0268e6`

```dockerfile
```

-	Layers:
	-	`sha256:f9bbf25d0865f328718c62ef27fe33bd127f1ae04e7cb1d0a2a443ad28bea310`  
		Last Modified: Mon, 05 Oct 2026 22:10:50 GMT  
		Size: 5.2 MB (5201946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8adc7824b8286e804de341d0a62bb79bd6d37f7e6ed91546a9c6e96c656ad9eb`  
		Last Modified: Mon, 05 Oct 2026 22:10:50 GMT  
		Size: 24.5 KB (24451 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin-resolute` - linux; ppc64le

```console
$ docker pull tomcat@sha256:8ca382121de9796f860cf3213a44e1c47807a0f11a152518af7f964f5cb757e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134944713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1c6f2bf1edac75f605c683b4b72fc24a7b7255fffd55a26fb8d6cf69370cffc`
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
ENV TOMCAT_MAJOR=10
# Mon, 05 Oct 2026 23:34:34 GMT
ENV TOMCAT_VERSION=10.1.60
# Mon, 05 Oct 2026 23:34:34 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Mon, 05 Oct 2026 23:35:44 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 23:35:54 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 23:35:56 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 23:35:56 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 23:35:56 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 23:35:56 GMT
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
	-	`sha256:a0de5b30ed3f33b9eee38ab603c086ab54721ed12d0c5972ed90033a0dfc8126`  
		Last Modified: Mon, 05 Oct 2026 23:36:31 GMT  
		Size: 14.4 MB (14388039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4448c8717bfa79c901b487818b1204ad71ec8d006cd734f3c0f93581b979cba`  
		Last Modified: Mon, 05 Oct 2026 23:36:31 GMT  
		Size: 263.3 KB (263310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-resolute` - unknown; unknown

```console
$ docker pull tomcat@sha256:2b58e1782cf07fa04d60417bd26b2cb2fd6d828cbe16f8a6864f1f5bc2381870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5229832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acc13605a098db998a6674a4fbf54bb1aa1ba19decd11671d4d7122cba4d05a1`

```dockerfile
```

-	Layers:
	-	`sha256:50c9c11e9675d605f23b7c5763ac1b184826b3380421badc82be2b4b5a148ed0`  
		Last Modified: Mon, 05 Oct 2026 23:36:31 GMT  
		Size: 5.2 MB (5205513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bb3e2b0a6c072738ee0c943d031462130efaea204a6a66196553e2fe25bee19`  
		Last Modified: Mon, 05 Oct 2026 23:36:30 GMT  
		Size: 24.3 KB (24319 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:10-jre17-temurin-resolute` - linux; s390x

```console
$ docker pull tomcat@sha256:c59cce06403b141cafda8444e39475a4f39a42de3301ffff8341cb8231271593
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.1 MB (124069481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d58155a0645bfceceb6ff00ed46fef090df4b9fe1a67e947220eb136fc0d403a`
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
# Mon, 05 Oct 2026 22:09:41 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 05 Oct 2026 22:09:41 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:09:41 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 05 Oct 2026 22:09:41 GMT
WORKDIR /usr/local/tomcat
# Mon, 05 Oct 2026 22:09:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:09:41 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:09:41 GMT
ENV TOMCAT_MAJOR=10
# Mon, 05 Oct 2026 22:09:41 GMT
ENV TOMCAT_VERSION=10.1.60
# Mon, 05 Oct 2026 22:09:41 GMT
ENV TOMCAT_SHA512=aa06508300ca137a023b74b8600f2c1b3248412eb85d4fc5e2f337c6c4d3776f4491e272f79856ac541cfab0fc35537111ae4f3cfcd0bbe702c0a3610a61bd04
# Mon, 05 Oct 2026 22:09:42 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 22:09:45 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 22:09:46 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 22:09:46 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 22:09:46 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 22:09:46 GMT
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
	-	`sha256:6771f0d5011679276dc6262b2ff1c9c613832ea729b8f76ca3ebefb65512ae6c`  
		Last Modified: Mon, 05 Oct 2026 22:10:02 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90af5724a81b757b028b44c367104db0734faf3c15cf0d2bb31a06de31f85a85`  
		Last Modified: Mon, 05 Oct 2026 22:10:02 GMT  
		Size: 14.4 MB (14375855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17ffbecb1b77ffff32c999f9076611c90a2f0e1e644d9b64e5369d236836b00`  
		Last Modified: Mon, 05 Oct 2026 22:10:02 GMT  
		Size: 232.9 KB (232858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:10-jre17-temurin-resolute` - unknown; unknown

```console
$ docker pull tomcat@sha256:3c51473a932e54b1ad9b63d26b8b21dec4e7b3a26b27bdcd656dccc8377ac061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5227854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5f6e098d507a8175ad4ff0d41ccd511e0217028e1a30f92317ef0c7159a8253`

```dockerfile
```

-	Layers:
	-	`sha256:1ca0c6da89c15441f596815a9885621be0e1689534a17a3586a654e75a105e91`  
		Last Modified: Mon, 05 Oct 2026 22:10:02 GMT  
		Size: 5.2 MB (5203623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80e942b9b2c829cce90ed2cf3526fbd366c8efe7b97ce322a5e3e46145a3e678`  
		Last Modified: Mon, 05 Oct 2026 22:10:01 GMT  
		Size: 24.2 KB (24231 bytes)  
		MIME: application/vnd.in-toto+json
