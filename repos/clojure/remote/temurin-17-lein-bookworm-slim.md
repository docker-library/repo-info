## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:1440e6c589b88fb0b9c63dfecab79dd6915a6ed3678f5f7b4801338645b082c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4cf32c96a77f2d7c7885ca4173ce0cee6b1de606cfe6b79988c90f68103ea86b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196656943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa67c84dc4ea2433322e2cdcfe4e173f214af9e782e59051bd73dc6f6dbc9cf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:33:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:33:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:33:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:33:48 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:33:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:33:48 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:57 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:34:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:34:57 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:34:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:34:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:34:58 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:34:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c27aac11938b022fa1ce762c1f33f99dfb70811855f7da43df413f7a87794c7`  
		Last Modified: Wed, 16 Sep 2026 04:35:20 GMT  
		Size: 145.8 MB (145822694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805720979e19a4bf90335918cc7af93a265ad1f6e2ccbc33dbd167af6e1beee4`  
		Last Modified: Wed, 16 Sep 2026 04:35:17 GMT  
		Size: 18.1 MB (18085985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a582afc6155f969edb828b6c5b081fe4e3593f3ec995e5ec1b6efc9a747dfaa9`  
		Last Modified: Wed, 16 Sep 2026 04:35:17 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d7cbc09b24cfdb068881ab67d91036683c0b37675ecf155053d9a65f281d34`  
		Last Modified: Wed, 16 Sep 2026 04:35:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:60762490aad6a004ae2ac3ab92fc49c99b5f756530e956f7de27d8079ed2800e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6d289ad92524d2861eb2c280155f2dccdc38ab101870f6cec06d29ce89db5a2`

```dockerfile
```

-	Layers:
	-	`sha256:816713dd10779823debc75f87a84e09ec1052a960dcf6d5fe17665f79d7e20b2`  
		Last Modified: Wed, 16 Sep 2026 04:35:16 GMT  
		Size: 2.7 MB (2737574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60eede2297d106ed1360bf414bc2e8b0ecbabbc2154b15684a7ae6fb9f8df16a`  
		Last Modified: Wed, 16 Sep 2026 04:35:16 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:61754460a250f4a8bcb0b6404e75b4e3e0319438af4bd17aebdee226fab16872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.2 MB (195187415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b068edccb1aa9c8736754ca7b3fdb8b2091a0c240d659869e4a575238881a910`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:57:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:57:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:57:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:57:34 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:57:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:57:34 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:58:44 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:58:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:58:44 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:58:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:58:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:58:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:58:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9445fd57a25af6885de0c2ad911a18754219c3bc4525ecb795f958b28dfe18`  
		Last Modified: Wed, 09 Sep 2026 03:59:08 GMT  
		Size: 144.6 MB (144647514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a293f1e6708177ebe3e39fc364426d5b545ee26b0a8db83ae9fbd7358ef813fb`  
		Last Modified: Wed, 09 Sep 2026 03:59:05 GMT  
		Size: 17.9 MB (17906982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c547a45f03cc9aa9763d7aa78160a2a767a88086bd248e3f8769114a2c7f6e9f`  
		Last Modified: Wed, 09 Sep 2026 03:59:05 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293a5a3903e789ad7b26b9f2354d4412212c0bb8d12eb461de37abf68cd6db23`  
		Last Modified: Wed, 09 Sep 2026 03:59:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a9011cf75a43cc36f0369ddefdfd9bc609a8a57b3803fb0f30292dc05a2d8bc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3fdaf6d0c16af34a6cd38d1a0a30f61b3e7abbc8f33f356113c60b6f01dfca`

```dockerfile
```

-	Layers:
	-	`sha256:1363a20b662ee528594e2deac48029e2d9cca0a6b8524fa09af1eaa85e700ae5`  
		Last Modified: Wed, 09 Sep 2026 03:59:05 GMT  
		Size: 2.7 MB (2737189 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa91f66b8842be1c2b94970276a9c4ec0bc4f4100d26e8dea6f20f09d65280d3`  
		Last Modified: Wed, 09 Sep 2026 03:59:04 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8c1107207c0983788821a7dbb507e1336115715b20871795b56df3540638d2fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 MB (200546200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faef271f3046b85be47dab46e5cb654b1cd1c5adff30cd1792a3154344f1f7ed`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 10:45:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:45:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:45:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:45:24 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 10:45:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 10:45:24 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:50:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 10:50:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 10:50:16 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 10:50:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 10:50:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 10:50:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 10:50:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf78cf34333f530f10dc0cd57af3e6a2c53bd0df1bf4ab1b35eb3e964d6d9d50`  
		Last Modified: Wed, 09 Sep 2026 10:51:11 GMT  
		Size: 145.7 MB (145674339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2079850dac063c0e9591fe5ff8a3a3576a21e49be6ca8bdfaf9e9ffdd46ea660`  
		Last Modified: Wed, 09 Sep 2026 10:51:08 GMT  
		Size: 18.3 MB (18279738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc864008bff4b85c8b9b85981165b37bab2815721ced7a7c62b5cae0a61dcb6a`  
		Last Modified: Wed, 09 Sep 2026 10:51:08 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d91d44fc924271608f38106be63424f659258bfe0a72c324f49f086a9936a74`  
		Last Modified: Wed, 09 Sep 2026 10:51:07 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8c7ab2b988b3553f68919f0904b5e90f6148d9e3a18202f76e64b7ff79039ad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc629623c1777eab91f3327eddccfd54cebcc0957f7f2c85a5ea4487d673789c`

```dockerfile
```

-	Layers:
	-	`sha256:7617bb7883001649a7d2a9686fa5fdc956527d24ffbc1881f7d58a7856b54f9c`  
		Last Modified: Wed, 09 Sep 2026 10:51:07 GMT  
		Size: 2.7 MB (2739407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80790c7e6d3949e19d2a3010ded07bc6987ea3daa806eb018a1895d063c2986e`  
		Last Modified: Wed, 09 Sep 2026 10:51:07 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
