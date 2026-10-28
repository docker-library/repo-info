## `clojure:temurin-27-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:edac1df71db41b232aa8bb3ce7f9b5c64dc52c40671b9e6beae06ab543664941
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:f225dd25c098f46240fc383dca560c21e0f6e3b891365fb36e3bad8080c4c160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166417278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec3d8a37adc5b88f905d6ddb2607746fe44f2db9c53730413622035f7b8c089`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:54:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:54:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:54:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:54:04 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:54:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:54:04 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:55:22 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:55:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:55:22 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:55:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:55:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:55:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:55:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19383c3132b94fbf5b44b420ff83446e0da17ef6016999a8732a303cffe2ec3`  
		Last Modified: Tue, 27 Oct 2026 00:55:44 GMT  
		Size: 93.6 MB (93622507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee160f7dc284fcbfe8092cc1315af524d17f094365247d71a32023b86d20977`  
		Last Modified: Tue, 27 Oct 2026 00:55:42 GMT  
		Size: 18.9 MB (18885507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bc8ea062f2771105c8dbc52716140e6e82dfafc7164f1c9ef4de0739e6349f4`  
		Last Modified: Tue, 27 Oct 2026 00:55:41 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a01e49bbcecc840f19cd86a40aa13d5dab82609757699040e5dadfad07088033`  
		Last Modified: Tue, 27 Oct 2026 00:55:41 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b4438409da72c2862b2aa7221d2be6bd38d15d64f384db032e6fa4341e72c869
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3807804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80db85c3825341b68490d350f2492a2b4b5ef9f1d408812460c86f255f9e3fb2`

```dockerfile
```

-	Layers:
	-	`sha256:728674ee4abc9c75a37128b3fac54ffdcd6809d6d5839f107acbb9a13f049ab2`  
		Last Modified: Tue, 27 Oct 2026 00:55:41 GMT  
		Size: 3.8 MB (3790094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3d6add2faff06c4302805a35d9d25c7734a74fd560f103866d050490d00628c`  
		Last Modified: Tue, 27 Oct 2026 00:55:41 GMT  
		Size: 17.7 KB (17710 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9d44c3ea9b3a8c54d2c70f53321c0bcaf2599e128bb4eeac3c3a02d1f4da9fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165779466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e5ff149ec740e28d349faa7f57238ea2a2e3fca6986ff8e23c7a8240cec20f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:23:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:23:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:23:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:23:59 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:23:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:23:59 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:25:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:25:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:25:27 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:25:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:25:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:25:29 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:25:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7585dddea18f01baaffdd77de622010c09febef066c43cced8a519c0d8da9111`  
		Last Modified: Wed, 28 Oct 2026 02:25:51 GMT  
		Size: 92.6 MB (92633118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a753295ad94df82b070fc77272465f799b05d479254010decefb57042a844554`  
		Last Modified: Wed, 28 Oct 2026 02:25:49 GMT  
		Size: 18.9 MB (18854534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9133abad3c35cfd8544854c2e0b892391b2f0b42bf723a194c7a9b00e7051ff`  
		Last Modified: Wed, 28 Oct 2026 02:25:48 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f74c7e1548d28aad7e37813b7f6977231c704786f50a8eaeeba0c560d88a772`  
		Last Modified: Wed, 28 Oct 2026 02:25:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:36771e49adb6d675407c0d5cd4af6ba59f92dd01ee86505b6f509bff0d49856e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3808163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95585314aa7a373ff548422c62575cf937a0fda65032f79163c87502aa2e5bb0`

```dockerfile
```

-	Layers:
	-	`sha256:1dce27a4c5fbddc99d844fafa34746d3cedb6e527b73ce2bfacbd379f540e308`  
		Last Modified: Wed, 28 Oct 2026 02:25:48 GMT  
		Size: 3.8 MB (3790331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2937da84a701f53c0075d454214bb1e96739d12dedf5257ad7c0f91854a82ce3`  
		Last Modified: Wed, 28 Oct 2026 02:25:48 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:689a1e9be0b5e850a2faf3eda4dfbd52632fcb266f60859dfbe18a60ec023d97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168919488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30e446d97672a5ba9cc7b15325700e986ea3c451f263a07dddbce5e465b8f9d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 11:19:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:19:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:19:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:19:57 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:19:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:19:58 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:23:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:23:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:23:39 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:23:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:23:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:23:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:23:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111adca601e00eaa2050db51193e634c29c863bee4fabc375f63ab9c17d0bc97`  
		Last Modified: Wed, 21 Oct 2026 11:24:32 GMT  
		Size: 92.3 MB (92255808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7427b215435103d55e93cea95f468d2f85d3604ced37df7c8aabf919b60bd853`  
		Last Modified: Wed, 21 Oct 2026 11:24:31 GMT  
		Size: 18.9 MB (18940458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c5a03014a0dc3660ccb6f5c617642955263bb49dce1ead72cb3434fb5af031`  
		Last Modified: Wed, 21 Oct 2026 11:24:30 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c853d0c28e9f758f4b1e5324b823fa5486b29929a61a282f38f83821142808`  
		Last Modified: Wed, 21 Oct 2026 11:24:30 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:db71dbc01be98108a32a76521ab2ab97af862bca3503ed0ae6704803b7fa2bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3792779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4d6414427ffbe2aecdce3eb295a84c4b842196245017d8b4fb53c1f2c656d7`

```dockerfile
```

-	Layers:
	-	`sha256:c2b41e5b6ac5f312a58a22375ef799e28d7a5ac3673b711547b5d8051b0f1fb4`  
		Last Modified: Wed, 21 Oct 2026 11:24:30 GMT  
		Size: 3.8 MB (3775028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7ec0425c37995dd906a3d373629315f4e6196da6c41a409823ddd5e589aeed0`  
		Last Modified: Wed, 21 Oct 2026 11:24:29 GMT  
		Size: 17.8 KB (17751 bytes)  
		MIME: application/vnd.in-toto+json
