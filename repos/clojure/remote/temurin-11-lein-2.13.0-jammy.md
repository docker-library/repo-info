## `clojure:temurin-11-lein-2.13.0-jammy`

```console
$ docker pull clojure@sha256:8c7a109b9dff51251701edab014b588953783f6de2b6bfe4cf84c0c7b9b7d407
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

### `clojure:temurin-11-lein-2.13.0-jammy` - linux; amd64

```console
$ docker pull clojure@sha256:d82297eb5dd89915ad4b71f37def020f16399d9f4778bf4e3a4e85fa9e8404fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.1 MB (211126788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2279adc55d73f79a4700a0ea969fc106a21eb03c4f0d3807733089e271a13d57`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["lein","repl"]`

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
# Tue, 04 Aug 2026 01:26:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:26:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:26:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:26:52 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:26:52 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 04 Aug 2026 01:26:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        arm64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        armhf)          ESUM='3e0ff500a650a552adb2478895ba5de2b133da9b4b816fa76095969b4eec61ce';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_arm_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64el)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:26:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:26:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:26:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 01:26:59 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 02:47:17 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:47:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:17 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:48:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:48:20 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:48:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:48:21 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc3036146401a89f1e389f07ae602568daaa2867a17fe90941c2f27919f600a`  
		Last Modified: Tue, 04 Aug 2026 01:27:16 GMT  
		Size: 16.1 MB (16108668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce49c7175a51e6d34f2bb0e9d4d60efde19321e566ecb9da1d8d2e8bd10a38d6`  
		Last Modified: Tue, 04 Aug 2026 01:27:19 GMT  
		Size: 145.9 MB (145895233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a08705956e7bdd0cdbc608c3eee5eaf5a35dce9065b687f5a3cd26ecf8019c2c`  
		Last Modified: Tue, 04 Aug 2026 01:27:15 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff1394bcd1f7a325c089f17d68bb2f7c1ade0e33878679cafeaab251bff407f`  
		Last Modified: Tue, 04 Aug 2026 01:27:15 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa2d1acc291022a7a4a2f9507d303074f205da94d2aeead1a75f2889bb0a01ac`  
		Last Modified: Tue, 04 Aug 2026 02:48:32 GMT  
		Size: 14.9 MB (14868724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f1e3b34b5342242a419cb2cd033023f44eb7bbf1a1dddaf09feeb56c7b9084`  
		Last Modified: Tue, 04 Aug 2026 02:48:32 GMT  
		Size: 4.5 MB (4515173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:d6a135eeee237eb89c354280181ad253cf4c41f67454424bdda806f766b1fafc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3919767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28b7eb2816fdecf9444096290bdffc2b373ba3dc8693292f10c86aef675a262`

```dockerfile
```

-	Layers:
	-	`sha256:583efac4f91d5217747ee372d874bd7e78d41da829cd1bf2eddb9e53668844c6`  
		Last Modified: Tue, 04 Aug 2026 02:48:32 GMT  
		Size: 3.9 MB (3904639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfd8e5b5303731d921fec1a0a0f01239e716492d5df23d8e1ed6389f54e28d6e`  
		Last Modified: Tue, 04 Aug 2026 02:48:31 GMT  
		Size: 15.1 KB (15128 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-jammy` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fc2b90224875614db4d1ca9071617412652ea43d4f60e543d317b7e2b31c1289
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.6 MB (205622976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fde2b87f3936b5ad09e09257c77ddf46abaf74475ee0180b8e788ae9e30d066`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["lein","repl"]`

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
# Tue, 04 Aug 2026 01:26:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:26:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:26:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:26:25 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:26:25 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 04 Aug 2026 01:26:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        arm64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        armhf)          ESUM='3e0ff500a650a552adb2478895ba5de2b133da9b4b816fa76095969b4eec61ce';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_arm_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64el)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:26:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:26:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:26:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 01:26:57 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 02:47:30 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:47:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:30 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:48:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:48:39 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:48:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:48:40 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:e737c5ed04040f2f0a2a5834e272c5fa0ab6a31a0641be05eb1669153c7c4cfc`  
		Last Modified: Fri, 31 Jul 2026 22:53:57 GMT  
		Size: 27.6 MB (27620032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd3e2e82e1c6b2bbdfcffcde57d0d1662c6a49710bdac7b19b88a6742e3167b`  
		Last Modified: Tue, 04 Aug 2026 01:26:42 GMT  
		Size: 16.0 MB (16039273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb897d648b222be243d11f6eb4a93b0bec9ebf800c8992e107f18f850b87414`  
		Last Modified: Tue, 04 Aug 2026 01:27:16 GMT  
		Size: 142.6 MB (142588946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ef47dd8f2213d8c76f599308145e81f067a06a681f07f672c3e847a835cfc2`  
		Last Modified: Tue, 04 Aug 2026 01:27:12 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a7ac389e20203ad8a8868c5d3d38d8b61e4d03b5fc0791f99b5244e423ae59`  
		Last Modified: Tue, 04 Aug 2026 01:27:12 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:787480271c373743186c4446fc16a2f8f3ded48a2ddd8f25aee0b1b52efb8f21`  
		Last Modified: Tue, 04 Aug 2026 02:48:51 GMT  
		Size: 14.9 MB (14857068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ac49cd49858550be1c770d231d8f2b16a8cc9a4a580007e273b3084ae7efc7`  
		Last Modified: Tue, 04 Aug 2026 02:48:50 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:5f9f5788efa36cc155ebe9760e039168d8b7fe6ae301d4ced3618ef59a7a3bbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3920130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ced232195273d7a7df530232af6e0fc6505b0ced1d94f6ce6f142d3428bd9ce`

```dockerfile
```

-	Layers:
	-	`sha256:75537018fcc0279231cf9157db6b413d0e4796764c160755e55795531746eb29`  
		Last Modified: Tue, 04 Aug 2026 02:48:50 GMT  
		Size: 3.9 MB (3904907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6735d5fd51eca76d817641cb5c20b7f938788f40257ff8fc0f38d603f7886837`  
		Last Modified: Tue, 04 Aug 2026 02:48:50 GMT  
		Size: 15.2 KB (15223 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-jammy` - linux; ppc64le

```console
$ docker pull clojure@sha256:733ec2c1006ae3938d56f6adb086ba4e9c484c541a1d5e2f362d9827d906e80d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.8 MB (204757462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f624f75d083c54993ada7cc60767cf62e24717f94b4c57310412dccd119f52e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["lein","repl"]`

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
# Tue, 04 Aug 2026 01:14:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:14:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:14:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:14:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:14:48 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 04 Aug 2026 01:17:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        arm64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        armhf)          ESUM='3e0ff500a650a552adb2478895ba5de2b133da9b4b816fa76095969b4eec61ce';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_arm_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64el)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:17:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:17:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:17:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 01:17:33 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 04:54:49 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 04:54:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 04:54:49 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 04:57:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 04:57:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 04:57:42 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 04:57:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 04:57:45 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c5a6f18201c8b0833c4c17e45da59be12a88489dbdf1c5cf8c6baa008a72d2`  
		Last Modified: Tue, 04 Aug 2026 01:15:18 GMT  
		Size: 17.6 MB (17581531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b880c42b3d61a43da9870a3065d0fccf899edc9d5d6da0f595c822521b728ec`  
		Last Modified: Tue, 04 Aug 2026 01:18:11 GMT  
		Size: 133.1 MB (133123297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02fedb14e1c6518054a3d1c018a689ad0959c0d01ab054167b1c87a95d96f14a`  
		Last Modified: Tue, 04 Aug 2026 01:18:07 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73bc6f26cd3a83750f23033e2553462c76e0c3fed4b69128ea1dd9cdc93d9cb3`  
		Last Modified: Tue, 04 Aug 2026 01:18:08 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3921e36258d96896ffe1e19ed016aad4a308d710efd504db7d890138a66d0a1`  
		Last Modified: Tue, 04 Aug 2026 04:58:08 GMT  
		Size: 14.9 MB (14897268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe387096e2a1ec19cf5843206c3e9d630847f18606949054ba6a5f676715e366`  
		Last Modified: Tue, 04 Aug 2026 04:58:08 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:7a91631f8bb7297e65bc8b0769636e67b41f5835994a5200a35c16f111190610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3921289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2cb7c0245c5a69d6083b6d5c0984f9b2b694184377d48d18efb30fcd4d9603a`

```dockerfile
```

-	Layers:
	-	`sha256:2d249c82831f7f4abf6489bec5b5a17121c05f9c7d59ad6fe30a9987a6e36766`  
		Last Modified: Tue, 04 Aug 2026 04:58:08 GMT  
		Size: 3.9 MB (3906128 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a0372af560229e4d19782e1105c2303075855a51758ab8757c43d8d1723c31d`  
		Last Modified: Tue, 04 Aug 2026 04:58:07 GMT  
		Size: 15.2 KB (15161 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-jammy` - linux; s390x

```console
$ docker pull clojure@sha256:663d20d203734fe9f5e908e7ca32225692dd04cdc81f4a50bb8e819593818073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190355526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4866ce8e392a5af91d5830b88e8fd975cf4dccc784e6d8c55bbe4e26d6a891`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["lein","repl"]`

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
# Tue, 04 Aug 2026 01:12:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:12:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:12:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:12:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:12:09 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 04 Aug 2026 01:12:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        arm64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        armhf)          ESUM='3e0ff500a650a552adb2478895ba5de2b133da9b4b816fa76095969b4eec61ce';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_arm_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64el)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:12:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:12:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:12:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 01:12:15 GMT
CMD ["jshell"]
# Tue, 04 Aug 2026 02:48:18 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:48:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:48:18 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:38 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:49:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:49:38 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:49:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:49:40 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:0c891f1f0f7387672dc5f23b57a662b266f4decb4523b0b77d0abc0b1e165161`  
		Last Modified: Fri, 31 Jul 2026 22:54:24 GMT  
		Size: 28.2 MB (28210302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cffd0dc8e8feeaed1b772db363bfbfb748f694686f00a837edcdceaeaad5bb`  
		Last Modified: Tue, 04 Aug 2026 01:12:39 GMT  
		Size: 16.1 MB (16103288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1cebcb1bc1fd8cc877f9208d11a317468995d053d72f7f5e8f5898df3cb415`  
		Last Modified: Tue, 04 Aug 2026 01:12:41 GMT  
		Size: 126.7 MB (126662599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca9a8f42ddd231564ce1ae6c243f26b82682ac2cf576b3c178b90dd3571a6a4`  
		Last Modified: Tue, 04 Aug 2026 01:12:39 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2afbdb1f4a52764d6a8c39140b255976c2c49569daaacc1dae815468bb7d1a1d`  
		Last Modified: Tue, 04 Aug 2026 01:12:39 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e498771fd823894cf0cb130c7d548c66d60dcdea0d17f1f75d114b29e8ffc158`  
		Last Modified: Tue, 04 Aug 2026 02:49:53 GMT  
		Size: 14.9 MB (14861651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c98392698c1b878b9a022a105470f23c946b6e46482a627f8e76bb3c7bfab11`  
		Last Modified: Tue, 04 Aug 2026 02:49:53 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:be7735566649f95991dba99ee6b33d20d24acce01e4c03bdaa88b4b69958a0bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3916969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40a2bc189f6cff5461b6f0c95df20946636595a8508abaa35b69a14c75f7a6b2`

```dockerfile
```

-	Layers:
	-	`sha256:a36d4dfa7f83c1d594babb9dbd613e66c3c7196bcc68c3cf569cc5a9ef8d472a`  
		Last Modified: Tue, 04 Aug 2026 02:49:53 GMT  
		Size: 3.9 MB (3901841 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eb947ede0e36a6d82a83ca48477b7605fb51860e5aebf32d5fdcbaa1726213d`  
		Last Modified: Tue, 04 Aug 2026 02:49:53 GMT  
		Size: 15.1 KB (15128 bytes)  
		MIME: application/vnd.in-toto+json
