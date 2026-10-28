## `tomcat:11-jre25-temurin`

```console
$ docker pull tomcat@sha256:4df33e72ec1731a536d007d04155e022a6e4cf601c15a2db4d855e191b967338
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

### `tomcat:11-jre25-temurin` - linux; amd64

```console
$ docker pull tomcat@sha256:66ccea64459b6cbb528a1d220c3234892b12b72661a4f6b104e87d63a7fc215c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.1 MB (132061073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb572247bc0fcb139d458185b742d9ce6caddc923c0785ece7d92dec21becce4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Mon, 26 Oct 2026 23:13:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:13:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:13:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:13:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:13:35 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:13:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:13:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:13:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:13:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 27 Oct 2026 01:25:50 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:25:50 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 01:25:50 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:25:50 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:25:50 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 01:25:50 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 01:25:50 GMT
ENV TOMCAT_MAJOR=11
# Tue, 27 Oct 2026 01:25:50 GMT
ENV TOMCAT_VERSION=11.0.27
# Tue, 27 Oct 2026 01:25:50 GMT
ENV TOMCAT_SHA512=a617896307cada4884b24f80c4e977ddad8b3e0f88ce0e2a6eea29d5f332498e276ae5976c227a9c8daecf05c7c90def684a3766dd5a81f47a56d8b1adf43dc3
# Tue, 27 Oct 2026 01:25:51 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 27 Oct 2026 01:25:56 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:25:56 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 01:25:56 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 01:25:56 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 01:25:56 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a70cec4d7739e72b0aaaf5ce994498f65b3ae6ff590df7f948177b136302b2be`  
		Last Modified: Mon, 26 Oct 2026 23:14:11 GMT  
		Size: 12.2 MB (12151792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f083411ef6834914f3a00b8a1136da5c8e9df54d388330e986cd38f287739b16`  
		Last Modified: Mon, 26 Oct 2026 23:14:13 GMT  
		Size: 63.1 MB (63081436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76bc2df6a4979e60575140667ac2bbbd709ea39a9ad55c2b3e61890beea0ec0`  
		Last Modified: Mon, 26 Oct 2026 23:14:10 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6828dc27918f46bf2dfa0f3403eee2d57020f20559724b41b9c320c1038178`  
		Last Modified: Tue, 27 Oct 2026 01:26:07 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294b73c0a6a346fe48d3f78d86276ebbe1e48642af22b3be0ae7d839a2bcda51`  
		Last Modified: Tue, 27 Oct 2026 01:26:08 GMT  
		Size: 14.5 MB (14479399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7ff5c0f9b49a184285b873fb9ae1e2a5ecf5a7f7ea9a251416b3b285c48786`  
		Last Modified: Tue, 27 Oct 2026 01:26:08 GMT  
		Size: 205.4 KB (205435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre25-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:25859b51fa278a721c8f303a5e856c103ed4209ab75c3cccbc6e72c4261accd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4961416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de9372111ff15bf17831ec97a0c9a676066521577c3b0432b6dbc7b40a4db094`

```dockerfile
```

-	Layers:
	-	`sha256:4af19da06be2bdae24f8db2728a5027361a913cec034a7eb50503036f9f8cfe7`  
		Last Modified: Tue, 27 Oct 2026 01:26:08 GMT  
		Size: 4.9 MB (4936258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64430b95c6e3c2847b61c7f5a6e1fec39260ba88df9a09f74af8d4699ef20a40`  
		Last Modified: Tue, 27 Oct 2026 01:26:07 GMT  
		Size: 25.2 KB (25158 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre25-temurin` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:5f979eaa98332178a54425e8d1c78d6b336d1cb326f96549c76dcbd00a5c5d7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.8 MB (129844829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad79de6fdda87293c1f5113c07d1f2ce14675c5fb443e0d0238aeba66b2f4ec5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:18:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:18:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:18:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:18:02 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:18:02 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:18:19 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:18:19 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:18:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:18:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 27 Oct 2026 01:25:44 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:25:44 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 01:25:44 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:25:44 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:25:44 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 01:25:44 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 01:25:44 GMT
ENV TOMCAT_MAJOR=11
# Tue, 27 Oct 2026 01:25:44 GMT
ENV TOMCAT_VERSION=11.0.27
# Tue, 27 Oct 2026 01:25:44 GMT
ENV TOMCAT_SHA512=a617896307cada4884b24f80c4e977ddad8b3e0f88ce0e2a6eea29d5f332498e276ae5976c227a9c8daecf05c7c90def684a3766dd5a81f47a56d8b1adf43dc3
# Tue, 27 Oct 2026 01:25:44 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 27 Oct 2026 01:25:50 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:25:51 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 01:25:51 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 01:25:51 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 01:25:51 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1c280fe5fb98a7c2966fe55cf93fc37617281ae248eb6c28ebd1e39f3b1fd6`  
		Last Modified: Mon, 26 Oct 2026 23:18:36 GMT  
		Size: 12.1 MB (12109427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ae025f5cf29bb8aa8ed72fbff480c7eed1286d19afe1f555d32c1d9a955a1f4`  
		Last Modified: Mon, 26 Oct 2026 23:18:37 GMT  
		Size: 61.9 MB (61926584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72d8405b3fce2d9ea155e7e6e786e04b8d036e61a3d9be9cb54696066b70b83`  
		Last Modified: Mon, 26 Oct 2026 23:18:35 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a12cd81feb1c912855551b1ca156f9dbcdf5471dbe9fb2177c92a9345a2b59a9`  
		Last Modified: Tue, 27 Oct 2026 01:26:01 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b6019094e53a4ff986748c0406b33f16c3b0003e690dc13a0de829e82ee04a3`  
		Last Modified: Tue, 27 Oct 2026 01:26:02 GMT  
		Size: 14.5 MB (14479566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee07a9af0efad77eee4f2a63c47d4f75c48c03c855b14fb526ffa40b057eb76`  
		Last Modified: Tue, 27 Oct 2026 01:26:01 GMT  
		Size: 203.9 KB (203857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre25-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:244aa7dc0d38025fa8c92b9e9e545bcda7bda233af9dd5e67989fef68819c0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4961409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:608424b55aa172181d433f32cfbc8a397648598365655cc0097c1a6da0af9af8`

```dockerfile
```

-	Layers:
	-	`sha256:1feb6b74f2318150949e1ffc2f03d1d0283a8c67ad28ae0dfd1a1eeba05bcc1e`  
		Last Modified: Tue, 27 Oct 2026 01:26:02 GMT  
		Size: 4.9 MB (4935995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f96aaa4808764913966dfca3dde76aef07cd43546fe51d623a34fa5f030392a0`  
		Last Modified: Tue, 27 Oct 2026 01:26:02 GMT  
		Size: 25.4 KB (25414 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre25-temurin` - linux; ppc64le

```console
$ docker pull tomcat@sha256:ef39b9e7d3d8a0684432be3277911152f8e1d5839e0b98fa4485a1fccb734dfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136838552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45eb30080d602b774a5c004f39bf70d71d93be295960d96c1d40fbe8dc56712a`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 10:31:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9530.tar --tag 26.04
# Sun, 25 Oct 2026 10:31:16 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:31:16 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:31:16 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:31:16 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:31:16.245172+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:31:16 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:31:16.245172+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:31:16 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9530.tar
# Tue, 27 Oct 2026 23:05:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 23:05:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 23:05:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 27 Oct 2026 23:05:47 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 23:05:47 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 27 Oct 2026 23:06:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 27 Oct 2026 23:06:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 27 Oct 2026 23:06:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 27 Oct 2026 23:06:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 28 Oct 2026 09:19:15 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 28 Oct 2026 09:19:15 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:19:15 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 28 Oct 2026 09:19:16 GMT
WORKDIR /usr/local/tomcat
# Wed, 28 Oct 2026 09:19:16 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 28 Oct 2026 09:19:16 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 28 Oct 2026 09:19:16 GMT
ENV TOMCAT_MAJOR=11
# Wed, 28 Oct 2026 09:19:16 GMT
ENV TOMCAT_VERSION=11.0.27
# Wed, 28 Oct 2026 09:19:16 GMT
ENV TOMCAT_SHA512=a617896307cada4884b24f80c4e977ddad8b3e0f88ce0e2a6eea29d5f332498e276ae5976c227a9c8daecf05c7c90def684a3766dd5a81f47a56d8b1adf43dc3
# Wed, 28 Oct 2026 09:19:17 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 28 Oct 2026 09:19:42 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 09:19:46 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 28 Oct 2026 09:19:46 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 28 Oct 2026 09:19:46 GMT
ENTRYPOINT []
# Wed, 28 Oct 2026 09:19:46 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:fa5f3e46d40acb674f2050b4ef04d91176107f76bc62fc95217c24448496d480`  
		Last Modified: Sun, 25 Oct 2026 13:21:35 GMT  
		Size: 47.3 MB (47256130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b0e1d91beb685cdc6eb1e3e71f0500733add62480a64f8686f1a915ddff88c`  
		Last Modified: Sun, 25 Oct 2026 13:21:38 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114591a6d3a03ee81c687c14321eddcb902829b0a9c8ca06eabe6bb5141880ac`  
		Last Modified: Tue, 27 Oct 2026 23:07:29 GMT  
		Size: 12.8 MB (12817955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b440fdaf10f93ff822eda5e74aed22ee7a51a8cb03aecae5bae954137cf4b855`  
		Last Modified: Tue, 27 Oct 2026 23:07:31 GMT  
		Size: 62.0 MB (62022700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e3f8d9203b702cb4d076b036e06d06547ba168f2bde3de8c31e5d2a31f9b05`  
		Last Modified: Tue, 27 Oct 2026 23:07:29 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f1ce34b0227fe8de29dcc238980803c9e42c7c010d74c652dd7452317da873`  
		Last Modified: Wed, 28 Oct 2026 09:20:22 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83939684b8f2baef34c77d3e8d94596e24f8e234ccfb05025c9d59107634e149`  
		Last Modified: Wed, 28 Oct 2026 09:20:23 GMT  
		Size: 14.5 MB (14496065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b44e2d804ded0fe14ea07d0b1ff1158a3f700b60e9b7bd114398338bb50d0c7`  
		Last Modified: Wed, 28 Oct 2026 09:20:22 GMT  
		Size: 242.6 KB (242611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre25-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:c4ce1341732e0933f7e34463d6691e5068153c28510bbb2272190a33705a7b83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4963994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f97d89598b5c799b8a2081d60b22d99181487cea182a110c39c7083da7e0228`

```dockerfile
```

-	Layers:
	-	`sha256:3da63fcdd8ed2760f7bed8f73810630da21391be222242884e60d9839b66aff8`  
		Last Modified: Wed, 28 Oct 2026 09:20:22 GMT  
		Size: 4.9 MB (4938730 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ef7fc7ccad9f24ca996d5a87c1e6b45dbbcf8cb07a9c02a2f68334f2e32e01b`  
		Last Modified: Wed, 28 Oct 2026 09:20:22 GMT  
		Size: 25.3 KB (25264 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:11-jre25-temurin` - linux; s390x

```console
$ docker pull tomcat@sha256:a845278c1741f8c10a91aa0a4fe394e400c23e88b8945cc76c9c8fa9e7acc603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.6 MB (129574189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e698b706cd82d6fb0ae32c8701b68ca9deaae5209ecc62b79b9878a43a32626`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 10:28:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9596.tar --tag 26.04
# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:28:30.233291+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:28:30.233291+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9596.tar
# Mon, 26 Oct 2026 23:42:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:42:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:42:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:42:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:29 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:42:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:42:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:42:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:42:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 27 Oct 2026 01:17:50 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:17:50 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 01:17:50 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:17:51 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:17:51 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 01:17:51 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 01:17:51 GMT
ENV TOMCAT_MAJOR=11
# Tue, 27 Oct 2026 01:17:51 GMT
ENV TOMCAT_VERSION=11.0.27
# Tue, 27 Oct 2026 01:17:51 GMT
ENV TOMCAT_SHA512=a617896307cada4884b24f80c4e977ddad8b3e0f88ce0e2a6eea29d5f332498e276ae5976c227a9c8daecf05c7c90def684a3766dd5a81f47a56d8b1adf43dc3
# Tue, 27 Oct 2026 01:17:51 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 27 Oct 2026 01:17:54 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:17:55 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 01:17:55 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 01:17:55 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 01:17:55 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:61476fe73885ca09aaa623798934448ebbde33c16caa22cd1fa158a7ce0d303b`  
		Last Modified: Sun, 25 Oct 2026 13:22:05 GMT  
		Size: 41.9 MB (41863655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025a64da30adad9ad74a50b5d93fba7c1f7b68079e2b830afe63de24390e10c8`  
		Last Modified: Sun, 25 Oct 2026 13:22:08 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63994842a6b30c3b98c5863c0b9344ee03197748e1aec47a56c02722df879f91`  
		Last Modified: Mon, 26 Oct 2026 23:43:22 GMT  
		Size: 12.5 MB (12475656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1ca72e3ddd6718ace6a0f382038b170bc00f18d4cdd443652abadabaa15745`  
		Last Modified: Mon, 26 Oct 2026 23:43:23 GMT  
		Size: 60.5 MB (60535396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8dd5149bb0cf58912ce18f4e2ec26df55d1ff241b20083eed40d5e8fdad222`  
		Last Modified: Mon, 26 Oct 2026 23:43:21 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2602174232abf5eb1c4254723afb251f405058c6a2651f27c2916c2cabb7843`  
		Last Modified: Tue, 27 Oct 2026 01:18:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68ba284fef8372bee3df3efa8c4c233a7289e08d5a4dd19cab281ac897c03e7`  
		Last Modified: Tue, 27 Oct 2026 01:18:11 GMT  
		Size: 14.5 MB (14484447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d1c56bc5dd8cba3e49bd4de7af6a3284de9f7aa50575e938b3219151af93301`  
		Last Modified: Tue, 27 Oct 2026 01:18:11 GMT  
		Size: 211.9 KB (211948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:11-jre25-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:e3a76b2a54742c04e494761c98548cdf1c4f1ca0aad55b445de986b0469892d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4962228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06177f6c14df320cbb81ec72f109622fa716e40bcc4633a40aee118c58536000`

```dockerfile
```

-	Layers:
	-	`sha256:a94d7d2a611604c8ece2e951122b9cd363a11cef980dcfc642d8254c6ae0ac0c`  
		Last Modified: Tue, 27 Oct 2026 01:18:11 GMT  
		Size: 4.9 MB (4937070 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad26096a9c70c2edf6e7f97618106179947249d5b360cfee038ad7b9a00f6cdd`  
		Last Modified: Tue, 27 Oct 2026 01:18:11 GMT  
		Size: 25.2 KB (25158 bytes)  
		MIME: application/vnd.in-toto+json
