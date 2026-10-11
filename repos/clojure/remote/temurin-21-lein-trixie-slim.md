## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:5664a7d4898f2cf7559845fe3e6308af94b0c68bce65d6132f4e836d417d4bad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:efdab2732f72a38b8fd890a611024c013266d7451fd94451455fcca42a40b662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209231913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87521f6c9295cf9def7d7c314ef905c3e0f7a81d945bd3445308ad9eb5c85d2b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:24:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:24:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:24:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:24:24 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 02:24:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 02:24:24 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:25:44 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 02:25:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 02:25:44 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 02:25:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 02:25:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:25:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:25:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2805a7c770380a324a47f7130651547232e6a2716689b9d62f8f93d9ec92c038`  
		Last Modified: Tue, 06 Oct 2026 02:26:07 GMT  
		Size: 158.1 MB (158117474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee9b4d3a373d6b31d9554c88017b443f23b77dcd947473043e2f118ed0d7d60`  
		Last Modified: Tue, 06 Oct 2026 02:26:04 GMT  
		Size: 16.8 MB (16755447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17bf2ab169f8e67e9fe96a3a1b88dd7617a57165fe02f7efabc01871f91f4f7`  
		Last Modified: Tue, 06 Oct 2026 02:26:04 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f7e86ed634ed9284b42051401a814b2b801c47f558cb7cd99f90d514fa3915`  
		Last Modified: Tue, 06 Oct 2026 02:26:04 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f70da3478f9641969e3ec68d4c0e9244fb46bfe71fb5fc0ad7358312304980a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3b098cdbbadc45101cc02acbdf3c6fce112737bc806042397e5424d9d2213f`

```dockerfile
```

-	Layers:
	-	`sha256:ee2825eb1b009c486df5eb09f19ff9c076c07b2769c7498cece31ce0004bfb47`  
		Last Modified: Tue, 06 Oct 2026 02:26:04 GMT  
		Size: 2.4 MB (2374883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71c8dd2d1d7324bdbe67e33fcc7f61f10707a2d5ead9f6d54217cd2c38f4e327`  
		Last Modified: Tue, 06 Oct 2026 02:26:03 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fc541f05174a2e792a30bc85f42fcbb71d0593b14eb480c917e375a503fcfac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207828771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc96f464f068b2235a2a9a6bbe60ec096a8858033da907ea58061ccaf9c74bde`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sun, 11 Oct 2026 13:11:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:11:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:11:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:11:03 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:11:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:11:03 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:12:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:12:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:12:21 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:12:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:12:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:12:23 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:12:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad75ab3d18d2aab821aa701a1dba7f5578b928a3e79977e04918edd3258c3686`  
		Last Modified: Sun, 11 Oct 2026 13:12:40 GMT  
		Size: 156.4 MB (156400671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b6e2d7624df313ced7074507780ba95df2baef9af9f2a0eda655ffde419d91`  
		Last Modified: Sun, 11 Oct 2026 13:12:41 GMT  
		Size: 16.7 MB (16712160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b209db90ad6671a4cec904bcff93f306568a333b89f59adc1e23e5fb967acc4a`  
		Last Modified: Sun, 11 Oct 2026 13:12:40 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26529416ad8da900d570e27360acc7c2a6aac5ef705276712899438f008e99f1`  
		Last Modified: Sun, 11 Oct 2026 13:12:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:349f3faef858000188e65a7347e44d59a2639b2fbc22fbc77531b4dbc51009b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2392367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2975ad4015b9ed9abd44777c82d66fb5e665c7c343a48c0fc6b8675fd2599f7`

```dockerfile
```

-	Layers:
	-	`sha256:e61d74c16a052fb54aa602089295e435ea6a37e34ef4d8900a0b54c43086c7ac`  
		Last Modified: Sun, 11 Oct 2026 13:12:40 GMT  
		Size: 2.4 MB (2374493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:058bd9c4990f3bfcb736f2da1dd73154b6228cb5825d0c7e919bfb4c957884cb`  
		Last Modified: Sun, 11 Oct 2026 13:12:40 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:17a03504026dcfd02c5c317597905977b959977552786844bb21f53aca19a4a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213232363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662d422cfd9a85ea35f8d201fa555cc6f55068409bea5deaecace5f74325656c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:22:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:22:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:22:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:22:53 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:22:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:22:53 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:26:12 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:26:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:26:12 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:26:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:26:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:26:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:26:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40fcdb2082bf58f4323e4a1311f1ddc3f0fe390c5cc29020cd69b7dafe5574d9`  
		Last Modified: Tue, 06 Oct 2026 10:27:29 GMT  
		Size: 158.3 MB (158282676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbd9332fd9f3a4ff838cfc7690974ef27e9e5f79026b769cba48640ed8aab6c`  
		Last Modified: Tue, 06 Oct 2026 10:27:25 GMT  
		Size: 16.8 MB (16782458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:195d8ea00a0a2375cd0e7a921a479121111d16234b09dc6283634cb3560ab819`  
		Last Modified: Tue, 06 Oct 2026 10:27:25 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f9ab905428abf2bda59d2f952058a833086192acb379c6d3622b4fadb531c8`  
		Last Modified: Tue, 06 Oct 2026 10:27:25 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b702ec5d127ad6c8e5ca4e87e052d23fd5b610dabdfd3cafefdc5234ae6ecf5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2393660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41c64a8989ce2d9022943c03990528c672139b28d059d895507fee7c868d3ca`

```dockerfile
```

-	Layers:
	-	`sha256:c6f6961ea33bed56830cf3a04983dd06ba00a1a9162f5c57d788d08d0955d8d1`  
		Last Modified: Tue, 06 Oct 2026 10:27:25 GMT  
		Size: 2.4 MB (2375863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e579f94eb1d275224ecb9beb7fa7280cbef1aee6c377d9988685b82c9419dd04`  
		Last Modified: Tue, 06 Oct 2026 10:27:25 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json
