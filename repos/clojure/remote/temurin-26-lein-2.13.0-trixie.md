## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:94af65c62c436fc6b2d04e8a9e72fd3c0e6056637ed3393926c5d0a5e9fa5e6d
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
$ docker pull clojure@sha256:845d2ac835e51b8a4a1d8f05561f092496dd9f2b41edf43c8a3e996838213641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170014440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776ed53d96ddd8e807c4fb61efaa6ea206495a24028992caf23aac95147f1879`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 11:06:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:06:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:06:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:06:16 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:06:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:06:16 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:09:49 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:09:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:09:49 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:09:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:09:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:09:53 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:09:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4eae5bc71ca350693525cbf16d93b518a15152af983a68ab96e88feb15b4ec7`  
		Last Modified: Wed, 21 Oct 2026 11:10:36 GMT  
		Size: 93.4 MB (93350823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dd16ac9cbf24542dc9db212fb19bc0795e65e32e57807c3a020446ebe0ca8f`  
		Last Modified: Wed, 21 Oct 2026 11:10:34 GMT  
		Size: 18.9 MB (18940399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7509a6fa842c33c8d34ac4ab71d3542dc35d7b6c24a97f2a7f85756d2aef0bcb`  
		Last Modified: Wed, 21 Oct 2026 11:10:33 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8072911173b86665537240f1f66b0ec68e452136f4c313185062c3a67a1a56fa`  
		Last Modified: Wed, 21 Oct 2026 11:10:33 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:32c9e584ff620f03a0ff37b809d98be77a1364a258954e7fbd032b71f216991c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3794052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ca49b89635908dd40e4c014134640a33f5db66da8793db26cbe043aa6122b65`

```dockerfile
```

-	Layers:
	-	`sha256:be04fa43e418dfb8ad74a53e15fc1b1e375cd33576eb02d435ee12d4de177228`  
		Last Modified: Wed, 21 Oct 2026 11:10:33 GMT  
		Size: 3.8 MB (3776297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d6188cd7d3b0d0baf6b806bf5be6d94eb0107b8126e9183af77d3426d62e7d7`  
		Last Modified: Wed, 21 Oct 2026 11:10:33 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json
