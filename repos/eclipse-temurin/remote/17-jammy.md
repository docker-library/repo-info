## `eclipse-temurin:17-jammy`

```console
$ docker pull eclipse-temurin@sha256:96ac8197b2cbc2bb0f9fbcbf91dbb0015f43b3c76a1cb351892da12e7bb91bed
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

### `eclipse-temurin:17-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:c2fd820ce6cc82ca15ef89165c4cd89e635d26908b675cc7723dfd1f12ce79e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196857225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3056533f1a806e78a0224ec1452890e1add7d37e3f21833472346be9b766c62b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:42:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:45 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:42:45 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:42:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        armhf)          ESUM='f953d9c38eea3906c04e44bc434c34a503275b19be2c2b2a61939522828ba64e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        ppc64el)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:42:53 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:42:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:42:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:42:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172b9069a7e8b39b6dfb00304aa3ff3b0738d5508384aea320f3c169b1441bc4`  
		Last Modified: Fri, 20 Nov 2026 17:43:09 GMT  
		Size: 20.7 MB (20664406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aaa706f3146551c0755d15ca6c737657ff9c856527766b40113bf6a7e653671`  
		Last Modified: Fri, 20 Nov 2026 17:43:12 GMT  
		Size: 146.1 MB (146120383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28081938e8e9d5db2259e8ea99e5c1fdd931cdc74ed41eaafac97b43e691a9ba`  
		Last Modified: Fri, 20 Nov 2026 17:43:08 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3726a5b5b5824d046fb68cc3f247eeb50aacfe68529c078b67cf21ed0c85bc53`  
		Last Modified: Fri, 20 Nov 2026 17:43:08 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:536657b2028d28f1275b6795a32b6f1f701e857c672a628b79c77043522360b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4133119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1af1599434a929f1bceeff0903d38516fb56c2d7338a40151a2ab58574980439`

```dockerfile
```

-	Layers:
	-	`sha256:5d7a5114eb8373245a42eb0000bbafe5cbd82d055902c0074d5df974dd49d729`  
		Last Modified: Fri, 20 Nov 2026 17:43:08 GMT  
		Size: 4.1 MB (4109238 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bb9667490e8230b0f15984eeb95f61279494dfb3fb365c1a6734b408568b47a`  
		Last Modified: Fri, 20 Nov 2026 17:43:08 GMT  
		Size: 23.9 KB (23881 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jammy` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:7cdcea11fe0f6ac294cc0a31e925822997ec2041260205206a4d3837b089197c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191546525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18f498c241bac25d4e44a1349bcff35c48c0b4b4f77a496dccb1b2273a8f101f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:40 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:40 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:43 GMT
ADD file:a872ab0d3f28a3797c7da6e33a8d7923099a6907c527b58bce44bfad93c122dc in / 
# Tue, 17 Nov 2026 09:18:43 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:43:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:43:49 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:43:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        armhf)          ESUM='f953d9c38eea3906c04e44bc434c34a503275b19be2c2b2a61939522828ba64e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        ppc64el)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:44:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:44:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:44:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:44:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2fde5ef6b5929fd5892e075a0de0ae7f80762734f112b1892524a5acebc87144`  
		Last Modified: Tue, 17 Nov 2026 10:29:18 GMT  
		Size: 27.2 MB (27174737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05065ced2712a3b9d48c89c917ed63ed8c957e65369490442c5ea09741900bb7`  
		Last Modified: Fri, 20 Nov 2026 17:44:17 GMT  
		Size: 21.0 MB (20958990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576e0836a78552d9ec1d1fcc6ae8b25f97c2ad726436433f9383e7f58d9f3fde`  
		Last Modified: Fri, 20 Nov 2026 17:44:19 GMT  
		Size: 143.4 MB (143410175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f966c9f34a91a667918744eef98dac58468f0533bd814beb24737c23b651c8b`  
		Last Modified: Fri, 20 Nov 2026 17:44:16 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33db05a8da6d70cfc877d5e1fe3c6945d38ae601f3f38adca6be745639473051`  
		Last Modified: Fri, 20 Nov 2026 17:43:24 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4ce97fd2da8371930faa33c4c7a37a7a07256357eb4a6f6880be1f3f5031784b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4052476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81667ab02a3998349238eddc102cd7d36e1b103913b425d6636a6f1daa2fc47f`

```dockerfile
```

-	Layers:
	-	`sha256:cb11bd9bbb6347b25491d68aad0e03b87dcd42eb749d8d58399a87a184352047`  
		Last Modified: Fri, 20 Nov 2026 17:44:16 GMT  
		Size: 4.0 MB (4028497 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:439c93dfb9af93ddf9148330c8e3431afedd9810b56f9b70e694ca0adf47f04d`  
		Last Modified: Fri, 20 Nov 2026 17:44:16 GMT  
		Size: 24.0 KB (23979 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c01aae81f88c79acf0eaae7ea6580f8abb4341984b394a64c05130d5971fd2d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.1 MB (195052411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0048878abf1db7c2d2c402ae30b8a6c3ab5ce808375b34669a453d93078253`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:48 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Fri, 20 Nov 2026 03:16:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='7f7aa599ab9d0a594c70e82c7c67fc97b6eb28750d0843a4db8e6fa41252fbe5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:17:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb3651b0412a707feec155d00bbb62a65d6db7475fa2cef82aee5835748855f`  
		Last Modified: Fri, 20 Nov 2026 03:17:17 GMT  
		Size: 22.1 MB (22080597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c900a8e3a522595b3082f3e7b5fa43473e8477db408e88ff271782cabb92a1f`  
		Last Modified: Fri, 20 Nov 2026 03:17:20 GMT  
		Size: 145.0 MB (144967790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a2ed6a35713e34bdb1dec3c982915ae9c8dc299bc1aa345689d0b40e5e076a1`  
		Last Modified: Fri, 20 Nov 2026 03:17:16 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d852158187e54e7625fcf79e37932ca744947162e9c40146a4966ddf124e4b03`  
		Last Modified: Fri, 20 Nov 2026 03:17:16 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:dbeb6800ea74b3011d78036a167818bfad45780565e56e379c5ef186236f5c48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4228706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477fd26cf8d7ff0c2f1f95f5997d17bd25277d2e3c561c71fb3b8cc559d954dc`

```dockerfile
```

-	Layers:
	-	`sha256:fff2c9a7e9aad8e3de4a614fcfe50b968ad2b594b3019e3238878d0bdfba355b`  
		Last Modified: Fri, 20 Nov 2026 03:17:16 GMT  
		Size: 4.2 MB (4204696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fb025727fb47940509016d43b16d156f7acdbcbde5cd251cd5b0fa3fef41899`  
		Last Modified: Fri, 20 Nov 2026 03:17:16 GMT  
		Size: 24.0 KB (24010 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:27600ce1e23badfad4563d57588dd6e6d4420dc2be2a3f315b1dc5111fde8bb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.5 MB (202476601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eab6612400d9d2dce9bf10d831aa01b65b953e1f1c792937631e4935af66403a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:32:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 04:32:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 04:32:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 04:32:02 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:32:02 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:47:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        armhf)          ESUM='f953d9c38eea3906c04e44bc434c34a503275b19be2c2b2a61939522828ba64e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        ppc64el)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:47:28 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:47:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:47:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:47:28 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4630d345451cde4ce300f9766946a88c3dad94936415366fb49a1cbdc49ead98`  
		Last Modified: Fri, 20 Nov 2026 04:33:02 GMT  
		Size: 22.6 MB (22552057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5bb7085b9b349d380442ee0485c6fc228c77f4cc98493713e90d256d85036f7`  
		Last Modified: Fri, 20 Nov 2026 17:48:13 GMT  
		Size: 144.9 MB (144900261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0b056cb91b3c9b98598c1ddbcece839b9b956c228142445da14dd5d9d72f723`  
		Last Modified: Fri, 20 Nov 2026 17:48:09 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6178db04815f6434839f60f7885195971ae39efb74731378a09435ae63a5f5b`  
		Last Modified: Fri, 20 Nov 2026 17:48:10 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:30934819461208a5f71f909b8234fe5eb54da26dc13e2c42d289110a0511c0db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4159464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f63763d554607b7fa7c84034ab0381610a7945494fef645812b166286b08c9a`

```dockerfile
```

-	Layers:
	-	`sha256:4d82ace3fc6f7e9e5e55bf07bdbb6f75555d96c5daad3b17bd62240048a1ccb1`  
		Last Modified: Fri, 20 Nov 2026 17:48:10 GMT  
		Size: 4.1 MB (4135542 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6b477dbb731589969ff1287bf91a02ed3a0598c53e20491eefe721c3dcc4f54`  
		Last Modified: Fri, 20 Nov 2026 17:48:09 GMT  
		Size: 23.9 KB (23922 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:277521c0dc7b364609aefaaec79e4e85a900a61b5e182174beb6f029d2cbdfba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.4 MB (184350202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3860be65a3c881a903cde59f04f1f82880a4a6384e1a31321059e1e7056b2e2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:46:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:46:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:46:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:46:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:46:09 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:46:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        armhf)          ESUM='f953d9c38eea3906c04e44bc434c34a503275b19be2c2b2a61939522828ba64e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        ppc64el)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:46:18 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:46:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:46:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:46:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8ff677fe839002a97e296848b709e5ea3ea7bad9265d64fedfd023655c3aae`  
		Last Modified: Fri, 20 Nov 2026 17:46:47 GMT  
		Size: 20.4 MB (20386659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d21be07e628a0ce0387d39fb2f92c00f4dd83991b5ed16fe8898de7f3bb1d9`  
		Last Modified: Fri, 20 Nov 2026 17:46:50 GMT  
		Size: 135.4 MB (135421904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6643094df4b1981b5b6a2aa708978a3290151a5f9666f89e5fc14a6dce1a0d51`  
		Last Modified: Fri, 20 Nov 2026 17:46:46 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ab7109293ea24321f07bb43b0d5a5f64fa7bb3918f63b1bfc67c944fc843903`  
		Last Modified: Fri, 20 Nov 2026 17:46:46 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1097063fbfdfae9da62069b6d6cca49a96a5f69443a65b22dd3a2ee2c274dd16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4056869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29591dd2eb415705640ad4d4af85560160815d4a75005c5855a43702fc5d5b3c`

```dockerfile
```

-	Layers:
	-	`sha256:9411cc965be60445f9a39f1361b8065df57cf0737be7aec865c8701b6be50013`  
		Last Modified: Fri, 20 Nov 2026 17:46:47 GMT  
		Size: 4.0 MB (4032988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dffa46c6a31ac71487a83b3bdfce005e1a860a5130c71fd30b1fdfe1b8c7321c`  
		Last Modified: Fri, 20 Nov 2026 17:46:47 GMT  
		Size: 23.9 KB (23881 bytes)  
		MIME: application/vnd.in-toto+json
