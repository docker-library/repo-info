## `clojure:temurin-26-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:4faa91ca6452dfccf4d19233c119cd73f81ca206736f1234099cde2de2e37690
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

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:6c72cec673f32a6dc64c684528c7191706c857da16e99f9289ebfea2eb2af784
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145580147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b725ea41e7553a4906c2af72090a0f19459f622677e2d96e53312d573089f3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:56:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:30 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:30 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:38 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:57:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:57:38 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:57:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:57:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:40 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45060a49264e9cccb9f0061c14f385980845dc6336c9f412a907ac95b13e3ac6`  
		Last Modified: Thu, 02 Jul 2026 05:57:58 GMT  
		Size: 94.5 MB (94524304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17b2a160d868915eeeb01889c25bafe4b305a725b84aeb417dbac62dadd5ebc`  
		Last Modified: Thu, 02 Jul 2026 05:57:56 GMT  
		Size: 16.8 MB (16754775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ef16233387a2421846ffd16f0b89e110f9fd80fea54d7baf827c0ff5751b37`  
		Last Modified: Thu, 02 Jul 2026 05:57:56 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7882841ea8a262d8b9b4ea244dcafbd1e34483366681fc6b2c3ac33a993de59`  
		Last Modified: Thu, 02 Jul 2026 05:57:55 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b8860267bc58679cd61737dc8875e75bdfecd90bd730625a2e6abbbe8a075d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6677a83c2f97137473eda75b58a27269b8d34d8b8d3c43c2c6dabd371037b666`

```dockerfile
```

-	Layers:
	-	`sha256:0b183bd8f6b4649ee1e7e98b56fd1182dc43f15d6f1c44d7eff12d494ed907ff`  
		Last Modified: Thu, 02 Jul 2026 05:57:55 GMT  
		Size: 2.3 MB (2331972 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:667a8bde397358fd6989a69f14ff141e8c76e93ec6ad9110caba64f20fa3c104`  
		Last Modified: Thu, 02 Jul 2026 05:57:55 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ba253006217a1591ca1a83dc592aa1af5e2f92183683e521c03cbc56592c2008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144879870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfbf753c6df9d5304b42cee8fa03efc0ccbfd2ddae06afaae6eb9f7807e37e03`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:56:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:42 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:42 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:58 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:57:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:57:58 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:58:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:58:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:58:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:58:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:966bb11627f9504bfe93b6ab1a008b16ebca5207e0abee826d9f1787ff2bb7da`  
		Last Modified: Thu, 02 Jul 2026 05:58:22 GMT  
		Size: 93.5 MB (93504357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fde7e6c733975b712c78e9b41225ee7f8b5337d3de2692fe35babc03163e51f`  
		Last Modified: Thu, 02 Jul 2026 05:58:20 GMT  
		Size: 16.7 MB (16711330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b28e751423eb74c9000d7a800901511da2a4518714b570e374b1892c161186`  
		Last Modified: Thu, 02 Jul 2026 05:58:19 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e37fbb55129c7928edd2fe824a92ee585e3dbc63c1aada3a2578aa2bd2ed9c`  
		Last Modified: Thu, 02 Jul 2026 05:58:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:63a499dae5ce86d52af16cca662e25a9ff800746f0742e5e0a3df4d4969664a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd60aecd9ed4d31e5f0c9c027539fc4e3478997ce219bd1de2c1ebcc08aef858`

```dockerfile
```

-	Layers:
	-	`sha256:974d0c34f0036149c5cd18534ca9ba45a7fd8f8272a1cec131b09f5523a05c35`  
		Last Modified: Thu, 02 Jul 2026 05:58:19 GMT  
		Size: 2.3 MB (2331579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1deff3ad35ff13cff06844c5037a5034c5c5091177de51e334f1a7bdae2117e1`  
		Last Modified: Thu, 02 Jul 2026 05:58:18 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:58577378a5402b9196fc247532cdbf650b07ec4b9fc6770e04fda4eb20cf10b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148806386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b39de72e840fc761e9176edf8a2264563c202033639aafeca86ece022bfd9f6b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:52:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:52:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:52:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:52:18 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:52:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:52:18 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:55:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:55:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:55:15 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:55:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:55:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:55:18 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:55:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078487ca4213252e4881f7cc327dd4300ca348cc226eceff71c9989d78521701`  
		Last Modified: Thu, 02 Jul 2026 07:55:55 GMT  
		Size: 93.9 MB (93902051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43503e5a1269a9414e4fa464ae77ea9f3ea4e0c73174ab2a23c03c18ee8f407b`  
		Last Modified: Thu, 02 Jul 2026 07:55:52 GMT  
		Size: 16.8 MB (16782325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36592f26358afdd9e6d4a53588f63f01985b708c2ebe7f20477fef9963108d9d`  
		Last Modified: Thu, 02 Jul 2026 07:55:52 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee61e175036eaed7cebe07a58e5d84418d794a6e6b24745acaf1aa72050fc13`  
		Last Modified: Thu, 02 Jul 2026 07:55:51 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6606f997649a5a74907728e1d3454566f178e93f58f433d9a04cd3f6d8ba7519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef73e45b42cb41c2239646e3a91844ec3c788de13ecd695bcdd228cb6e44764`

```dockerfile
```

-	Layers:
	-	`sha256:bf07e22036b01bb2c66c1ed71e49b639d420efa03ee0f0cf1a39bc9c4910febe`  
		Last Modified: Thu, 02 Jul 2026 07:55:51 GMT  
		Size: 2.3 MB (2316888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b87d25ccf8a6715e652ac801b7a6f24337408b0baa4717850e1ca02a9925f7de`  
		Last Modified: Thu, 02 Jul 2026 07:55:51 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:628ab932154c613141bc76015d5183f87ed1c5e093d342ccb56ac89d61c0215e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.7 MB (141683814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc030db5acb998156ff0d3e365e48da562135ff7b7e456df9900419d0e74d373`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:01:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:01:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:01:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:01:00 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 06:01:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 06:01:00 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:02:06 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 06:02:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 06:02:06 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 06:02:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 06:02:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 06:02:08 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 06:02:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581b026094aba9ec6772596ff4105cb891bdef383dd954f731ab5ebd64282833`  
		Last Modified: Thu, 02 Jul 2026 06:02:32 GMT  
		Size: 90.5 MB (90536929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df26f3d85a5a8bc7237cc26a07d639e36676f87c69b853dcab5b1a82a98378ea`  
		Last Modified: Thu, 02 Jul 2026 06:02:31 GMT  
		Size: 16.8 MB (16779854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e23ee974af96d2f4e9bf8135b923d58076dca3c2d9b4c00485f32555e50a9964`  
		Last Modified: Thu, 02 Jul 2026 06:02:30 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b265f50d28c63850846d9d5ff612b439692565e1d2c7321c2f3700dfbf0e5e`  
		Last Modified: Thu, 02 Jul 2026 06:02:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3a3884a2403db2a75fdee27f591f4cb4ae31e51df487d3eb1a8fb145715a857a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9f9199e4aa635f50505bd3dcda93ef66a3f2e7211f6465874c23bf0092702d`

```dockerfile
```

-	Layers:
	-	`sha256:2bb48c0e3b08f1d46b692ca81597be1bc5cb0d677bc3585d3d853e71e6287dd9`  
		Last Modified: Thu, 02 Jul 2026 06:02:30 GMT  
		Size: 2.3 MB (2313585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fa369a217c92e52d09d347d2bfa1d78240f5c57ce8faa40ac0bdf42dedf08d4`  
		Last Modified: Thu, 02 Jul 2026 06:02:30 GMT  
		Size: 17.7 KB (17745 bytes)  
		MIME: application/vnd.in-toto+json
