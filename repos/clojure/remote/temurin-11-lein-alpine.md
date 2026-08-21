## `clojure:temurin-11-lein-alpine`

```console
$ docker pull clojure@sha256:6633f072983aee88d6267b1013188a546cbff77eed59bae2ad8564763cffa839
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `clojure:temurin-11-lein-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:ef1c43045c3d86d8720a41b3015110218129224bf455f8701a72b1b19ab84656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.6 MB (181629706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddfd0a7d80aab9fac6bbaf7156f5a7f75512c7f550e4f62dd2a22b51efc6c63a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["lein","repl"]`

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
# Fri, 21 Aug 2026 19:09:49 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:09:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:09:49 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:10:21 GMT
RUN set -eux; apk add --no-cache ca-certificates bash maven git gnupg && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apk del ca-certificates maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:10:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:10:21 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:10:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:10:22 GMT
CMD ["lein" "repl"]
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
	-	`sha256:b88c224c90cdc5b9f2bc95e06857a5fedf380e326040c80216000461cdd4b355`  
		Last Modified: Fri, 21 Aug 2026 19:10:32 GMT  
		Size: 15.3 MB (15268420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2281f5679b4a1166fa5d7f375a3751e956601c1c2a937deaa7242b4cddf6e06e`  
		Last Modified: Fri, 21 Aug 2026 19:10:32 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-alpine` - unknown; unknown

```console
$ docker pull clojure@sha256:bb167d5833e1ae4e2bb092bf226a49b820b3c201a3f83dab5a64e25c75a7c6a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **977.7 KB (977725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e9b1590400b49314ed878a832f0af05cf71a2d6b00b46b405cec98ac1e9e9f`

```dockerfile
```

-	Layers:
	-	`sha256:acfd157fff23be4deafbc655baabd520425c2dcf63f84f952678bd0a87b47d40`  
		Last Modified: Fri, 21 Aug 2026 19:10:32 GMT  
		Size: 962.8 KB (962792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c53ccba050ea69c9b297a62787bfbea3a154ca3cf83b21be7cb1fc24edc90a9`  
		Last Modified: Fri, 21 Aug 2026 19:10:32 GMT  
		Size: 14.9 KB (14933 bytes)  
		MIME: application/vnd.in-toto+json
