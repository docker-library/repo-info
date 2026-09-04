## `clojure:temurin-21-tools-deps-jammy`

```console
$ docker pull clojure@sha256:482184ad0170b36b3c87f483db1f4b08a0b377684b87a01a4a2ab75888a06a8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-jammy` - linux; amd64

```console
$ docker pull clojure@sha256:7648d2de4c7fca00fa1a62898239e00a42dd99e07ef6bb58f8d53af269b540a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259192963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b669cecdd6c4072a9bc4132ce316fd5a16b9d2590903ad34f6602b431a14eb7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:25:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:25:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:25:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:05 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:25:05 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:25:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:25:13 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:25:13 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:03:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:15 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:03:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:03:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:03:35 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:03:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62bf7eb3af1c34f0431e38f6be621564cf360a64a0d05d3daf5e7e181186a825`  
		Last Modified: Fri, 21 Aug 2026 18:25:30 GMT  
		Size: 20.7 MB (20660400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c6519ed11b88ca28cb68ae07aa673fb01af545fd67c7f96cb5f099571c8922`  
		Last Modified: Fri, 21 Aug 2026 18:25:33 GMT  
		Size: 158.1 MB (158123219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54313453e26fe16408ced07413ee04245c8999631a312ace61fa327e07422588`  
		Last Modified: Fri, 21 Aug 2026 18:25:29 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6611c962e4e868c8389afb820aefdb6b9762a3732109b8c7bb8f08b38e3689c2`  
		Last Modified: Fri, 21 Aug 2026 18:25:29 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca7bcfdb0737d7f4d480a94c1bd31820cdd1aad41f4f33e0611984466519d43`  
		Last Modified: Fri, 04 Sep 2026 00:03:51 GMT  
		Size: 50.7 MB (50668732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:675b5faf334cc6f2e5ebf8631929a9032b2becb0e9f4452c77b3dd1285f6b050`  
		Last Modified: Fri, 04 Sep 2026 00:03:50 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fb3cbf098f1de7fbfe4fc9b1dcce3a4238688320401c9dfc4362d7539f36be9`  
		Last Modified: Fri, 04 Sep 2026 00:03:50 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:02c620e2f7d105107c7004070689a368c0b0fcfa197f576a211e98e0c72170ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6462121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4f80e867633f32cad8b6b15984f360f5a0dae88cf486bcae17662ec6138076`

```dockerfile
```

-	Layers:
	-	`sha256:9ab70450e60f2947f3ba19a2e7c3aaa1ce9a5570b7bc85fb7b0d9728d36b179d`  
		Last Modified: Fri, 04 Sep 2026 00:03:50 GMT  
		Size: 6.4 MB (6446578 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:144050ccd310ad10b9c3538edf986f4d8747243c98d0ce0e9a268e0ad5c2a668`  
		Last Modified: Fri, 04 Sep 2026 00:03:49 GMT  
		Size: 15.5 KB (15543 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-jammy` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:34fdc2715306b47224f1bf9bb9bf99260df49f07e21191d83267418465b24cc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256694289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0337e103ba8040c0402094ee1051dd6171a1073b2e7c131024760712786c8b2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:27:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:27:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:27:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:27:56 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:27:56 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:28:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:28:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:28:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:28:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:28:05 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:07:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:09 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:07:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:07:37 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:07:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87f4aceb857e60427cf1ba5be43ebf1ba319656d01c07878b88f3c95c0339388`  
		Last Modified: Fri, 21 Aug 2026 18:28:23 GMT  
		Size: 22.1 MB (22068621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71c1b3b6c1e849403a806464595cd8d7b5183785005fb17dc18ad10651ca1d2`  
		Last Modified: Fri, 21 Aug 2026 18:28:26 GMT  
		Size: 156.4 MB (156405769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199ab617198df68be9403a6386af965574bbf32dd92f02445fdf6cafd5f6cb50`  
		Last Modified: Fri, 21 Aug 2026 18:28:22 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b4bf93739159a3ffca13e0302c260b63a881af0977e60cc37a7b402ff19dad`  
		Last Modified: Fri, 21 Aug 2026 18:28:22 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72932c7e42e8543fe69a391e2b352724b97f0d5db3c3d760ca7858c1257d0154`  
		Last Modified: Fri, 04 Sep 2026 00:07:54 GMT  
		Size: 50.6 MB (50595776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c9f8aa9631a00f07fac8dba10ae4b2181771480ce54ddf11a93dbb26252a10`  
		Last Modified: Fri, 04 Sep 2026 00:07:52 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980195622d5922c584f24cea129b65b29bf15edb292348ae262dae0b1c98f7a4`  
		Last Modified: Fri, 04 Sep 2026 00:07:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:ebbe80488fb4246a3b748fc4bbdb1f6342c5d5724b2b656d43e4d93fb84e00c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6563782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50f5e1a75b3d95cb6f8297dd73f0a310a850f966ac64d48e915d9321a0eeb63`

```dockerfile
```

-	Layers:
	-	`sha256:9772eccfff2b0ae4ee9599b029fe235a8fc2269198f44d6af9df2e18aaa7a78d`  
		Last Modified: Fri, 04 Sep 2026 00:07:53 GMT  
		Size: 6.5 MB (6548146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19f927f78dd7ac9e79a4779a0bf4ce25626c73605b2b75d4b13388b09968095c`  
		Last Modified: Fri, 04 Sep 2026 00:07:52 GMT  
		Size: 15.6 KB (15636 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-jammy` - linux; ppc64le

```console
$ docker pull clojure@sha256:a6bb3f2c3ca5bfcfb2e3ff1bec15d666e0f4f1d7b14c175b7c94e9727d09fd89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.4 MB (270356554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53817904f0252c5307deb65d06919d90667db2951cfcb9e0d05eaeee0815c9ef`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 20:35:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 20:35:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 20:35:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 20:35:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 20:35:23 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 20:40:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 20:40:13 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:40:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:40:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:40:14 GMT
CMD ["jshell"]
# Fri, 04 Sep 2026 00:22:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:22:38 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:23:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" # buildkit
# Fri, 04 Sep 2026 00:23:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:23:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:23:30 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:23:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a72918c6826c1f4180ceb22db548cbffe6e24165f6461b730c07d66223b3b3`  
		Last Modified: Fri, 21 Aug 2026 20:36:09 GMT  
		Size: 22.5 MB (22542653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80ae7edad6617d979a65f1d4d485f2a61bfee52350e27028151c1f85f27f579`  
		Last Modified: Fri, 21 Aug 2026 20:40:52 GMT  
		Size: 158.3 MB (158287308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fff3512e9d088d2fadbda2878f4c50190b5b96555ecb5e60c16744e02a7f44fc`  
		Last Modified: Fri, 21 Aug 2026 20:40:48 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c26c82a485019f4bb0c084d7be904fd8a33097920eb69fbe3e5df4ea77243489`  
		Last Modified: Fri, 21 Aug 2026 20:40:48 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c88b1c2d8961cc3d747f7427d257ac41f49224b4c2faa4d57d3a0b1d62a0b8`  
		Last Modified: Fri, 04 Sep 2026 00:24:03 GMT  
		Size: 54.9 MB (54884777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6593021e109307a00fd88eb89a0dc5009a62ad46052ee2367373595468e73aff`  
		Last Modified: Fri, 04 Sep 2026 00:24:02 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de1d6d7877e7d3f90ca2d5fd8449e6fd8b334ce7c531dfab1d4e73d49962360e`  
		Last Modified: Fri, 04 Sep 2026 00:24:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-jammy` - unknown; unknown

```console
$ docker pull clojure@sha256:678a7c86ce40c63dd9b9ff051d56f8f47ec15351dbd1f3c6b637298132066ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6492772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e617207f8db98e1d40add38e618757b35e7a40d5a04bfaec339566a06438674b`

```dockerfile
```

-	Layers:
	-	`sha256:b55f72a35d393baf5c0561a5d8ac9671182f4755dcf06a7f8d6536ae0a51e842`  
		Last Modified: Fri, 04 Sep 2026 00:24:02 GMT  
		Size: 6.5 MB (6477191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92933d1ddf2e278416b7fd388ae6f895621d3eb6b2086f7c83661ed0fc599e1e`  
		Last Modified: Fri, 04 Sep 2026 00:24:02 GMT  
		Size: 15.6 KB (15581 bytes)  
		MIME: application/vnd.in-toto+json
