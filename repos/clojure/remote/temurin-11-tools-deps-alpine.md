## `clojure:temurin-11-tools-deps-alpine`

```console
$ docker pull clojure@sha256:5a652413801fe45813ed2b2283efe693d8ecd7fd6026eb61b0774a8a3e093447
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:319781b64e7064b4815501b4527ab0cb2b0bb979aeb552cca92ff720eaa85ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.3 MB (184264251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:517d24e66f69d19596be9c674b700db58f9ab414f128abd8ad48b628c166cf1a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:22:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:22:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:22:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:22:39 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:22:39 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:22:44 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='be9831861b7a4b5fc8ec0d9540d462230f6b9bd6c7ee29585ec1ce52d1435d6c';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:22:45 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:22:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:22:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:22:45 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:11:39 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:11:39 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:11:43 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 21 Aug 2026 19:11:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:11:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a34f2b6433f3eb2d387a9883b2363554af259e8036df388dda4043c1c485f42`  
		Last Modified: Fri, 21 Aug 2026 18:22:59 GMT  
		Size: 17.0 MB (16963184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d7fb8dd003c51499715720921b1a4c07102e8b73aaa72df5f0d4b44ac4fb5ac`  
		Last Modified: Fri, 21 Aug 2026 18:23:01 GMT  
		Size: 141.0 MB (141033916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ba2cbcbecc3a3c4e6c5d6e363f45eff017969bfa474e9695e0718adf378e25`  
		Last Modified: Fri, 21 Aug 2026 18:22:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4cc9b2441e46ade665f8d07efd7b28d63f9b2b16012e6d2f580e9b1729f69c`  
		Last Modified: Fri, 21 Aug 2026 18:22:58 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9568517bc1924cf5db04ae1f1f7ae300260965286194584883069f3227c06748`  
		Last Modified: Fri, 21 Aug 2026 19:11:53 GMT  
		Size: 22.4 MB (22417523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e04ce69bf362e33f276571b8cf855935ff207c5323ca34c940f582f882c78f8`  
		Last Modified: Fri, 21 Aug 2026 19:11:52 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:2914b56a155a4c295655c837cb119002a8ae558dd67354be38faaf42b96c9853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1204406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33385f26cc9eedac6bea618b0e1885cf0d89c53b443664e05a25356e9d5878d2`

```dockerfile
```

-	Layers:
	-	`sha256:fa3260ce5e34a8effbecfab8e22c7ec4ed229576aefdb220f5313e7a6f73d147`  
		Last Modified: Fri, 21 Aug 2026 19:11:52 GMT  
		Size: 1.2 MB (1191011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa6173930c8ea0494b1ca1e3e51eedaab161c133976a15b88a8c2173650c3ac5`  
		Last Modified: Fri, 21 Aug 2026 19:11:53 GMT  
		Size: 13.4 KB (13395 bytes)  
		MIME: application/vnd.in-toto+json
