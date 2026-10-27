## `eclipse-temurin:26-jre-jammy`

```console
$ docker pull eclipse-temurin@sha256:990705d284b954442e7335bb681176d37ccf2df254f50884b09fc175cdecbdfc
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
$ docker pull eclipse-temurin@sha256:fe51861bd4dab06a6ed1ca178407d98dfd464c644f22459ce6901be51155af0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.7 MB (105683753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776eb17b06d04409b8866819893f38829788107e702a304c7d5ce376fbba1127`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:14:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:14:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:14:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:14:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:14:17 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Mon, 26 Oct 2026 23:14:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:14:36 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:14:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:14:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef40a1fb43b2454e1f18ac34777854611226cda365ba345c61cf9b5e4d01efbf`  
		Last Modified: Mon, 26 Oct 2026 23:14:49 GMT  
		Size: 11.4 MB (11370707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d23b734d35f4763991644e2784a4439b6868f49a973317737455429c2ce88c85`  
		Last Modified: Mon, 26 Oct 2026 23:14:50 GMT  
		Size: 64.6 MB (64558061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122c8020f7f39ba77d54b669457f5fe0fc2252ae5ea3c127dd12cfc6ddf7dedd`  
		Last Modified: Mon, 26 Oct 2026 23:14:49 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ce00fa721b5cdc4f4647a4c6bf9b4c66edf2ddb599971be40d7218a8acf98748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3651313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d894e6e7a1b3c5da51dafef8176aab8b4c8f748463294f3ec28f2a4a632b888`

```dockerfile
```

-	Layers:
	-	`sha256:cbcad03becb8e3142c33e9c85027b612fc87991835dc9bf1a2b0c59a64411f22`  
		Last Modified: Mon, 26 Oct 2026 23:14:49 GMT  
		Size: 3.6 MB (3629028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01c54380490ebfdd4fa4dfd81af8c9610603e1add188d7fdf1f05636d66bb3ab`  
		Last Modified: Mon, 26 Oct 2026 23:14:48 GMT  
		Size: 22.3 KB (22285 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:df7573b08ff04526953461ebbf2fdc6d06874c702cfe1d049d3ab9431e9298f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.5 MB (102471360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ce8261ba436b317207ae7d5efe1d6fba82f6112f15a29f911bee95a88993088`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:18:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:18:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:18:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:18:57 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:18:57 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Mon, 26 Oct 2026 23:19:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:19:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:19:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:19:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:623fb8c9aa63534da7331215f469e6866f09143b6d070664bee67e87ab6e7423`  
		Last Modified: Mon, 26 Oct 2026 23:19:32 GMT  
		Size: 11.3 MB (11323167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362b1484863df4face884d256f69bc02b1373cfea74eda612ffa55a0356133a1`  
		Last Modified: Mon, 26 Oct 2026 23:19:33 GMT  
		Size: 63.5 MB (63461090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96b86d50a1830eb969ec0288f38bda5fc1b41c39fcf79b898600e1cb6e8fceb`  
		Last Modified: Mon, 26 Oct 2026 23:19:31 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ffa1a7aeb1551c09ec244277112911ba9bbab7bb22edb8d5e59b5cf7861de286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3651061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd740aa85e69beab6cdeb9fa4efb4ad91d097173e97c8a7d141884ca6049d6e`

```dockerfile
```

-	Layers:
	-	`sha256:31fe819b68221d7d8df778a1d12fd16ab098141b4e9beffead0adaa68324c08b`  
		Last Modified: Mon, 26 Oct 2026 23:19:31 GMT  
		Size: 3.6 MB (3628666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96e37ce67c6ff33cea744d3048e051667d9685ad65529174d4115a1366df67ae`  
		Last Modified: Mon, 26 Oct 2026 23:19:31 GMT  
		Size: 22.4 KB (22395 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:eeb1fd767eee9dc57fd4a89311adc47b318706598e3b4fc9fe6b49e81338b730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.2 MB (110186682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4705937878a45237360035c4c301f6e95a877ef9e04ee63c6120b064459c4a1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:42:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:42:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:42:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:42:44 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:42:44 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Sat, 17 Oct 2026 00:50:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:50:03 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:50:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:50:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3693669833f024ffc17d283833217bcf8d7effea1f2f942e02811895dd7963`  
		Last Modified: Sat, 17 Oct 2026 00:44:07 GMT  
		Size: 11.9 MB (11856347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d298bc7749c71ee37b9d9fd30b7659a1554ea2bda01b2061d73ca888c698c8`  
		Last Modified: Sat, 17 Oct 2026 00:50:39 GMT  
		Size: 63.6 MB (63624201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc50fbed97a08d027e8dc90a020162243241ca1d77a77cdd271df39d836a0d6`  
		Last Modified: Sat, 17 Oct 2026 00:50:37 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f8f18c1de3da84f8b19aa4d42f88fc0fa39d42455ba53410ca83be3a4a190297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3655306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b1ed3079c1d6854e6e729c3574f43b7ab8c92c8c8502b3064365666401c3a3`

```dockerfile
```

-	Layers:
	-	`sha256:5f909e468ac20b83ebdb1b522a6e602ad2456094ec5d19f9fe0c2423010c1c67`  
		Last Modified: Sat, 17 Oct 2026 00:50:37 GMT  
		Size: 3.6 MB (3632985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2302b57d79e0a7820e26b5a17eb9b7ad24f85c723d2ce2d72c96081ed1f182b5`  
		Last Modified: Sat, 17 Oct 2026 00:50:37 GMT  
		Size: 22.3 KB (22321 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jre-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:0bc43acd8b1d63a9c2f81aa7e5b6786c3c081315d8910e9384c5ebe4e131c465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101899518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ff5744058a86283aefe501709a1e7edeb93125555f17dee0e39d22f9c539d24`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:43:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:43:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:43:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:43:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:43:01 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Mon, 26 Oct 2026 23:45:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='35773116829554fb38e6acf9b92b3ba8bb7856557c3ab885e26e7d61e8c8e1b0';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9e1527681ae4a615044c88435d2c1a9faf1fd5c7baaf9514a4a4207608150087';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='be3fd8b8c10ceff1af6a44ee2c634bc0f93af3b5458d0be7881398fa91543909';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='e2785bf8d457176258442e74db7d5ddca8ebf01e55945139c5728d638c21f58c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jre_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:45:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:45:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:45:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17fb6f0596a11f1ca9ea6681c79fc456b89d6163b2652674999e086675986c28`  
		Last Modified: Mon, 26 Oct 2026 23:43:42 GMT  
		Size: 11.5 MB (11467243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38392b8e41c6a12764e07c9e3b03db604cd48a15bdb53fc37ebe9e008ebd4dbc`  
		Last Modified: Mon, 26 Oct 2026 23:45:29 GMT  
		Size: 62.2 MB (62206972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2aa0886f273d1a0063604efd56ac026731c73f45e766733964e53edba64345`  
		Last Modified: Mon, 26 Oct 2026 23:45:28 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8a87da97870371d3ceae7324712f3acdeef8e5b8d20c6a3ecdc10f6d21b4e07f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3652299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3e96f7ab29bc464593297e6ce9b503aa7ee1c7ee8dc1f6c3affb3fd8c202bf`

```dockerfile
```

-	Layers:
	-	`sha256:6216cc7348e36d45a57c1c86b5fe5daa600bbfcf4897ecd9ea3b1ffbf8603c1e`  
		Last Modified: Mon, 26 Oct 2026 23:45:28 GMT  
		Size: 3.6 MB (3630014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e5530cf64be849545bf7f07d754f0e2647c2fcbf974dbb2b6739b1ba80e050d`  
		Last Modified: Mon, 26 Oct 2026 23:45:28 GMT  
		Size: 22.3 KB (22285 bytes)  
		MIME: application/vnd.in-toto+json
