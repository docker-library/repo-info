## `eclipse-temurin:25-jdk-jammy`

```console
$ docker pull eclipse-temurin@sha256:d6ac622efdaafbf92f92f526910c2ea2e8312a47c3af981475eb21579513fae1
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

### `eclipse-temurin:25-jdk-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:9c30b4c20bb562e9c3db7cbb86c6bc82af9f06d898e410da649d10e39b18324d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138394225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f6f14136c7e11b94a861392ef940743968e4f7086c976ecd9fd00671e084919`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Mon, 26 Oct 2026 23:13:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:13:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:13:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:13:33 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:13:33 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:13:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:13:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:13:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:13:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:13:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4f0f41375a66b7a229bb8f986e08b0d280cc87b14519e5e34867710c84f6b4`  
		Last Modified: Mon, 26 Oct 2026 23:14:11 GMT  
		Size: 15.9 MB (15918537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2089f6858f45a33c49ee42a7d3144f3d7f7635c3e6ccff0fb654b4886c08688`  
		Last Modified: Mon, 26 Oct 2026 23:14:13 GMT  
		Size: 92.7 MB (92720705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc05f892eeeecf659598ab2aaf28341c780ee1fe7f7b83fefea8ecd77559c74f`  
		Last Modified: Mon, 26 Oct 2026 23:14:10 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8a36cf988098d1723dbe2f87afdf18c8e361c2fb9c3caf35459c0926ade41f41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3858595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d795eac4d21c57186d57caf0a7d7d05fcb593d8a5fe33617129cadd937003b82`

```dockerfile
```

-	Layers:
	-	`sha256:3b2146cdc3d3a7e6efd8646e57bf9db9f776e685e144c27addfb45f50b0883e5`  
		Last Modified: Mon, 26 Oct 2026 23:14:11 GMT  
		Size: 3.8 MB (3834918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8b9fc7d2569ed64e271a0caa6188efb4063601a41bf9cebe0e786a137d838bf`  
		Last Modified: Mon, 26 Oct 2026 23:14:10 GMT  
		Size: 23.7 KB (23677 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:370a7dea276a09b9966084f0b42475cd484f80555e99f49005f91695fd7bd0c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.7 MB (136663815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:550a60d732c8edb769b3da28c8a15fa3719359b7c03313cfe5824b63d1796965`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Mon, 26 Oct 2026 23:17:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:17:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:17:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:17:56 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:17:56 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:18:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:18:20 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:18:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:18:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:18:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af15f0776ecb4cfd746e47d663c378e23fe515874138667b55881bdf0a5811f`  
		Last Modified: Mon, 26 Oct 2026 23:18:36 GMT  
		Size: 17.4 MB (17354552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bf2ccf154179e1ffede77602c6c70c781107895d0676a90ef3c92572de5712`  
		Last Modified: Mon, 26 Oct 2026 23:18:38 GMT  
		Size: 91.6 MB (91622160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3517f83cfa1c447d8c0a1e89d4a6a1a733e2c3c7903fdb4c3eba32e94995d50`  
		Last Modified: Mon, 26 Oct 2026 23:18:35 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:516b289a25382f71895f9328e0d73e226c315bd8afd8b5722f03d0a0dc0a1935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3954169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94c8a5e674251ae7103a353ff242254bf0a4022fcf2df83d4fb538ac677fd73`

```dockerfile
```

-	Layers:
	-	`sha256:b6aa7740e5882390c61f7a03b6ddbbfe00d00aabd001524886e2c3d094914a84`  
		Last Modified: Mon, 26 Oct 2026 23:18:36 GMT  
		Size: 3.9 MB (3930370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05326b6e0119c0286ee5ffce23653c9df357e1f3b7dcc8f9fe2cbfaea2706e6d`  
		Last Modified: Mon, 26 Oct 2026 23:18:35 GMT  
		Size: 23.8 KB (23799 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:62cb1337843c24b7d9e9ff1102142dbe4ed6e3ccac2693aee6f6f77bc4c8b341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142890951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9bdb59b9c7562f8be8d81cfa579b55dc857dc496b28dc493910b389adbcdca`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Sat, 17 Oct 2026 00:40:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:40:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:40:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:40:16 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:16 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Sat, 17 Oct 2026 00:40:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:40:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:41:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:41:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 00:41:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:165e9e87248832ddbd55d95b5630fee55feb1e5fc0be0288a115f5d5dc87232a`  
		Last Modified: Sat, 17 Oct 2026 00:41:50 GMT  
		Size: 16.8 MB (16823101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:506b0dfc066b5e961c9c4b3e2259d6d1f5922b8568231e4b941928089c2287cc`  
		Last Modified: Sat, 17 Oct 2026 00:41:52 GMT  
		Size: 91.4 MB (91361716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495b062a759d852f0332cb57d9af3ea6370567ae7706871c881f981787d7b572`  
		Last Modified: Sat, 17 Oct 2026 00:41:49 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:553ee49705a063eb2cf71afad2aef1153ee63685d2254753481c7d6d0c61bb63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3870004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf723b2bfcc6d4c1d36c99b3138e2b46e86d3f1ab5adc047317f19d6896c24aa`

```dockerfile
```

-	Layers:
	-	`sha256:08b8ee21dd88c4f7dd1bd06e279984b08eb4e9131fd2f1fe2a03753466d745d8`  
		Last Modified: Sat, 17 Oct 2026 00:41:49 GMT  
		Size: 3.8 MB (3846285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7b5b4c70802776a832365644acf2595644ec7ef0b5f89d7ecc7355400019302`  
		Last Modified: Sat, 17 Oct 2026 00:41:49 GMT  
		Size: 23.7 KB (23719 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:dddc90977106bfe8735965ebeafd7f3ce8f8e45293cfd2835b1c6edcc5b4a73b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132487255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4095e6f224198b1c8ca8f4705444394bf0644291a1552fb9e148b8e7dced9cff`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Mon, 26 Oct 2026 23:42:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:42:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:42:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:42:24 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:24 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:42:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:42:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:42:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:42:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:42:48 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:730f08d2187114bd34aafac7fb40f94de8669bc91a6cd92c597ebb3771986ec9`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 15.7 MB (15734277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3c6922d66650587bb5e3d2586496d13a550d93a7f88dc69b64f2035f54e4b0`  
		Last Modified: Mon, 26 Oct 2026 23:43:18 GMT  
		Size: 88.5 MB (88527677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed99d0ceb73f516cefdc45b43097c7d7ed6ab27a050e1983fa1b64a98cdb285b`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1d1512339e1b846a1bcb539de82ead03164d06a77348a76b2ddb275584a30b22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3768168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe8f4fca0cd78d17eb2062e48e89c5808173d6ebc8797016bc4454c7df67abe`

```dockerfile
```

-	Layers:
	-	`sha256:76241f58c1cdd48b7882230aee71ced9598bbcc665f8edb6e63f8da9c750d406`  
		Last Modified: Mon, 26 Oct 2026 23:43:16 GMT  
		Size: 3.7 MB (3744491 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:786787755e9688f2ea3abd302e4c1850568cde0f53fabd56cc46482c61ed5593`  
		Last Modified: Mon, 26 Oct 2026 23:43:15 GMT  
		Size: 23.7 KB (23677 bytes)  
		MIME: application/vnd.in-toto+json
