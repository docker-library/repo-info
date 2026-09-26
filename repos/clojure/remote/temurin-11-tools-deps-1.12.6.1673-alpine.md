## `clojure:temurin-11-tools-deps-1.12.6.1673-alpine`

```console
$ docker pull clojure@sha256:3db989c878d76750f8a2b0a3d6396f4956cfe7eb9383fa63f448168e6230f689
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:dc84e8985a86d7965d9ff2161522fbdc6f98bfc5391291a83569b88369beb9f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187342363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc866971dc154dd06594c8f2893411c965dc45fab7efcc902c28b7a09109adef`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["clj"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 22:35:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:28 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 25 Sep 2026 22:35:28 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:38 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='1dc1d3259fa4ca7a2db43c539a60bfa7fc0ea595f445a71ef36d28120f3094aa';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 25 Sep 2026 22:35:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:35:40 GMT
CMD ["jshell"]
# Fri, 25 Sep 2026 23:19:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:19:25 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:19:29 GMT
RUN apk add --no-cache curl bash make git rlwrap && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apk del curl # buildkit
# Fri, 25 Sep 2026 23:19:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:19:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:306c183d62c2e4a4330bce8e042e6eb89ba9fa5db79b2fd0f813a1333fbb8094`  
		Last Modified: Fri, 25 Sep 2026 22:35:54 GMT  
		Size: 17.0 MB (16972135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a643519b5f6673c07720a5e01b34e3f78c5fc4183d51e4978dc34955cb398f9d`  
		Last Modified: Fri, 25 Sep 2026 22:35:55 GMT  
		Size: 141.0 MB (141032797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc8dee2647a63114e7d1dbe8544499ede6ac03dd790e5732bb19295a9e972b1`  
		Last Modified: Fri, 25 Sep 2026 22:35:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9d8e8fdc43874d56d19ee3518b93e4f1ed48e6bc36ed5dfddf7d719babe1fb`  
		Last Modified: Fri, 25 Sep 2026 22:35:53 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eae64f5576285f639b57696edca4e12687286cc78494a1df6de0068c99c9e91`  
		Last Modified: Fri, 25 Sep 2026 23:19:39 GMT  
		Size: 25.5 MB (25484457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b78bd22e07476fe25116d68054c2e9f323f2b1132bddf726921b98191f51e9f6`  
		Last Modified: Fri, 25 Sep 2026 23:19:39 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:8aecc0e026f02e7d0c9f5613af0f2585fb6adf8071b47ea41ba7005aaa6a9125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1205709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:634a2b085446bb9563f8309a1d1ce0676c8629730a257a5faca27252a231545e`

```dockerfile
```

-	Layers:
	-	`sha256:2613e9dda825ebcbd3355bd7462607ab0ddf0f2cf3803f3ddb7003d5e703fc2f`  
		Last Modified: Fri, 25 Sep 2026 23:19:39 GMT  
		Size: 1.2 MB (1192312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:001c4f08929aff8eba188de960921dc9c498ecea651d77c3f8018a34f103255d`  
		Last Modified: Fri, 25 Sep 2026 23:19:38 GMT  
		Size: 13.4 KB (13397 bytes)  
		MIME: application/vnd.in-toto+json
