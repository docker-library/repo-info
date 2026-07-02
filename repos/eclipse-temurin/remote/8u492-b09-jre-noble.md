## `eclipse-temurin:8u492-b09-jre-noble`

```console
$ docker pull eclipse-temurin@sha256:19fa256e4e7859c1459df434b7c1a42a15f7c91bc5e9a3c20b7c3c42283afe7b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u492-b09-jre-noble` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:1b0bf2fe4e633bd35ab11327c4bc7a62744c527ad1cfa0e9ea66b6f20e86de1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89056916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c631b5e89bf0fda1adcb2d04a4351fcf0ee3d0820b95d6a4389d7ca4f40f97`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 20 May 2026 01:37:19 GMT
ARG RELEASE
# Wed, 20 May 2026 01:37:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Wed, 20 May 2026 01:37:19 GMT
LABEL org.opencontainers.image.version=24.04
# Wed, 20 May 2026 01:37:21 GMT
ADD file:46ac5b8ee4c64ad9ebe840abd5619f571a617ac19483764d47d0eeba7907934f in / 
# Wed, 20 May 2026 01:37:22 GMT
CMD ["/bin/bash"]
# Tue, 02 Jun 2026 08:14:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 02 Jun 2026 08:14:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Jun 2026 08:14:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 02 Jun 2026 08:14:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 02 Jun 2026 08:14:01 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 02 Jun 2026 08:14:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='5f0693c6c8ca0eb8df969bb1053b1926b1e7c57a3f90c6f9e8d493395e76a329';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 02 Jun 2026 08:14:04 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 02 Jun 2026 08:14:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 02 Jun 2026 08:14:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:cb259a83ac3dd9fea0b394df41df2b298adf0df938fef5999475af18a751c257`  
		Last Modified: Wed, 20 May 2026 02:15:22 GMT  
		Size: 29.7 MB (29732805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0479b3e13d15e71a0f435758770a5bcee00c798f2a9ab9fdfbbb8245d9e6b0`  
		Last Modified: Tue, 02 Jun 2026 08:14:15 GMT  
		Size: 17.0 MB (16984214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17efb44c2b8a615e6468091efd764e243e65d77675a221c02a9df8fe3d7a2f0b`  
		Last Modified: Tue, 02 Jun 2026 08:14:16 GMT  
		Size: 42.3 MB (42337307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f29e182498b72a950819bac859beca14639bb03e5124aea6677dbde85b5b357`  
		Last Modified: Tue, 02 Jun 2026 08:14:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11300bc126caeb5bb43b2e98e866b8a6cd6caa4b473af2c47ab51c8730f25c7`  
		Last Modified: Tue, 02 Jun 2026 08:14:14 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:dc03f2c58da2c2f99695e8eacea4a42429ed47ea5fcfb2a977c80d40eb544000
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3337418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03777af6ef95a874cec7f92a9695708fb6d6927c9b50097ee38df3054d50665d`

```dockerfile
```

-	Layers:
	-	`sha256:5cbaf051f7651914367f9f3fee8cee211c80853bcd44769c0d4271f31f699fb1`  
		Last Modified: Tue, 02 Jun 2026 08:14:15 GMT  
		Size: 3.3 MB (3315501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:586594f37fccfe32b7a7c653ed9eb971fcc8592858d0c49505347628e912e735`  
		Last Modified: Tue, 02 Jun 2026 08:14:14 GMT  
		Size: 21.9 KB (21917 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jre-noble` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:7d2e6a33a05bfb4cda97c77ef96c6aa4514fb1705f0549b499fd0df60da782c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82904269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35520fa6d32d1ebc4d2bd4416573497853eba0026ed2d2762947201d7b5eed1a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:08 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:08 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:08 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:13 GMT
ADD file:6ca8a72a8c816a3a81eb9f721933f3d02719fa75abc81d4a66486cd6efa33e3f in / 
# Mon, 22 Jun 2026 21:25:13 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:11:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:11:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:11:41 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:11:41 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 02 Jul 2026 02:11:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='5f0693c6c8ca0eb8df969bb1053b1926b1e7c57a3f90c6f9e8d493395e76a329';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Thu, 02 Jul 2026 02:11:49 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:11:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:11:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:67abbeb92f85087f969de6f6864f7b5cc172fa05098a68931182f6e5b4d2d8c6`  
		Last Modified: Tue, 23 Jun 2026 01:34:19 GMT  
		Size: 26.9 MB (26862593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e8ab5815716815b16facef59963b14e9988feee287a43dc0a5d96a3507540ba`  
		Last Modified: Thu, 02 Jul 2026 02:12:01 GMT  
		Size: 16.3 MB (16266875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3c447014542148f62fc6ccc8edd8c513be157dbabd4d535455f5169ae599922`  
		Last Modified: Thu, 02 Jul 2026 02:12:01 GMT  
		Size: 39.8 MB (39772208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b4d143b2beae13dc954913fc583d0f14c0d76e18438ddcb7fe1d1f3925a449`  
		Last Modified: Thu, 02 Jul 2026 02:11:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb17f42095d79b550b1fded8a1ec76d9699dd9ace59c9f7d29e874a3d84841b`  
		Last Modified: Thu, 02 Jul 2026 02:12:00 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a8c967fc8163ae5fa8b9a5313652da67b3474fc6ff96505cc980a9824e006c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3327250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8be88f2152095aa96501325d973c506dc8360824dfbe6f384c46c26beeb6733`

```dockerfile
```

-	Layers:
	-	`sha256:ecc60db64930c0238de14017f09477ba7cd05564801376787f8bf61d1265eeea`  
		Last Modified: Thu, 02 Jul 2026 02:12:00 GMT  
		Size: 3.3 MB (3305243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db311a1b2f4dce21bc69a67a9b55a42041a0f686c42fc67e15a59295f867d48d`  
		Last Modified: Thu, 02 Jul 2026 02:11:59 GMT  
		Size: 22.0 KB (22007 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jre-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:e05ff12368918f76299d30a750cf685749453821409f9805f0ec4b874998d4e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87184208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5bfb98b7c39c81f8ed5656110fc59bf8cd626726c7bf0a4dd3517b67d4f062`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 20 May 2026 01:37:31 GMT
ARG RELEASE
# Wed, 20 May 2026 01:37:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Wed, 20 May 2026 01:37:31 GMT
LABEL org.opencontainers.image.version=24.04
# Wed, 20 May 2026 01:37:34 GMT
ADD file:08e1f650999ca51d9b63c782d658d9485c64263966d69dc423a3b64a16449f00 in / 
# Wed, 20 May 2026 01:37:34 GMT
CMD ["/bin/bash"]
# Tue, 02 Jun 2026 08:15:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 02 Jun 2026 08:15:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Jun 2026 08:15:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 02 Jun 2026 08:15:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 02 Jun 2026 08:15:37 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 02 Jun 2026 08:15:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='5f0693c6c8ca0eb8df969bb1053b1926b1e7c57a3f90c6f9e8d493395e76a329';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 02 Jun 2026 08:15:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 02 Jun 2026 08:15:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 02 Jun 2026 08:15:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:fff3795b437199a0b714aadba6fb2c251d7da853c3e257d3fed1d2c8d0f05158`  
		Last Modified: Wed, 20 May 2026 02:15:29 GMT  
		Size: 28.9 MB (28876406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b329a7430443d5df5aad2e2ad97c50d599c75cce9df284a0633cf6ceb7032724`  
		Last Modified: Tue, 02 Jun 2026 08:15:52 GMT  
		Size: 17.0 MB (16997547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6623f5e1a5902ef1c0cb5a8adcf2e22e984262d948bd64fe4143d84b1177ebff`  
		Last Modified: Tue, 02 Jun 2026 08:15:53 GMT  
		Size: 41.3 MB (41307665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3a0cde34343924fa3e2176c86920ad2dbbfaf33a7474993f578aab65e5db4c`  
		Last Modified: Tue, 02 Jun 2026 08:15:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed8fb59333c63a788842fa58d383cfe8e2cc9b4576ec7ab0b3284bac7011418`  
		Last Modified: Tue, 02 Jun 2026 08:15:51 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:244af327917410dbf3966945565691502e30039b1e09d364dbd1ef1da922deef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3338667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2d7bf57f2f76ea850cffa7f92277bf4563125ed8d083c4c501431e3b8bbd5f8`

```dockerfile
```

-	Layers:
	-	`sha256:64b5040932febc3209deb34dfb5ab820fc5028d10ebc4395b9bc72e5f932a3a1`  
		Last Modified: Tue, 02 Jun 2026 08:15:52 GMT  
		Size: 3.3 MB (3316640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b8ba7c8d6bd51e2b371f4e74dbe3cb14043d431531cbc42db74c5c68cd235c7`  
		Last Modified: Tue, 02 Jun 2026 08:15:51 GMT  
		Size: 22.0 KB (22027 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jre-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:1097984d918593f6ea8325331a52a97c8bcf6e49b2b3d6743227bc84b92e2576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94871724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1b4cd92e54780c50d526f4e39bae850be8079228f1702b869b08194bf98b8e9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Wed, 20 May 2026 01:37:26 GMT
ARG RELEASE
# Wed, 20 May 2026 01:37:26 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Wed, 20 May 2026 01:37:26 GMT
LABEL org.opencontainers.image.version=24.04
# Wed, 20 May 2026 01:37:29 GMT
ADD file:25dad72762cb0d82bbf57f17b8713b1ca4d35e813d99be37e61090f10acd5d92 in / 
# Wed, 20 May 2026 01:37:30 GMT
CMD ["/bin/bash"]
# Tue, 02 Jun 2026 08:10:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 02 Jun 2026 08:10:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Jun 2026 08:10:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 02 Jun 2026 08:10:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 02 Jun 2026 08:10:09 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 02 Jun 2026 08:10:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='5f0693c6c8ca0eb8df969bb1053b1926b1e7c57a3f90c6f9e8d493395e76a329';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 02 Jun 2026 08:10:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 02 Jun 2026 08:10:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 02 Jun 2026 08:10:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e091f822489caa06bb3d2fde38646b1d65be890bc1155c44ed55dc18ce539afc`  
		Last Modified: Wed, 20 May 2026 02:15:44 GMT  
		Size: 34.3 MB (34314099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef700e09ef3cf16d19218622a73899db0a8b42f33bfb19159bb4aa3576d5d21e`  
		Last Modified: Tue, 02 Jun 2026 08:10:42 GMT  
		Size: 18.8 MB (18813426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e4b75c87c150c6f53f06f1566df4335bed19c5f9edd3676a9de1e980e9cd63`  
		Last Modified: Tue, 02 Jun 2026 08:11:01 GMT  
		Size: 41.7 MB (41741610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213a3dcef22845a4990897dca945276e1fc80ee4353a7aa2e6d459fc70920868`  
		Last Modified: Tue, 02 Jun 2026 08:11:00 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c254997e8b0374b9cde75c911358cb185fb313947c0db4337543d4114f3b5a`  
		Last Modified: Tue, 02 Jun 2026 08:11:00 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:234a97014f4d274d2bbbaa25b48d8a455ee7b54838346b6b0a9c02cc8a8463b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3342202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c0012cbd1e4e8e419c2d6e4cf225ba917adc52a1f98174171ed65199ac2a2d`

```dockerfile
```

-	Layers:
	-	`sha256:34337636e179f441bacdc56a54001e26bf3e90b63628764eb9edffacf37b7bd6`  
		Last Modified: Tue, 02 Jun 2026 08:11:00 GMT  
		Size: 3.3 MB (3320249 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d591db169e1ae79b8279cc382467c9846e34ab559423b9c647a37ed77eccb053`  
		Last Modified: Tue, 02 Jun 2026 08:11:00 GMT  
		Size: 22.0 KB (21953 bytes)  
		MIME: application/vnd.in-toto+json
