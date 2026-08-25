## `clojure:temurin-11-lein-bullseye-slim`

```console
$ docker pull clojure@sha256:b05fec9e0621269657f3673865c53da51ae026d4b98be17bde7203766c42b438
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:68bf797bb2f3cec3ccb40abe7b60c7d2298c164fce6348b36e51cd8e8b2bd881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196279351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f21c14829774df371acfec038d6b43c66acbaa753d328e9bc990885faf22a9a4`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:25:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:25:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:25:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:25:52 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:25:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:25:52 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:27:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:27:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:27:08 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:27:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:27:09 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ac1c64df27d2954064d95a5356ab85895ae5f1721b54b86db636def8207929`  
		Last Modified: Tue, 25 Aug 2026 01:27:29 GMT  
		Size: 145.9 MB (145861364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6b1e6a96561c9a5591ffe748479d8b53736be1fcf091308862cd41de5b8cab`  
		Last Modified: Tue, 25 Aug 2026 01:27:26 GMT  
		Size: 15.6 MB (15643052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e990dc7d6990a4800430b74ef25e8a10acd95201b7cb795ee2e8e2a89433c846`  
		Last Modified: Tue, 25 Aug 2026 01:27:25 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:988e917845caa58893016e3618a8d703be4349b9488c42ba52344e8b4680ecc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3077606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:272baaf0fb6e1b6bff55dffbccd7f977403f5907cee859c30b50343261154f87`

```dockerfile
```

-	Layers:
	-	`sha256:670d2439c68ffbe1162bead6073b7957a9bc72284ab1e2d915ca701b2a1877a9`  
		Last Modified: Tue, 25 Aug 2026 01:27:25 GMT  
		Size: 3.1 MB (3061829 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce9eea04adc1874b4778527dd6f4bc630a11b7550533134b08b3791d4b5f68c4`  
		Last Modified: Tue, 25 Aug 2026 01:27:25 GMT  
		Size: 15.8 KB (15777 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4a882b018357bcc62940fbfa1f6033260e482783d0f9a9468b7a28925578875f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191462010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8e7345fb392cfc10e1f0595033b8ebf313f4dcefe20c311b83a1b99a950797`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:30:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:30:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:30:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:30:05 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:30:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:30:05 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:31:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:31:16 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:31:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:31:18 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee675daebd6ad9b70f2757b2a1f2d7215ad5a1417236b46f220015a1b88f2d1`  
		Last Modified: Tue, 25 Aug 2026 01:31:38 GMT  
		Size: 142.6 MB (142566567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc2ebd4cefc24df81af95f559665d1166cd71905d05b39b99fafe2616337fee`  
		Last Modified: Tue, 25 Aug 2026 01:31:36 GMT  
		Size: 15.6 MB (15631167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0411e71a9055d6478ee11824b3dc5e50f913ec7bda61053c8df66526dc91650f`  
		Last Modified: Tue, 25 Aug 2026 01:31:35 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b82a94f81edee2464e1ac1cd9dbb652e4e1eb0434f7042bc4c9e3b7f1c1109a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3077955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a17be5d0c5e49742c034576fcd1be617e0ae8c5d0cba37829227ab7715c59cfa`

```dockerfile
```

-	Layers:
	-	`sha256:92d3ed2839bb6eee652fe5558dc5bc11e07ad034dae4d4fbe75df77d7ed172c3`  
		Last Modified: Tue, 25 Aug 2026 01:31:35 GMT  
		Size: 3.1 MB (3062056 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c33bed38e051ef46ccc3123bb1324741add6ff27988a3303b8318807df6fef57`  
		Last Modified: Tue, 25 Aug 2026 01:31:35 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json
