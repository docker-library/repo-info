## `tomcat:9-jre25-temurin-resolute`

```console
$ docker pull tomcat@sha256:df6081c73557e4632e522b69406c2b78e00b8dd22367c138b59ce7c5260170e0
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

### `tomcat:9-jre25-temurin-resolute` - linux; amd64

```console
$ docker pull tomcat@sha256:9458499ed5630b9aaea1cad5a85d1485522d15916a9b8e3dca3151cc21677210
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.5 MB (131505097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8186c6f1867fd0e7d9345094b0706a90921b178bfe30675589e6d0e21476d99`
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
# Tue, 27 Oct 2026 01:27:34 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:27:34 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 01:27:34 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:27:34 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:27:34 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 01:27:34 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 01:27:34 GMT
ENV TOMCAT_MAJOR=9
# Tue, 27 Oct 2026 01:27:34 GMT
ENV TOMCAT_VERSION=9.0.123
# Tue, 27 Oct 2026 01:27:34 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Tue, 27 Oct 2026 01:27:35 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 27 Oct 2026 01:27:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:27:41 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 01:27:41 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 01:27:41 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 01:27:41 GMT
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
	-	`sha256:df597700d648b311c55b799a2848b5d28fcf78b4f825a92e358fbc47505c121a`  
		Last Modified: Tue, 27 Oct 2026 01:27:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:502e4e5da473f2c0f0f929c24d7ba4c1fdc63a1628b8eba5bf69c31817387035`  
		Last Modified: Tue, 27 Oct 2026 01:27:51 GMT  
		Size: 13.9 MB (13923401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a19e8eaf203eb40258cca8fd50799bbf3487c12c70e85c240617bb74fd8ba84`  
		Last Modified: Tue, 27 Oct 2026 01:27:51 GMT  
		Size: 205.5 KB (205458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-resolute` - unknown; unknown

```console
$ docker pull tomcat@sha256:aee082cf42458091dc1ea2612a218946609ca22f3486a338bb331e55e3ba3a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4956850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff41e3be520f6edfa8fdd6462b114609e3b03c319ea66fbe37e260e0d8d77455`

```dockerfile
```

-	Layers:
	-	`sha256:85162daec229898eccd41cbc56f4af5efd9b48e718595c1eb720fee650ab977f`  
		Last Modified: Tue, 27 Oct 2026 01:27:51 GMT  
		Size: 4.9 MB (4932646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2bb75f17c8fc5152639460f1c72a927fb3fd2c94378686e0e6b2294259b13d1`  
		Last Modified: Tue, 27 Oct 2026 01:27:51 GMT  
		Size: 24.2 KB (24204 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-resolute` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:5e3d3fdc1bb5f3115572600ffb532e2b44ab92452a99befec4f839280e18e177
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129290733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c296160d2be132c3f6f2d0a5d49b87d996424bcc4faee9c01ffea1af11e77f`
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
# Tue, 27 Oct 2026 01:27:29 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Tue, 27 Oct 2026 01:27:29 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 01:27:29 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Tue, 27 Oct 2026 01:27:29 GMT
WORKDIR /usr/local/tomcat
# Tue, 27 Oct 2026 01:27:29 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 01:27:29 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Tue, 27 Oct 2026 01:27:29 GMT
ENV TOMCAT_MAJOR=9
# Tue, 27 Oct 2026 01:27:29 GMT
ENV TOMCAT_VERSION=9.0.123
# Tue, 27 Oct 2026 01:27:29 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Tue, 27 Oct 2026 01:27:29 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 27 Oct 2026 01:27:37 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:27:38 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 01:27:38 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 01:27:38 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 01:27:38 GMT
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
	-	`sha256:0f87d59d3204f37ece7d122a3982b88b068ca3f86f6b4d0410bac1bfea5e8414`  
		Last Modified: Tue, 27 Oct 2026 01:27:49 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8144aa45b915d27ab78bf2a6c7e10724f02829f8f311345723dac1fa43343171`  
		Last Modified: Tue, 27 Oct 2026 01:27:50 GMT  
		Size: 13.9 MB (13925470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab685c3ea1674ee3eb81c8daa36b4382b18ff567888ddaf0968c9cce75c7df23`  
		Last Modified: Tue, 27 Oct 2026 01:27:50 GMT  
		Size: 203.9 KB (203858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-resolute` - unknown; unknown

```console
$ docker pull tomcat@sha256:de5ec98e300f46bc2db6ef276003fa7ee499ce7cd7b1795f60b9f4a1ced2816f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4956771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0e9db99903152464e3fa73731f68164183b1e649eb64f49ad0894b3198dc47a`

```dockerfile
```

-	Layers:
	-	`sha256:b7caa7cc1d34e4e1d7ed6bb2b1c2ba215ba847eb9cc5d0814a9349ae9203d747`  
		Last Modified: Tue, 27 Oct 2026 01:27:50 GMT  
		Size: 4.9 MB (4932347 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfa85623ef4b059e22a74ce0f6d06ab0396bfbc41d21c37098cdd4d7d66ab211`  
		Last Modified: Tue, 27 Oct 2026 01:27:49 GMT  
		Size: 24.4 KB (24424 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-resolute` - linux; ppc64le

```console
$ docker pull tomcat@sha256:63ef641fa6277492caf5b0c348ff71db22ffe699e6b93504491d62672c9c83ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.3 MB (136301786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aa1d28d893323ad1afba5a9c2e555952c6898e5685c1e3910cd2b68ec599b20`
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
ENV TOMCAT_MAJOR=9
# Wed, 28 Oct 2026 09:19:16 GMT
ENV TOMCAT_VERSION=9.0.123
# Wed, 28 Oct 2026 09:19:16 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Wed, 28 Oct 2026 09:21:12 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 28 Oct 2026 09:21:25 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 09:21:30 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 28 Oct 2026 09:21:30 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 28 Oct 2026 09:21:30 GMT
ENTRYPOINT []
# Wed, 28 Oct 2026 09:21:30 GMT
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
	-	`sha256:a970e00c36bd0bcedfe9179c621f26351051b2d35bd75cfb0dddb94c9c215e75`  
		Last Modified: Wed, 28 Oct 2026 09:22:02 GMT  
		Size: 14.0 MB (13959293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e0057eedec07b6c98cc8a3ec0c9ef1a04fd18c405a8d52ab440f04e32335015`  
		Last Modified: Wed, 28 Oct 2026 09:22:01 GMT  
		Size: 242.6 KB (242617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-resolute` - unknown; unknown

```console
$ docker pull tomcat@sha256:d2077d299e9cc6821f002df7c20ff7c5529b777575cb9a8748ca7ac9faeeaca1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4959392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c95b6f93ffbeec3ddc3608085545ffbcb7a6906086bfe17b873af7143dd336`

```dockerfile
```

-	Layers:
	-	`sha256:a08f5257da9b0e8ce10005b741f849a18ab9966ba5cb89e8d54db766eb53416d`  
		Last Modified: Wed, 28 Oct 2026 09:22:01 GMT  
		Size: 4.9 MB (4935100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74f2cb4eefc868d20b97032e18c56b8b3f492fb729c869edcb61751014701ad7`  
		Last Modified: Wed, 28 Oct 2026 09:22:01 GMT  
		Size: 24.3 KB (24292 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-resolute` - linux; s390x

```console
$ docker pull tomcat@sha256:d7048895cd4f06ef9a4a90c68ed7f6a1b3e048057eb17f10b2b4b5503a079952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.0 MB (129018295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5036fe13cf83797098e96d7e47574e5ac4ab576c14444f6769c4715ff44ffd10`
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
ENV TOMCAT_MAJOR=9
# Tue, 27 Oct 2026 01:17:51 GMT
ENV TOMCAT_VERSION=9.0.123
# Tue, 27 Oct 2026 01:17:51 GMT
ENV TOMCAT_SHA512=64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290
# Tue, 27 Oct 2026 01:20:59 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Tue, 27 Oct 2026 01:21:03 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 01:21:04 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Tue, 27 Oct 2026 01:21:04 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 27 Oct 2026 01:21:04 GMT
ENTRYPOINT []
# Tue, 27 Oct 2026 01:21:04 GMT
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
	-	`sha256:5a583fc1d36675460145e37f775d671ac22ab3f257c2cba2b51fa30dfdc34bf7`  
		Last Modified: Tue, 27 Oct 2026 01:21:18 GMT  
		Size: 13.9 MB (13928492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dee072672487d528ccb44ad8c7205c9f7c5d246fb53d7fe236509c754115550`  
		Last Modified: Tue, 27 Oct 2026 01:21:18 GMT  
		Size: 212.0 KB (212009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-resolute` - unknown; unknown

```console
$ docker pull tomcat@sha256:14ed7e6df7082b29b85f3c43826452d23cb63f7b47a4d4cb6673e871ec8cd02a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.0 MB (4957662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d94430bbd7d4073808aa06efa3dad81343b0e37381e3ac9aad9aff0baeca1c1`

```dockerfile
```

-	Layers:
	-	`sha256:66a25f9679bc53324cbddd4408f694b9cc62b62a2dc1e0c7517408fee5adad0f`  
		Last Modified: Tue, 27 Oct 2026 01:21:18 GMT  
		Size: 4.9 MB (4933458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f547ed41523ef10457ad00d11c999a62abd0957589f8536313cc256288574b55`  
		Last Modified: Tue, 27 Oct 2026 01:21:18 GMT  
		Size: 24.2 KB (24204 bytes)  
		MIME: application/vnd.in-toto+json
