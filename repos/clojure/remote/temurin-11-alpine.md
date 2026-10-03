## `clojure:temurin-11-alpine`

```console
$ docker pull clojure@sha256:3e8f54b00177e9ad2c49dc11fba654a605e6e0adf2c1d91a82fa203d8de828da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-11-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:3bd82693e1d43c036398fca27b665443298e11141c02edaefea96aa85bcf1064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.8 MB (189813510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d90dd3d3f78ee9942f709371449760ed2426126fb8d76d095e38f628e5f9cd25`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 23:43:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 23:43:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 23:43:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 23:43:03 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 02 Oct 2026 23:43:03 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 02 Oct 2026 23:43:09 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        aarch64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        x86_64)          ESUM='1dc1d3259fa4ca7a2db43c539a60bfa7fc0ea595f445a71ef36d28120f3094aa';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 02 Oct 2026 23:43:10 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 23:43:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:43:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 23:43:10 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 23:52:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 23:52:12 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 23:52:16 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 02 Oct 2026 23:52:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 23:52:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87811e140a763da58013a05b3e9562243d2738e6e1eed87c7ffeb94157b5ee4a`  
		Last Modified: Fri, 02 Oct 2026 23:43:24 GMT  
		Size: 19.4 MB (19442734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f920e811535366201e5a74d5629229a254131fb2757c5383b58344a0727493`  
		Last Modified: Fri, 02 Oct 2026 23:43:27 GMT  
		Size: 141.0 MB (141032581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f584454c38976f38240c62cfd9eceaca1a67b86f14f7f0aae3cd6b09a562248`  
		Last Modified: Fri, 02 Oct 2026 23:43:23 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3324696f699a49e57ea027d76d81abf13cefef1f4c841f3d41d3a6536a75613b`  
		Last Modified: Fri, 02 Oct 2026 23:43:14 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9d12437781126a3fd52b41faad400ca9a9ed4534789047190c1d67ec881e7c`  
		Last Modified: Fri, 02 Oct 2026 23:52:24 GMT  
		Size: 25.5 MB (25485217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ee273e568ea75cae4b92a44faab3ed52ff7ad6d05b5a538deda1b39c422859`  
		Last Modified: Fri, 02 Oct 2026 23:52:23 GMT  
		Size: 618.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:11bb11b81535c19b45397602552786a85647bb95cc801fdd9faca25fc169c9ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1205709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5154eb4d183e85c19199df356d88ac888f4771da055a7d4151b880727ef54f42`

```dockerfile
```

-	Layers:
	-	`sha256:5c1381727855b28abc80617434366f5d0b826b8587a80d0c681d1531d7b93ab2`  
		Last Modified: Fri, 02 Oct 2026 23:52:23 GMT  
		Size: 1.2 MB (1192312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45cf66f9518cc726ea1409dbc8b511396e33bf9d5a3e61b5d6565339de65b75e`  
		Last Modified: Fri, 02 Oct 2026 23:52:23 GMT  
		Size: 13.4 KB (13397 bytes)  
		MIME: application/vnd.in-toto+json
