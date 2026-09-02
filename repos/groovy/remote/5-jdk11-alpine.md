## `groovy:5-jdk11-alpine`

```console
$ docker pull groovy@sha256:569faeb6417698db2b111f57b1e84ca97f050f8a28ed676a1d5c28c1c82852c0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `groovy:5-jdk11-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:19ed269a805b3fdae23e86445ea8af159416cd54935bebf76ce43665ff3dc9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 MB (196569642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5857e0fbb46893a2776b8d7c81f720f23ad90ad0ba42977a1c9e713d73308920`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:22:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:22:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:22:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:22:42 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:22:42 GMT
ENV JAVA_VERSION=jdk-11.0.32+9
# Fri, 21 Aug 2026 18:22:48 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='be9831861b7a4b5fc8ec0d9540d462230f6b9bd6c7ee29585ec1ce52d1435d6c';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32%2B9/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.32_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:22:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:22:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:22:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:22:50 GMT
CMD ["jshell"]
# Wed, 02 Sep 2026 21:56:18 GMT
CMD ["groovysh"]
# Wed, 02 Sep 2026 21:56:18 GMT
ENV GROOVY_HOME=/opt/groovy
# Wed, 02 Sep 2026 21:56:18 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Wed, 02 Sep 2026 21:56:18 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Wed, 02 Sep 2026 21:56:18 GMT
WORKDIR /home/groovy
# Wed, 02 Sep 2026 21:56:18 GMT
ENV GROOVY_VERSION=5.1.1
# Wed, 02 Sep 2026 21:56:25 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Editing startGroovy to include java.xml.bind module"     && sed --in-place 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy" # buildkit
# Wed, 02 Sep 2026 21:56:25 GMT
USER 1000:1000
# Wed, 02 Sep 2026 21:56:26 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7090f59a6c0a7bd7950b98e46e1385007dc6b73c4da84f3332dc9ded8226b59d`  
		Last Modified: Fri, 21 Aug 2026 18:23:05 GMT  
		Size: 16.9 MB (16887199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9a13c8ebcb7831fc7d8b5bfe394332478de64a6e68340f024c44f4694de957`  
		Last Modified: Fri, 21 Aug 2026 18:23:08 GMT  
		Size: 141.0 MB (141034133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be1c47b33b0d47d76f522f562e28a0015347624ed6c4ba3c53e6b025c5163f53`  
		Last Modified: Fri, 21 Aug 2026 18:23:04 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a8a08b4482b24b79ff8adeb1b5c615cc3051aa76b595bfa1a0dec5e17c9995`  
		Last Modified: Fri, 21 Aug 2026 18:23:04 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bfb6cb3c35ec90328313126079c9c17e001672540515807fbc4f579c0c79e51`  
		Last Modified: Wed, 02 Sep 2026 21:56:34 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adffdc379393a999893ca8632e430506ab2382bdf082060f0ace88d1d46be05d`  
		Last Modified: Wed, 02 Sep 2026 21:56:35 GMT  
		Size: 34.8 MB (34800092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a8401084e356158867966f1c8690d0bde31cd6cb138acd772cba59f82d4594`  
		Last Modified: Wed, 02 Sep 2026 21:56:34 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:5-jdk11-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:e153049d9b2a03f48ebb2d7067b8b657e12360d3392404e2429ef7fb4da21d46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1112209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aba81388f8ed7f21a9cf7aa8d5295b9736fd10bf8432e046349cf98867b23bdc`

```dockerfile
```

-	Layers:
	-	`sha256:aa6c54281186d6707e9f6df53551295cc7aa386a6a2c2738e9113cddb6d41f55`  
		Last Modified: Wed, 02 Sep 2026 21:56:34 GMT  
		Size: 1.1 MB (1089882 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:179720e6b3c5ee189c60600c5224c2e4b033b896e57de79a30f484d717d7000b`  
		Last Modified: Wed, 02 Sep 2026 21:56:34 GMT  
		Size: 22.3 KB (22327 bytes)  
		MIME: application/vnd.in-toto+json
