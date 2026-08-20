## `clojure:lein-trixie`

```console
$ docker pull clojure@sha256:3901cbc4c27d5589b1c44c65eeace483b3fbf211d76bce2575aefa425d369c02
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

### `clojure:lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:b196babb27a9d757ae56f11f5a31f93d09425c9087ef91c5f486acc9f2b5b941
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.3 MB (165283181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7664e9cde2e504f4100b7e137d0ff81b5817b597b4f9b9d0502a7ff74698d06b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:48:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:48:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:48:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:48:20 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:48:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:48:20 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:29 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:49:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:49:29 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:49:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:49:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4355c2b0ab9bb3955dafc7f2410d46508a0720d1c9625604374c2fc69855d8c5`  
		Last Modified: Tue, 18 Aug 2026 20:49:50 GMT  
		Size: 92.6 MB (92574599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a511a0f325ac76db014bdee937b9891ceb9a74dc9b9ff9c880ebeb0571effa`  
		Last Modified: Tue, 18 Aug 2026 20:49:48 GMT  
		Size: 18.9 MB (18880652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b686779f8662ef91b3973e09ad13aa15566a7042bddf91ee8657600bb08e888`  
		Last Modified: Tue, 18 Aug 2026 20:49:47 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbd2276b3a214896b608dcb966a95097eabc89b60d21b69856d82e531b55734`  
		Last Modified: Tue, 18 Aug 2026 20:49:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5350a2fa80a36094ea1ca566263fdfb3aecf6724c5ea7175ad573263cc9aca19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d29ae6f35dbd41b52b62dce380fd6d25778aa1066a02eba6734d9684c7dc99ac`

```dockerfile
```

-	Layers:
	-	`sha256:c1619a9e9b428ef91cafa7b99ed59b17cf1f5345079491117cb2ac5a933eaef9`  
		Last Modified: Tue, 18 Aug 2026 20:49:47 GMT  
		Size: 3.8 MB (3785884 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc23f98d3503b26a571ed1048df21f9b0d13cd2e42173f2f0d7945d56167f37f`  
		Last Modified: Tue, 18 Aug 2026 20:49:47 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ac2b7a63237035cea175ab5a4e9d0a7b6043612fe22471d2189e2fc476c44271
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164571221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd8d4ed013ea407e25d3006d43aa430f2f5d12e542afc54348b6ee8900618244`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:48:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:48:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:48:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:48:04 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:48:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:48:04 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:49:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:49:20 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:49:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:49:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029a4a013a793c2d64b603f846344165ceaddc6f90ed86e81d96c96702070583`  
		Last Modified: Tue, 18 Aug 2026 20:49:41 GMT  
		Size: 91.5 MB (91542296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798be7d0a1a0141cf3260e6d9425d2485b4cd34e07ff27d5f6f251e0a018f396`  
		Last Modified: Tue, 18 Aug 2026 20:49:40 GMT  
		Size: 18.8 MB (18839487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81cceb44206fd3838a53a937f4a4aff7bc2342960a99f0880ea645a0e79023f7`  
		Last Modified: Tue, 18 Aug 2026 20:49:39 GMT  
		Size: 4.5 MB (4515164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eea999477e1f577430d4732ff14c3f7ea4d9241e56dee3fd23e7c2e1d5134f4`  
		Last Modified: Tue, 18 Aug 2026 20:49:38 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4e2cd4efeb60ec8acdf70d250efb1fc1ff7e8818e308b8c6a906c0a0f4d47867
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3804634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f89504f676b3777a4ea4ebc302a2a9ed7f76c8376aa759d2417171e17f118aaa`

```dockerfile
```

-	Layers:
	-	`sha256:ddc0b124f3cb4f06500c327d7e8ddcaefd2f4915d56395095114bf4aefd23e1c`  
		Last Modified: Tue, 18 Aug 2026 20:49:39 GMT  
		Size: 3.8 MB (3786145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a32129c0b3fdd9e4de3d24c58059e5c18dcda131f27a1e70e92585e7983ac82`  
		Last Modified: Tue, 18 Aug 2026 20:49:38 GMT  
		Size: 18.5 KB (18489 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:57e988267b4c920081c2e1b4d310703f3fe28beabc485339556c631882d8b212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168499927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be228c4d1ff7303d981a9227f1393c0d0b1c9f9c2341dcd18af508ee72b646b3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:33:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:33:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:33:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:33:36 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:33:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:33:37 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:36:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:36:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:36:52 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:36:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:36:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:36:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:36:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efa0cee089e58c8faae54912fc9dcd6aa4f9d1b11a1b44c0b947c37df7dd367`  
		Last Modified: Thu, 20 Aug 2026 01:37:43 GMT  
		Size: 91.9 MB (91914013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0345f588da4f94fbaf2ca1b0085f5fb68154316a45cf4abd3401a9ea930e0daf`  
		Last Modified: Thu, 20 Aug 2026 01:37:41 GMT  
		Size: 18.9 MB (18936670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16bed6996ea7bd64bc68df8f725dcc0a982c136ead3c3cdf6459ea835ca690b`  
		Last Modified: Thu, 20 Aug 2026 01:37:41 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022bec63a4d7c1616ee18ba734f9c9c2ab6f2eb4089c2666c899edc95cf383b0`  
		Last Modified: Thu, 20 Aug 2026 01:37:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:457010c34001cce9f1b986c4de1636f7ca7bbdbf9d8f2753a7abf6b48900c126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3788609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3768acb2b661d7b1352b0ca899179cdef5a6f4da4f9bc0041a3ccbafc3bf5061`

```dockerfile
```

-	Layers:
	-	`sha256:90c91200d2dda21fffc7c12aa9e28988fffa2c4367cc78f691c34d592d9b69eb`  
		Last Modified: Thu, 20 Aug 2026 01:37:40 GMT  
		Size: 3.8 MB (3770208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d1e22c6f4518612690921017281c079d62e505fd3f6f4bb2d017743d091d90b`  
		Last Modified: Thu, 20 Aug 2026 01:37:40 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:1583c691e1ec1c853505fc796752208aaa193ca341aa7ca5b75727bc3c7769b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.2 MB (161239416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa716fcca4baf2965165cfe619385e3eb9128359883815363e4ed16db408d13`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:50:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:50:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:50:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:50:08 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:50:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:50:08 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:39:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:39:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:39:48 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:39:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:39:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:39:50 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:39:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9facd26fc0fc940c72cae7c5e7902f12d142e5cf04083a8b66572e1f4b45abce`  
		Last Modified: Wed, 05 Aug 2026 01:50:54 GMT  
		Size: 88.4 MB (88420357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97bed03cbfd2b5023aa1a5fcabb1edc254eea3d126912753be672a9b9abf29b`  
		Last Modified: Tue, 18 Aug 2026 20:40:05 GMT  
		Size: 18.9 MB (18922000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1ebdb7a0e8362faa7f7467d37e610bc766d6c2d3bd55326c0e3fd30f30d4004`  
		Last Modified: Tue, 18 Aug 2026 20:40:05 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2332330e2936715c2e1c7d3b014aac5c07e34f1b34ccf7e9d6d82a31c6804d57`  
		Last Modified: Tue, 18 Aug 2026 20:40:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:62cbf4c459e3ba7dce657d7bbb7747a5eb89375b6987f33575e40b4d93a43491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84bfa655cf11952e2189fd1c3010bd4738f8d613633043f5b6f4c4a9377efa82`

```dockerfile
```

-	Layers:
	-	`sha256:13b6e156f86af120398162ef21fa3cfd759b5b7287ce4d9e99009864d1aebf14`  
		Last Modified: Tue, 18 Aug 2026 20:40:05 GMT  
		Size: 3.8 MB (3766873 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84b233018621637ed516406a83d3096590e85b11b78250d41b847cfa623913cc`  
		Last Modified: Tue, 18 Aug 2026 20:40:05 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json
