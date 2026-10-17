## `clojure:temurin-27-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:85a1641a6ed7ed5671fa25a448fe8b14e759e4c34f44364dee2ade80aafca156
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:367e1d7a98f8c2ca9b6eaddafaa206a7c104483945c5e9ab37cc1844d04880ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.7 MB (144724942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e0eeea840283bd8a1d4a9e36cd1fcc0bf7e6994687bccdf7532406a0f1e28b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:55:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:55:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:55:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:55:04 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:55:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:55:04 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:56:27 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:56:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:56:27 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:56:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:56:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:56:28 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:56:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c44c91be05185b72cdb9179821ca414e3885c0824c109a0b1e7e29e6264d2a74`  
		Last Modified: Sat, 17 Oct 2026 01:56:47 GMT  
		Size: 93.6 MB (93622463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62bc1fc4bbad7d743a1b0d8d0e5db5faf68ee8c70ac802dfe60bf8208ffa65b0`  
		Last Modified: Sat, 17 Oct 2026 01:56:45 GMT  
		Size: 16.7 MB (16743521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53522a91e573b6096fa27bfa49d090b7f5e242662462b5e217f7828fccaec6df`  
		Last Modified: Sat, 17 Oct 2026 01:56:45 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d69fcf4471523548852d661a366b971f2890da79cff91e73374bede8daf4021`  
		Last Modified: Sat, 17 Oct 2026 01:56:45 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7036f9bd784a5f72ac73624a3fe945c63f05d2626a5553ece81479eddaefdd9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2354401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e647c740b823cb775b477b0f1db4d855f60662ccb6606a9c7d9abdb7e22788b`

```dockerfile
```

-	Layers:
	-	`sha256:cf9678bfa8b720f72761c075e585f2cbeac011ed2c7a5af72af9a8b24c1e39ec`  
		Last Modified: Sat, 17 Oct 2026 01:56:45 GMT  
		Size: 2.3 MB (2336655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7259f1239030a1dcff4660cc38384ae5b6f93e6d92a15a0ef5a68302fdfa1b08`  
		Last Modified: Sat, 17 Oct 2026 01:56:44 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:29385925745cc3acc4c0ae7a0ca988494063683dbe18f6a19d7a3c1074a47e4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144060980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e738436884cb5db9932703d5685a33c44ae224dd6c73b24f95139dc03d0178db`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:55:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:55:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:55:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:55:28 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:55:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:55:28 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:56:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:56:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:56:52 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:56:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:56:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:56:54 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:56:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4603255fcaed4657d26116bd97d55093ee6bf7e4d24c17518511c249b9b104eb`  
		Last Modified: Sat, 17 Oct 2026 01:57:13 GMT  
		Size: 92.6 MB (92633100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9ff3184ffb80a059ff1d91c271e24085dfc34f77df6f3036784a915851fec7`  
		Last Modified: Sat, 17 Oct 2026 01:57:11 GMT  
		Size: 16.7 MB (16711939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36bc729426f55e2ab69c235a7b0def351f4191055b15256ff271435dd60c3173`  
		Last Modified: Sat, 17 Oct 2026 01:57:10 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2205350b81ac7042bc592b2128e68a6bf8b549ef9d2ead7b3645cd648061478`  
		Last Modified: Sat, 17 Oct 2026 01:57:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b2f3e042557c3e5bde212287a0de6b2cba70cc01c2cd03e57f98e0f624604fd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2354129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7175907f85fad05ee313ae1a225fbf88bb34b79ad77e47c7ab2c3670faf16362`

```dockerfile
```

-	Layers:
	-	`sha256:85a820b30e47292f13726ac4b5d3e208433c70563bdd0ab492714dc952ada21d`  
		Last Modified: Sat, 17 Oct 2026 01:57:10 GMT  
		Size: 2.3 MB (2336262 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d82d8ea9538b94fbef8b98d1aa270a9284474e44fd0544f695e252e466622c27`  
		Last Modified: Sat, 17 Oct 2026 01:57:10 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:c2b6968e054b618232dcb9a8589d52b612cbf80025771454dd7166c61f01eefc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.2 MB (147205437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea0396c9202d3187286da12a10e4a5408ac6e54a1e8131857768791f66e246b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Mon, 12 Oct 2026 18:26:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:26:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:26:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:26:49 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:26:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:26:50 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:29:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:29:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:29:40 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:29:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:29:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:29:44 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:29:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdce8a835ada47fbe2d55146ce5d81230200596d54ec78f2c40d279d127e7d3b`  
		Last Modified: Mon, 12 Oct 2026 18:30:33 GMT  
		Size: 92.3 MB (92255828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a018a0d0e90e962117c31c87a4b68952c7cbcafdc6771b3a4caf6e2d1bc17f00`  
		Last Modified: Mon, 12 Oct 2026 18:30:30 GMT  
		Size: 16.8 MB (16782379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a57b2e413dde8986e38ad895f6b1be505f1a7a393a8984353a35e41de59d725c`  
		Last Modified: Mon, 12 Oct 2026 18:30:30 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:850762356eede72b78167e28478de728e14e023eeb82ceb879ec1ee38569e764`  
		Last Modified: Mon, 12 Oct 2026 18:30:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bb98d0bf8d3fe79bc6b7f7f5f70f794fdb5e5dfe20eff64f75ec0b7b80147075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2339361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b352cabe5f13bfa9f86293fb09fdcfc83355a54eaf21700d7e43256b97c3d6ac`

```dockerfile
```

-	Layers:
	-	`sha256:53ad22ec563138edb9b6c8e862156af20c814cf54155b518a0f6059778c9dd8b`  
		Last Modified: Mon, 12 Oct 2026 18:30:30 GMT  
		Size: 2.3 MB (2321571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ecfb7869110a8e2702c5293d9bfe359e010fb3bbe71cfe224ba27c3e23540ef`  
		Last Modified: Mon, 12 Oct 2026 18:30:29 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
