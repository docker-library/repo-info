## `clojure:temurin-11-lein-trixie-slim`

```console
$ docker pull clojure@sha256:c018f49f924d7ef4547eb23a6abd92a71049fe7475ed35d6482d51f01ea3a2aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c889f513651db9f854ba4c437f6e8be3b3f94ceb1d59059553ee5ef73c4b244a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196976621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3482f16e3151982279cd921d612751140d05497f36730ee93f57fdfed72463e8`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:42:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 01:42:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 01:42:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:42:27 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 01:42:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:10:40 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:11:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:11:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:11:55 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:11:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:11:57 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5b011ae38f640783022777d36ee5b2564437535906e142fb869dec605982bc`  
		Last Modified: Wed, 28 Oct 2026 01:43:16 GMT  
		Size: 145.9 MB (145864300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20206b7a89ff5a91f8cc803fcf2c89be62055ed89fa577ac53a26ad813fd9802`  
		Last Modified: Wed, 28 Oct 2026 02:12:06 GMT  
		Size: 16.7 MB (16741837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b23e0150d6f50b0edc552a2fb3436a467c1cf10fdadb36c70e25d0e7965358`  
		Last Modified: Wed, 28 Oct 2026 02:12:05 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:064887690ce7cf1ba27a3359de7f8d2c710f808729311afc90b80b24dc13b1b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2406079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ebed350b01442c836e63c96b29c71716478289d8973dd5d016286939ee482a2`

```dockerfile
```

-	Layers:
	-	`sha256:88a4ed97102994c8ce0913b071cb3e831864dd1a5d9a838fb2f75ec46f117704`  
		Last Modified: Wed, 28 Oct 2026 02:12:05 GMT  
		Size: 2.4 MB (2391270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:093e8314dfdb8f019ab89470dad221a6a4722489b145d1459bf0243885ca0519`  
		Last Modified: Wed, 28 Oct 2026 02:12:05 GMT  
		Size: 14.8 KB (14809 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:61aff3703ccd969c0087506ff81d88e6dada85d297c0f17e6d1e86c9558cf6a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194023135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb0f8f6643148f6dacce4d38a062d69845f5140074fc5522ab6c26223137c14f`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:17:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:17:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:17:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:17:37 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:17:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:17:37 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:19:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:19:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:19:03 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:19:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:19:04 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c741bbb13690b44e2614070af958280aca0aa97871a09f59a8e429ab938c6c9a`  
		Last Modified: Wed, 28 Oct 2026 02:19:23 GMT  
		Size: 142.6 MB (142576595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a0843e260253f05cc84bd1ea28c73490d4dacfc97f6446c9018aaf1092a4567`  
		Last Modified: Wed, 28 Oct 2026 02:19:21 GMT  
		Size: 16.7 MB (16717827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e83c097a67de348e4ac5944f7e7c0433144d7c53b5088616dae5cfe950e439`  
		Last Modified: Wed, 28 Oct 2026 02:19:20 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2e7760f8f60ae24ccb643c13975b310d403b02f4110ac63f22ffed2c388899e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6262ecb3a8c141c9af60e42c77cbc62311cb7f9b1cc059e22fc2c79223c5f6f2`

```dockerfile
```

-	Layers:
	-	`sha256:f33bf8c9871828aea8168bcbca2570a3824c06c2b4dff6fc0e814cfc5b633e95`  
		Last Modified: Wed, 28 Oct 2026 02:19:20 GMT  
		Size: 2.4 MB (2391498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42409a16cbbe41999f5da7a6c0ffde91710b3442ed3a8aed2eb942c6d14ffdfb`  
		Last Modified: Wed, 28 Oct 2026 02:19:20 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:14cff27cb238c18a2fdcbcc6e9edeb5df8ebd2f6bf3894be85a98a3424381b21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188041895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67d77999195654ac077e0b5a7a87a9aa381b17df655a909a1fa36f14c24532f6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:04:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:04:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:04:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:04:16 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:04:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:04:17 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:09:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:09:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:09:26 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:09:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:09:32 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcac8f1fb37221206ec9e42f91e7f9060981927dfbb2129eed28dc10e1790b7`  
		Last Modified: Wed, 21 Oct 2026 10:10:39 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f61e5f91aff23c7f73e444db36fdb5cad49f610ce0f2ccd82f2318212bf15ae1`  
		Last Modified: Wed, 21 Oct 2026 10:10:36 GMT  
		Size: 16.8 MB (16779576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0ccd1f29dcc9bb0c2a89cd4b0452c2879bc348936d5cf14e7ecd560937b21f`  
		Last Modified: Wed, 21 Oct 2026 10:10:35 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:99d7d1aa6892f32256d25bc504d827850e7826ee2830458582b989ae4da2469f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a43f4b2a4ee4610a7cc30674f2f04a2261f30f78f644a198495db01c5a24a3`

```dockerfile
```

-	Layers:
	-	`sha256:186c17d594650366c0eb0af878a2b1eeb891bffab32451099b08f5802d203578`  
		Last Modified: Wed, 21 Oct 2026 10:10:35 GMT  
		Size: 2.4 MB (2391635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3016db481cbe6e0c4b930f22a072f268908d5a1ef24b1024d67f39bb2b6eaed`  
		Last Modified: Wed, 21 Oct 2026 10:10:35 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json
