## `clojure:temurin-21-lein-trixie`

```console
$ docker pull clojure@sha256:7bfe9b8b72637a292557ba4a151d698047d60c57187d6a21fac067c46a728166
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

### `clojure:temurin-21-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:d250f9f276816dca33a0bc06b40d56c61cce870020fdf08f28aaf7c734a3bf49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230876525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7cefdacaf4836fc094454c4b71396da786eb7fc6374794046ef619481d838b8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:33:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:33:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:33:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:33:24 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:33:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:33:24 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:34:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:34:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:34:40 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:34:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:34:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:34:41 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:34:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce17d2fb4c920c181efd2cfcd9f2e7b2708fc151f3c536c7949501d8c1334bb`  
		Last Modified: Thu, 16 Jul 2026 01:35:00 GMT  
		Size: 158.2 MB (158166965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b9d3c6ef64ded2ddea507ccc20589d84239ca04cc3a444d8fee73583646f03b`  
		Last Modified: Thu, 16 Jul 2026 01:34:59 GMT  
		Size: 18.9 MB (18881371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86cd1dcb79b5815f5fc76b2f35d56c806e75eee70b571ee1663aac5a20b39da`  
		Last Modified: Thu, 16 Jul 2026 01:34:59 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389cbe7469636b6c6abf556ec98e5ffcd07b74d95f37891e6da8f38b8ad3329a`  
		Last Modified: Thu, 16 Jul 2026 01:34:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:94b6268977d8825a895342efc21e6e889d4fa782502d73e868b12a77f92224f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0692de6ab9d69f2a21c75f1213e33f0a22769db5df71eb01c0f347c7f1d27214`

```dockerfile
```

-	Layers:
	-	`sha256:8b3daa60df05b430ce2ab8cd04577603517fc7f0fb28e1f06c1b435067359b9d`  
		Last Modified: Thu, 16 Jul 2026 01:34:58 GMT  
		Size: 3.8 MB (3819708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3d62374673669a0b234b77940f75813c7dfdcf9ea4cd83a9a8590ef6bc40bb3`  
		Last Modified: Thu, 16 Jul 2026 01:34:58 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e66df723e27fbbd7d7bb60a35cf0566d0788c108c4eca17b52c9b9397b09974d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229502884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e62b1a228c7f3f33949da7b1491c64fd181a268950851b00524a874dc29e5d76`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:29:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:29:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:29:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:29:25 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:29:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:29:25 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:30:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:30:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:30:42 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:30:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:30:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:30:44 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:30:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7818c99de7cfe6464a1a57a0085c96baa4b056a9561149dfd18383fa3e1e7b38`  
		Last Modified: Thu, 16 Jul 2026 01:31:06 GMT  
		Size: 156.5 MB (156461260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6887172c609e873fbd60c0c0f67ab055811795c0d6f2d43c7c5a557651e2807b`  
		Last Modified: Thu, 16 Jul 2026 01:31:03 GMT  
		Size: 18.9 MB (18851804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db0b67044bde0ccc54dafff29f5b382d538721ec8c5bf684fcc31b25d47c802d`  
		Last Modified: Thu, 16 Jul 2026 01:31:03 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee33d9059e1c19bdf16f100e9954b48040d0b434750aefa3ca36e9f3c59d9b01`  
		Last Modified: Thu, 16 Jul 2026 01:31:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6133237ddad77fa8c52057ac6c97e747b9707cda0761f0b922dc09bba4ca876b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7dea28d95b0a748f2a5ce9d9c8828af3bf887fbc35e9766c5ed9dc1d7728ee`

```dockerfile
```

-	Layers:
	-	`sha256:660d85d01447ed087960543ae840c20d88801ed1fb99608caca290b6a2b3ddd1`  
		Last Modified: Thu, 16 Jul 2026 01:31:03 GMT  
		Size: 3.8 MB (3819948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f8834e0f564c0aa95c04af1004006808e4547823adb0b5ec97d0246fb74d7c0`  
		Last Modified: Thu, 16 Jul 2026 01:31:02 GMT  
		Size: 17.8 KB (17838 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:26e102d5e5e6fd184849e3a93f316830ce6fdc97ca086d979302d38ea8effd1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234929440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09b0a3e8060f63fdcef0a3229e58f7d29ca62e89d490ba23f1671e207930ebf0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 02:52:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:52:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:52:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:52:06 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:52:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:52:06 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:55:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:55:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:55:08 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:55:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:55:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:55:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:55:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bde8679fb1e7aa32fbf77a5eb9478dc2a87a552d24aaa3b4df306d7bb38a6c`  
		Last Modified: Thu, 16 Jul 2026 02:55:53 GMT  
		Size: 158.3 MB (158343200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e58bd57447e96dc38daecc0dad3a26e9cd3220bf8a5a419d9c1ff0c32eaf0a0`  
		Last Modified: Thu, 16 Jul 2026 02:55:50 GMT  
		Size: 18.9 MB (18936589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ababaac7e8277e30fa5ac39367149bfed60019106a56e56379ef7fc16a5a3a`  
		Last Modified: Thu, 16 Jul 2026 02:55:49 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d3d32a12c1a8939f4981aa8feb54b372902841b098aaa2914ea8a54726e45a`  
		Last Modified: Thu, 16 Jul 2026 02:55:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2577bed9ae49dddc42b06e7444d1dbf341b872447b53793c6949c99a4b614ab1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29bcbd07273f76c97b6e5a19df45154b4f6d6bbcdc57295874f3e2a1e69421ef`

```dockerfile
```

-	Layers:
	-	`sha256:4bd02a59c0d614cddc44a895826c4d895a2b0b3ccd0fe7425763d83ac92f74b8`  
		Last Modified: Thu, 16 Jul 2026 02:55:49 GMT  
		Size: 3.8 MB (3820708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6696594a5f31efaec7f0f37e676d5485593558e980c8676ca0b1788484641225`  
		Last Modified: Thu, 16 Jul 2026 02:55:49 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:c402416a4f36d12a1a7b3d8becef9ad154c1be7dfd6fc4f77a55efb6704a571e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220207812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcbc8b5d1c78793b9ffccc47355dac81bd8949c78b638af651950083d23215f3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:50:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:50:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:50:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:50:09 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:50:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:50:09 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:51:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:51:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:51:28 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:51:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:51:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:51:31 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:51:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17404adaa369100121b2ac5d5a85114c20ec7cbf4e19ffabd016f17bc55451dc`  
		Last Modified: Thu, 16 Jul 2026 01:52:01 GMT  
		Size: 147.4 MB (147388326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3838b3534322be4d60c4ddcf74fe591a16a01886d8fa631200ff841829286ecb`  
		Last Modified: Thu, 16 Jul 2026 01:51:59 GMT  
		Size: 18.9 MB (18922139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c00fa181a421a2c5d4ea8b3448f8bf0640f270ff62ca45a0f93e66979139b0`  
		Last Modified: Thu, 16 Jul 2026 01:51:58 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c63aaaef7584a70735283e0631dc39c19a3f425b3e91aef5d5fb047a245505a0`  
		Last Modified: Thu, 16 Jul 2026 01:51:58 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:baed38d26f179e68d05d1464b47b7b8ec97207334e5e8782e716df1a0bd533f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3833853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f8143101525c055554d21c6c5ef4040eda151624deda66e52e374ed30289981`

```dockerfile
```

-	Layers:
	-	`sha256:493cf61532652992d06505c932e9674491c909979e11c9f626fe68f1151ccb9f`  
		Last Modified: Thu, 16 Jul 2026 01:51:58 GMT  
		Size: 3.8 MB (3816135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d1d9c7ec7898d60b4ace70da7f2ee1e9d32066eba0dc5c62da12583066772d8`  
		Last Modified: Thu, 16 Jul 2026 01:51:58 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json
