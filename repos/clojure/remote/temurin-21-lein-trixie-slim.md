## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:aeb3541bea97aa7503facb10410433aff27c2371a0f97d0abcbc14cbe3f431f0
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

### `clojure:temurin-21-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:746e354a44539e0df33ae2af47637cc2afaa6753ae442ed5c5bd9c5b8d715356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209222922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29517db6682aa24b25921bf5cc9678f8c486bff8c08737ee8a5e992e78a34369`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:52:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:25 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:52:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:52:25 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:53:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:53:40 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:53:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:53:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:42 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be577d8532594c1209b82a3103ee4a3aecc67bed53fc40a6a0ae3896b4d2cefe`  
		Last Modified: Thu, 02 Jul 2026 05:54:04 GMT  
		Size: 158.2 MB (158166915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6411ab6b7d5ea65058ac21a853a3100c97e1b0a40efffddaa7c3fc5dc1cafbc6`  
		Last Modified: Thu, 02 Jul 2026 05:54:00 GMT  
		Size: 16.8 MB (16754949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9942f5337da32733c6047ad651cd092633af47e4be258dbfd54f0d28571cf3a`  
		Last Modified: Thu, 02 Jul 2026 05:54:00 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fee33ef973870e7ab1d1c26d240ec80ac1d27c89b5c3c09623325ab36c9c090`  
		Last Modified: Thu, 02 Jul 2026 05:54:00 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:98438e4e528131bbc361d229fe631dff15cc147435e7abbab83a2eb3aa4eba6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7ac6b1d4531411109738d6362c0a3dc5d9857e8be44766456a327b3c7092b2`

```dockerfile
```

-	Layers:
	-	`sha256:fb6773fbe4cd3243189d0318a318541074f540000774b66e1849e0d36f836d33`  
		Last Modified: Thu, 02 Jul 2026 05:54:00 GMT  
		Size: 2.4 MB (2368933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18b0858451e63028e349274884232794aa69d274509429a3ac387b408920d8b7`  
		Last Modified: Thu, 02 Jul 2026 05:54:00 GMT  
		Size: 17.8 KB (17752 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ea48add623aa0b3e72bd30aa9719f3044392c4c8287c0c050f395d56969ee333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207836929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80bc8cf0cb2391e1820d65557e44d834b42ca8a109cd572cd6c74f31da398d89`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:27:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:27:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:27:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:27:43 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:27:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:52:52 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:54:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:54:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:54:10 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:54:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:54:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:54:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:54:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecada161c1a6e93c4615ad96f406e79e7694ec3cfbc22b1f4b56a0468f9ca083`  
		Last Modified: Thu, 02 Jul 2026 05:28:32 GMT  
		Size: 156.5 MB (156461303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96903239d6ca8199319597273f7fc146613149ae3aebc56942584b75b8c437a4`  
		Last Modified: Thu, 02 Jul 2026 05:54:25 GMT  
		Size: 16.7 MB (16711468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a110539cbdac84c5ec595947a4fcd53a20708a66432c742820b2c328633eb5`  
		Last Modified: Thu, 02 Jul 2026 05:54:25 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07dae84c67e0dbcd1a8e64b5abd8c96cb60328cbca65cf3d786eba720fa8db2`  
		Last Modified: Thu, 02 Jul 2026 05:54:24 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7cec32aba717f769569367017f09858b9eaee0843401c703e4da051d60d9a32d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79f2b6aebdff424255d0c023e3755dff38a2e1cf4950ecf376a153ef81aac24a`

```dockerfile
```

-	Layers:
	-	`sha256:86d25548335a537e3cd18da4e74981bf80bae6397bfa48f850a13374fdec1aff`  
		Last Modified: Thu, 02 Jul 2026 05:54:25 GMT  
		Size: 2.4 MB (2368543 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcbec55bb52441f9701c157f26572d8a8b8873c52e9f1aee7ab02e66975cace6`  
		Last Modified: Thu, 02 Jul 2026 05:54:24 GMT  
		Size: 16.9 KB (16919 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:220b50b5c15ee96500f6ec9f25571a3927491c187d449147e6b23da44b9bb857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213247018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43dae83571c6884fb83c9a8dfcea6979278d64410de40abfccee323b879e460`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:26:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:26:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:26:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:26:51 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:26:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:26:51 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:29:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:29:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:29:25 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:29:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:29:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:29:28 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:29:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39aeca2848781f46b3a0a018658f1a0cce201bd3ca36f6edfed66092cf88c481`  
		Last Modified: Thu, 02 Jul 2026 07:30:06 GMT  
		Size: 158.3 MB (158343255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb1ece4758f368db06a47299bf7588c0200c902ccc27693116e6286264c091c`  
		Last Modified: Thu, 02 Jul 2026 07:30:02 GMT  
		Size: 16.8 MB (16781713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe63ba71ce4493fbd7fd6da6bb4ee849f71f40a1a68aa9d379b88e46cc83cbde`  
		Last Modified: Thu, 02 Jul 2026 07:30:02 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5467388940262649fb6342337962408d27e7cd8bedddcff65c1a887fe4f2d2f6`  
		Last Modified: Thu, 02 Jul 2026 07:30:01 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:48c9db9c6bd470d4e7195ff9c7eb920742a2510fbdbe0b958133e8e641970028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35902a0e49b92a29fff944a89f7080250577f3bd94056e58eb20fc8fd4343e9`

```dockerfile
```

-	Layers:
	-	`sha256:9c7f86551c19dcc1500341288892cef220169cd1bd3ff894c2c985bcb6ca11bf`  
		Last Modified: Thu, 02 Jul 2026 07:30:01 GMT  
		Size: 2.4 MB (2369913 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11f7b8550ec3333667e4953308aefe521c7ca71465ac45e323e0897ce092752f`  
		Last Modified: Thu, 02 Jul 2026 07:30:01 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:d779fd20302b9aa136da5eba841dbe5680180effd19151f507a464e541423d42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198534919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f5efd8e07222553a4afd3bd831c0fcb548429ea0c1426f5997b23f52c2b293`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:54:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:54:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:54:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:54:03 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:54:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:54:04 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:55:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:55:15 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:55:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:55:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379993b8d831bf6e8d551a4166b64d4b23c835a33e7faa82cee1d571405cd45e`  
		Last Modified: Thu, 02 Jul 2026 05:55:42 GMT  
		Size: 147.4 MB (147388376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c07c031555695248a579f82aabeb7678467a3a761cc1651bd3ab28cf715c8d`  
		Last Modified: Thu, 02 Jul 2026 05:55:39 GMT  
		Size: 16.8 MB (16779504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39af8dfecf999bd690501e0596899dd7609d5bad807adceb27b66232cd8e07cc`  
		Last Modified: Thu, 02 Jul 2026 05:55:39 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0dbed2214de642e3f4489aa3c414ad2e5e6cfec5de596c74034f59d3c46b798`  
		Last Modified: Thu, 02 Jul 2026 05:55:39 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8ffc28a3aa56fd1b58e8f43f9ca1d7e759a9e7e8722b8c4c57ad8481a9eecbf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2383113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6ad51bff70906c56d74eccba98472bf85dd8d825618e48519be8300df0a5926`

```dockerfile
```

-	Layers:
	-	`sha256:34efe809a1e097eef8ceb238cd141302bdae01edaffabb3a7633a1e42ed46188`  
		Last Modified: Thu, 02 Jul 2026 05:55:39 GMT  
		Size: 2.4 MB (2365360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2fc4e42122757da6c970d2f3df3f8c48a1570a8ed1b91106aa185cb7a947b45`  
		Last Modified: Thu, 02 Jul 2026 05:55:39 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json
