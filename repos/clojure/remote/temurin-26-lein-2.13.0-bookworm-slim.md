## `clojure:temurin-26-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:c54803dcc130f205eb102ecb1f7e760ada92436dacd366807548dc5ecf8ecf90
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

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8a16f343c5b5760f3445bb486a7b377620ea77be89cde0e92ea969aa6a45bf01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.3 MB (145344347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29a236ee13e6579700b01003ae416aaacca44575044da9a4d26213342e8aa5f9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:55:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:05 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:55:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:55:05 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:56:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:56:10 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:56:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:56:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1e366d7f4d28165fa7ed27b692a29f9627215836e6e9f7a95f961d93e4d5d0`  
		Last Modified: Tue, 04 Aug 2026 02:56:31 GMT  
		Size: 94.5 MB (94524345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7530095365eb386fe2b5ebe86ec1673cddd651223a74067b566a0bfefc5569ad`  
		Last Modified: Tue, 04 Aug 2026 02:56:29 GMT  
		Size: 18.1 MB (18071711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a4d9fcf10fc7f5c766b95598f29cd30f571f9aca99411c3bbd201c028d17b9e`  
		Last Modified: Tue, 04 Aug 2026 02:56:29 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d98b41c2f3aec084e36a4bc98f32d2f37e5a658c7116c8177213688ae7c7770`  
		Last Modified: Tue, 04 Aug 2026 02:56:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:87d25aacdb6e5b0672fc607afa91b57dae3a95bffe5ce3fbc7eb13998491d023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2715029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9cc114ed976bd6cb983540ecf511a3621c2aec9ce2b360291da12addb16f5e6`

```dockerfile
```

-	Layers:
	-	`sha256:4af4b20fdcc204a4445b0b270ca119954585d60999c3d334ea40e0023cdb9738`  
		Last Modified: Tue, 04 Aug 2026 02:56:29 GMT  
		Size: 2.7 MB (2697264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b694cf88928e1474089d3965d3cdf0d96a4930994e5966ca099ef8cf9933080e`  
		Last Modified: Tue, 04 Aug 2026 02:56:28 GMT  
		Size: 17.8 KB (17765 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c784b332dd11870b34bd38b9c5a17eb83dbf4af940348797e87bf6cb47215a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.0 MB (144031317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9407ca56de61e7cc7dfabb23c61457b75b22a595b4d72300298cdf3d2d4d0de8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:55:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:42 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:55:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:55:42 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:56:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:56:49 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:56:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:56:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:51 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a975d358483c0f717869a0dfc4e9fcebbf223b9954a72c9386e379bade10bc2e`  
		Last Modified: Tue, 04 Aug 2026 02:57:10 GMT  
		Size: 93.5 MB (93504370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:007b9cc7b6ca29c78082c3273470a4aaa7f611af7beb73c7d4744e49e64ec0fb`  
		Last Modified: Tue, 04 Aug 2026 02:57:08 GMT  
		Size: 17.9 MB (17894069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ba7d3a246c081363ed71eaf3402af95e3f54d1e801fae2654d00ac4235c6a4`  
		Last Modified: Tue, 04 Aug 2026 02:57:08 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38263e3c9235b1f98f612fa8d72fa905060dda4052e553ddb099d6c882ea9cec`  
		Last Modified: Tue, 04 Aug 2026 02:57:08 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:97659b4bbe45d87f2b34d56d5e3dd11a7d6b11d894ddd28b15b6b216b4c4fbab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2714763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad1492c96efec0d566cf52ac9e4aec362468e3ff38540fc62ad467394b992e5b`

```dockerfile
```

-	Layers:
	-	`sha256:a4476e8eb97787d64c6a5304248440a726115c1924410bdf240179e2ecc7d558`  
		Last Modified: Tue, 04 Aug 2026 02:57:08 GMT  
		Size: 2.7 MB (2696876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71464e7b51aa21cb162724c9c9041590b4a210fbba07d14be1cf5278efaa8c83`  
		Last Modified: Tue, 04 Aug 2026 02:57:07 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0099b6b7cff419a676ccfa3a2666a6b7c4b2c6a8a13be73abb425b361188e58c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148757825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcd76d0874de6cb89ed351e483d8c4ef6896987e1849ff181ff439691b27686d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 05:50:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:50:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:50:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:50:04 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 05:50:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 05:50:04 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:52:35 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 05:52:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 05:52:35 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 05:52:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 05:52:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:52:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:52:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecd536b26ca6ce3929ec6805629100de6198f8101f988da61a1aca0597954d3`  
		Last Modified: Tue, 04 Aug 2026 05:53:14 GMT  
		Size: 93.9 MB (93902069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b544af3261a53d4839a9119168f2a496cb3de0dc69fad2a7f87dd6eba776d0c6`  
		Last Modified: Tue, 04 Aug 2026 05:53:12 GMT  
		Size: 18.3 MB (18263696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71635440e4875671e3bee64369d2e7b2dff6a050c6963c96de28bae004b3b12`  
		Last Modified: Tue, 04 Aug 2026 05:53:11 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ece0df855acd3c11d5ecf9d9de9e4ce65ad8f33db97fe91ba99d1d3d088064ee`  
		Last Modified: Tue, 04 Aug 2026 05:53:11 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e52247ecf0726de95614a038aabc2805aa5eb46ebe4fce0ce6ac8cf931a708d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2700843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d64a1318beff486f700c6df23d8362b528cf6bbce47e26e25cf80900224cec4`

```dockerfile
```

-	Layers:
	-	`sha256:eacf42d74cfa756c0fc41269fc321fbff90752a9932961fc39799dd39580b0e8`  
		Last Modified: Tue, 04 Aug 2026 05:53:11 GMT  
		Size: 2.7 MB (2683033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd77dc887967d6f198b7f43a4731b5f0eec2d986f12c2e57c69c27e475d2ff46`  
		Last Modified: Tue, 04 Aug 2026 05:53:11 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:d67eed4f424e351e624ed60883c9ee10a6106aaa79da2605d1e231fe594a9129
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139665727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88fc4bbd070c27a08e6a64c38e99cba6c7207c0f51da92eff983bd856350d940`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:05:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:05:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:05:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:05:12 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:05:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:05:12 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:06:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:06:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:06:16 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:06:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:06:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:06:18 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:06:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036c1c2293a8c00db9584c9c37e69e7c0dd3e86f95cdbf4098831ad891c4ce7a`  
		Last Modified: Tue, 04 Aug 2026 03:06:41 GMT  
		Size: 90.5 MB (90536989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8030d6075021958871fcbcfa0174c32300bf132be925b4d5f969968ab0fa0dc9`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 17.7 MB (17724818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b37166f7cc8d4ae3e59bdf14a1a4853422104c4b5b775d96798e30882be6962`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f56abdd71c14774276b7ae16b4d0528ea1f70d79957c92784be9dc3cd1c3f1`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8a4df52dc2e73c69124644139bca582c4042f7e7952429492cbbdd17522f8454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2692030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f04a37896152f8b4bc29e3b50270daa55dce16074aa4626666ea72178c918a`

```dockerfile
```

-	Layers:
	-	`sha256:efd596409ae742a032599088009d307da101c623602e725a7afe328c8b9e157e`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 2.7 MB (2674264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f55bddbd465f1a5f5bbffb8742bf4f79f6577ba1236a5d980fa482d3b5433098`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json
