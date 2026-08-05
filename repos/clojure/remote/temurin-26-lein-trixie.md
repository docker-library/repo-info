## `clojure:temurin-26-lein-trixie`

```console
$ docker pull clojure@sha256:4bd19371dc01e8a67bb3d1b8b00e24066547f5c140186f4e1b9f642bc8048c58
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

### `clojure:temurin-26-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:afcaad6c7b2c86c56c2d747b5d3780971444116d39ab3908d61bc4f21f9002ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167243474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9ee50437277818e6f9e73253aac7e5180daf1128a76d3da545ee8defbe33ad`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:25:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:36 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:25:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:25:36 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:26:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:26:48 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:26:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:26:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:26:49 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:26:49 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe99f7d6cf92fad6da8264b5e16f2b9debfc48368440724eb2e6750cbafcb180`  
		Last Modified: Wed, 05 Aug 2026 01:27:08 GMT  
		Size: 94.5 MB (94524336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218bd0930c4555c3a7fccbd121cd27cb6ce17262ca7a95d1a56ed3adf916b2d2`  
		Last Modified: Wed, 05 Aug 2026 01:27:06 GMT  
		Size: 18.9 MB (18891220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4c73abda3c6ab303239fc6b2dd37a5725ffe7475fc34752090ca4d40b07c974`  
		Last Modified: Wed, 05 Aug 2026 01:27:06 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f10e52d92d749c8c275f057771419e61a20ceb9cdc4e32e2412901e8f7e582c`  
		Last Modified: Wed, 05 Aug 2026 01:27:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6edf8b87bcccca05510e40e4f63e7bfbe9a99e758263fd20d1955b4ce115427c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c562a7c3926fa83c2102ba615b69341be59852303261f8cf99fa44888d56dda`

```dockerfile
```

-	Layers:
	-	`sha256:dfb44e80b6b3f23a643d70bdb89f34bc98e0a91261c926b79e6c89b3755bb044`  
		Last Modified: Wed, 05 Aug 2026 01:27:06 GMT  
		Size: 3.8 MB (3782747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3002c886483f600513e7a3b25c0e837c7e28e6cd89c0f8d614a85560dc0adb13`  
		Last Modified: Wed, 05 Aug 2026 01:27:05 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:04b2473835a73cb93ad2915c78ab22497d4ec2191607e2f943465ac3244c46a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166533214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e76ef6028a3376ae9c910b1d0ad956d6ca2d05de1af3b588db09d99f283bec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:31:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:31:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:31:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:31:38 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:31:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:31:38 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:32:57 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:32:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:32:57 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:32:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:32:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:32:59 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:32:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6289e3e71e86e36999ca0b2f3a4e11cdf97bbc8faf20eea43e79e041a78d5d6c`  
		Last Modified: Wed, 05 Aug 2026 01:33:19 GMT  
		Size: 93.5 MB (93504366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd7edb5030962e6a9f653ea1eb969f710ea6d83818ea4f85610735d17ccb97ff`  
		Last Modified: Wed, 05 Aug 2026 01:33:17 GMT  
		Size: 18.8 MB (18839406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8905f459555d07846136f58e952c63bae8e7659dc74346922dc18116a0cb547`  
		Last Modified: Wed, 05 Aug 2026 01:33:16 GMT  
		Size: 4.5 MB (4515168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9704b94edd246e7f8664523b2cad2f8a345722f5fefb96c00d98da1319593fbe`  
		Last Modified: Wed, 05 Aug 2026 01:33:16 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9722df3268a3bcca1dff9a9d7696bac06c0e77226e43946e439458cf8492ac4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20a1f050993001fc878e8c6a4bf12ff62dc4e6d85d0d5297b18c7a66480a8c55`

```dockerfile
```

-	Layers:
	-	`sha256:e684f0b5e54a88db60f4ab324d539ab4d8a4180ac5e5179f9cb02b6e0ebd0bdd`  
		Last Modified: Wed, 05 Aug 2026 01:33:16 GMT  
		Size: 3.8 MB (3782984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4cd660dfe9160b47b14c123c28492329ad7af8d4f8284044bf20a41785366af`  
		Last Modified: Wed, 05 Aug 2026 01:33:16 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:92d033eb26ae2fd1434fddf7604848ab47839830a7104b54acc66cf6ca98e7b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170487904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3343bd34f45c0dcafb50526bef75920c029e34cf6f73c3aaa63fc4b71218e68d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:58:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:58:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:58:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:58:05 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:58:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:58:05 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 08:00:54 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 08:00:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 08:00:54 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 08:00:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 08:00:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 08:00:58 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 08:00:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecbfb1da30f68e5c90c9a0de84cd20ef34d884a56efe1330e00aeb79f7446bd`  
		Last Modified: Wed, 05 Aug 2026 08:01:33 GMT  
		Size: 93.9 MB (93902057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b19fae54561d3e9a6dc14a3288a8bd872d977208f61e790132ed99bb240b3a3`  
		Last Modified: Wed, 05 Aug 2026 08:01:31 GMT  
		Size: 18.9 MB (18936598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9620181b4572071aa19b8394da03c1869fd1a5be1b2545134d638c94290ebdb`  
		Last Modified: Wed, 05 Aug 2026 08:01:30 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01373541274a40c302ceeac1224776741345559afe99f523146cd7408f3e849a`  
		Last Modified: Wed, 05 Aug 2026 08:01:30 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9151780a54b3f0e84f7888d1efcccbc9e4871569122a5797f83847653e182139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6d6ebb6a56b1df103caf16caf865b505155bd3b9c5c52caf9ee29bfe243dbd`

```dockerfile
```

-	Layers:
	-	`sha256:454db0d7d9d3d8c9997aaf789c54dc4d3e7e2bf31924ff79c775df45c7fa9b56`  
		Last Modified: Wed, 05 Aug 2026 08:01:30 GMT  
		Size: 3.8 MB (3767683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:382a535165cb4aba154d2e20f0de6ae78a4a675647974d8f78d9218993c25c49`  
		Last Modified: Wed, 05 Aug 2026 08:01:30 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:73852b4747a594967a2e512bd7c5cfd195b69724e419b942b85eb369c21f3045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163356333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c95d56a068f1f4371c00424d6b3e8b3fd94e5ffe4f0ba30d5ea274a52421bf6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:51:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:51:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:51:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:51:18 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:51:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:51:18 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:52:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:52:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:52:32 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:52:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:52:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:52:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:52:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6973823e6df810f0c1f74c150b3996a6badda23c956392754dd05a1e1cd00937`  
		Last Modified: Wed, 05 Aug 2026 01:53:00 GMT  
		Size: 90.5 MB (90536967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca37e4186abe2c387999c879348823dd538ad09f4d8aafd4726d39f03f24529`  
		Last Modified: Wed, 05 Aug 2026 01:52:59 GMT  
		Size: 18.9 MB (18922290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecf5b4aa7994040cb3af63813b5b87857fcaecd512d6ad9e8bdfc694066c2da`  
		Last Modified: Wed, 05 Aug 2026 01:52:59 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a970f08682361b63c3483aa890a66e2504968978f48718c4fb733473b25e7c35`  
		Last Modified: Wed, 05 Aug 2026 01:52:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4753a71989420ac25440d05b0835d5f4272526e90dfeb0218ac3a06429334f58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3782071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23f4f3eb1c00bc2a59f3c66726682cbe8f1e055c5948c66b2aed3d1d5e56a2b`

```dockerfile
```

-	Layers:
	-	`sha256:5e03ce80ccaa07c4d0f7d4e6b520f55f149d814bfcfac129c009232143f6a047`  
		Last Modified: Wed, 05 Aug 2026 01:52:59 GMT  
		Size: 3.8 MB (3764360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1d8233a20a185ce7c1b11cc19ca168a8a3396e8349184fafe86124202c095f6`  
		Last Modified: Wed, 05 Aug 2026 01:52:59 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json
