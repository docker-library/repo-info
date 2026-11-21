## `clojure:temurin-21-tools-deps-1.12.7.1681-jammy`

```console
$ docker pull clojure@sha256:4d6c4b9fd10043df1b17128eb953e4856f11a7fa4c62d4b53cf52d538398fc2f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.7.1681-jammy` - linux; amd64

```console
$ docker pull clojure@sha256:b3f6c672085dca44eb63ce7ec407a948d2c574342b475f244c2a5cc94cf4be6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257069970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51b049b6817d3d630f7afb8b57ee6ab67bdb6abf58744c2dc8fcf807b46c9d84`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Fri, 20 Nov 2026 17:43:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:45 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:43:45 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='bb8a93f9ae6e7a693b2b721e85dbeff26ae1a77447985a8d7afcdd9c7cf6222e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64el)          ESUM='4d3d75690785cf593002446005427bb3c61de163f2469343572cdcb0d258ed62';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='cb4cc8f52538c9a0e2bccdab5ea5e7cb1b14c1731e752f1f764ccc376fcb2225';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:43:53 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:53 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 18:10:25 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:10:25 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:10:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 18:10:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:10:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:10:36 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:10:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668f8279d49ca422aa6a12e8d7bdf5e486dc14bd5afff40e24497201619903d1`  
		Last Modified: Fri, 20 Nov 2026 17:44:10 GMT  
		Size: 20.7 MB (20664534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2945bacad52aeff54058f00e6265b820b7e31c030b51721457bcb053e692775`  
		Last Modified: Fri, 20 Nov 2026 17:44:13 GMT  
		Size: 158.5 MB (158450238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:572115d6c04739ba4631076ba35563d75d016a32c1a6e0ebbb231d99fd174d80`  
		Last Modified: Fri, 20 Nov 2026 17:44:09 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0063936fdf843ba3a1a4b0a9bf09d45f1d9dedbaf5b049208cc1c0aeb9fe0673`  
		Last Modified: Fri, 20 Nov 2026 17:44:09 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91136885a04935f818b230082a15c0a2b0c37aa273716bb094b1c5e8d0aea141`  
		Last Modified: Fri, 20 Nov 2026 18:10:50 GMT  
		Size: 47.9 MB (47881215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c579adfca094c91d2159144da45f79b7f175a9f977a76569e7f774cc4c810a24`  
		Last Modified: Fri, 20 Nov 2026 18:10:48 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2db348cdb0b68e7bebee11d918c9ff2c8395731ea12622016fdf6357549c559`  
		Last Modified: Fri, 20 Nov 2026 18:10:48 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.7.1681-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:223290aa90bcecdea8fa198e8d88ab80dd26d62379b666d1e0db9030d81036d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6462188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a3f6fcfd4173d0c5426bc9bce74976414ac6a21f1b113c8e958625916c8d403`

```dockerfile
```

-	Layers:
	-	`sha256:7b660a70cd2bcb472d2ff137f77a940efb96b786a34803c1c7ad6d3bb9cb0ab3`  
		Last Modified: Fri, 20 Nov 2026 18:10:48 GMT  
		Size: 6.4 MB (6446642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0c29ed8bca0be71aa9ce17a9396a9696730b40299590b0fd06d574c9337034d`  
		Last Modified: Fri, 20 Nov 2026 18:10:48 GMT  
		Size: 15.5 KB (15546 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.7.1681-jammy` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:11d8732e23586d20f8028c88fa8a7e2ae96893426a7f01f17c0f51bb339d618f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.7 MB (254669423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e065c5e6d4b38cf4cab271849e467fbff8f50427ffc772eb848fff7ece340b02`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
# Fri, 20 Nov 2026 03:17:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:17:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:17:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:17:24 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:17:24 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='d7f5d5cf865a2902b70ff549b97586a7d3f234e016f041ab447ea740c7d66d1c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='e3522e707fc7dbe2a72c30746b1e7068301a0213ecd213d4491f35a14eb55578';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='cfaedcc659213833ead9c2a50987d8dcbd0e7a2d82217abb43acb64c0dd3d8cc';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='597271ef81f7e4d0e2b86aa6e4d484af194253bdf238908a8394b78970dff713';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:17:38 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:41:08 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 04:41:08 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 04:41:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 04:41:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 04:41:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 04:41:19 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 04:41:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d5f41944e7c26ff86012725668b1f33bc6142ca773cc733a66b30ec5bbefa9`  
		Last Modified: Fri, 20 Nov 2026 03:17:57 GMT  
		Size: 22.1 MB (22080656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd48ffa453c5f5a82cdcc188709a96da68fa3cdcefe6a519550da643c91067ac`  
		Last Modified: Fri, 20 Nov 2026 03:17:59 GMT  
		Size: 156.7 MB (156699398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb8af90ac559d9065b4f7dfb9fc6940d08c7e8f8b63820f49cf1a27b2dd47f3`  
		Last Modified: Fri, 20 Nov 2026 03:17:56 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff75ba61adaf2a47149bae71a6f622c7f47b647be8843faa1d291bc16736f3d`  
		Last Modified: Fri, 20 Nov 2026 03:17:56 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c78f383b6ef1c8924c811809fe5901a8de71c33d996742ee4b87940e6909c6c`  
		Last Modified: Fri, 20 Nov 2026 04:41:36 GMT  
		Size: 47.9 MB (47883796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63d4b9171e5d2857e5570fe19a726123237a725caa1fadbb3d73dd556142736`  
		Last Modified: Fri, 20 Nov 2026 04:41:34 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600c2f363ff987342a8c5e6723b3632de31f35427b82f454d1403902af508adb`  
		Last Modified: Fri, 20 Nov 2026 04:41:34 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.7.1681-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:1155fb5060efadf0c62b4a616368aea4711a77fb2cf83cdbd8f8e5092b7e5360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6563838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55715b4a481b20a6a27f984465e3590494635a83b983ef85015382e4f5556bc2`

```dockerfile
```

-	Layers:
	-	`sha256:ed83172664a83b261be826a96febdaa4cf9164e46ceca7be9899301250adf96f`  
		Last Modified: Fri, 20 Nov 2026 04:41:35 GMT  
		Size: 6.5 MB (6548202 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:783ef52c6815901a5b9180a7a260b7cdbc1c4042e3065510b304054471da39e9`  
		Last Modified: Fri, 20 Nov 2026 04:41:34 GMT  
		Size: 15.6 KB (15636 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.7.1681-jammy` - linux; ppc64le

```console
$ docker pull clojure@sha256:b9771e4be2e97fa868cc2b2cedb5c113f6d6fd089823c16ba0ddd0054a2af741
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267019780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65a5cb7c2f2941c765e6a8ace793e6e60bfc7d518577d59fcb39833c5e81b87`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

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
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:53:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='bb8a93f9ae6e7a693b2b721e85dbeff26ae1a77447985a8d7afcdd9c7cf6222e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64el)          ESUM='4d3d75690785cf593002446005427bb3c61de163f2469343572cdcb0d258ed62';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='cb4cc8f52538c9a0e2bccdab5ea5e7cb1b14c1731e752f1f764ccc376fcb2225';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:53:28 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:53:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:53:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:53:29 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 19:33:19 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:33:19 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:43:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 19:43:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:43:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:43:20 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:43:20 GMT
CMD ["-M" "--repl"]
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
	-	`sha256:2d652d0d72eda78d11ea0a8192bb99087d246feda79a5ab0ff83b14f1b2b54fa`  
		Last Modified: Fri, 20 Nov 2026 17:54:15 GMT  
		Size: 157.6 MB (157607255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82dfb1dd8f084257bfddc21d8d75eb3210e56adf4c4b42f94308fc5c6582e1d`  
		Last Modified: Fri, 20 Nov 2026 17:54:11 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85d46dbca9e41f38143f49fc9e3dcaa8fc323ef4bd99e819217353fc8e83e5a`  
		Last Modified: Fri, 20 Nov 2026 17:54:12 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b460f3881f6626b664f7316c2ca499c7b7c3c4b8e1b44a525a4ff223066ea746`  
		Last Modified: Fri, 20 Nov 2026 19:44:03 GMT  
		Size: 51.8 MB (51834631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da363cb9e2f3c4982873f2b80446279b4dbe305494ee214af1b78dccb81bf924`  
		Last Modified: Fri, 20 Nov 2026 19:44:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71909c078036713d8499a1a519e15b684fd20c45797b5932345bc4864e7333e`  
		Last Modified: Fri, 20 Nov 2026 19:44:02 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.7.1681-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:bfab3276efd902a863e0071f9471e7ccc2ff0bdc9a6a3258c7d2539842c647a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6491593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbdf2500a7579c0cb147a6ef050c3ddc8f205a899a2c76ef9a659d50368939bc`

```dockerfile
```

-	Layers:
	-	`sha256:7fbe3e7d2b884ac891acc315d994092597de683655fced1b46d723f4df5055d7`  
		Last Modified: Fri, 20 Nov 2026 19:44:02 GMT  
		Size: 6.5 MB (6476009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3428ce82af62395013ce8a6d1d57a0c0e1cfedf98611b81b68bff843bf729c88`  
		Last Modified: Fri, 20 Nov 2026 19:44:01 GMT  
		Size: 15.6 KB (15584 bytes)  
		MIME: application/vnd.in-toto+json
