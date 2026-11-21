## `clojure:temurin-21-lein-jammy`

```console
$ docker pull clojure@sha256:0c89dac072e12570e11bada78847326dd7ff5e60d71f4cf9e121300d99776222
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-jammy` - linux; amd64

```console
$ docker pull clojure@sha256:4ee7e58d2bacb60ca34232238628bfaf9a8eb2b3575def1f0f760c680c748438
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228561373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c18a90ec8288820414a672a814d427198c4714b28d45db699a73c336e5956bb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

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
# Fri, 20 Nov 2026 18:09:27 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:09:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:09:27 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:10:43 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:10:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:10:43 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:10:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:10:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:10:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:10:45 GMT
CMD ["repl"]
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
	-	`sha256:2be2c28bebb1add0829379f1c919031a2fbca38e7eac183b5189013b67bb9992`  
		Last Modified: Fri, 20 Nov 2026 18:10:54 GMT  
		Size: 14.9 MB (14858046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c42c846c0eb5608064f9be4ef9358065190bcd49c6a25d78d4ea829a9ca35c9`  
		Last Modified: Fri, 20 Nov 2026 18:10:54 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cda7ce55661c949948274c6233394525645180f91812de9cfb374acb31051ae`  
		Last Modified: Fri, 20 Nov 2026 18:10:54 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:95dc5665dc9865a76cbc265ab465ffc8d13d4e12a80bf1372b5b11bdc716eab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4064345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cbace23c4d6e697ea367b4eae7bb5666f19b30678c85c69e9d8eab0b8165f0b`

```dockerfile
```

-	Layers:
	-	`sha256:aead464d8ddb2f91d53af23181142f3ff6c283a7afbbd9a364cd886c1cfefc66`  
		Last Modified: Fri, 20 Nov 2026 18:10:54 GMT  
		Size: 4.0 MB (4046751 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c047cfd025714d9559219d773c5feec021ca1b2a6d4b7a8449c8d3bd08b06a57`  
		Last Modified: Fri, 20 Nov 2026 18:10:53 GMT  
		Size: 17.6 KB (17594 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-jammy` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:31bd5f183b59f6d49d1c86d35853fee4f6f9491e3b65c94d3d1dcaeb3777d491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.2 MB (226167649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ea69122e3a73fd561f17e9336e5e447264e89e27bce5fbcbf8f716094a8fc9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

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
# Fri, 20 Nov 2026 04:41:00 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 04:41:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 04:41:00 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 04:42:07 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 04:42:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 04:42:07 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 04:42:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 04:42:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 04:42:09 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 04:42:09 GMT
CMD ["repl"]
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
	-	`sha256:3d6d1d12a8d4476b8cd7fb6cca13cb496c4dcaf5394c40f21ba1588dcbf82b31`  
		Last Modified: Fri, 20 Nov 2026 04:42:19 GMT  
		Size: 14.9 MB (14867459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb932f1f366c8c046f315b2377474b6315f0cc0cf8417248deb6c4c4bd10e3a`  
		Last Modified: Fri, 20 Nov 2026 04:42:19 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd3a6f1cbb0d9523282445f6b38c74961cdcda812e25b2ed045b257b4640b8b`  
		Last Modified: Fri, 20 Nov 2026 04:42:19 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:e82598bb36f98aacdd4bbd02a8bdba6f70609be4d31c2ad62608769814bef968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4159880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fcc11e99434a179170c1ed3a4d6ce97b869b3487c97c441ae1a9d1a025adac1`

```dockerfile
```

-	Layers:
	-	`sha256:45333005a719fd03d5fde12e861bacac127f6d03a7f1b00cb4396a8e156ef97e`  
		Last Modified: Fri, 20 Nov 2026 04:42:19 GMT  
		Size: 4.1 MB (4142195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef7872988fbd5f6ae0888bfae0f4893c3f29acf50bd05781f267b47eea41b144`  
		Last Modified: Fri, 20 Nov 2026 04:42:19 GMT  
		Size: 17.7 KB (17685 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-jammy` - linux; ppc64le

```console
$ docker pull clojure@sha256:67ac48a085987df8d338b81545d1b2a0a6ea6b5a591531546cfe2e910eb529aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.6 MB (234598975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c6d197fe707d817d75e44eaad0fcf5a3dd9b46a6c81abd16cc476af962dcbf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

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
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:33:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:33:19 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:35:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:35:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:35:55 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:35:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:36:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:36:00 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:36:00 GMT
CMD ["repl"]
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
	-	`sha256:62f9c970d0344793b991499f232ea8560c8f385584a20dc5e8ebca8613b41b53`  
		Last Modified: Fri, 20 Nov 2026 19:36:28 GMT  
		Size: 14.9 MB (14899237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17f34a3b8c315d316fc16ba52e84fa7a3ca330eb64d3193a60f405cda8ee4717`  
		Last Modified: Fri, 20 Nov 2026 19:36:27 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528a2b3087e15d63704d4389ff9c6b2f20004beda75540e1091b30ae625bde79`  
		Last Modified: Fri, 20 Nov 2026 19:36:27 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:d77b0c0fd97b38407c3d71529429f69dbebaea2e3b1027885185ab71daedcfc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4090627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6354b7aac8e05cd28cd5e0b7e038ab447619f5d14836f1e2af270ab31778833b`

```dockerfile
```

-	Layers:
	-	`sha256:37194eb588df71a29c0e14c6dbca90b8d68a7be352a9aa59e5cd4f90b8cc3367`  
		Last Modified: Fri, 20 Nov 2026 19:36:27 GMT  
		Size: 4.1 MB (4072999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a5e50c0fc13cbdb8ffaffe091a76f2f86dbde027f040096c205447804545116`  
		Last Modified: Fri, 20 Nov 2026 19:36:27 GMT  
		Size: 17.6 KB (17628 bytes)  
		MIME: application/vnd.in-toto+json
