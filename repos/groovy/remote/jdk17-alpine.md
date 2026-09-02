## `groovy:jdk17-alpine`

```console
$ docker pull groovy@sha256:5c4e896e864eaae56ebd4e0be86721b248b48317cc2dd971f2b026a66bf7318b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `groovy:jdk17-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:89f4c8dd3a49d34ed578a972ec92553163d422a07eb72ffdf688261cd5e42eaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.0 MB (204992426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69fbebe65806951a13722e2ddec59565eb275b748c14df17a4408dae7dc10f9d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Fri, 21 Aug 2026 18:23:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:23:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:23:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:23:39 GMT
RUN set -eux;     apk add --no-cache         fontconfig ttf-dejavu         gnupg         ca-certificates p11-kit-trust         musl-locales musl-locales-lang         binutils         tzdata         coreutils         openssl     ;     rm -rf /var/cache/apk/* # buildkit
# Fri, 21 Aug 2026 18:23:39 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:23:45 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        x86_64)          ESUM='c8bb5bc6984762dbce2ab7403d90832b6897c07f36f8706e4a315aa7a566d04d';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jdk_x64_alpine-linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Fri, 21 Aug 2026 18:23:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:23:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:23:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:23:46 GMT
CMD ["jshell"]
# Wed, 02 Sep 2026 21:55:51 GMT
CMD ["groovysh"]
# Wed, 02 Sep 2026 21:55:51 GMT
ENV GROOVY_HOME=/opt/groovy
# Wed, 02 Sep 2026 21:55:51 GMT
RUN set -o errexit -o nounset     && echo "Adding groovy user and group"     && addgroup --system --gid 1000 groovy     && adduser --system --ingroup groovy --uid 1000 --shell /bin/ash groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy     && chmod -R 1777 /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy # buildkit
# Wed, 02 Sep 2026 21:55:51 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Wed, 02 Sep 2026 21:55:51 GMT
WORKDIR /home/groovy
# Wed, 02 Sep 2026 21:55:51 GMT
ENV GROOVY_VERSION=5.1.1
# Wed, 02 Sep 2026 21:55:58 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)"     && gpg --batch --no-tty --keyserver keyserver.ubuntu.com --recv-keys         7FAA0F2206DE228F0DB01AD741321490758AAD6F         331224E1D7BE883D16E8A685825C06C827AF6B66         34441E504A937F43EB0DAEF96A65176A0FB1CD0B         9A810E3B766E089FFB27C70F11B595CEDC4AEBB5         81CABC23EECA0790E8989B361FF96E10F0E13706         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://archive.apache.org/dist/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && (rm -rf "${GNUPGHOME}" || true)     && rm groovy.zip.asc         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && rm -f "${GROOVY_HOME}/lib/groovy-raw-${GROOVY_VERSION}-raw.jar"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Editing startGroovy to include java.xml.bind module"     && sed --in-place 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy" # buildkit
# Wed, 02 Sep 2026 21:55:58 GMT
USER 1000:1000
# Wed, 02 Sep 2026 21:55:58 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version # buildkit
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7defd034402886823ea8bde30762441b812c437376776380a2f317e2d67c2f8`  
		Last Modified: Fri, 21 Aug 2026 18:24:00 GMT  
		Size: 21.4 MB (21367990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5d6e4c1307f0b5358f675af3ae44bfcee302ed5763be4a4b420c73d4c19d98`  
		Last Modified: Fri, 21 Aug 2026 18:24:03 GMT  
		Size: 145.0 MB (144970300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8792ee580f313db763b70a2ddf7329ffca8b786668a0d8ee6bed1fa9e6884ddf`  
		Last Modified: Fri, 21 Aug 2026 18:23:59 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09369bcba53f2d2696c5002eb393388150c955f973665310e0c0ba1a53e644e`  
		Last Modified: Fri, 21 Aug 2026 18:23:59 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c655e498523035c9cf7e1e5b31564e4eeddbe94d7acf48b339d786ce449de2e5`  
		Last Modified: Wed, 02 Sep 2026 21:56:07 GMT  
		Size: 1.0 KB (1034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154d535bbf8cb1d86fcb9e85316e38854f87e75ef55efd98d8c4b9599d7f645f`  
		Last Modified: Wed, 02 Sep 2026 21:56:08 GMT  
		Size: 34.8 MB (34805920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be72fa9c3e56d2c36ca6a122253d1d7d72442d7d97c5d9dcb0950ab2d89d6641`  
		Last Modified: Wed, 02 Sep 2026 21:56:07 GMT  
		Size: 137.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `groovy:jdk17-alpine` - unknown; unknown

```console
$ docker pull groovy@sha256:ea9e6140d099cfab4229a426937dde1288c964a3fcdee4a600369b646d9014a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1211518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d562a440c5df962731833e34d21b5eaa35876e5e786fe06ff9594d41351df9`

```dockerfile
```

-	Layers:
	-	`sha256:206ef31eada87e77d8aa6e6ee4d1cadd876f1553ec1f3dd8e7dcd2be2f960f76`  
		Last Modified: Wed, 02 Sep 2026 21:56:07 GMT  
		Size: 1.2 MB (1189191 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1ce4d79144f172d723319651b554a778471f7cebd9915fe00cbb1d9e28830de`  
		Last Modified: Wed, 02 Sep 2026 21:56:06 GMT  
		Size: 22.3 KB (22327 bytes)  
		MIME: application/vnd.in-toto+json
