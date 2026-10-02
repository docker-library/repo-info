## `tomcat:9-jre25-temurin-jammy`

```console
$ docker pull tomcat@sha256:acae729046ed82ec7f8c121641c9648819a0483a60a8f15548ca250e77da6293
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

### `tomcat:9-jre25-temurin-jammy` - linux; amd64

```console
$ docker pull tomcat@sha256:780e3b288e72b8cb5fd26dcc6586dd05501004d642267bf075927d571eff4a57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (121041572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f5208abf929c379ce485a748030e24d5cca86fabc144bd0681c55857f2c5292`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:19:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:19:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:19:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:19:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:19:40 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:19:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:59 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:27:00 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:27:00 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:27:00 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:27:00 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:27:00 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:27:00 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:27:00 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 03:27:00 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 03:27:00 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 03:27:00 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:27:08 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:27:08 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:27:08 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:27:08 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:27:08 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252eee4f19dd906252caa222962c7e1bf7caa1419701b500686152eeb7e1d4c5`  
		Last Modified: Fri, 02 Oct 2026 01:20:13 GMT  
		Size: 11.4 MB (11367657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c825726d67965640845e27c94ce67eda873377af93f65ce89e7664503d6ae8b`  
		Last Modified: Fri, 02 Oct 2026 01:20:14 GMT  
		Size: 63.0 MB (63037733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca58359b5310558dc1c5d5b3cc0c1aa1203b83dd158b5ff0c427e69988a86af`  
		Last Modified: Fri, 02 Oct 2026 01:20:12 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa49b68d0d968b7ba51b22692fc714752b97aeb8c314d78be7780adcaf068ba`  
		Last Modified: Fri, 02 Oct 2026 03:27:17 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:794ce142e72095349f595e7f032bfd9308beea283cdcb13cc6a32382f34f6dac`  
		Last Modified: Fri, 02 Oct 2026 03:27:17 GMT  
		Size: 13.9 MB (13918248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850de50ffdcfe2509a4fd5c6f56a57d924e38d2b8a8645c36be37a8da7c89d3e`  
		Last Modified: Fri, 02 Oct 2026 03:27:17 GMT  
		Size: 3.0 MB (2963609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:707a756dce8bf01f03c1129ac17f725b26dab7ed715095f814a1aaed09ba3bed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3710652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f1f4b05dd5af7dbd05569e31b81b236ff88cbc3dc00af0e936282ada431dbd8`

```dockerfile
```

-	Layers:
	-	`sha256:fede5bef6328541eeef3ec2f9d5e152986cdce59a91c14de0098166623886357`  
		Last Modified: Fri, 02 Oct 2026 03:27:17 GMT  
		Size: 3.7 MB (3689442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db8fa73f25cf820781cac20cf9571280112799f3769b88f41d328d0ec1de9e2`  
		Last Modified: Fri, 02 Oct 2026 03:27:17 GMT  
		Size: 21.2 KB (21210 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-jammy` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:bd322bee54169f3838c03d1ef729b07f409e9b5e29e7aa879251dedfc8862a21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117684137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1f5dce54b161277aef7288daf80134d425df1c6783df217fe2fec2f415788e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:19:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:19:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:19:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:19:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:19:40 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:19:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:59 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:20:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:20:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:25:34 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:25:34 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:25:34 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:25:35 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:25:35 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:35 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:35 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 03:25:35 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 03:25:35 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 03:26:00 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:26:09 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:26:10 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:26:10 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:26:10 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:26:10 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd01e6b61fa1a4902deb00c7776e4457c1e6f63b93a754ed121ecf0246b772c`  
		Last Modified: Fri, 02 Oct 2026 01:20:14 GMT  
		Size: 11.3 MB (11322760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c45282fc44ecb0d08999d3929cd9dba863d55e34334f51c6ac02d4d617075a`  
		Last Modified: Fri, 02 Oct 2026 01:20:15 GMT  
		Size: 61.9 MB (61894123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba39c094b0ebd3390260c7371e0bffc118f4aaec7d558e4806ad76d5d62e2181`  
		Last Modified: Fri, 02 Oct 2026 01:20:13 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07f2b8e3cfb8da8c8adbdd2e6262bcbc45bce80d9713d9950b9b14dc72de71a`  
		Last Modified: Fri, 02 Oct 2026 03:25:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:928472e498d400f0c4ca0d8fc3138795d597895fc6bd543b4155057aeec7cdd4`  
		Last Modified: Fri, 02 Oct 2026 03:26:18 GMT  
		Size: 13.9 MB (13925677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58cd65a12f91eaf0583fc4cdfb41dff192c39c1250dbb619b257c79ac92ff85`  
		Last Modified: Fri, 02 Oct 2026 03:26:18 GMT  
		Size: 2.9 MB (2854744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:4ad97ca79544a8a0665f2bd0ee496c69c87f1108e207f66a5aedf55634f3b808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3710451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec07ffa29971776927c92d661f69cd376fa8f62bfc1f61be59fd9d803a6991b4`

```dockerfile
```

-	Layers:
	-	`sha256:c5cd16153a2baf6cf8ed36896a7887abf3c69f49eb41c0582d5deacb000417dc`  
		Last Modified: Fri, 02 Oct 2026 03:26:18 GMT  
		Size: 3.7 MB (3689093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:871985d48c355e10f1ca59be8074b0b0ce0f90d81b38e7f3a9e35b7870d3114b`  
		Last Modified: Fri, 02 Oct 2026 03:26:17 GMT  
		Size: 21.4 KB (21358 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-jammy` - linux; ppc64le

```console
$ docker pull tomcat@sha256:9da76d5620c94b07a6277fdb0ace026c2ab7a8d17ac999c0de52218739f612ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125901325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bf20a83fbd090885bbf1ced5acdd097f7330d3c9d3d62a5495a5a329ea3afd6`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:57:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:57:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:57:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:57:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:57:03 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 03:57:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:57:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:57:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:57:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 08:53:40 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 08:53:40 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 08:53:40 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 08:53:41 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 08:53:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 08:53:41 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 08:53:41 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 08:53:41 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 08:53:41 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 09:01:28 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 09:01:40 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 09:01:43 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 09:01:43 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 09:01:43 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 09:01:43 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c65c85833ad0000f444f644e8b72d41bef20368c50a0292772345708b56951`  
		Last Modified: Fri, 02 Oct 2026 03:58:36 GMT  
		Size: 11.9 MB (11854216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29084b50044828d1eede2bd78149c6b378cc541462a415a1cf79dda07c3c3f66`  
		Last Modified: Fri, 02 Oct 2026 03:58:37 GMT  
		Size: 62.0 MB (61991579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b5b87dea7e48ff925068f28805c0ca31b2f5d8e27a62b79ab726ca220566be`  
		Last Modified: Fri, 02 Oct 2026 03:58:36 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94a0f17c19867d92a896254367ec06d6ca05eb4cbf75e20f6c8a9e411cc5eeb2`  
		Last Modified: Fri, 02 Oct 2026 08:54:30 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9dcdfd83ec5f0e09e80c388504ccbb716f4e7e2512b071dac40fc2ba56aeb3`  
		Last Modified: Fri, 02 Oct 2026 09:02:01 GMT  
		Size: 13.9 MB (13944548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a8666cde8e84625058b18826b9a6edfc3e298a69103df9548e8bf82e86d9635`  
		Last Modified: Fri, 02 Oct 2026 09:02:00 GMT  
		Size: 3.4 MB (3405074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:78f9322023f4e6948079151eb5d37e9d29e3a6192d4fccaa179d11485e5c763a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3714044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5cb60978dac5d1bd325834117fdc0270b2aae106bb49e8bf00a4a37df674cad`

```dockerfile
```

-	Layers:
	-	`sha256:a1a42997572b232dcdc552d333bbe27166b35b06eb3423c6fb43e7af49b7839b`  
		Last Modified: Fri, 02 Oct 2026 09:02:01 GMT  
		Size: 3.7 MB (3692782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da0fb612ff9b3c202d81d2e1cc978110716f5f4d93304b72cd5f5c2e133a3ed7`  
		Last Modified: Fri, 02 Oct 2026 09:02:00 GMT  
		Size: 21.3 KB (21262 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:9-jre25-temurin-jammy` - linux; s390x

```console
$ docker pull tomcat@sha256:e4aa351d39abcdbfac884a0d8bf44fbdbbae2e6e3ead3f4e27271fd3937c0007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.8 MB (116750229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840e5769e45e200a856dc0b91f1a43d46707942d20ce34fd1f42ef6e4ec3f775`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:54 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:55 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:56 GMT
ADD file:db47e3926ab7bde0eac1956f72b5e29cdfee4e7ba1a182277e89477759e0044a in / 
# Thu, 24 Sep 2026 22:24:56 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:35:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:35:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:35:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:35:25 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:25 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:37:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:37:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:37:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:37:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:37:55 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:37:55 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:37:55 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:37:56 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:37:56 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:37:56 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:37:56 GMT
ENV TOMCAT_MAJOR=9
# Fri, 02 Oct 2026 03:37:56 GMT
ENV TOMCAT_VERSION=9.0.122
# Fri, 02 Oct 2026 03:37:56 GMT
ENV TOMCAT_SHA512=1f2f7d822a407999d954e7eb4fb1e78998c2a9372bb466d27e8cefd2521ef779183744f39dfa50a77ce3b798e7fe30bf2fd43fd1d6a2e6135617af1ddda6ba2a
# Fri, 02 Oct 2026 03:42:29 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:42:32 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:42:33 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:42:33 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:42:33 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:42:33 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:e1502cdfd138d89dddc82531455ad8426a7eaa0d843665253c16b88cb6870c91`  
		Last Modified: Thu, 24 Sep 2026 23:36:39 GMT  
		Size: 28.2 MB (28222068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b99cd667ecd3e9cd5978addcc2bc98c19765cf6c2b2b304d047f16db28a75e`  
		Last Modified: Fri, 02 Oct 2026 01:38:34 GMT  
		Size: 11.5 MB (11468006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:034482eaff8e1de91a28f72e28a2f5c9aaef4e9e3190f0e26ee1b3f03c53b49d`  
		Last Modified: Fri, 02 Oct 2026 01:38:37 GMT  
		Size: 60.5 MB (60495730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ecaa26863e214acdc9711effb637d9946adab4efb1841f994a3008469b8536`  
		Last Modified: Fri, 02 Oct 2026 01:38:32 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca567f30e86e54af66707fb875bacf1c41d2bdfd7ee8c06d8783aa280ec5aa0e`  
		Last Modified: Fri, 02 Oct 2026 03:38:44 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:163c442e23f541dd1dc3238462bb1bba76e78386184082020251db6f1f1605fb`  
		Last Modified: Fri, 02 Oct 2026 03:42:45 GMT  
		Size: 13.9 MB (13914457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8c2af54e937c92873e8f31b511bd5a0c72afedb01e993993a1390510386e78`  
		Last Modified: Fri, 02 Oct 2026 03:42:45 GMT  
		Size: 2.6 MB (2647268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:9-jre25-temurin-jammy` - unknown; unknown

```console
$ docker pull tomcat@sha256:b994e1d8f012e0d3d57faacdfe8e5c82568ae74f74bc1c399dc415d88552f8e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3711636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe67d38401b51e36aa31b2b2226a1ebe3b61bc5b4eae9de92b4bb4fbf6848519`

```dockerfile
```

-	Layers:
	-	`sha256:f15171e987a0bec3ef910306eb5b6afe2601c85cfd3b8c801027dceffdae42c6`  
		Last Modified: Fri, 02 Oct 2026 03:42:45 GMT  
		Size: 3.7 MB (3690427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fae3f0493d2187b653d9dcbd70a7b26e3d1ffb0ddb60d6ef4d9c999288b73744`  
		Last Modified: Fri, 02 Oct 2026 03:42:45 GMT  
		Size: 21.2 KB (21209 bytes)  
		MIME: application/vnd.in-toto+json
