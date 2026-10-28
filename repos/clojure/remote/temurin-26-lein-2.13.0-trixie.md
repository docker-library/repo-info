## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:9981fe3823c3f88d78beb3ed031dced610e4bf4440a84260ea3e2ff4a53c9c8c
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
$ docker pull clojure@sha256:69c40736cbabbd13cd4a57a9cb78a3ffba59ec48a39bb22839ec6d4b3aa19385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167372894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fa82b75a064108dd88fbf2574e70668ea5ebd56ee5afc267bdbed62c94f8be`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:15:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:14 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:15:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:15:14 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:16:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:16:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:16:40 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:16:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:16:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:16:42 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:16:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9ea79ce21cb6a16e5e001fdedde8b4ae4a8eec4717213a614dc1c835d64b11`  
		Last Modified: Wed, 28 Oct 2026 02:17:02 GMT  
		Size: 94.6 MB (94563504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7333d020efc83ed6ff6cf912db2d84b9bb85a7ee3cdc730c52dde62b2eb88b78`  
		Last Modified: Wed, 28 Oct 2026 02:17:01 GMT  
		Size: 18.9 MB (18885859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6edc318f4a974cda83f012e5257e66aa10cb74143ec39a974ae13b8071566df4`  
		Last Modified: Wed, 28 Oct 2026 02:17:00 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604a7b4b512048c74a4fa26e90d3b494581981ca09564abcf8ea7859a2ecc6f8`  
		Last Modified: Wed, 28 Oct 2026 02:17:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4afbeeb138cc96fb3af0e2096e8be6419f7aee5cdbed80031c3c2da63f352dbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35846d3e8b33dee2a52d47e3b88cc967a37de2c120e7c97e43ca769d6ee0d6f8`

```dockerfile
```

-	Layers:
	-	`sha256:5818df329d02d42ea0e0916f6a761d98f039b605000ebc1243ebd0e6f7ff0630`  
		Last Modified: Wed, 28 Oct 2026 02:17:00 GMT  
		Size: 3.8 MB (3791363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c343bf486bbcec5d0b37560b05794cb8a152ef6af76648e715eec9332d34739f`  
		Last Modified: Wed, 28 Oct 2026 02:16:59 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:07733365a81db208af57d3fe36717be5f1ff256e288df0964f7524ce665fa5b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166689988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee29e2f9a426c62c6344a381526d306e7b4e5306c400950a9b2b6695fbefdb0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:22:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:22:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:22:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:22:14 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:22:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:22:14 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:23:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:23:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:23:37 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:23:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:23:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:23:40 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:23:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4fb51367b04deb0603014ba0a0110758e168a7a2eb61a621d1214169e3785d`  
		Last Modified: Wed, 28 Oct 2026 02:23:59 GMT  
		Size: 93.5 MB (93543621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f333522e9baf1c4576f0584e5624b5e34b4295f17c804493d65f4b3416413aa`  
		Last Modified: Wed, 28 Oct 2026 02:23:58 GMT  
		Size: 18.9 MB (18854585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f67e5f3b1b5bee84c522f8c578c604a1e5409d48e5d410886adf3ed4b9ac232`  
		Last Modified: Wed, 28 Oct 2026 02:23:55 GMT  
		Size: 4.5 MB (4515172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:947ef6c639c59711844f2dabb23c3ef58c07e56c681b5474038545a3927bdb42`  
		Last Modified: Wed, 28 Oct 2026 02:23:57 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7c6629be3b7a27899f008bfc6bba9b8d0a0816dbcae8933996b3cbf1b724114d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4713f371edb18c58e6107143986133f9f0bd84d754f3a166c05cac59936a2f44`

```dockerfile
```

-	Layers:
	-	`sha256:1b9c8165479388cb9d3ec99470acf411d0387b69387fb8de05e326cf4a71892f`  
		Last Modified: Wed, 28 Oct 2026 02:23:57 GMT  
		Size: 3.8 MB (3791600 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9967e4d7038414a2a1f3009932e6536dd8b564503aa5aa75339c02a7d0f2dd4f`  
		Last Modified: Wed, 28 Oct 2026 02:23:57 GMT  
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
