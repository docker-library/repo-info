## `clojure:temurin-11-lein`

```console
$ docker pull clojure@sha256:524f5ec9359b14ec27f3d2d0fdb76e52f5e319d788d5b4d79559cb80ef4183cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein` - linux; amd64

```console
$ docker pull clojure@sha256:5e90586f491e30d7fc15f590646fd3a555aaca78c60a92cc2d388dd26677f2af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.8 MB (211826221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:718f4e93bc35c5b8ce993f3d6eefc9c8e10a80ec0cae1dc2ef88465d29c9f065`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:22:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:22:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:22:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:22:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:22:32 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:22:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='abe56bf1e4aa83a676b1a4b397e80f47ad686eed9aaef3cd007d2212cadc5fb0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:22:58 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:22:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:22:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:22:58 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:10:40 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:10:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:10:40 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:11:41 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:11:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:11:41 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:11:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:11:43 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9d2094b143697d6900985b6c1172677d28fa3f057a6140c54e808a81d3ec95`  
		Last Modified: Fri, 21 Aug 2026 18:22:45 GMT  
		Size: 16.9 MB (16946266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:779912ac3f773a051c3ef2b23ba9661aeadc0543c1882b8abccbb6b392bb09a8`  
		Last Modified: Fri, 21 Aug 2026 18:23:16 GMT  
		Size: 145.9 MB (145862728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9ddf1e01dc9234518a8eaca6dff62108d5ca5f02bcca906595c022032f42a6`  
		Last Modified: Fri, 21 Aug 2026 18:23:12 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c058f339d3415d44ba3e6b4c7441dab8cf55c98b7cad128d91c50797cc22c54a`  
		Last Modified: Fri, 21 Aug 2026 18:23:12 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5e4a7c48ef4293469f137d66a37aa30d26f4efcd5a25b9dfab8c010c580188`  
		Last Modified: Fri, 21 Aug 2026 19:11:54 GMT  
		Size: 14.7 MB (14746553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06fcd67bbd1d56c1349f5c6d4854ad070cef94ce280c005ebff58e3ff7d008fb`  
		Last Modified: Fri, 21 Aug 2026 19:11:53 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:d2f606bafb0985c47de17304c489541cafdcb2dffedb267722d92ad5d05d996a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3372714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d14da27162c7dcc144828711780ff8e3c30e16f801bcfc2deebf3f3e56b4134`

```dockerfile
```

-	Layers:
	-	`sha256:4cb88e16ad0ad5dcb21f908c44beef0f053a2abc6b4ae46241961559506bf2b4`  
		Last Modified: Fri, 21 Aug 2026 19:11:53 GMT  
		Size: 3.4 MB (3356938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f9365285215c6b479139c7bdc465d4bc430eb5f4bbc6251d1dbce48f28360d7`  
		Last Modified: Fri, 21 Aug 2026 19:11:53 GMT  
		Size: 15.8 KB (15776 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9383c700d59b2981245e33ea5ace7cf79ed1def011b6a8cbc9198fe7cbb8672c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.7 MB (207680528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1299fda6f9c3979d84342482e8223dbb2b7bd05cf0ac0fc98670da9654558095`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:26:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:26:22 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:26:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='abe56bf1e4aa83a676b1a4b397e80f47ad686eed9aaef3cd007d2212cadc5fb0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:26:29 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:26:29 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:01:23 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:01:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:01:23 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:02:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:02:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:02:28 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:02:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:02:30 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2918bba2a550a8afb90d38ba85e2803fa5ba5ac86fcbe232e5244aa5c74ed3ea`  
		Last Modified: Fri, 21 Aug 2026 18:26:46 GMT  
		Size: 17.0 MB (16951764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe3891b5e569c6a1fc722bcdb18639c1d40530f198df2d9ac62e4c7d75429ca`  
		Last Modified: Fri, 21 Aug 2026 18:26:49 GMT  
		Size: 142.6 MB (142575704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f5cbb9d56cb5a562327893ff8eb70826ccfa8033ffc868a0e6ac7b8dfaf7a2c`  
		Last Modified: Fri, 21 Aug 2026 18:26:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7e089ca72e5f28fd6ce7c37167adc1aa080769780544c1461ebbddc1c59a97`  
		Last Modified: Fri, 21 Aug 2026 18:26:45 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62bd9c8725d1475322b2cb1a5f00352aca0458f95e8079acd77522bd8e2d644`  
		Last Modified: Fri, 21 Aug 2026 19:02:40 GMT  
		Size: 14.7 MB (14747993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7dee6226e5337bf6412f687eeebdfd43d6bf3c0470451f9434ad58d0db0288`  
		Last Modified: Fri, 21 Aug 2026 19:02:40 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:7789ab89229d189c8494cb53f76bcae81fe0790f932c3fed0205f2b735dedb80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3373918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:203bc8a2050de16c389e81fb6ef0e5d43471a87d89b4bd98517b8308990c38e5`

```dockerfile
```

-	Layers:
	-	`sha256:f0f29e58ad65e4c561a03173c49a4dba2dd01fcb9d822bff1313dfda27f86e79`  
		Last Modified: Fri, 21 Aug 2026 19:02:40 GMT  
		Size: 3.4 MB (3358023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75f71173f5cddc4edb11de947f8347b21d26d9a656bc30b97ea95ac036f9481f`  
		Last Modified: Fri, 21 Aug 2026 19:02:40 GMT  
		Size: 15.9 KB (15895 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:209b5b137efaba2946284bd3c4f10f33070d43f946317fef5a910ee0838afc45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.5 MB (205491546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e89c1dae25eca2c14586e03ebe9ff9b82f19dbb79a4620f9ebd68e0eba823a14`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 21:04:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 21:04:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 21:04:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 21:04:45 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 21:04:45 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 20:29:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5906e0339e9322a688b2375eaf40666e00a16e008b0067b0a9f9e4b6c5033720';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_linux_hotspot_11.0.32_9.tar.gz';          ;;        arm64)          ESUM='66a7d4af3572d920b0f1b01710ffa79888d4ddd1b784632e33a3d711aa7d1e63';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.32_9.tar.gz';          ;;        armhf)          ESUM='abe56bf1e4aa83a676b1a4b397e80f47ad686eed9aaef3cd007d2212cadc5fb0';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_arm_linux_hotspot_11.0.32_9.tar.gz';          ;;        ppc64el)          ESUM='e662ceae8e93c1754f31f444a2fc7089add9a77b62d8aea29af50409ca111cec';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.32_9.tar.gz';          ;;        s390x)          ESUM='9efb3c1430d363f7ba5b4262aa427ca30a5f466cd8107352223308fc73d1b0a3';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 20:29:12 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:29:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:29:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:29:13 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 21:33:40 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 21:33:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 21:33:40 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:36:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 21:36:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 21:36:13 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 21:36:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 21:36:16 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c0227d1187b375d88601e313d4014f4e494629dfe78be3f24fd0cd219d7619`  
		Last Modified: Wed, 19 Aug 2026 21:05:13 GMT  
		Size: 18.8 MB (18764596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3275e9eac2b6a7160725973882fdf4cc8790df98d3e8b8c24c65528c66e8d63e`  
		Last Modified: Fri, 21 Aug 2026 20:29:48 GMT  
		Size: 133.1 MB (133105433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a51ece8ac67103a3865c9ae71758d60b098ada24754540bf60b5fe51e1cf0de`  
		Last Modified: Fri, 21 Aug 2026 20:29:45 GMT  
		Size: 162.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05802419635ad6f67e2fde2f863606f9be44e5d18b79030383c11ae117774421`  
		Last Modified: Fri, 21 Aug 2026 20:29:45 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd0665fb8b555452163f53f1a53ae529f2081da7427db51339c41bd6a1a1300`  
		Last Modified: Fri, 21 Aug 2026 21:36:47 GMT  
		Size: 14.8 MB (14792435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be807ddc49068913633210c3bb9af59bc88e46e223b6fe48aacf3dc83610847`  
		Last Modified: Fri, 21 Aug 2026 21:36:47 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:ba18f83e7059e2275dadc326e04a0ed73e35abd4e45f1f4a690e72a9e291a14c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3374262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e81aa17e88c1af939a84c6bd93ab1ada03cbd5a0113f80f16ee50c1a2913507`

```dockerfile
```

-	Layers:
	-	`sha256:937b260b2ba785d21d4a8a9f4eae8c393b29a986b589395ebe4e2fca261c8478`  
		Last Modified: Fri, 21 Aug 2026 21:36:47 GMT  
		Size: 3.4 MB (3358440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0827d28facc2a987968e1d30b4a172070deb0d764c8923c9ad627992780ca88f`  
		Last Modified: Fri, 21 Aug 2026 21:36:47 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json
