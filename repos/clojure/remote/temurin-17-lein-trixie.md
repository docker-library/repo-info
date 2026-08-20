## `clojure:temurin-17-lein-trixie`

```console
$ docker pull clojure@sha256:cc563f62b11667c420e8bdc7a2761385861217035927c72c0e3a84ae012725d9
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

### `clojure:temurin-17-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:1ba546b9d7b52610851cb62e296bb0a9e900ba309b81286f6babca3460d5a89e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218614513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:564d5f7c31a0aa84a1d1a20405c6c0a1ae362fda9b7b54eab824114751ae348b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:44:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:44:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:44:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:44:00 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:44:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:44:00 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:45:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:45:12 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:45:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:45:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90205bb96da9bf8b04d7833f2d6fcbe415288d5ed22f5b9eb30b0da513d2307`  
		Last Modified: Tue, 18 Aug 2026 20:45:35 GMT  
		Size: 145.9 MB (145905453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234afad60daaa929020517d37e91cd382b0ee10f97c087cacaf698a0ee776e39`  
		Last Modified: Tue, 18 Aug 2026 20:45:32 GMT  
		Size: 18.9 MB (18881114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c926b06e78c4adfd14021c9d9ec43cbac72178800010ad06a66374c25dad9d`  
		Last Modified: Tue, 18 Aug 2026 20:45:32 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:121ffc588566abc309750f1b258c7c3033f6314e6d06716c11e05c4c51004cb8`  
		Last Modified: Tue, 18 Aug 2026 20:45:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e25b266488c724ce5cf97ffefae2dbd3dfbf00acaa4a5f4fe6078628639f1538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dae5c642b787dc17dd52114cfc75e4f37168b6627ee6495a572f4558c9ceced`

```dockerfile
```

-	Layers:
	-	`sha256:29bdcd1f51baa4462e455e88f1dfdcfa85962bbf919a2e0696eb18e278676260`  
		Last Modified: Tue, 18 Aug 2026 20:45:31 GMT  
		Size: 3.8 MB (3817856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ce5ceda3df77bba0ad3b22ffe9445d9d3d86a44a16667b4660e56a6550d43b9`  
		Last Modified: Tue, 18 Aug 2026 20:45:31 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6679c4c6fbd38b46c33f49d84b1c03aa6dcc606823ca1a466e564a82ca337c7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217753328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aed21c34e323d4e8ce919c836eeff5fe5be17b9e3c87a2298aea488fc04b985`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:44:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:44:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:44:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:44:20 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:44:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:44:20 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:45:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:45:34 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:45:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:45:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb40a579c245399529590ba14cd2c35aa63e8a6a790e21e4ab017f9f1b89c09c`  
		Last Modified: Tue, 18 Aug 2026 20:45:56 GMT  
		Size: 144.7 MB (144724292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abbefa2c4cdb4558a173d6b43433b7df08e9405c14c729c5f32714f91c61a21`  
		Last Modified: Tue, 18 Aug 2026 20:45:53 GMT  
		Size: 18.8 MB (18839563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afeb6facc305be894f186be9aaafa0fff8ba65996df5e5701dc03e71e48817b`  
		Last Modified: Tue, 18 Aug 2026 20:45:53 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32c82518f29c38f8ea41220767598943c6b5a2068e3bc9e7fe072bd5e543677`  
		Last Modified: Tue, 18 Aug 2026 20:45:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8fdad977b791660102825e9bc63eddf676e58c01628a0d3ee8fc02dec475c3d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:492c07a7a9e25bbdcaef6ad2b138b6b7b722f03e90fc7f4c1262c8e78211289a`

```dockerfile
```

-	Layers:
	-	`sha256:736406444f9198784fc46727027132b2d7fc6bbb38c807ce98fc8fd4afed68a3`  
		Last Modified: Tue, 18 Aug 2026 20:45:52 GMT  
		Size: 3.8 MB (3818096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd6b2da018972ed0d9299b39ed7cea7fdc025204296b46269b5221147f13a5ea`  
		Last Modified: Tue, 18 Aug 2026 20:45:52 GMT  
		Size: 17.8 KB (17838 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:8be6d2a3805d8ad15128bb54371a1ff6779b685501888e8db58a21992368ab3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.4 MB (222351873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82a2a9c808dc8581b55428eb4c258e5ff450f1dc2fbc731b8b12f3cdb46b90f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:08:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:08:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:08:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:08:51 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:08:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:08:51 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:11:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:11:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:11:28 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:11:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:11:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:11:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:11:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aaf7ee4a7ce8db72b4b4150cf96c296b1885780495fc941d3703783f6350c30`  
		Last Modified: Thu, 20 Aug 2026 01:12:14 GMT  
		Size: 145.8 MB (145766232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ac804136ab3f9363909d3b9277eff7abc8b4e51af58b82daea96ea5aa7790b`  
		Last Modified: Thu, 20 Aug 2026 01:12:11 GMT  
		Size: 18.9 MB (18936424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b62b61623f7e6a0b19b4bbcf9d13225bc7f4c5f57ed1505873622ceee4a287`  
		Last Modified: Thu, 20 Aug 2026 01:12:10 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4dbcaf830aec07d7e1f9556e0b580925e3f5bf94708dd31d7d6044c97e8abd6`  
		Last Modified: Thu, 20 Aug 2026 01:12:10 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e02e1a384e4c28b12b0c250f3e6cc67b352b9232abf6fe207f0ee085d5156dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc75dd1c7eedcbd41980e540903bfc3b2b4c65e06233d1272df6a5b125dae4a4`

```dockerfile
```

-	Layers:
	-	`sha256:629090e6a0d8444c831edf612cb272f5358be9222f86ad273c2b73d2fd2504c2`  
		Last Modified: Thu, 20 Aug 2026 01:12:10 GMT  
		Size: 3.8 MB (3818856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44b293b583189c5ac762e90c2a20b88d45c3299ac09b3e8d9f81f9a0c48c47b1`  
		Last Modified: Thu, 20 Aug 2026 01:12:10 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:11715d25896f6a6bee5e2d73cf1035607caddc7bf8a60b935e00d13c1ebc0cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208729739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91ab01e0f6007ac98d7349e5c44afa24ea1e7a679a9580b226df375670f023d9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:33:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:33:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:33:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:33:46 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:33:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:33:46 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:34:59 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:34:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:34:59 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:35:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:35:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:35:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:35:01 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c738a1a234395300d16ecbc90faef03e0327e0aa7e8f648561ec2282c788354e`  
		Last Modified: Tue, 18 Aug 2026 20:35:26 GMT  
		Size: 135.9 MB (135910394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d9549317961b33a56f05b941349a228833a6c83e2220b165fbf73793bec917`  
		Last Modified: Tue, 18 Aug 2026 20:35:24 GMT  
		Size: 18.9 MB (18922311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69edaf7ac03fe987b557066dff6217c979437d3d243e4240544a1d8cdd7ed50c`  
		Last Modified: Tue, 18 Aug 2026 20:35:24 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6246c4c8fe4806c0e7c6dcbb29f2351342921823d3f27d925a43cbd27d5777d9`  
		Last Modified: Tue, 18 Aug 2026 20:35:24 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8a1fdc75a0aea895056b404aca0ae5efbdb02a2b090260dcf0a2ebc84fb9e4a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3832001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:486dd857037c7a82dd56c21080733e8e8d901eba69bc90ca1067ad6526f6a2af`

```dockerfile
```

-	Layers:
	-	`sha256:1cfe115016030d8712b15b994c0e779c907027cd8d4eb04f1628faa9d37767e7`  
		Last Modified: Tue, 18 Aug 2026 20:35:24 GMT  
		Size: 3.8 MB (3814283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a28f3f1f6512e7bf30ad75b8d5813974b0fba5cd76cb84cf220f10248af31090`  
		Last Modified: Tue, 18 Aug 2026 20:35:24 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json
