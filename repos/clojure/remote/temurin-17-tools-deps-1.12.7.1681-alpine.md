## `clojure:temurin-17-tools-deps-1.12.7.1681-alpine`

```console
$ docker pull clojure@sha256:3de144d4daa33d12d5788ebc9c79efaedf383048d0bfd06fa9a755bb5fc351a1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.7.1681-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:68cadd3a7fff4c32bd63e3d5a592f6a3954e166d23463cf9328baaa1839992d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198465813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b290f0f98a5f26fb63533d785ee3758bd7e36bfef195d5f0288eca1a657f791e`
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
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:42:24 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='4ac50955ad93051e45280c4edabae97c7c9ca4e1d2842c4e430e5b7d9960a570';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 20 Nov 2026 17:42:26 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:42:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:42:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:42:26 GMT
CMD ["jshell"]
# Fri, 20 Nov 2026 18:08:15 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 18:08:15 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:08:19 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 20 Nov 2026 18:08:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 18:08:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:08:19 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:08:19 GMT
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
	-	`sha256:80a64586faf2f7b02e98311fa9ad99626b476fe2512f9e4cd3b5cf27af7c8e32`  
		Last Modified: Fri, 20 Nov 2026 17:42:44 GMT  
		Size: 145.3 MB (145258407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce1022f67cd011c4cbb3061bd8266d48f370237a9de02c250e3830d2eec16c5`  
		Last Modified: Fri, 20 Nov 2026 17:42:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1590f96c37e5f6a13b4a8b5f7b3eb26825426c15f95077c29a0f2958c940e8e3`  
		Last Modified: Fri, 20 Nov 2026 17:42:40 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9efba869aa9edf273e550ffdd4e716b1f3a29066ffc3f4ad1caa24ccd8d86c`  
		Last Modified: Fri, 20 Nov 2026 18:08:29 GMT  
		Size: 25.4 MB (25423502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcb7210a149d0edc231916910e942a79222a20f4e9083a93d1aa56afaff6c3e`  
		Last Modified: Fri, 20 Nov 2026 18:08:29 GMT  
		Size: 620.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182e41b21a006ae0c1596d9f9ed367452bdbb7c8782efeaf2735b52481e14e51`  
		Last Modified: Fri, 20 Nov 2026 18:08:29 GMT  
		Size: 903.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:ac24a5b9aca019d07470b1121e936fa7ed920bcc254f60db1854db1ceade46c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1302135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a8cbb53c63481b62de3714185e4619461082305d23b627157789f17e6e985cf`

```dockerfile
```

-	Layers:
	-	`sha256:4a5e0d6a65384c21f001c98f89e1039162abc7b546711eef4eeb912413046c91`  
		Last Modified: Fri, 20 Nov 2026 18:08:29 GMT  
		Size: 1.3 MB (1286702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75f210857ff1d09eea1a9a3723c7e8ab5e883de30531fc5e557599dfa15b74b9`  
		Last Modified: Fri, 20 Nov 2026 18:08:28 GMT  
		Size: 15.4 KB (15433 bytes)  
		MIME: application/vnd.in-toto+json
