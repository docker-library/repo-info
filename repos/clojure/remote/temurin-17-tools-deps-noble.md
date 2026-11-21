## `clojure:temurin-17-tools-deps-noble`

```console
$ docker pull clojure@sha256:c4c24b3155d02fedf17f8cf39406404455ec0b8869a19f9fd6648d30417b93e5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-noble` - linux; amd64

```console
$ docker pull clojure@sha256:1c76682f39e29f898186905a49a481b97adadabc05327ba7f6ac27a4a99ece70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.1 MB (257101340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1056821383939844b1180d09d0ed7cdb800490c9a9c9ea8a5fd62171d8bd8e08`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:42:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:42:42 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:42:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        armhf)          ESUM='f953d9c38eea3906c04e44bc434c34a503275b19be2c2b2a61939522828ba64e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        ppc64el)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:42:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:42:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:42:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:42:49 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 18:08:54 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:08:54 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:09:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 18:09:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:09:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:09:05 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:09:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd0f3c93e1a6d7d3ffc74e89cc1c6da0056baf3a5c1db7787c10875742ae859a`  
		Last Modified: Fri, 20 Nov 2026 17:43:05 GMT  
		Size: 29.1 MB (29055411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44b9b69ea04efa0e3b419fe7fec3f0d37ce85ef6c30fbf93b226c0df5adf48e`  
		Last Modified: Fri, 20 Nov 2026 17:43:07 GMT  
		Size: 146.1 MB (146120465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85bbab1917ca1d4c7aeecb3b23c3e7b640de9ce15c6467c8662abc39c1f45c0`  
		Last Modified: Fri, 20 Nov 2026 17:43:03 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ad711f0c46217a69713184c869a036e7e77f3bdab040ee041d6df87521c74f`  
		Last Modified: Fri, 20 Nov 2026 17:43:04 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:770fda6c939ceb45b095d83d81d1c1b9eed565b6ba50dbe14a22819afc59dad6`  
		Last Modified: Fri, 20 Nov 2026 18:09:21 GMT  
		Size: 52.1 MB (52127997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993de9757b0cfc2e31b88ecb058b44c29228e96e5917174f4822ce8637de0bcf`  
		Last Modified: Fri, 20 Nov 2026 18:09:19 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21df7b4fd9439cf0eb95a25acb6975d03806e10c9b62603a26ac5bc0ae73215`  
		Last Modified: Fri, 20 Nov 2026 18:09:20 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:8aaf5ec05c00ccb525cfb3bc309f2dc4484478426df10d8792f8cc21672e3443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5905597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b347677d7139dbec835d570a959336d0ee7d40c50519e9dc984de0f65a66bff`

```dockerfile
```

-	Layers:
	-	`sha256:2fdaaad07a9fa0ed0551c3967205d55cbcbd6e659926355aec8590a0ea8f251f`  
		Last Modified: Fri, 20 Nov 2026 18:09:20 GMT  
		Size: 5.9 MB (5889367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d0dea65fa0e03890d882a81fb158470c204b191bea1e12c5884df6dedf5850a`  
		Last Modified: Fri, 20 Nov 2026 18:09:19 GMT  
		Size: 16.2 KB (16230 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-noble` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:011b4b436485d05bafc5d3b9ae29e35798b379af23dd665b799ece9e047dfa29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (256034424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6171694b12dabbe7d85167f707084ae76f8e5a5183d3fc86aaf272c1cad93a2a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
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
# Fri, 20 Nov 2026 03:16:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='7f7aa599ab9d0a594c70e82c7c67fc97b6eb28750d0843a4db8e6fa41252fbe5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        riscv64)          ESUM='5c74fd8f5440098c8f44e54cad428b3915ffd3f2d1ec7967ac78bc6411c4380b';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_riscv64_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:16:58 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:16:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:16:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 03:16:58 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 04:40:33 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 04:40:33 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 04:40:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 04:40:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 04:40:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 04:40:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 04:40:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9584c16fe03285eccf040c21f71a4afa3802b441fac2f53553fe6a869016978f`  
		Last Modified: Fri, 20 Nov 2026 03:17:15 GMT  
		Size: 30.0 MB (30024294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1f54d04f7814ce8974a6633dde1b7f3e0b43624b9134250452be3afe36c6fc`  
		Last Modified: Fri, 20 Nov 2026 03:17:18 GMT  
		Size: 145.0 MB (144967957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff87ffc0f513547523372db658e013f44415273821df2b01737433a247b1e7b5`  
		Last Modified: Fri, 20 Nov 2026 03:17:14 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5292be851f295f5092cbbf59f9b7015137cd8e9f6f7e4a0dd7498c279c002be4`  
		Last Modified: Fri, 20 Nov 2026 03:17:03 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:724fec876d8a9e5bfca254a59904b5156debf92856ebe50a14a54b56cdb2e151`  
		Last Modified: Fri, 20 Nov 2026 04:41:00 GMT  
		Size: 52.1 MB (52072688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e877284556fa4cad863c1af8a35a0da5d8d7aec38c36c38bd149f87b9585d8eb`  
		Last Modified: Fri, 20 Nov 2026 04:40:59 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38aafcbc4a333510845cae6e8fbac4e282c6a5121dd2a9166894002c4b43a60`  
		Last Modified: Fri, 20 Nov 2026 04:40:59 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:d31d21fc8f62ebe90fbf6a61a1465a79e33a6d2b7740816a617254b65559743c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (6043341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1f498c3dad5995da911842d3d4b19d1370b59d0e8525dba784ed2af35b83745`

```dockerfile
```

-	Layers:
	-	`sha256:1c699d90ecbcff3452debc4f801e9e922c5d9eadff53ef7ea5daffd147f902d0`  
		Last Modified: Fri, 20 Nov 2026 04:40:59 GMT  
		Size: 6.0 MB (6026997 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e66b0de24553bf72d115f9172915d12f60cbf1e4e753fb43a598a1d31e4a6863`  
		Last Modified: Fri, 20 Nov 2026 04:40:59 GMT  
		Size: 16.3 KB (16344 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-noble` - linux; ppc64le

```console
$ docker pull clojure@sha256:f68285c598951bf46562be6444568067bb291afb902202db62ae26387840cf21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266999977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd9aa7966a216f85155558636774605dc037c0eb6f45516157593c83509127f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:25:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:25:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:25:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:25:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:25:35 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:46:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b0ac5eab6db6abaec68c9913bcddb31321e5da411c45073d520d9c125e6f7b4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        armhf)          ESUM='f953d9c38eea3906c04e44bc434c34a503275b19be2c2b2a61939522828ba64e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_arm_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        ppc64el)          ESUM='63cc39d8a774a913126117b78ae937e14be148784d48ee374e73b9ae100f2226';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='5eb485f9c907d87aab0523cf8c08a68648ebafe102d0076fed87ce5cf95ee1e2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:46:14 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:46:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:46:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:46:15 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 19:18:08 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:18:08 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:26:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 20 Nov 2026 19:26:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:26:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:26:50 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:26:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5e05b6669dd60f963df995e3dc76ab61a0333c611daedbab6ff1f1498363ed`  
		Last Modified: Fri, 20 Nov 2026 03:26:39 GMT  
		Size: 30.9 MB (30944154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18366441f91bd13905131c7766a1dc0617d78dcfcd30145c123069675b3b7bbb`  
		Last Modified: Fri, 20 Nov 2026 17:46:59 GMT  
		Size: 144.9 MB (144900776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6219ecafbe76bbcafde20e4c78e676b3d9b0c00384aa90062eeeea68e23719d3`  
		Last Modified: Fri, 20 Nov 2026 17:46:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407e9148bc46c0bf4e3af64eaa37cc4727880e7f5a69c6cdb36358a51b4706f3`  
		Last Modified: Fri, 20 Nov 2026 17:46:55 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bb4f326925035b22053008bd9f867de5fbd77c6d24cd8e187466bec17efc99`  
		Last Modified: Fri, 20 Nov 2026 19:27:23 GMT  
		Size: 56.7 MB (56744636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a9917af181e2f899a9936e79b349f83f09b703db4287aec4c194d8db8ec6ca`  
		Last Modified: Fri, 20 Nov 2026 19:27:21 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f894d4e678d9b353967c70e723ca11710c84ea3b0e7b3ed9ceab4825aec6d643`  
		Last Modified: Fri, 20 Nov 2026 19:27:22 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-noble` - unknown; unknown

```console
$ docker pull clojure@sha256:4ca0888ebc49948ea24a8a2588dc983c7938c40e527191c20f7b910391c5d21d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.0 MB (5955269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c77c84f647716b4ad69f79f14357183a61a8179ea40f5a0d54798e0ab76e59a7`

```dockerfile
```

-	Layers:
	-	`sha256:95e9ea491320e06245572f298215d7682ab0beec2508d50b5879acb301001455`  
		Last Modified: Fri, 20 Nov 2026 19:27:22 GMT  
		Size: 5.9 MB (5938989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc5994bae6cfbad58dd92327263f1e326f91c205b12f81d5d55ad9e4bfe33d90`  
		Last Modified: Fri, 20 Nov 2026 19:27:21 GMT  
		Size: 16.3 KB (16280 bytes)  
		MIME: application/vnd.in-toto+json
