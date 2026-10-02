## `tomcat:jre25-temurin`

```console
$ docker pull tomcat@sha256:b623e55b0e88dfaa93a83a0788f86296ba88a622040632ddf16e008580035212
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `tomcat:jre25-temurin` - linux; amd64

```console
$ docker pull tomcat@sha256:92e150bdbc938d252afebc5e3c9bdc5fd2c83659321a4e9e6c24b768c0d7d298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121327768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09994a248587fe1ed81ff9f085d308ca6eb20b3e1f73891364485d36893791f5`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:19:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:19:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:19:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:19:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:19:37 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:19:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:25:41 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:25:41 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:25:41 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:25:41 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:25:41 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:41 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:25:41 GMT
ENV TOMCAT_MAJOR=11
# Fri, 02 Oct 2026 03:25:41 GMT
ENV TOMCAT_VERSION=11.0.26
# Fri, 02 Oct 2026 03:25:41 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Fri, 02 Oct 2026 03:25:41 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:25:46 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:25:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:25:47 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:25:47 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:25:47 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb5e8c0a8fa783830d28c48ca9b202348f6012d97a6eb328fff7c5b2da8833`  
		Last Modified: Fri, 02 Oct 2026 01:20:06 GMT  
		Size: 13.9 MB (13865237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373c2940f7f12f639504dcd4cc700cb6744e41b3212f3ce7dcee66b08098660d`  
		Last Modified: Fri, 02 Oct 2026 01:20:07 GMT  
		Size: 63.1 MB (63076598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1adaf3e6ac5af220125fa187810aea0ee5639e73c1878eb31a32dbc0d993a8`  
		Last Modified: Fri, 02 Oct 2026 01:20:05 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8c6024f22d1d28ae0bc8a09b389dcee814162c8aff3ca0ff00bf276fed966e`  
		Last Modified: Fri, 02 Oct 2026 03:25:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5386673d5b617f875a60c3b0bacab45abbb272622bba75cabb127e0c3c33d9f`  
		Last Modified: Fri, 02 Oct 2026 03:25:56 GMT  
		Size: 14.4 MB (14410418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235344f9ae40fd879bcdf4d42bb98c262beb201dbe8b5156d1969726c6b85e25`  
		Last Modified: Fri, 02 Oct 2026 03:25:55 GMT  
		Size: 208.4 KB (208395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre25-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:9703cfe48e78fa9a784b4c614479d07c63ffb8ca509bb927389dfdfca5ba62dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3137099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9793034fa1dfa5d33e841f8e41120cf3304cc6d7a0ee627a40850efadac9cf8`

```dockerfile
```

-	Layers:
	-	`sha256:6cb5a52a0cc59853f57ef7eeae78a8f56742d069ee418d4f8d5856f96ce13f39`  
		Last Modified: Fri, 02 Oct 2026 03:25:55 GMT  
		Size: 3.1 MB (3113063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb4f3163d96e52b2f2d49b5dde93e890ce4f58e99e3bc315fb8c8ff6a1a1498c`  
		Last Modified: Fri, 02 Oct 2026 03:25:55 GMT  
		Size: 24.0 KB (24036 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre25-temurin` - linux; arm64 variant v8

```console
$ docker pull tomcat@sha256:887bb1a946fddf7734e8110707409483fbeaec736aceaed0a2e2aea6f83eb4f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.2 MB (119199275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1f20d3c3a7c8cf0ecb2f4b24b3760be1eb31f47a2b57a7cbc6b727794e5d3b4`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:19:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:19:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:19:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:19:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:19:36 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:19:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:24:40 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:24:40 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:24:40 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:24:40 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:24:40 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:24:40 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:24:40 GMT
ENV TOMCAT_MAJOR=11
# Fri, 02 Oct 2026 03:24:40 GMT
ENV TOMCAT_VERSION=11.0.26
# Fri, 02 Oct 2026 03:24:40 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Fri, 02 Oct 2026 03:24:41 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:24:46 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:24:47 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:24:47 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:24:47 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:24:47 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d1b9c21147316391e4e9fca155ff8d7437760b4477f9f5a1f1471e1f35b696`  
		Last Modified: Fri, 02 Oct 2026 01:20:08 GMT  
		Size: 13.7 MB (13714369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aebdd689b2d1fd4fce3e908cd13c88142f93a15735804b75fa4e0e87bd70009`  
		Last Modified: Fri, 02 Oct 2026 01:20:10 GMT  
		Size: 61.9 MB (61922406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fe4b870ceac3ced85484a0a893751f055a52deaf921346379f2ef6f3025334`  
		Last Modified: Fri, 02 Oct 2026 01:20:08 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b638410172499ac7de22e6511f4b74bcaa2d3cbab20754a884c928f64d1403fc`  
		Last Modified: Fri, 02 Oct 2026 03:24:55 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d07cf702d6e465728f1525e1c3a0c9cf27246f518837130c8308bf289924a2`  
		Last Modified: Fri, 02 Oct 2026 03:24:56 GMT  
		Size: 14.4 MB (14411895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435ca3469ced5ca3702cc8b2d9739a297fe3abf58d64b073afd978658b86784c`  
		Last Modified: Fri, 02 Oct 2026 03:24:55 GMT  
		Size: 207.8 KB (207820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre25-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:3e65f7cfffbdb76bbd9f8ce792be84f4253732787e4e2f68f97a6ff9752d4f1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3137901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a085c6e9ca878dfaa7d671533c6c1be0b9128b06b5557a61effabae953b9909a`

```dockerfile
```

-	Layers:
	-	`sha256:c2d99fdd699cee2c956173c442957475d23d8f3a1926cf294a016bb9de392afb`  
		Last Modified: Fri, 02 Oct 2026 03:24:55 GMT  
		Size: 3.1 MB (3113609 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31c7db4d2b95abe5bd9e1f32d4764ade369a24d2c995c5a127a720b7e5251604`  
		Last Modified: Fri, 02 Oct 2026 03:24:55 GMT  
		Size: 24.3 KB (24292 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre25-temurin` - linux; ppc64le

```console
$ docker pull tomcat@sha256:de9fb0a2cceb8b52c9537d30f7cb6ece71d947bad07772d6e0d0a5b6ed56c8aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.8 MB (125778204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75f3621b12701202996e8f43e0092a93619482f07f5c738fe69d25dcb766e521`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:56:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:56:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:56:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:56:56 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:56:56 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 03:57:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:57:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:57:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:57:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 08:52:55 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 08:52:55 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 08:52:55 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 08:52:55 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 08:52:55 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 08:52:55 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 08:52:55 GMT
ENV TOMCAT_MAJOR=11
# Fri, 02 Oct 2026 08:52:55 GMT
ENV TOMCAT_VERSION=11.0.26
# Fri, 02 Oct 2026 08:52:55 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Fri, 02 Oct 2026 08:52:58 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 08:53:07 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 08:53:09 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 08:53:09 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 08:53:09 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 08:53:09 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f153597dca38f40be45371fef5dbdceac3f8383bcc6b99c809df8cf7ac06cdf`  
		Last Modified: Fri, 02 Oct 2026 03:58:36 GMT  
		Size: 14.7 MB (14712127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5539211d14d48f664a8f9048f938b150df7198c480ab3ba2ee91bf02c985c4dd`  
		Last Modified: Fri, 02 Oct 2026 03:58:38 GMT  
		Size: 62.0 MB (62018568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b8ed74d13da2451e84107ec4d1beb219edf41fe8626df69bae4360c8a8a3ef8`  
		Last Modified: Fri, 02 Oct 2026 03:58:36 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f02d6bf5b8fe8e0ea81e9d066207fe775da9a48bbce88aef441b85a81c32885`  
		Last Modified: Fri, 02 Oct 2026 08:53:28 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b081def038cb0e113ec94cebf1bd0eb2f997ead1fbf1a5262c0413f7cd988a92`  
		Last Modified: Fri, 02 Oct 2026 08:53:28 GMT  
		Size: 14.4 MB (14428871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5213b43191820e5aa147d7433d8ecbb0e6f868f7c40efd1c20c8fb430c7e2db`  
		Last Modified: Fri, 02 Oct 2026 08:53:28 GMT  
		Size: 239.4 KB (239431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre25-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:5268564c7a0f137c1b22503ba75f8ca687f9dbc85675e957950715dfe3a10428
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3140550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82312d4d462d04f8d0eeaa259756d6f84b95e804a31d50082965d6ef866066fa`

```dockerfile
```

-	Layers:
	-	`sha256:6b607c2ccd1e857118e367aacd695dc3388b45d22c1d9bc5410d2bbe294a74cc`  
		Last Modified: Fri, 02 Oct 2026 08:53:28 GMT  
		Size: 3.1 MB (3116408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd3bbf801a26ace54d8b3ec2baf984635f6c610e830d2f8e21d498ee6491d19a`  
		Last Modified: Fri, 02 Oct 2026 08:53:27 GMT  
		Size: 24.1 KB (24142 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre25-temurin` - linux; riscv64

```console
$ docker pull tomcat@sha256:c98ef18871c8157456d81df3a9ba984d968d9f430a1b2c213d4e98e0857ff787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119081164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8e4befcc6ae87f6fa02c8b71be6d1ad170d81a6e5237be0f8cde12f2995c4bf`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Mon, 07 Sep 2026 07:43:12 GMT
ARG RELEASE
# Mon, 07 Sep 2026 07:43:13 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 07:43:13 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 07:44:03 GMT
ADD file:b9e2d6d291d1ed94a7f69f48c708e50bb181af64736f283e384c42c217fefce1 in / 
# Mon, 07 Sep 2026 07:44:07 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:47:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:47:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:47:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:47:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:47:40 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Wed, 09 Sep 2026 02:49:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:49:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:49:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:49:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 08:41:35 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Wed, 09 Sep 2026 08:41:35 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 08:41:35 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Wed, 09 Sep 2026 08:41:35 GMT
WORKDIR /usr/local/tomcat
# Wed, 09 Sep 2026 08:41:35 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 08:41:35 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Wed, 09 Sep 2026 08:41:35 GMT
ENV TOMCAT_MAJOR=11
# Wed, 09 Sep 2026 08:41:35 GMT
ENV TOMCAT_VERSION=11.0.25
# Wed, 09 Sep 2026 08:41:35 GMT
ENV TOMCAT_SHA512=81339c046dff1b363a80a3bccf80cb391660a6828dd8ae042180ceb11c8b1614317143e60b311b9e791dab585bb046b777234667acce7dca2203a74b37bf20f2
# Wed, 09 Sep 2026 08:41:38 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Wed, 09 Sep 2026 08:42:22 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 08:42:29 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Wed, 09 Sep 2026 08:42:29 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 09 Sep 2026 08:42:29 GMT
ENTRYPOINT []
# Wed, 09 Sep 2026 08:42:29 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:43253cac98e0bd3027a1f91776c6624571e5e05e6df478c1452294560ee5ff91`  
		Last Modified: Mon, 07 Sep 2026 07:57:26 GMT  
		Size: 31.0 MB (31049202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817d1fdb17c09dfe1b2195bc9a6c19690a7115be16a951b1749ba5e8ebac48f1`  
		Last Modified: Wed, 09 Sep 2026 02:52:25 GMT  
		Size: 11.5 MB (11527966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc42d9033ab0a6bf19bcde265e035787cc85cb3425527de9295d50f7337dd456`  
		Last Modified: Wed, 09 Sep 2026 02:52:33 GMT  
		Size: 61.7 MB (61680448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03fd8964e23f7f108188d718dd1096a0aa38044ff29ad8c604cafb2712050c8d`  
		Last Modified: Wed, 09 Sep 2026 02:52:22 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b1d8683cdabe0c576ebbd411d7dceb60821b16ca43e38b72b8c87249a60408`  
		Last Modified: Wed, 09 Sep 2026 08:44:11 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf270d2cd9601779df1f123a322ac39afff2c2089d47ccc534832889b2ce696f`  
		Last Modified: Wed, 09 Sep 2026 08:44:13 GMT  
		Size: 14.6 MB (14610389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:908ec123a7395e6dfcfd17c129bde7c9ac11c9cf91a7e2da9f88b772b0a57ee8`  
		Last Modified: Wed, 09 Sep 2026 08:44:11 GMT  
		Size: 210.5 KB (210460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre25-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:b1233d2ea3f64c6b86af576bd803efa0efbb4e4f96ddcc2bf9e1b0d2fbd2a3bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3129232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653633d8dce7d66eb1a75017f9b6b79a04510d0a07af765f98aab5dd1545880e`

```dockerfile
```

-	Layers:
	-	`sha256:c14dae1d5656eb57e079e55440bcfd078f23283fc251c10568fa3277f349ed3c`  
		Last Modified: Wed, 09 Sep 2026 08:44:11 GMT  
		Size: 3.1 MB (3105096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d91af8da7cc8c76a17528094cc338d04c6ee07da26a48c7a68bf5ac19760c47`  
		Last Modified: Wed, 09 Sep 2026 08:44:10 GMT  
		Size: 24.1 KB (24136 bytes)  
		MIME: application/vnd.in-toto+json

### `tomcat:jre25-temurin` - linux; s390x

```console
$ docker pull tomcat@sha256:139c97b27d369a4e4a15f3628b4d3eaa144537605e30595c6f6df12a16841257
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118944471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76090d5fb2cfc7f283073011e60a8b1c626ae1f294b961b717b1eb0c10c5cee7`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Fri, 18 Sep 2026 21:22:48 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:22:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:22:48 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:22:50 GMT
ADD file:dbe84e9fbddf57955eb8069675a3842837c04eb1416213c2d50049efd3dad787 in / 
# Fri, 18 Sep 2026 21:22:50 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:35:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:35:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:35:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:35:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:37:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:37:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:37:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:37:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:37:52 GMT
ENV CATALINA_HOME=/usr/local/tomcat
# Fri, 02 Oct 2026 03:37:52 GMT
ENV PATH=/usr/local/tomcat/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:37:52 GMT
RUN mkdir -p "$CATALINA_HOME" # buildkit
# Fri, 02 Oct 2026 03:37:52 GMT
WORKDIR /usr/local/tomcat
# Fri, 02 Oct 2026 03:37:52 GMT
ENV TOMCAT_NATIVE_LIBDIR=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:37:52 GMT
ENV LD_LIBRARY_PATH=/usr/local/tomcat/native-jni-lib
# Fri, 02 Oct 2026 03:37:52 GMT
ENV TOMCAT_MAJOR=11
# Fri, 02 Oct 2026 03:37:52 GMT
ENV TOMCAT_VERSION=11.0.26
# Fri, 02 Oct 2026 03:37:52 GMT
ENV TOMCAT_SHA512=e77e080d9d8d7e052544d0d21b0c738169f9ecf284fe5a68d0c7e2da97dd93e0f0f3b2aa178507ad8552583c355d8e2b193fdb76b3e4c2c12ebfd458c43ced24
# Fri, 02 Oct 2026 03:37:52 GMT
COPY /usr/local/tomcat /usr/local/tomcat # buildkit
# Fri, 02 Oct 2026 03:39:26 GMT
RUN set -eux; 	apt-get update; 	xargs -rt apt-get install -y --no-install-recommends < "$TOMCAT_NATIVE_LIBDIR/.dependencies.txt"; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:39:27 GMT
RUN set -eux; 	nativeLines="$(catalina.sh configtest 2>&1)"; 	nativeLines="$(echo "$nativeLines" | grep 'Apache Tomcat Native')"; 	nativeLines="$(echo "$nativeLines" | sort -u)"; 	if ! echo "$nativeLines" | grep -E 'INFO: Loaded( APR based)? Apache Tomcat Native library' >&2; then 		echo >&2 "$nativeLines"; 		exit 1; 	fi # buildkit
# Fri, 02 Oct 2026 03:39:27 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 03:39:27 GMT
ENTRYPOINT []
# Fri, 02 Oct 2026 03:39:27 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:108aebd72dd457ee7da6e519c157e975c9f75fedf3563478a69f28606232305c`  
		Last Modified: Fri, 18 Sep 2026 22:30:25 GMT  
		Size: 29.9 MB (29945320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3fa7478f5cbcb209e59a4ac7fba4414f06d5e8fedda68929327207ba0d55c1e`  
		Last Modified: Fri, 02 Oct 2026 01:38:29 GMT  
		Size: 13.8 MB (13829684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5907d73839c84ac69cf6e0e1b169d2734c43056cfbaed6cb333265b7a0f5fb7`  
		Last Modified: Fri, 02 Oct 2026 01:38:31 GMT  
		Size: 60.5 MB (60530962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55bd0718b39b046d036ec7c155527ea10a2e6fde1aa23af4ed5d13c12d13de71`  
		Last Modified: Fri, 02 Oct 2026 01:38:28 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b99715940ab06bef122fb11e0554470515bb640919df282e61efe3abbb205ac`  
		Last Modified: Fri, 02 Oct 2026 03:39:39 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b41d529ae52bf471c5d3b37c6c442a7d49840bdad590963989da111cb7ab84f`  
		Last Modified: Fri, 02 Oct 2026 03:39:39 GMT  
		Size: 14.4 MB (14419731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f619a1be1d971d00d78f6b830987d2acb9e27e5f4bb9c74e7cfab11c2ed5d98`  
		Last Modified: Fri, 02 Oct 2026 03:39:39 GMT  
		Size: 216.1 KB (216074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `tomcat:jre25-temurin` - unknown; unknown

```console
$ docker pull tomcat@sha256:579da17046663adaf66cad941c4799ef3563039d7f38ebfe2124c783172ab21e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3138695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68fa27ec8c048977a91bfad09d6e356f7872f9bded13f28450a396cc44bfdd54`

```dockerfile
```

-	Layers:
	-	`sha256:9a4542ed24a4fb518750ad4602620774f8b8d3713e8549aa827c009f678afc61`  
		Last Modified: Fri, 02 Oct 2026 03:39:39 GMT  
		Size: 3.1 MB (3114660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4ff239104e7129af384a81603bc4b250c5ceea6d553069b4461ee27ddc6cf15`  
		Last Modified: Fri, 02 Oct 2026 03:39:39 GMT  
		Size: 24.0 KB (24035 bytes)  
		MIME: application/vnd.in-toto+json
