## `tomcat:jre21-temurin-resolute`

```console
$ docker pull tomcat@sha256:215fc97a2f5c7bc22d3d560eb9a1a734c1e309e4d7633a09438f373079e2c529
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

### `tomcat:jre21-temurin-resolute` - linux; amd64

```console
$ docker pull tomcat@sha256:1c41b18d837fec2503849787ae73bad2b2ff43a2108c51a979b3ceb9bd90bd02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.7 MB (132683733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d990ce60413b2272b8b54d2be5a8a13e772d73acb817d739e2d3590e438ca7f`
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
# Fri, 02 Oct 2026 01:19:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:19:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:19:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:19:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:19:07 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:19:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 05 Oct 2026 22:10:51 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 05 Oct 2026 22:10:51 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:10:51 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 05 Oct 2026 22:10:51 GMT
WORKDIR /usr/local/tomcat
# Mon, 05 Oct 2026 22:10:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:10:51 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:10:51 GMT
ENV TOMCAT_MAJOR=11
# Mon, 05 Oct 2026 22:10:51 GMT
ENV TOMCAT_VERSION=11.0.26
# Mon, 05 Oct 2026 22:10:51 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Mon, 05 Oct 2026 22:10:52 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 22:11:09 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 22:11:09 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 22:11:09 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 22:11:09 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 22:11:09 GMT
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
	-	`sha256:5d8dab7db2742f65eb651ddb9c472895877637821edd25947a57e6809ea99ecb`  
		Last Modified: Fri, 02 Oct 2026 01:19:25 GMT  
		Size: 23.1 MB (23107753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d8d42fbc5604c4e895096a9217ddaef21c1eb762a43acedbc9c4554b58f65bb`  
		Last Modified: Fri, 02 Oct 2026 01:19:27 GMT  
		Size: 53.1 MB (53097666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4157e3a962cdb99242cd5b145bcc2124d0db0c9849175dd981fe78640d0a72`  
		Last Modified: Fri, 02 Oct 2026 01:19:24 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550bcd7b9380af835ebbbf439f5ddcaebfb2af951dc75d4bcbdc261cbe3917f0`  
		Last Modified: Fri, 02 Oct 2026 01:19:24 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843839aebf7c50e17846cd751af117f17e83f79f5d6bd019d1ccac274c85545c`  
		Last Modified: Mon, 05 Oct 2026 22:11:21 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59f8c840650bf4d78669224b4f363d5717a88549aa0a29f353f01502ffe5dcd`  
		Last Modified: Mon, 05 Oct 2026 22:11:21 GMT  
		Size: 14.4 MB (14411342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f629f2f8f302e8d3f4fe6fdc9789d07731340ee23bad81f63cb1b170769eb7`  
		Last Modified: Mon, 05 Oct 2026 22:11:20 GMT  
		Size: 226.2 KB (226239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre21-temurin-resolute` - unknown; unknown

```console
$ docker pull tomcat@sha256:b8127c5fd5bccf6bda828a56eeae97650bba1c5fa3bc09e91fb4f4c8dc6789e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5229567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4afa38b8ae21aedd3a253651a30a39cd9e0fbb4bdf258ff4fae482f591de3c6`

```dockerfile
```

-	Layers:
	-	`sha256:f7b0e013392d54e89a847a06a6809d1855539404f8f20b33ac1cdfe46b0b6b39`  
		Last Modified: Mon, 05 Oct 2026 22:11:20 GMT  
		Size: 5.2 MB (5204398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cd64e2ea42be486bfa8c5d31f0b438a4c05defe84e14ab20aa67f2cd0a43403`  
		Last Modified: Mon, 05 Oct 2026 22:11:20 GMT  
		Size: 25.2 KB (25169 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre21-temurin-resolute` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:4d50b2ce0be21a987d4c743ef4c3e7af2905f395f7a0ad1fe62eae14a3eedf92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (131048338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a292198cbcf300f4ac809d80bf5e85caca3c47c7a1cadc4158bd9314aeb0b2`
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
# Fri, 02 Oct 2026 01:19:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:19:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:19:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:19:26 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:19:26 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:19:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 05 Oct 2026 22:10:23 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 05 Oct 2026 22:10:23 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:10:23 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 05 Oct 2026 22:10:23 GMT
WORKDIR /usr/local/tomcat
# Mon, 05 Oct 2026 22:10:23 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:10:23 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:10:23 GMT
ENV TOMCAT_MAJOR=11
# Mon, 05 Oct 2026 22:10:23 GMT
ENV TOMCAT_VERSION=11.0.26
# Mon, 05 Oct 2026 22:10:23 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Mon, 05 Oct 2026 22:10:23 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 22:10:30 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 22:10:31 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 22:10:31 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 22:10:31 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 22:10:31 GMT
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
	-	`sha256:d79e02524c08dcb920dcc8328672846fe12a9ad32d30290515ca20b55e9f10f4`  
		Last Modified: Fri, 02 Oct 2026 01:19:45 GMT  
		Size: 23.3 MB (23270512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcba1e9a8b29451f3a20bb1e02505e7d3187399b7eb24945ad1064a4e84ca1d7`  
		Last Modified: Fri, 02 Oct 2026 01:19:46 GMT  
		Size: 52.3 MB (52273886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede76e7a41524122a2bc3e76eaa66b047ba9e91d6c335fb572b88ee3334ae10b`  
		Last Modified: Fri, 02 Oct 2026 01:19:44 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baae1338e74a2d60cbc4c8b6599e3cb5e1480d72d2fd8e6bb14911288c467627`  
		Last Modified: Fri, 02 Oct 2026 01:19:20 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eef1aa33e73afd53f7bc181c3d7be3f8f3841bc8bf337e59c3b80218ea473c2b`  
		Last Modified: Mon, 05 Oct 2026 22:10:43 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b23f9037856277915a5b6a22f485843f9792817e4e9781e1c4e9da1765e96a2`  
		Last Modified: Mon, 05 Oct 2026 22:10:43 GMT  
		Size: 14.4 MB (14411206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d9a0801464e713d917b96b074fde9aba69606f23548b60966cddb981adce0d`  
		Last Modified: Mon, 05 Oct 2026 22:10:43 GMT  
		Size: 224.8 KB (224763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre21-temurin-resolute` - unknown; unknown

```console
$ docker pull tomcat@sha256:455aa04dd1c278b985ef35a1486edcfd666b49947ad18054620e15ac6100d18b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5229588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423df7c72d5474bdda3a13eece65b9a7c05c857066eefe2215110f38df6fac86`

```dockerfile
```

-	Layers:
	-	`sha256:be69933da75dfb3a241c30a56fe4237f14b38796eb0b89743a4204c31e39b1b2`  
		Last Modified: Mon, 05 Oct 2026 22:10:43 GMT  
		Size: 5.2 MB (5204164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a15f46061d99ecbc6acdf31169aef50fcef440233a08a49cd866c11d01ed0f25`  
		Last Modified: Mon, 05 Oct 2026 22:10:43 GMT  
		Size: 25.4 KB (25424 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre21-temurin-resolute` - linux; ppc64le

```console
$ docker pull tomcat@sha256:195345015cd47a201cf20b60705859e68abb101dbeacce41a9c17491d224ca04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.7 MB (140673159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c73ede890669f6a76504c5e807f6e6e996f80849d2d958872b3b6ce59fb1152`
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
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 03:49:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:49:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:49:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:49:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 05 Oct 2026 23:20:04 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 05 Oct 2026 23:20:04 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 23:20:04 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 05 Oct 2026 23:20:05 GMT
WORKDIR /usr/local/tomcat
# Mon, 05 Oct 2026 23:20:05 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 23:20:05 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 23:20:05 GMT
ENV TOMCAT_MAJOR=11
# Mon, 05 Oct 2026 23:20:05 GMT
ENV TOMCAT_VERSION=11.0.26
# Mon, 05 Oct 2026 23:20:05 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Mon, 05 Oct 2026 23:20:06 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 23:20:14 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 23:20:16 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Mon, 05 Oct 2026 23:20:16 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 05 Oct 2026 23:20:16 GMT
ENTRYPOINT []
# Mon, 05 Oct 2026 23:20:16 GMT
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
	-	`sha256:8e706b9a89ab7524a8c6865c0c3c76c20498dcc573ba4b9e40fbbd9a7fbf1716`  
		Last Modified: Fri, 02 Oct 2026 03:50:12 GMT  
		Size: 53.1 MB (53114485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0436d302052477229b68eb0d7bc6974db04e4754044ef5503ec3079ba09ff5`  
		Last Modified: Fri, 02 Oct 2026 03:50:09 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9f6d3c93c38e7768404b6b68cc1f7d83e8c9a5964275eb03acc9df173a08d6`  
		Last Modified: Fri, 02 Oct 2026 03:50:09 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61f7739c854f066c042e44a5a1cb7e3b2f17089ae45991d78cec3d4579c59cd9`  
		Last Modified: Mon, 05 Oct 2026 23:20:46 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bfd18d1bf26ad75d8a3c066b1cb601fcb543329a68bf50e810b95f3dcbb7da`  
		Last Modified: Mon, 05 Oct 2026 23:20:47 GMT  
		Size: 14.4 MB (14430388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24660604459809d7c2552cdcd5e8e7cf159149e0aa97d228cf4873bfa0a9474`  
		Last Modified: Mon, 05 Oct 2026 23:20:47 GMT  
		Size: 263.2 KB (263231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre21-temurin-resolute` - unknown; unknown

```console
$ docker pull tomcat@sha256:7597f9274369d9b81866a21aa39bdeaae7aeed7241611c13f55bbf966c2a38e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25fe7d6e6d6a79063fdc270c22ec897f2eefe66be9f7d64745f87b0972b0ae5c`

```dockerfile
```

-	Layers:
	-	`sha256:1f584f554930e3f74b93d05385b2c8212eb5658ca13876c460ae0216d887845d`  
		Last Modified: Mon, 05 Oct 2026 23:20:47 GMT  
		Size: 5.2 MB (5207713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb7bcecbe60693e3128809863f9b3c153df0e5a304e69df16e3255891f66174f`  
		Last Modified: Mon, 05 Oct 2026 23:20:46 GMT  
		Size: 25.3 KB (25275 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre21-temurin-resolute` - linux; s390x

```console
$ docker pull tomcat@sha256:5e72cdab6f0d328451fe8a03f51bb062c7d93bd41dd986a746244d849e461aae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.2 MB (129236612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54bb0923668fb75a5f04c48012cd895324d568032aa462ffd8ea909f762d3a9`
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
# Fri, 02 Oct 2026 01:17:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:43 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:26:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:26:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:26:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:26:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 05 Oct 2026 22:09:01 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Mon, 05 Oct 2026 22:09:01 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 22:09:01 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Mon, 05 Oct 2026 22:09:01 GMT
WORKDIR /usr/local/tomcat
# Mon, 05 Oct 2026 22:09:01 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:09:01 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Mon, 05 Oct 2026 22:09:01 GMT
ENV TOMCAT_MAJOR=11
# Mon, 05 Oct 2026 22:09:01 GMT
ENV TOMCAT_VERSION=11.0.26
# Mon, 05 Oct 2026 22:09:01 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Mon, 05 Oct 2026 22:09:01 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Mon, 05 Oct 2026 22:09:06 GMT
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
	-	`sha256:c5fe4f74325f627392cdc8f4f6381907d65f973279dcd209bb6591ae1b36e879`  
		Last Modified: Fri, 02 Oct 2026 01:18:55 GMT  
		Size: 23.3 MB (23315022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1ed7cab68477d401d4f8849893cc0417ea76abfce10789d678aed8c236ec85`  
		Last Modified: Fri, 02 Oct 2026 01:28:02 GMT  
		Size: 49.6 MB (49638257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9761b5034b6972bb3182bb2313cb7c340d419262ecd290a088e75d4e31f84c02`  
		Last Modified: Fri, 02 Oct 2026 01:27:57 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b6e7d56585fd8a3a7d289e49474a87401be927caefb3cec623e7e9c4bfb20df`  
		Last Modified: Fri, 02 Oct 2026 01:27:57 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d7a89f2613a79ac7757f7a35ac08568854b7174d622105b2d0a2b218ea9836`  
		Last Modified: Mon, 05 Oct 2026 22:09:24 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a13ff0d6ea0a840da9ae5f7a772575ce9ae36d3836ec075db736dfc93062b5`  
		Last Modified: Mon, 05 Oct 2026 22:09:24 GMT  
		Size: 14.4 MB (14419921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593be0d89b652ee6c303f827820fba1b94ec6283cf415c94e3b4fc2028eefde5`  
		Last Modified: Mon, 05 Oct 2026 22:09:24 GMT  
		Size: 232.9 KB (232948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre21-temurin-resolute` - unknown; unknown

```console
$ docker pull tomcat@sha256:f703b837dfad6c069df08c485af96f3bf3f2666905f947e033b4915b5605a4fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1881fee7e3870197305328f79c11c56374e1f572fdf6279cc69c64dafaebc2`

```dockerfile
```

-	Layers:
	-	`sha256:3fb2d4d9a3e508e143ab68646a0929ac3289056c8e09d9df9d3e9c850d8df1aa`  
		Last Modified: Mon, 05 Oct 2026 22:09:24 GMT  
		Size: 5.2 MB (5205805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a68358b7d7102e1ad6cc6d4fe160d42b7548e9a329682f11651cc1fb1d0a7702`  
		Last Modified: Mon, 05 Oct 2026 22:09:24 GMT  
		Size: 25.2 KB (25169 bytes)  
		MIME: application/vnd.in-toto+json
