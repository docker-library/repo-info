## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:b6030e81a04409d70fdcf9e4852d43fba61f39161d300683cd6fd9c12e1c8b76
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:045adf176a92700410487362054f4fed568e988a391f4af9e45f12d72ed9abbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167358316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bd76dd1ee5f748fc99cb077aa0dc75c3c897295925810cebb3150d7c557fa32`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:20:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:20:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:20:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:20:57 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:20:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:20:57 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:22:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:22:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:22:15 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:22:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:22:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:22:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:22:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:423095f94d2e616e67c3e322bc25bfe95c942c84f80874395e35a6434c6a5fcb`  
		Last Modified: Wed, 21 Oct 2026 01:22:37 GMT  
		Size: 94.6 MB (94563480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f839f2a932c3b86eb1a94e99cdf6a53c23c262e0fdddadfad91782b608ff6ae6`  
		Last Modified: Wed, 21 Oct 2026 01:22:35 GMT  
		Size: 18.9 MB (18885570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b01c095e2b20b8c9eb734f7de73d067940fd3dc29d10997683768d853da17bb`  
		Last Modified: Wed, 21 Oct 2026 01:22:34 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01101d8b99c66f2b49e63550af15e2722e2e11914dbc19bb39ee6ed7ac4bb40c`  
		Last Modified: Wed, 21 Oct 2026 01:22:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3e238a7d9f944132597a22c40cab08e9c65ed77142618a055959ab61ca6a656a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc978e9a878058bf5c8e6f11b7dfe4c93582d1d397c79d1e192fa46450b872f3`

```dockerfile
```

-	Layers:
	-	`sha256:16d2369d413d6be1acd75a3994909b3d2f459ee6425f93062a0c7ba5260bac65`  
		Last Modified: Wed, 21 Oct 2026 01:22:34 GMT  
		Size: 3.8 MB (3791363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de90c9b56d1c77376209f1631a82229c4a7382218bc9ffe2cb39442178e3f5c4`  
		Last Modified: Wed, 21 Oct 2026 01:22:34 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1f01614c646dc479e4139ab977d94ad2c00d292d8fe6d525f94a6ae682b254fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166664488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be8316a1c4d223cd2601cd1356902e4ff30b347f3d95d8200d096dc734c5688`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:27:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:27:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:27:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:27:24 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:27:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:27:24 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:28:43 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:28:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:28:43 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:28:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:28:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:28:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:28:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a203be14534a4fa23adc4116611f58a6727413a84dee710cd4a27f62179e480`  
		Last Modified: Wed, 21 Oct 2026 01:29:05 GMT  
		Size: 93.5 MB (93543593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae2c68d2ce90d240dcf0fb262a8f01eddf6e26120be30695766f5af55a26030`  
		Last Modified: Wed, 21 Oct 2026 01:29:03 GMT  
		Size: 18.8 MB (18843669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f133f7af8b55a40d99729408056766a5eba608d6428a114283139530a3a66364`  
		Last Modified: Wed, 21 Oct 2026 01:29:03 GMT  
		Size: 4.5 MB (4515195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:700eb0b35e0544098b514e6d9e44507bd1b0f2f2eb54a7047bc22b0d894cc700`  
		Last Modified: Wed, 21 Oct 2026 01:29:02 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fe0251832624a3cce51452209d0ec7928d862ea604820e72eb048977ad9839a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdfbe7dc06d9f1956aa4631488c0ae8b145e043c38576d815a26389df2464d3`

```dockerfile
```

-	Layers:
	-	`sha256:a9156fd935ecf2f0c6a20d4660f87974ed4483c5331691a2d2bc0eebe20e63a5`  
		Last Modified: Wed, 21 Oct 2026 01:29:03 GMT  
		Size: 3.8 MB (3791600 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50821d16a455be12ae6acbcab57e3fc4b5bb0cefb8deed69749607620e61a049`  
		Last Modified: Wed, 21 Oct 2026 01:29:02 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:347975453d28553bc7a4c95b6e5f758feea3d6ff658081ff8fa1bd329c473f6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170016697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e28c28763af729b71251aa9698257d3b24fd7a71987f252f1a34c4ff72988c1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:42:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:42:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:42:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:42:29 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 06:42:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 06:42:35 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:46:00 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 06:46:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 06:46:00 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 06:46:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 06:46:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:46:08 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:46:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04696de545b2dc53298ae28aff2219699a6ef178c15f62b07a2f03692dc7bc1b`  
		Last Modified: Sat, 17 Oct 2026 06:46:49 GMT  
		Size: 93.4 MB (93350858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b3098256510a5851a0aaa76129da4dd77d17b40662f30acf61aaf1ba8b963e7`  
		Last Modified: Sat, 17 Oct 2026 06:46:47 GMT  
		Size: 18.9 MB (18943039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd9e836dc07fb02deefab8d316b97f145af1ec5084bee42d41b0332c16cd193`  
		Last Modified: Sat, 17 Oct 2026 06:46:46 GMT  
		Size: 4.5 MB (4515248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b0559cc0663f6b26e0839df315d97f17b9daa888b7a9491d6a4a817ab84a92c`  
		Last Modified: Sat, 17 Oct 2026 06:46:46 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b48406431f1e481f5a3a8b54b7ca68892e13b19a234eedbd807678ae314901cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3795329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc096a2994c6497428a1bd2247938a9a20c375f19f8df64d34059664fdf4a8d`

```dockerfile
```

-	Layers:
	-	`sha256:d7470a52d2f3c0ef7801eca748f471b31d3863fa63c249e9cb0e1a41bd337642`  
		Last Modified: Sat, 17 Oct 2026 06:46:46 GMT  
		Size: 3.8 MB (3777574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9bf4ceb4ce934c23a97ca4f2380a160b1dd05554b4de4ca18e1965a2348b7f1`  
		Last Modified: Sat, 17 Oct 2026 06:46:46 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json
