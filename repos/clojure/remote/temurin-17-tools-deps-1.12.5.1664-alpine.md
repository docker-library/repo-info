## `clojure:temurin-17-tools-deps-1.12.5.1664-alpine`

```console
$ docker pull clojure@sha256:c8ac33ff9c24756cd5dbe184246a18a22a65705fb91e6bfdbb558fa34fa8bd57
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.5.1664-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:7e034adea63831e038c6268acfe703b15a989ab853c276ad3ed046c075e64ab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192600816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0be87eff3811b01961733375fa05dc269c46d3ba44e977aa4eb0d6ae34b1c852`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:23:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:23:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:23:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:23:35 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:23:35 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:23:43 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='c8bb5bc6984762dbce2ab7403d90832b6897c07f36f8706e4a315aa7a566d04d';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:23:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:23:44 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 19:15:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:15:01 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:15:03 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 21 Aug 2026 19:15:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:15:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:15:04 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:15:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26cd5aab71d3939c7e16e44f694b8c0cf73ffdb9eaf0ebc914e57d6b54aa607`  
		Last Modified: Fri, 21 Aug 2026 18:23:59 GMT  
		Size: 21.4 MB (21434109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb3df7902765cf89902403cbc4eabf8772ce27e2ecefeb9278dc107ff548e1d`  
		Last Modified: Fri, 21 Aug 2026 18:24:02 GMT  
		Size: 145.0 MB (144970186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05721dd3d30aba44494d76ca3141ab6b746eeeb269290250164d22286ccc33d5`  
		Last Modified: Fri, 21 Aug 2026 18:23:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768e6e1dbe85c2d1c5df73eb36a85054662deff12e37d784e455d8dc9c304739`  
		Last Modified: Fri, 21 Aug 2026 18:23:58 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:786a73de445dcf0ca225ead7cd264a6ca333d9e568e0c1d454753aee7eca54f4`  
		Last Modified: Fri, 21 Aug 2026 19:15:14 GMT  
		Size: 22.3 MB (22346487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310e1fe9cf87b3d41703e47bd5919978984fee98982476b18fabfe02400fd69a`  
		Last Modified: Fri, 21 Aug 2026 19:15:14 GMT  
		Size: 619.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62b73cd9f73d87a9b42dec7ff048603e8d4ef17ccb14e226a9cd21e8d51f5f6`  
		Last Modified: Fri, 21 Aug 2026 19:15:14 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:24906990ab451dd7cd2882a377cbd70be2d27d786b66b6bf79c47ada80a82c17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 MB (1302760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f3464e59027ec99f603fd3e0b63321d4ca81c6307e0a9d6aa8f1d2e3be7a969`

```dockerfile
```

-	Layers:
	-	`sha256:7cb04af55f2dc8305f64b242ebc11b4e8a3c9ab971117be9d01799c177601527`  
		Last Modified: Fri, 21 Aug 2026 19:15:14 GMT  
		Size: 1.3 MB (1287330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aef8ade8fca7b12db1a1da0dfbbbfb6d2e50e3763f14a6f4bd81ed6f1f0633ab`  
		Last Modified: Fri, 21 Aug 2026 19:15:13 GMT  
		Size: 15.4 KB (15430 bytes)  
		MIME: application/vnd.in-toto+json
