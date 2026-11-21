## `clojure:temurin-21-alpine`

```console
$ docker pull clojure@sha256:ce70ea93d36cc1800acaf57daca81c2e6011142238c92a3195eee2955e6a9ed5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:2454d7e42f6287ead4e83e06782423e70fd0276d4218a4f327d68506076f2e03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.9 MB (211853032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:517c64a1e4ddbbc239e32ab7eff1665ce26dc5f96d75c9ca09c0b54a6b1bbe84`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:42:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:18 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:42:18 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:20 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8e3ef290b2c182fed0f4318dfb928cde1f5b95bf5c28ff4bb236d38b0b177a74';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='87af8e1557222db2a29c9d055c34a317916b4ddbdb91474d04b35229d337193e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:43:21 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:21 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 18:10:07 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:10:07 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:10:10 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 20 Nov 2026 18:10:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:10:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:10:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:10:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d553e9dc39faa28c406ca51894ba199ff6bb3b22473cd414e47916c577731a6c`  
		Last Modified: Fri, 20 Nov 2026 17:42:41 GMT  
		Size: 23.9 MB (23926088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a195ad86f155892445d5e36c8a99d93847124fca0566c0d9aea75302f83aa7`  
		Last Modified: Fri, 20 Nov 2026 17:43:40 GMT  
		Size: 158.6 MB (158645654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c77954bc52b873dae2ea65818333181fae687b04f4d446d641cce7af9ef1e0`  
		Last Modified: Fri, 20 Nov 2026 17:43:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a2083867428de48fb2704e6f6b06bc45bdf14616ca51f6e4126e97307644e77`  
		Last Modified: Fri, 20 Nov 2026 17:43:36 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168bf64f5a66a1d24b96b90ad5a54c96c92e436da95b2d731ebd6048b990283a`  
		Last Modified: Fri, 20 Nov 2026 18:10:19 GMT  
		Size: 25.4 MB (25423474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab9696f448b616152ef81a38d37b87bb9c62da9b63b25dcc1d587b79fcdf539`  
		Last Modified: Fri, 20 Nov 2026 18:10:19 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417a3f4ca4854685242c7f1318bf099ca4ed3eea67caf8cd3e7c9ee11ea85844`  
		Last Modified: Fri, 20 Nov 2026 18:10:19 GMT  
		Size: 904.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:2abcc28055bab66a0665e429f3d5569ca66f7a49823b8b1ad3e30f58010d1eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1303987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7565092e0e4754e8fa8aa64bd569579941e4e399bc11e118f47acf68600ce89`

```dockerfile
```

-	Layers:
	-	`sha256:40b8c4a3433d684a040918f1c65eaa264d8b2245952689e78e20e12a312c8b35`  
		Last Modified: Fri, 20 Nov 2026 18:10:18 GMT  
		Size: 1.3 MB (1288554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95362ce43f8f4aa5b5bd1bd251a11d27e40ec590d51362e6e275695455d6fac4`  
		Last Modified: Fri, 20 Nov 2026 18:10:18 GMT  
		Size: 15.4 KB (15433 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-alpine` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6c7578d9f91356de0743914d76a6e005852f4a274e1872c81b2e63b27d88a787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.6 MB (210629984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60427de2ac2e36f3a7bd5e1a86d9876d7c908285814cfbe47c084e019a6b02f5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Fri, 20 Nov 2026 17:43:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:01 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 20 Nov 2026 17:43:01 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:43:08 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          ESUM='8e3ef290b2c182fed0f4318dfb928cde1f5b95bf5c28ff4bb236d38b0b177a74';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_aarch64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        x86_64)          ESUM='87af8e1557222db2a29c9d055c34a317916b4ddbdb91474d04b35229d337193e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jdk_x64_alpine-linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:43:09 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:43:10 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 17:57:44 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:57:44 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:57:50 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 20 Nov 2026 17:57:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:57:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:57:50 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:57:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ebb5a27895d819fb8c7048738783579533b007cc3067cdea131668223169365`  
		Last Modified: Fri, 20 Nov 2026 17:43:27 GMT  
		Size: 24.2 MB (24199441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a0fd394024968ba5926b9c8565c02e838a31e6447eb81df4e968cd1f1a8ece`  
		Last Modified: Fri, 20 Nov 2026 17:43:29 GMT  
		Size: 156.7 MB (156670199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea763b6fa0abdb237527a5910a3026790f7b2de1c544f3422c8aa36fa4273869`  
		Last Modified: Fri, 20 Nov 2026 17:43:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6dc83df0e0b58abcfbf77f7fea2cf2c49510f03add0e719cec049c2175a1ea`  
		Last Modified: Fri, 20 Nov 2026 17:43:26 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7beb9e4eeaf55d329e7624497f9f831807793007ad2adf2b5ed7d651588706f1`  
		Last Modified: Fri, 20 Nov 2026 17:58:00 GMT  
		Size: 25.6 MB (25565608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62c1ebddebe90d62e6ba187606a85879d5f732ee8e66c174aea84d5395ad4c0`  
		Last Modified: Fri, 20 Nov 2026 17:57:59 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f883b31d9f8bb14d8ca51e318556ddd14f2f38469b064c1cf66288e7f4e033`  
		Last Modified: Fri, 20 Nov 2026 17:57:59 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:7ead90a8119ded5e0ab8764d9e8ff1e72538314cb09b8689bd11f2f020663b46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.5 MB (1453431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7e747b68f4a07d26dc612a2f362e908936e7af91afd7362effb4f2540b3aa19`

```dockerfile
```

-	Layers:
	-	`sha256:943959fe097e03bf5e6056beb3115f689e1d57672b4ddde187c4d4e20b1c6cac`  
		Last Modified: Fri, 20 Nov 2026 17:57:59 GMT  
		Size: 1.4 MB (1437906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32e4f6a6184cbf863d64e43d491e91c71645490132f92229e641052f31c65ae4`  
		Last Modified: Fri, 20 Nov 2026 17:57:59 GMT  
		Size: 15.5 KB (15525 bytes)  
		MIME: application/vnd.in-toto+json
