## `groovy:3-jdk11-alpine`

```console
$ docker pull groovy@sha256:cbd64c89afc7aaa9fe4fa09b9fdeb2b9f0f87ab9ff14c43c48f3fc3154f06dab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `groovy:3-jdk11-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:b0f6b8c61b7d476242f2171a99bc4dacd6c0762152534670ca611d06e3607761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.9 MB (209857041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea717d4abbad83858a99ed591cc31ba4c3c06b8ae9db836401f5b7add3a74f82`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["groovysh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Mon, 09 Nov 2026 23:34:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 09 Nov 2026 23:34:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:34:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:34:41 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Mon, 09 Nov 2026 23:34:41 GMT
ENV JAVA_VERSION=jdk-11.0.33+10
# Mon, 09 Nov 2026 23:34:46 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='d9deaccb8137409f91acdcfaa24e7c4b247163b425b29c33fe536c78f75dc237';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.33%2B10/OpenJDK11U-jdk_x64_alpine-linux_hotspot_11.0.33_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Mon, 09 Nov 2026 23:34:48 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 09 Nov 2026 23:34:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 09 Nov 2026 23:34:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 09 Nov 2026 23:34:48 GMT
CMD ["jshell"]
# Mon, 09 Nov 2026 23:48:55 GMT
CMD ["groovysh"]
# Mon, 09 Nov 2026 23:48:55 GMT
ENV GROOVY_HOME=/opt/groovy
# Mon, 09 Nov 2026 23:48:55 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Mon, 09 Nov 2026 23:48:55 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Mon, 09 Nov 2026 23:48:55 GMT
WORKDIR /home/groovy
# Mon, 09 Nov 2026 23:48:55 GMT
ENV GROOVY_VERSION=3.0.25
# Mon, 09 Nov 2026 23:49:04 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Editing startGroovy to include java.xml.bind module"     && sed --in-place 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy" # buildkit
# Mon, 09 Nov 2026 23:49:04 GMT
USER 1000:1000
# Mon, 09 Nov 2026 23:49:05 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f06b0349ecd394acb60e9320cc9a86125d78718104751fbf3f572a686f6110`  
		Last Modified: Mon, 09 Nov 2026 23:35:01 GMT  
		Size: 16.9 MB (16891215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982255bcd6292bacb369d583575399271e301b0a1edc8cdfa7580ddbaca9ec97`  
		Last Modified: Mon, 09 Nov 2026 23:35:03 GMT  
		Size: 141.1 MB (141112608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15af23be1d1c7dcb3ad95e6cc4477aafd5e2c95cc469d24267d0ee857fd36eb3`  
		Last Modified: Mon, 09 Nov 2026 23:35:00 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76363b32ca391753cdd7d039e836143931071542c0ff68e1a7bcff2de0dd3223`  
		Last Modified: Mon, 09 Nov 2026 23:35:00 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da684ffe1a0028cf6f9a0a9bb0d1b308e5f6add9be14ce363c5291a948d2d4d`  
		Last Modified: Mon, 09 Nov 2026 23:49:14 GMT  
		Size: 1.0 KB (1032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b42907f095bc82e997dbecb10d74ce9bbc501ab3144ba001eba3bddfb53cc7`  
		Last Modified: Mon, 09 Nov 2026 23:49:16 GMT  
		Size: 48.0 MB (47996832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf66a7a8c3c1f5f0ef17070102e24d226b9f4fc1406cfc3c98dfa6ebc5679cf`  
		Last Modified: Mon, 09 Nov 2026 23:49:14 GMT  
		Size: 138.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:3-jdk11-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:c7abcf20ce9555bda394ba419c38ba91c26cf4dd190c467b9b6246f1b5e18858
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 MB (1137450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b849db9afde11e096f5bba8b87ae2be91005bd7e543f869834d4bd3faaccbc3e`

```dockerfile
```

-	Layers:
	-	`sha256:1832f18327a5dba335d2ad11a90e30ec33be43b4dadc5a83064c1b306cae0da0`  
		Last Modified: Mon, 09 Nov 2026 23:49:14 GMT  
		Size: 1.1 MB (1115426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1167f854da40bc2143167116f24719b790b1d1ddae55597b38de396206f957ef`  
		Last Modified: Mon, 09 Nov 2026 23:49:14 GMT  
		Size: 22.0 KB (22024 bytes)  
		MIME: application/vnd.in-toto+json
