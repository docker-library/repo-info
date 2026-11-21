## `clojure:lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:3b1394752d24c4d61bf22385cb900256c1c4c6a49d926790263bf0d947a3277c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f265e7e280de9523f7d225fe49c7a9bb04165c3b9ad5ed27d07d970d16161172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143727649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c3d12eac5867d2c2b2efca80a7e407a15e277f9111d4d383785dd8c9351d01a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 17:47:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:47:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:47:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:47:58 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 17:47:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 17:50:46 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:52:12 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 17:52:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 17:52:12 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 17:52:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 17:52:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:52:14 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:52:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78ec170534330ee55cf79f61dc5257af9cedb8b8bea19adbacfc358c52c0730`  
		Last Modified: Fri, 20 Nov 2026 17:48:50 GMT  
		Size: 92.6 MB (92613905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b906dd55a97659568e28af087d217a464580e79e51274dba310716b6e606f8e`  
		Last Modified: Fri, 20 Nov 2026 17:52:22 GMT  
		Size: 16.7 MB (16741474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3555a6d038c14429712d2b58362742401cb97eecb0b5d87c80f2e2508b0e8eaa`  
		Last Modified: Fri, 20 Nov 2026 17:52:22 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2bdb5adbf724f0c512f555f840de9a0b2b265cac70ed74e80bcc2e288308d4`  
		Last Modified: Fri, 20 Nov 2026 17:52:22 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dce9bbf7185ec0c1081d6c1eb9b23db7b2c972fec03b1051e0335a82d757be83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2358203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5145fc499c865ae22a2de7d822c6094c85646a4b83efd15b1a0fdf85f00ebe3b`

```dockerfile
```

-	Layers:
	-	`sha256:a1dccdd5deb0cd7dd1e62bc2f842c57cf4ae964860b4cbc07e97d13539e5acea`  
		Last Modified: Fri, 20 Nov 2026 17:52:21 GMT  
		Size: 2.3 MB (2339804 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29097e680a252776efe7a07a59897eb67c86bbb375d877bb5ace651ed1c15568`  
		Last Modified: Fri, 20 Nov 2026 17:52:21 GMT  
		Size: 18.4 KB (18399 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:81d193caa352acf5a41260a11ba01497ab902e389396c4da98a8b8efaeee1a75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (143001879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e83cd088ee18ac67dd7468a00b220e3384d2adda8ace9bcce8d553266993d64`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 17:44:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:44:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:44:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:44:42 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 17:44:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 17:45:55 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:47:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 17:47:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 17:47:26 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 17:47:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 17:47:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:47:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:47:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4ffe13e27aa957bb0a4f31aefce1bb362bb7a943ccac8feedae98555aa35f6`  
		Last Modified: Fri, 20 Nov 2026 17:45:43 GMT  
		Size: 91.6 MB (91554010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0424bf933e73887bf386300bb3816925db584620150d6c85b59f3f6f2ea14d37`  
		Last Modified: Fri, 20 Nov 2026 17:47:36 GMT  
		Size: 16.7 MB (16717657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f551f53c0121862e576a4900f93bb84f1e6b2d0fed9f1e12f6392283a9f9c98d`  
		Last Modified: Fri, 20 Nov 2026 17:47:36 GMT  
		Size: 4.5 MB (4515242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0dfde1733bc501cad488861b60c2e57666504c3af537460c72ca074324a0aa`  
		Last Modified: Fri, 20 Nov 2026 17:47:36 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ff48c9e80be62983cccd7b373f8ea9eea2920bb80bc3e2a307d028df07f424d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da4ece50e45e19046facca030bb18182286d1b0a20fbcc9e69d3ce1c0e44f8a6`

```dockerfile
```

-	Layers:
	-	`sha256:11d9d849fd64ae77e6594fa0b3d734422c3885cb17ce7256e12a281c84f41ac5`  
		Last Modified: Fri, 20 Nov 2026 17:47:36 GMT  
		Size: 2.3 MB (2339435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c07578c1b39d7b4790bc9c03b48417f74ed759330ffd593dc49b496ab9e40dc3`  
		Last Modified: Fri, 20 Nov 2026 17:47:35 GMT  
		Size: 18.5 KB (18544 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:35cca81d99bebb9c02cf810ba0919cf2a9b5f2c40b4d41e257aeac72d7e79535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.1 MB (145082358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cb27cddb412a9d985691045d4f2af6ff1d37f9fb134ccdbd9e00eae040c1a00`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:51:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:51:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:51:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:51:04 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:51:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:51:06 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:54:14 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:54:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:54:14 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:54:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:54:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:54:18 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:54:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a69284f7eb071fdfb4711ceca0eb2d57c4404d3dea9963ba6a60f092a2d00b9`  
		Last Modified: Fri, 20 Nov 2026 19:54:54 GMT  
		Size: 90.1 MB (90119618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362a7a5c497d5fbd15ae87469d1adb070dccf6e5d3e22b5f3b6b5bcf79ac83aa`  
		Last Modified: Fri, 20 Nov 2026 19:54:52 GMT  
		Size: 16.8 MB (16778939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc490158c44631a0c2d5b0fdc4912b4e7361ab6ef347693c992f917a9288ec0a`  
		Last Modified: Fri, 20 Nov 2026 19:54:52 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a650471a6d9c09783393b75282aa5bd07f91ba30da498c344bc6f480ee159f2d`  
		Last Modified: Fri, 20 Nov 2026 19:54:51 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:44de35c5a8bfe9d4e068971a4bf5000b55d420f520ca09eb4b09cbf62d0b7ff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2340703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:488f0275541dc451e6d84f12c90415b47c291f6b7ecf10376d84e7afbfd4f45c`

```dockerfile
```

-	Layers:
	-	`sha256:e6fd94a03f345b51f9bab912626a30f47cdb901f1f24cf4f0dd9953078497248`  
		Last Modified: Fri, 20 Nov 2026 19:54:52 GMT  
		Size: 2.3 MB (2322247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0468b9145af7c9bb435a0d60b31afa07bd68b64629ca225d1a350159941b063`  
		Last Modified: Fri, 20 Nov 2026 19:54:51 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json
