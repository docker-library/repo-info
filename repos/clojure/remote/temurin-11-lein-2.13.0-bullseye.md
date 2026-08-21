## `clojure:temurin-11-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:0b0935c36fe7b926db5902951d1b1da0778d0ad48fd04d1bf17b37c01af3946a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:ed914c1e2f6caa0a5eecf55a54600dddb59abe49db6dc5877e291225d15acab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221094063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47dba1e2a34e37ff137bf751fac88c24cf2df9583aa799ff4b4c37ee778b081a`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:10:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:10:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:10:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:10:10 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:10:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:10:10 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:11:22 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:11:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:11:22 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:11:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:11:24 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f35998329cde3361b16523c8953bb980e71647845e421d1fbb1d37ec75ee629`  
		Last Modified: Fri, 21 Aug 2026 19:11:45 GMT  
		Size: 145.9 MB (145861395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9851bda8f3b34f4b4476cb919c4b8fa2e31d3e2d1907c2240522edd315a09241`  
		Last Modified: Fri, 21 Aug 2026 19:11:42 GMT  
		Size: 16.9 MB (16940442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b731aa47c53d9f0578e8690c4e9dd2da341229cb9dcea62e51e60c6df512bf72`  
		Last Modified: Fri, 21 Aug 2026 19:11:41 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:f4a8897d5405c0cfaf5803544ecaee39a7012f5798de453e998dd4aa100a1f5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4541492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd7627fadd755135d67eb4e9da3ef4df2fec6e0c8eb055aa81564209029bc35a`

```dockerfile
```

-	Layers:
	-	`sha256:5ab09cf7c77ead9f67f268d57a2b7a721e01c0439cdffebf16ac4d99c4c7e495`  
		Last Modified: Fri, 21 Aug 2026 19:11:41 GMT  
		Size: 4.5 MB (4525744 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d51588180ea740d81bdb05f258af3f982bd6241ff606e6e75462942a1783b24`  
		Last Modified: Fri, 21 Aug 2026 19:11:41 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d797d9981df71f34ec42761f2da3715ab5b9bb99ce78e373770e708e1c959c71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216273229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022d5927f695892ed9421780b85c4aa9b0d274c1d7a04be8ab56febce14e0f85`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:00:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:00:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:00:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:00:44 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:00:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:00:44 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:01:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:01:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:01:58 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:02:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:02:00 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aaa10a367dd58fd95ee965c3e074c486b37590e5ee52c4a7d390035de38fb15`  
		Last Modified: Fri, 21 Aug 2026 19:02:22 GMT  
		Size: 142.6 MB (142566564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3def329a974534a0b105856c68c9faa1c3591105da9211e4b5eb2b0ec35d53d5`  
		Last Modified: Fri, 21 Aug 2026 19:02:18 GMT  
		Size: 16.9 MB (16930512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624fd6626bdeadf8412ae4b208f9b26cd0da3ef17c52549208240dd0265c9c97`  
		Last Modified: Fri, 21 Aug 2026 19:02:17 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:27adae62b67131cd41d2e099cbadfcc6b7cb7e03426ae9c17e93b3221af5d4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4541205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19804bdffe41d5f49e2bbc6592109c28234642cf91edc05a14e72e24bb4f9a7b`

```dockerfile
```

-	Layers:
	-	`sha256:2b82736be3094ae27f23ba8a95863820cf9dde61cd75f43d19c5dde4510defb8`  
		Last Modified: Fri, 21 Aug 2026 19:02:17 GMT  
		Size: 4.5 MB (4525336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6ef83dccdd9ccca02de6f00eeb0269cffe9edb99246dd9235b54dd97cc0772f`  
		Last Modified: Fri, 21 Aug 2026 19:02:17 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json
