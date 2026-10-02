## `eclipse-temurin:26-jre-jammy`

```console
$ docker pull eclipse-temurin@sha256:a0a9e2cc94dc988edfc5805b01e8685b5ce447932da5f3a3875befb4b36b83b3
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

### `eclipse-temurin:26-jre-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d2004f87aae002cc49043cef00fc021aecd0cd73ec7a8c49278a0cb2381039a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105679805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14cf3cdcdb549ed6b9413cafc83403a98d29e0d335a855902446b7eba73457e6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 02 Oct 2026 01:20:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:20:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:20:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:20:24 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:20:24 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 02 Oct 2026 01:20:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:20:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:20:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:20:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3a3d912882b4f6e3095d3312598492fd4570990c669f473daa352a34d88a49`  
		Last Modified: Fri, 02 Oct 2026 01:20:55 GMT  
		Size: 11.4 MB (11367716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03fecb4d8ed7682af7f93cb737a4cd0fc193cc96dae083bf863fd5b7632d1c0d`  
		Last Modified: Fri, 02 Oct 2026 01:20:56 GMT  
		Size: 64.6 MB (64557965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2615e6874ca50f6841eb4bcef033d9962628d75b24b8457b2659fdbbecee050`  
		Last Modified: Fri, 02 Oct 2026 01:20:55 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:def75fe7cd77e5e2dddf6be051b493224c785d36eabf0d036b5d96c4cb1e8548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3653848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd81c455ab373be920c04233ce35dfbf2affb73ac390db39cb03815a0e5e217`

```dockerfile
```

-	Layers:
	-	`sha256:cc876e7b415e6be8ef8e1ebd91e9e71aff75290420f8e3b9044f2ecafcc032a7`  
		Last Modified: Fri, 02 Oct 2026 01:20:55 GMT  
		Size: 3.6 MB (3631563 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e7f9b5475f4ae4160e9960a6a30f5859e028dc299e824996c0479d69d32ad95`  
		Last Modified: Fri, 02 Oct 2026 01:20:54 GMT  
		Size: 22.3 KB (22285 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:a3eee62173e9a86df678eb6eccdb565fa754e49101e56c7d710dffae858b3b42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.5 MB (102470400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b165b99a3b9ee871c640809e89411f567d83e8e774f1fd51ca49faa85763c254`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 02 Oct 2026 01:20:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:20:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:20:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:20:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:20:12 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 02 Oct 2026 01:20:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:20:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:20:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:20:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35426b70142f9d6424ecaacc533f5315a742691efaede1a4e7d34e9687836279`  
		Last Modified: Fri, 02 Oct 2026 01:20:48 GMT  
		Size: 11.3 MB (11322753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4983adbaa33163279f839f51623dafe766b04651c56cb4f258dd2d351f3f60e7`  
		Last Modified: Fri, 02 Oct 2026 01:20:49 GMT  
		Size: 63.5 MB (63461016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21d45ad6386fea67d811aa0817d0ed972abc9220c5ed71b55dc1a8e0f0b1578`  
		Last Modified: Fri, 02 Oct 2026 01:20:47 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1c7c7b44be738bc55ff0c1cf5074f6da317399d1458cf98243050ee7dbc78391
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3653596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea7bb398b7630060b28f01fb7456520053b852d93eefc8f0757a53036abd93e`

```dockerfile
```

-	Layers:
	-	`sha256:550fa5e9fc1f0173f1cd8fbf0921cd436a54529cf8016ccd991be4a374efbf9b`  
		Last Modified: Fri, 02 Oct 2026 01:20:47 GMT  
		Size: 3.6 MB (3631201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce441154c63cdd98c2e410f0ae2096af736dc9237762143d3b866321321eb8e3`  
		Last Modified: Fri, 02 Oct 2026 01:20:47 GMT  
		Size: 22.4 KB (22395 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:4f7cd17b9ff55b91214b2e6e8e29dc2da1a34427483a812c9842d1e65cc2fd1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110184285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16a59edc3b91e54db3b2a0c7f628b2f47b1b703eb80a7ad880f46d20819999f4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 02 Oct 2026 04:04:01 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 04:04:02 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 04:04:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 04:04:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:33477110f66000c03cb1e72facd4fd150f8f9a2e1ee484b5957aab1ca05db708`  
		Last Modified: Fri, 02 Oct 2026 04:04:38 GMT  
		Size: 63.6 MB (63624364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b32f390eb14dbb003640648a2496ba93dd048db0c8f8b66ab4882afd7c24ec`  
		Last Modified: Fri, 02 Oct 2026 04:04:36 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fb052017ae76800002cb869bf89d5036f0135861de63965678c499ae237e5351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3657209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:432c47495431e3ac70fd1e31ba8acbe6456a4e290813b391ba3720918479be0e`

```dockerfile
```

-	Layers:
	-	`sha256:f032ed0e183bd6dfd1724997ef5a456b2519412f7b1a73e4b6e5ee866ff1829e`  
		Last Modified: Fri, 02 Oct 2026 04:04:36 GMT  
		Size: 3.6 MB (3634888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:965b87975b7e63791536d22234e572e97ee22cbb6b095f3675b648d803bb9b80`  
		Last Modified: Fri, 02 Oct 2026 04:04:36 GMT  
		Size: 22.3 KB (22321 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:d9128cdea854c6346dc8bcaef1809e1e5b9d7973a35c2ed0f20214a68c3d6b44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101900114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b1658416e327d26e4db3e1a63af938b11c42558446ba7650d2d0d8b7b0b6da9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 02 Oct 2026 01:41:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:41:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:41:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:41:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:41:32 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Fri, 02 Oct 2026 01:43:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:43:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:43:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:43:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e1502cdfd138d89dddc82531455ad8426a7eaa0d843665253c16b88cb6870c91`  
		Last Modified: Thu, 24 Sep 2026 23:36:39 GMT  
		Size: 28.2 MB (28222068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b291887a805961a5124a880b04eda6500baf430a4ed7afb833a3f9557f5622f6`  
		Last Modified: Fri, 02 Oct 2026 01:43:58 GMT  
		Size: 11.5 MB (11468039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0fb2fc95f4ef784dca50ecd5a4d6ed4f06e80b9c5325df5fab2bf75bd27c8ee`  
		Last Modified: Fri, 02 Oct 2026 01:44:00 GMT  
		Size: 62.2 MB (62207510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d73bf10394dfdf7f5361d7e01ca831d9dd677d19a1c1eb1ab6a11c67bd2db8`  
		Last Modified: Fri, 02 Oct 2026 01:43:56 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:166087ca6f337cdafb0e96d25bad86ea02e15d2779600efe7c1667a1c1ae6ca0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3654834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20fae24384aed38be92cadb1e3d7e6c19c8899bbdbbe1d2abda130e6c9c47838`

```dockerfile
```

-	Layers:
	-	`sha256:21a00129ac7579aa27036af2326f29d1854187151e3be61984861fb437c99d59`  
		Last Modified: Fri, 02 Oct 2026 01:43:57 GMT  
		Size: 3.6 MB (3632549 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa3470e198398cf6badd42bb665d92c06da32ec6ce35afd54107cc999de6b926`  
		Last Modified: Fri, 02 Oct 2026 01:43:56 GMT  
		Size: 22.3 KB (22285 bytes)  
		MIME: application/vnd.in-toto+json
