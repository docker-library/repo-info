## `clojure:temurin-25-lein-alpine`

```console
$ docker pull clojure@sha256:fe17400e71057dbac34f1f50fd7652d029def4b5deecf4f946e652dc112e302d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:b28fbb172c493f78e6a65a7e637b4a7f92d564c3fb85b36a59c2226492eebc22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.4 MB (135409330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00c40dbf0fd41142faae52a8b75695bd8cdc8f18f64869acc47b8ef9464bf2a7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:39:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:39:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:39:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:39:52 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:39:52 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:39:58 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0501ef55ea9ec19b14987def7a73e044cd1748f7f3b97237b49007d387a84a1a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='dbd75c6332ad995d20b6e25624b84652ef332d6babee4e9ddac3f36ee38d57be';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:39:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:39:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:39:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:39:59 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 17:45:14 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 17:45:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 17:45:14 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:45:51 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 20 Nov 2026 17:45:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 17:45:51 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 17:45:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 17:45:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:45:52 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:45:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30918d682cf0c10504ef0f5606c9b1b42d83c0405c5a28904592b4d09b7dfdfd`  
		Last Modified: Fri, 20 Nov 2026 17:40:14 GMT  
		Size: 16.8 MB (16849365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb679e69b68daea08e52fdb38a131144a2baf615a75287e4d992189d3139170`  
		Last Modified: Fri, 20 Nov 2026 17:40:16 GMT  
		Size: 91.7 MB (91681090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f577ef1593f1935f76416e7596f00093b7c2172d424a7d684346585989387ff3`  
		Last Modified: Fri, 20 Nov 2026 17:40:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04a540de790f34940a32c248ce1094ce407a54943df8a8aad72e787b2e62057`  
		Last Modified: Fri, 20 Nov 2026 17:40:13 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64157a3e2c061d9499c90ab8f7d03be0891f26d9960704e4c6ead9a193a4af1a`  
		Last Modified: Fri, 20 Nov 2026 17:45:59 GMT  
		Size: 18.5 MB (18506487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f52eec669f368edb82047aeb0b00a3cd714297b403c97a85cb466389d54936e`  
		Last Modified: Fri, 20 Nov 2026 17:45:59 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:135a3dafea94b4f2e213a15be809b0a40034da952e4b8dd8f14dda07482784b0`  
		Last Modified: Fri, 20 Nov 2026 17:45:59 GMT  
		Size: 907.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:5ec7d75bd9559387a13627dfedcc76570f0fd88a2606621dba074f378d03941f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 MB (1049343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbf2397afbc7b81d7e98be44cbcbd4b6f107df6840dc72c63675efd88afa6ae6`

```dockerfile
```

-	Layers:
	-	`sha256:2534deea2d22e814f86362dc080cd1db97017871df26aa88b58fa2983a6f9741`  
		Last Modified: Fri, 20 Nov 2026 17:45:59 GMT  
		Size: 1.0 MB (1031949 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:468ff3ca1b238b90145ebb0caed425436bb1d2d2cbffbbb424c8b45816e08522`  
		Last Modified: Fri, 20 Nov 2026 17:45:59 GMT  
		Size: 17.4 KB (17394 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ba95337d842e1452bb07e408a85e59d84f04098dbf7315a74803ff4432cb2832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.1 MB (135066441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468646118e352b033823fc98798f1a8e7addac644345cdc08d28c4acabda4344`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:39:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:39:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:39:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:39:54 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:39:54 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:40:01 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='0501ef55ea9ec19b14987def7a73e044cd1748f7f3b97237b49007d387a84a1a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_aarch64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        x86_64)          ESUM='dbd75c6332ad995d20b6e25624b84652ef332d6babee4e9ddac3f36ee38d57be';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jdk_x64_alpine-linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     apk add --no-cache --virtual .fetch-deps gnupg;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apk del --no-network .fetch-deps; # buildkit
# Fri, 20 Nov 2026 17:40:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:40:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:40:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:40:02 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 17:45:45 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 17:45:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 17:45:45 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:46:26 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 20 Nov 2026 17:46:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 17:46:26 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 17:46:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 17:46:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:46:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:46:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487a64cbb3fbfe7cba72e5ed235a24dbaaec5e13814e4c8f4cefb12810568180`  
		Last Modified: Fri, 20 Nov 2026 17:40:18 GMT  
		Size: 17.2 MB (17204343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc4ccb772395b1288f8493668870b37b7fcf6f51768ce8f476628696a4f7799`  
		Last Modified: Fri, 20 Nov 2026 17:40:19 GMT  
		Size: 90.6 MB (90573341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12413d418d48fb1f36d40adf9960a08a6433553870d93a7c0fa4761640e77191`  
		Last Modified: Fri, 20 Nov 2026 17:40:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3e8556fe1865e4a299e4b903c8f3f15d32531fd8224cfc9f7843adbed97406`  
		Last Modified: Fri, 20 Nov 2026 17:40:17 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a894a3b6dc66b48e87cf028fcded83e3145af83be608a80d6951a5d40ccdff4`  
		Last Modified: Fri, 20 Nov 2026 17:46:35 GMT  
		Size: 18.6 MB (18579426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee145f431dc36b03a70de104e9ac3d17219f4aff262330b4fc333e4738cefe3f`  
		Last Modified: Fri, 20 Nov 2026 17:46:35 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e209bb5345c85f94797385b35c1daedc1202d66e55e850d0e8080c46c4cd52`  
		Last Modified: Fri, 20 Nov 2026 17:46:35 GMT  
		Size: 906.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:c526c456113af7165f611385ed298652fd6a2a040d0aee9673f268d4adbd570d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1198775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f162d589081ca180022605ae697c74a9895a8b24859f91193c965e942ea58149`

```dockerfile
```

-	Layers:
	-	`sha256:456827f599c6f4c85d24c4df0e82bc5bff9dd7e2fd56f2c647ae495327fb51e7`  
		Last Modified: Fri, 20 Nov 2026 17:46:35 GMT  
		Size: 1.2 MB (1181286 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c0a9797788eec336cfd33b675fbc33cc4a9858faf85c0b207a6068697ebdb08`  
		Last Modified: Fri, 20 Nov 2026 17:46:35 GMT  
		Size: 17.5 KB (17489 bytes)  
		MIME: application/vnd.in-toto+json
