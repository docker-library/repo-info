## `clojure:temurin-17-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:dc5e4be082ae563988d9982a257cc4dcfb587e56a14f6a7c034337aef32e01f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:ad9b021ce911dcfd3465ceb96dd840982e69b9cfdf8d4b474eb9ab3209506683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221137439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69473deee55c3a10a336387ecfa542ed166077e406eb408f2c6ed9b006713a4c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:49:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:39 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:49:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:49:39 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:50:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:50:46 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:50:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:50:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:50:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:50:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f0b4f80af30f3c472c760477cdc8de526c75d2cfbf23a0330ef81ce7cfa471`  
		Last Modified: Tue, 04 Aug 2026 02:51:08 GMT  
		Size: 145.9 MB (145905437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6375116a35f0add005cd6db6daf2133ff149171aed088aaff56b6dca26d9779c`  
		Last Modified: Tue, 04 Aug 2026 02:51:05 GMT  
		Size: 16.9 MB (16939818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d1a18498378dcd452440c90c591eb56ecddd9866b4e8eecf5fc2d13014c5ba`  
		Last Modified: Tue, 04 Aug 2026 02:51:05 GMT  
		Size: 4.5 MB (4515177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf1a1d533cd97ce3b0839d1bd5db4c4eba69ec37d34be98d53a67ea7ba6399f3`  
		Last Modified: Tue, 04 Aug 2026 02:51:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:80dffaca54458a102057493d3021e3a06e62e1f95249c17b610fa7261d7c8683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4518765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99583c5aa0c9b1844d6868b10110dbe2e258c26d11501128fd3a50d18f8215f`

```dockerfile
```

-	Layers:
	-	`sha256:0f1183e4d8805d50fe8b6f45255068ce40cf7dee5853db8ddd7c2adf65680d36`  
		Last Modified: Tue, 04 Aug 2026 02:51:04 GMT  
		Size: 4.5 MB (4501027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c05169449f3a91dee66e5f878a3d65361998222a6f59e923129d97755ebb8cf`  
		Last Modified: Tue, 04 Aug 2026 02:51:04 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:989aeeafc1f3b4ba2e38bffe5d514220bb4bf58097663e2541deed4f65ced8db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218418985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8257880b4e5c5079c8e44e6db62f4af168bce7b2c67bb2c03eb9ec49b6de0a94`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:49:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:53 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:49:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:49:53 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:00 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:51:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:51:00 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:51:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:51:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:51:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:51:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320f75b184b3e7b7eab7c2989260a940673a009e0ade52044bffaa75751cdc27`  
		Last Modified: Tue, 04 Aug 2026 02:51:24 GMT  
		Size: 144.7 MB (144724302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77bc87c5469c1680ce5515ff3edabe6b96328f9aea422a7a6099ce82524d84b`  
		Last Modified: Tue, 04 Aug 2026 02:51:21 GMT  
		Size: 16.9 MB (16918147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad4e676f29ade872b34fb5e5358a89833d72206bed2220b063b49bad3c1a8db1`  
		Last Modified: Tue, 04 Aug 2026 02:51:20 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3365adc8abfc5a8f19453906724a912e4083aea8b034ac58c19744d2cc7a2c33`  
		Last Modified: Tue, 04 Aug 2026 02:51:20 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:f33a7ace99cbe0e894efa97268204e3a3c468490a38efeccc231604b152aeeeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4517860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23d79eed82c77724468ec8747fce513863042fcdcb6772ca728057d1385a04f7`

```dockerfile
```

-	Layers:
	-	`sha256:f9a0d41e3dc6badb70d3c53537d5d132c66caf9ac76f238a88c709af4fd5f949`  
		Last Modified: Tue, 04 Aug 2026 02:51:20 GMT  
		Size: 4.5 MB (4500001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0839da8325c4995421dccb26aba6f165ebe41e3f00bcb719c056ec281bf42464`  
		Last Modified: Tue, 04 Aug 2026 02:51:20 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json
