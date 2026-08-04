## `eclipse-temurin:26-jre-jammy`

```console
$ docker pull eclipse-temurin@sha256:f0904b754d3a44ff1db98aa87ece03cdba2435f300ff942ad14c60ca4c19ee83
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
$ docker pull eclipse-temurin@sha256:d1fceb8c2cce5b772c2d9d506ac6a75478b29ea85596512bc2bf0e6479c18fb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.6 MB (105632088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3b7ebf8537600d2c8af2ce3da1f18fd32b6a15cfaaa9c1757d6ee0c2e1f0cb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:29:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:29:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:29:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:29:00 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:29:00 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 04 Aug 2026 01:29:19 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2e90cf68d31b28553fb2c8202d5a4c3a5e99a60285e125dc28c94ba5fb2ac1ef';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='bf5f733066599065de5e720edda550b39d85876f5bf23a94fee2cb6a8379cb36';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='d8f66903603c3661c0d8c03de41b76459260ed2e295ba874bb7b3f37a012c026';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='3c68d7df7d64a7738a6bd97b12fb2167774666d87bf9a309094bb2180073eb38';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:29:20 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:29:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:29:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04437c1dc55fde1c1de8832f9a6283efc840e7d6e489d2ff5c64ac7e9035df7f`  
		Last Modified: Tue, 04 Aug 2026 01:29:34 GMT  
		Size: 11.4 MB (11366694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146c7a04b92916bf620acc039f9e89450b7e4c2216aa3e7d92a8931dcdfe2a25`  
		Last Modified: Tue, 04 Aug 2026 01:29:35 GMT  
		Size: 64.5 MB (64526380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37567254e52b5a6917fc5b62f8de6835d71145ee1243c6b41e3df8e46ef62bd0`  
		Last Modified: Tue, 04 Aug 2026 01:29:33 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fdbe1117a9280e222d5c679df42cc26984778aa6477377ffdabeec6ce40da9c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3651811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7cf639f33cd38c66533bb5b52408a06f618edd2749d3d3f8b348f28b011322`

```dockerfile
```

-	Layers:
	-	`sha256:cc72f35a9286c7983bff3eb4cb3fd813003bd887070ee357c355ad35fd13ebae`  
		Last Modified: Tue, 04 Aug 2026 01:29:33 GMT  
		Size: 3.6 MB (3629574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aee2a7501d03092186224718f12613d59af191d802332a62a64b737e86ef2c63`  
		Last Modified: Tue, 04 Aug 2026 01:29:33 GMT  
		Size: 22.2 KB (22237 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:fda95600dde81c8a60f6a324be420872559733edb31c3d5777c5bd142302103d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102373384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf7c02d8ac9da2a603b333592095c4ba779b78b18539d2cc601173fe26376c34`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:58:10 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:58:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:58:10 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:58:12 GMT
ADD file:66c837214dd75fd34fbf726aabdc4c4a739297d5d853247e4c885c4bce5b7f6a in / 
# Fri, 31 Jul 2026 21:58:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:29:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:29:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:29:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:29:24 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:29:24 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 04 Aug 2026 01:29:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2e90cf68d31b28553fb2c8202d5a4c3a5e99a60285e125dc28c94ba5fb2ac1ef';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='bf5f733066599065de5e720edda550b39d85876f5bf23a94fee2cb6a8379cb36';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='d8f66903603c3661c0d8c03de41b76459260ed2e295ba874bb7b3f37a012c026';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='3c68d7df7d64a7738a6bd97b12fb2167774666d87bf9a309094bb2180073eb38';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:29:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:29:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:29:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bad149774894f8fe35fe9865ebbfcf6ca20e993793281556b92ff82e273fed9`  
		Last Modified: Tue, 04 Aug 2026 01:30:01 GMT  
		Size: 11.3 MB (11310468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78756bf85a77a9a334debb0fc026c233ba1c4c0828a242a64dbec6877496df29`  
		Last Modified: Tue, 04 Aug 2026 01:30:03 GMT  
		Size: 63.4 MB (63440387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af831db5cdd2cf7212405f24c4d834ccc095ad74667521349c4e614a94792c31`  
		Last Modified: Tue, 04 Aug 2026 01:30:01 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9d1f7399188b6525afd3bd068713392bb4bb5b1fd2821a29d5bc24fe2e16f478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3651559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f270ab6bccea0dc20f090e0faba66e51038cb755f5a8b7c163833bfb9efb0c`

```dockerfile
```

-	Layers:
	-	`sha256:bde9fa64ad9a4a0dad65c7b044efd20e519443b57bbc1d353f4ad5bfe179c505`  
		Last Modified: Tue, 04 Aug 2026 01:30:01 GMT  
		Size: 3.6 MB (3629212 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a45a184736dd005256ec367c486c2ac3e0a5f48d6c098b3373b50edc323ef342`  
		Last Modified: Tue, 04 Aug 2026 01:30:01 GMT  
		Size: 22.3 KB (22347 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:61a55edea60dcf0e77729fd6ca7940a7783720337b8857bdaf85800822e90eee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110431460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:971789076520515f5e1cdea8baa1cb40c3df71baccc4ac7e0a267144fcb1ec5d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:52:30 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:52:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:52:30 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:52:33 GMT
ADD file:f48db2a791f6b574e2518d202e6b75268dc7b57826c0aa7a238e41ef3f2dbaeb in / 
# Fri, 31 Jul 2026 21:52:34 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:31:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:31:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:31:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:31:44 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:31:44 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 04 Aug 2026 01:36:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2e90cf68d31b28553fb2c8202d5a4c3a5e99a60285e125dc28c94ba5fb2ac1ef';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='bf5f733066599065de5e720edda550b39d85876f5bf23a94fee2cb6a8379cb36';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='d8f66903603c3661c0d8c03de41b76459260ed2e295ba874bb7b3f37a012c026';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='3c68d7df7d64a7738a6bd97b12fb2167774666d87bf9a309094bb2180073eb38';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:36:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:36:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:36:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e042c89697299764802fe1aec7965ae666fb2efeb96aebdecdea02f9257539f`  
		Last Modified: Tue, 04 Aug 2026 01:32:51 GMT  
		Size: 11.8 MB (11848614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe3cc6a16130effd51109f8fd41c6d55a4e0decd8f1115ec813c45c7aa14071`  
		Last Modified: Tue, 04 Aug 2026 01:37:04 GMT  
		Size: 63.9 MB (63942684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51bc91fc4125e76e8f871b25bb5debaf35a83ce1f6c7cf2af5ebbe0dab577e47`  
		Last Modified: Tue, 04 Aug 2026 01:37:02 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e537fbbc0d99017a4f25eeb1cfff14c9a7e9ea68cfb182f74dc7a20c275a4ef7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3655172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a970103b387df203426633289833562df1dc86ab9b28e3957136611873a0d952`

```dockerfile
```

-	Layers:
	-	`sha256:09409a9911f5db80f1dc21e9af62ae5ecada115786990cd4a10019f85b62b515`  
		Last Modified: Tue, 04 Aug 2026 01:37:02 GMT  
		Size: 3.6 MB (3632899 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e34818d12cf400c12367874890086a73d85724c50136989978a9ee7a15cb04dd`  
		Last Modified: Tue, 04 Aug 2026 01:37:03 GMT  
		Size: 22.3 KB (22273 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:aa99ac8cf5d0c47f2a275af506dd9bc987ad083c34cabba41450ff2396e92baa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.8 MB (101813672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:917c2633cf1c0b3dad1ff90774f2540618c711957bb19f52e1213729ec0ebc1c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 21:55:19 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:55:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:55:19 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:55:21 GMT
ADD file:98836c73e1ff3d764fd3ad911919bc2fa26732cdc016cedf045ad454f04a7e20 in / 
# Fri, 31 Jul 2026 21:55:21 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:17:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:17:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:17:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:17:06 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:17:06 GMT
ENV JAVA_VERSION=jdk-26.0.1+8
# Tue, 04 Aug 2026 01:18:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2e90cf68d31b28553fb2c8202d5a4c3a5e99a60285e125dc28c94ba5fb2ac1ef';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_x64_linux_hotspot_26.0.1_8.tar.gz';          ;;        arm64)          ESUM='bf5f733066599065de5e720edda550b39d85876f5bf23a94fee2cb6a8379cb36';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.1_8.tar.gz';          ;;        ppc64el)          ESUM='d8f66903603c3661c0d8c03de41b76459260ed2e295ba874bb7b3f37a012c026';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.1_8.tar.gz';          ;;        s390x)          ESUM='3c68d7df7d64a7738a6bd97b12fb2167774666d87bf9a309094bb2180073eb38';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.1%2B8/OpenJDK26U-jre_s390x_linux_hotspot_26.0.1_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:18:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:18:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:0c891f1f0f7387672dc5f23b57a662b266f4decb4523b0b77d0abc0b1e165161`  
		Last Modified: Fri, 31 Jul 2026 22:54:24 GMT  
		Size: 28.2 MB (28210302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b96f3828aef8b69177dace2b2f7f4b4e775823ee4ee2b8c3899d5ec8034282`  
		Last Modified: Tue, 04 Aug 2026 01:17:41 GMT  
		Size: 11.5 MB (11453180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c9f9cd0c0dd709fb6d0640f4426e50ff053de3533d9e956c5f66525694b9fe`  
		Last Modified: Tue, 04 Aug 2026 01:19:07 GMT  
		Size: 62.1 MB (62147693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d418a3bbad1eca76afc781a02821805c7670f763b40c5144907c06df7822dc3`  
		Last Modified: Tue, 04 Aug 2026 01:19:05 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:37395992f4051877cdb639d2be316761f33f85490b96abe93eac7d20743a2a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3652797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87cb8b877960b4da0cb4c77c2ffd32d688cc6d1a297dacffccb18f2a7343af65`

```dockerfile
```

-	Layers:
	-	`sha256:d16f7872f8bd3863f124fa3228686870c51330b8f4c6030d12337d1e7821069c`  
		Last Modified: Tue, 04 Aug 2026 01:19:05 GMT  
		Size: 3.6 MB (3630560 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7552859fc66ec1f3ad5c44af90bf01aa21e4ebec07abb293df20ce0c7f51ca34`  
		Last Modified: Tue, 04 Aug 2026 01:19:05 GMT  
		Size: 22.2 KB (22237 bytes)  
		MIME: application/vnd.in-toto+json
