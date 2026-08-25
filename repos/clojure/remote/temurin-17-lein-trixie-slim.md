## `clojure:temurin-17-lein-trixie-slim`

```console
$ docker pull clojure@sha256:8df9850d184507b3c37baf2d9ab64c709eec6c0e57fb210c36c22667630b03c5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0df4a082e9f59a4ea3a5c4056032d708fd7b6b9c7c6b49e76548ba4b087a4d00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196874672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1e801fe16890b403acff657080f1c424ef23034792793a48081b4723c19a9d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:27:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:27:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:27:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:27:29 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:27:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:27:29 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:28:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:28:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:28:45 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:28:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:28:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:28:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:28:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2267da61bf825ee380de44c55d6dc68eace813daba07aa316f2ab9b86acec212`  
		Last Modified: Tue, 25 Aug 2026 01:29:05 GMT  
		Size: 145.8 MB (145822644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1f665339cd980ab3e7b5d23d098cc84bd0eba84635f587e69023425a1b40a2`  
		Last Modified: Tue, 25 Aug 2026 01:29:03 GMT  
		Size: 16.7 MB (16743722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23385971f41102435ffcb6615c6cf377166ed704d595d6e0cbc814a31dfe0fd`  
		Last Modified: Tue, 25 Aug 2026 01:29:02 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8535a026d18adb23c1208672439be451566caa2f3ac1a106f52a7ce57773855`  
		Last Modified: Tue, 25 Aug 2026 01:29:02 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f90bbf41724cd1037650a0f235b8ecddf62d7db45ede41f2a5f41872fc8e62ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22dea0d4fa81e4f8cf70972b067d5d10ff16c6c3c4555a875fa057043f5fb84b`

```dockerfile
```

-	Layers:
	-	`sha256:05cf9c01af3c62324e768a1413d936a7fe85c8f0df3e4211e747e0d2e4ca0fa1`  
		Last Modified: Tue, 25 Aug 2026 01:29:02 GMT  
		Size: 2.4 MB (2367313 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1444df5364655dde67599e108d86f516d368f308f468d52acc4d988a30b303cc`  
		Last Modified: Tue, 25 Aug 2026 01:29:02 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6a52e9c31cabeb9efd513bae00eadd6059b46637c46ca3f6df4dc27b838152c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.0 MB (196034054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a007029b73e81e3a63b361ee3d56b88c229446f1742c27bd5d65b1cd85c6d68`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:32:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:32:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:32:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:32:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:32:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:32:07 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:33:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:33:23 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:33:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:33:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860853692f2d43901160e691cd61e05a6ac38e2cb1b66a466f9bff1860e9134c`  
		Last Modified: Tue, 25 Aug 2026 01:33:45 GMT  
		Size: 144.6 MB (144647521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4418c7a6c3dc1a40b35de21cba81239602ec7a871124ae1f6cf33ab52bfd72a2`  
		Last Modified: Tue, 25 Aug 2026 01:33:42 GMT  
		Size: 16.7 MB (16711350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baea0ce54095a444d7118e22b15041f1598597da9135ba49805f602421f3ac6d`  
		Last Modified: Tue, 25 Aug 2026 01:33:42 GMT  
		Size: 4.5 MB (4515172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3727902df797ce96aedbeb1ed96263122eda66254feeb56d3c4bcc7375a52916`  
		Last Modified: Tue, 25 Aug 2026 01:33:41 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e1f2186f48c5f1180b6e296bef75e8ffa83500ac1ce60fc1433cee08b60c29e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c147e853b097bb373246b8883a0cf1a5cab3ccb2499d35db99e7409e0f7c8d`

```dockerfile
```

-	Layers:
	-	`sha256:d2ad77bb1db71feebcc0570dc47b2995028b14561af4e76278bae7f624f6e8c3`  
		Last Modified: Tue, 25 Aug 2026 01:33:42 GMT  
		Size: 2.4 MB (2366923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4e483e1eb05aa33acf77a94dab9561c10599850974d46b94be740833d00e335`  
		Last Modified: Tue, 25 Aug 2026 01:33:41 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:64f62df78f9e51621eae579f9ec76f6c6a7faf6fd0afce47d5a2daaff06d7c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200573730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e8efc818f815e64bb5b140bfe7613790da7f5ea7d479b136fbb704517dade3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 21:54:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:54:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:54:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:54:37 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 21:54:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 21:54:37 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:58:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 21:58:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 21:58:08 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 21:58:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 21:58:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 21:58:12 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 21:58:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64269a486231fffab2666570443518a8aabf8a93e1e1703076e7aedd2229f4e`  
		Last Modified: Fri, 21 Aug 2026 21:58:52 GMT  
		Size: 145.7 MB (145674278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79288d3b08e4472d4ebb40522c6dcb1b70866449a9f629f2e4e01e40495ec129`  
		Last Modified: Fri, 21 Aug 2026 21:58:49 GMT  
		Size: 16.8 MB (16782507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4282946739bdf4604df5052fcb2fe3ddcd5aadc480323cd120e5b33d0252d1ae`  
		Last Modified: Fri, 21 Aug 2026 21:58:49 GMT  
		Size: 4.5 MB (4515172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f150fc17d25fe2a782bd5fbd27dd84735999e0d9c8f4afa965d562277b5b93`  
		Last Modified: Fri, 21 Aug 2026 21:58:48 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bf39cc7b5464aa919d343731343c0d9cd3554779acc5b5abb8a289d12b2dad43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaed5dab0414d1e2ecf358504d3431020823baad1a2c8fbbf9fd1d41c734ccf0`

```dockerfile
```

-	Layers:
	-	`sha256:b3170027c1b9966c3b86fd6edf02f49e389a1c4d28e4e3905bca0f4e1cfa83ae`  
		Last Modified: Fri, 21 Aug 2026 21:58:48 GMT  
		Size: 2.4 MB (2368095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:359523b89038a9dcdf2a2ad634923f6250aefddb683e67eefbc5275ec835fe42`  
		Last Modified: Fri, 21 Aug 2026 21:58:48 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:b6fb60c09ca0e4f421e4d0116517fa522230a9e64b0f3c3ae3c981991e15c025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187034319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c34873e36b11aa008f5bf190cd41a1bf320dade344efe6be502d1973c0522c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:06:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:06:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:06:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:06:25 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 02:06:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 02:06:25 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:07:41 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 02:07:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 02:07:41 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 02:07:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 02:07:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:07:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:07:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a9e3be4509b0edee218fc2ee7628467752ac7583bb42e9d7e0f2ae58b6d6d4`  
		Last Modified: Tue, 25 Aug 2026 02:08:08 GMT  
		Size: 135.9 MB (135871059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a785194a84aabe1a61d3295cd385c36522f04fafecb5e5b74b88ce3b69b03e7`  
		Last Modified: Tue, 25 Aug 2026 02:08:06 GMT  
		Size: 16.8 MB (16779924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79720c16f9d5348433d6bb14c4c70c3a54f208d7895c591c24a475d3d0f69e9`  
		Last Modified: Tue, 25 Aug 2026 02:08:05 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcfd7125bfc6acec0bbf308ef468dc2f949dd80916df0cd0b69a69882d1ce729`  
		Last Modified: Tue, 25 Aug 2026 02:08:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b04d1fbffce803933e463529982ef04963936ca03e66d08840145178d28f96a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2381493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a806ae6e1d9bf1cb7e30d33114a5b2a5fcaca42350f7bf309a1371c7d13c5f76`

```dockerfile
```

-	Layers:
	-	`sha256:ba760a6f219647beaa33d46a6b8e20a107287cb19e149c41e271c1ebba6b8a8c`  
		Last Modified: Tue, 25 Aug 2026 02:08:05 GMT  
		Size: 2.4 MB (2363740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41a3b9de4022a41138144121d983adb424d4b4f0620ed01a5a5f162dd6f3b4a1`  
		Last Modified: Tue, 25 Aug 2026 02:08:05 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json
