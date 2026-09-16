## `clojure:temurin-11-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:f059d2ec76c24d436f246cb25349f1dce8bb99dc90a0527416183f00fdbe6506
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:8f0d41b6297d5617f0ee68c2ecb59041ad25e3c6f500cdf77999546fae6c8d35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.5 MB (224540647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cec516866d2f179832012e391cbfe8466098076b395db7d1941a4745d6cd974`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:32:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:41 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:32:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:32:41 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:02 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:34:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:34:02 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:34:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:34:03 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9ce32f269c191feceec05a6662a50817fcd77132d537b70a40428037d21550`  
		Last Modified: Wed, 16 Sep 2026 04:33:12 GMT  
		Size: 145.9 MB (145861349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d064afacfd056e40422f988b0cb2c3ee9685473e50ea66710cc82f4d128cbd43`  
		Last Modified: Wed, 16 Sep 2026 04:34:21 GMT  
		Size: 24.8 MB (24826260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5197b54e39446bcfc3ab21cabaf1996c5a293a099e1d8e7e1e3c0861a4fb5c`  
		Last Modified: Wed, 16 Sep 2026 04:34:20 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:def0f106c4348eeeb1d0ec177ac9e3a60228025e69225d8e14d48eddab2fa690
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3858118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ac013e3eceb298e134935f2d3b1e2777fd0d9ece110cf928a7a471b4cc04355`

```dockerfile
```

-	Layers:
	-	`sha256:517ec48a4d9c86529fdbc5a00599cc6dd4229a65b85415654148d8f79d49fd0a`  
		Last Modified: Wed, 16 Sep 2026 04:34:20 GMT  
		Size: 3.8 MB (3842384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c14528c864b648fd9b9cc5f7d828185effb31839727c505301f6a8efd74e94f`  
		Last Modified: Wed, 16 Sep 2026 04:34:20 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c902b4a2d83de8bbaa1881d5af7465c6e7baa2160e6df17dc1b31662c0e21842
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.9 MB (221879312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35e366653e1dbef7b11f95fee71735638c0eddda13685682a6294aa99b7eb302`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:32:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:58 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:32:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:32:58 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:19 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:34:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:34:19 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:34:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:34:21 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97359b038281ad390b6eac5fb10fa3dda81efa6c37d6d7dc455b28df6c5e93d8`  
		Last Modified: Wed, 16 Sep 2026 04:34:42 GMT  
		Size: 142.6 MB (142566294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c0855f50de0d06f539230c4b76a5cdd897ae033e140d0005656247b9c1cf7f`  
		Last Modified: Wed, 16 Sep 2026 04:34:39 GMT  
		Size: 25.1 MB (25092928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a889e85cfd212acd76f20de92265560d3275c2e48432fa37e1e12fcb88be6e23`  
		Last Modified: Wed, 16 Sep 2026 04:34:38 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:874456fb089b815ac36375859d10ef2809c5a26ca17bc8337fe64ad003387147
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3859097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3be41f8d246c70e1d0193a619081d6d8976ec5128da91378a89f4735ecfc6f`

```dockerfile
```

-	Layers:
	-	`sha256:1ec21d6c6bb8e73f1be3c3fc41e6906bd13242a50698154d84faa70f6ebac62d`  
		Last Modified: Wed, 16 Sep 2026 04:34:38 GMT  
		Size: 3.8 MB (3843242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac18964ce0c24767c0fcb1e56a911af6a12b310569874cfc7699d29c700d0880`  
		Last Modified: Wed, 16 Sep 2026 04:34:38 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:47787ce579ce1fd235e445a6c6932ce285b8dc2755fc160c651c2ee134d3d77e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.5 MB (213478987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b30ba377018445c2617aa39b90d2d78f064a972b81fde37d2645167452e91d6f`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:35:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:35:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:35:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:35:58 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 10:35:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 10:35:59 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:39:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 10:39:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 10:39:24 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 10:39:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 10:39:28 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4c681dd5309fd8c54e8e52a77339c3ff7b581ac689305d4cd6ec4f4cb1643b5`  
		Last Modified: Wed, 09 Sep 2026 10:40:10 GMT  
		Size: 133.1 MB (133089500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bdf1df7d87f2a6ecfe2095d53a2bb782c4736734a3cfac9059ab24574211088`  
		Last Modified: Wed, 09 Sep 2026 10:40:07 GMT  
		Size: 22.7 MB (22709966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd8213e1b05a37a384a029695110b227c8846822aef7f35c2822beece4e61f8`  
		Last Modified: Wed, 09 Sep 2026 10:40:07 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ea1a2213e6233a8e50fe7e4491bf66be0f9ab39d4ccf6fda91a47b3440fd096c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3858511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51adb767a46726adbf37b10ccb7c50e529fbb99ef82a35def9a6ac64a1124dc`

```dockerfile
```

-	Layers:
	-	`sha256:f4c260f232839cd41f79916b1dca0979b09c324ee70f74b0d1e70fdd8f277699`  
		Last Modified: Wed, 09 Sep 2026 10:40:06 GMT  
		Size: 3.8 MB (3842733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10eb01bf6cc009e6cbc181432026ef30e3ba0d01616c1585be1c80a739dc0f71`  
		Last Modified: Wed, 09 Sep 2026 10:40:06 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json
