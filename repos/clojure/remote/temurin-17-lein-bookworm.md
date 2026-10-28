## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:5ad3ac353e9105850ecba4487836cc5e3924749cd269106b0157f192d2f14453
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:04f051bdc890d07ddf0c90549931c2ddbddc8a9a2d38120c74960795159c849d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218998493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b794af2754396844f4c51f9229e433f4cfee4d262a7d3ac588b90183da7dbb6e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:11:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:11:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:11:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:11:11 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:11:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:11:11 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:12:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:12:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:12:20 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:12:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:12:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:12:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:12:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d079227ed201ee07ea7fb50063047e53c64c9f1dfa1b1095017042d6cd764961`  
		Last Modified: Wed, 28 Oct 2026 02:12:41 GMT  
		Size: 145.8 MB (145825460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd8028a8c9d089048d9f5272c6fee4cee11272c08e25f9e2573146a89de21c9`  
		Last Modified: Wed, 28 Oct 2026 02:12:38 GMT  
		Size: 20.1 MB (20132834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf36f3b1960243ddadf69469319ce0bbd6585d994741cff4307c54d26d0c9b73`  
		Last Modified: Wed, 28 Oct 2026 02:12:38 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48cd9e44f895d873c8c8439136a9e8194bc23a01a81c70bd350075fe79d6224`  
		Last Modified: Wed, 28 Oct 2026 02:12:37 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:13235ee5c7e4522da5e3c42a4f029d4a46ab0cfc490ad9c9b4e339173ed95a98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2c4838d8f22831f352dcde40792550100de839c90e9f780a75d88892a542c7`

```dockerfile
```

-	Layers:
	-	`sha256:9e4b0063cdd13c05b9b0b0fff214538517abf5b3960952e6a6953eab327c11fa`  
		Last Modified: Wed, 28 Oct 2026 02:12:38 GMT  
		Size: 4.3 MB (4288004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fff4035d65c588eea8cc3aa231b1f5d6c05f24fe4c133dc923b3f8133e6660c`  
		Last Modified: Wed, 28 Oct 2026 02:12:37 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:41d098fdc721145240585d557d5d9af48b6fc28a412cbf95f4bdcfa18b894898
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217545310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be4f5fcf6aaa17a1ef281dc48c4f9f17fc8303a55571da40b8846d5c17b8631d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:17:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:17:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:17:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:17:57 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:17:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:17:57 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:19:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:19:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:19:13 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:19:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:19:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:19:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:19:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10a9ab9f7f755b9292ae5b01024eca52d5fcddedb3d999d07345ac2c8462163`  
		Last Modified: Wed, 28 Oct 2026 02:19:36 GMT  
		Size: 144.6 MB (144648276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a2e72dc8509ca4f63e0689827be486edb9cf5cdf93d092c025b0ad3c823ffe`  
		Last Modified: Wed, 28 Oct 2026 02:19:33 GMT  
		Size: 20.0 MB (19976234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5b07be62f9ced394ccb0cec476e00cdddf720d999aa02c918555f757dcf884`  
		Last Modified: Wed, 28 Oct 2026 02:19:33 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c57fc060c464c7a7299bf9c57a70204d9e6f1718193de13d3855f79fa34ce7`  
		Last Modified: Wed, 28 Oct 2026 02:19:32 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f2bb74a06860d920df19378ebbb09416dd87eb862b5ec7c74c81f52e6917c69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4305478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d90a0dca1ed36a39b8125891727e4d3c83c56da7fc467cf681ba625eb52ece8f`

```dockerfile
```

-	Layers:
	-	`sha256:b65ceb12284c882341fb5c9052588d02f3a9a470a308b7be8195a4a8a034adb6`  
		Last Modified: Wed, 28 Oct 2026 02:19:33 GMT  
		Size: 4.3 MB (4287619 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb96ede6786c84362280e7492d1b10e31542ef28fcabcde1182dca803c7aaad8`  
		Last Modified: Wed, 28 Oct 2026 02:19:32 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2f47c970c917796c8b20502d3664024b9628783e0e918eb67b29e715c96bac98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.9 MB (222908533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb916748c50ad6b67b905526457b967dc9ac99dd19649ba5093f2aaae8f1a3e7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:16:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:16:32 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:16:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:16:35 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:20:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:20:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:20:52 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:20:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:21:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:21:04 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:21:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbee517126a754df9c55cf053e388fa44232986d93d455338c5c357816aaca83`  
		Last Modified: Wed, 21 Oct 2026 10:22:05 GMT  
		Size: 145.7 MB (145671508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea6f73d5f87fb8cbc44e08783ad3fedc78cf9317e46c84752e25a778f0747d6`  
		Last Modified: Wed, 21 Oct 2026 10:22:02 GMT  
		Size: 20.4 MB (20356650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a1044399800de8070bb9769f314af3a571a87cca4bc323846dfd67eece5193`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1d60035277a03af11de013f97d085e5ce04a4af1bce0ec03df03719fce1f1d`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:70993cf97ce839df7542e6dd07bd1b8f1903162ccfd2e3a6e1c258ae847273e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4307646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41ab23a92d7fad7adf0d445d85589e68fb37e183a3c790e9f3cf4c42fa33d1f`

```dockerfile
```

-	Layers:
	-	`sha256:b98b8f7d25dbf5c3a69385ca1b63a7aa6c785efc32b4a347f023796c4a5ef02e`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 4.3 MB (4289865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16dd947db815e4cf7f40c2f82d3fcfb6cd41d4fa82ca39ad4c03ce30a8bfbb69`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 17.8 KB (17781 bytes)  
		MIME: application/vnd.in-toto+json
