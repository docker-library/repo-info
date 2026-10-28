## `clojure:lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:bd0d3bf230ece9462204394f05ae65a172f41ce391d5d3caf5a6aca39cbfe470
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:547c566fcbd17e562810267768135e50d3c6e8dfc742af475a7ab6c8e7bdf302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143453804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:970d5854551f19410e2707fedb5d7e17c7c518c25938be19a9ea75a90ed55e75`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:13:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:13:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:13:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:13:53 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:13:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:13:54 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:15:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:15:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:15:03 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:15:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:15:04 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:15:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9066d3cdabe190daecb2288ec2c003178c76a01ef2e6e74eb22c6988706687`  
		Last Modified: Wed, 28 Oct 2026 02:15:22 GMT  
		Size: 92.6 MB (92618058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af31e5e36fff09a5b2b415906eb2341a46b72819f459f3067b6389c75ceda0a`  
		Last Modified: Wed, 28 Oct 2026 02:15:20 GMT  
		Size: 18.1 MB (18072682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234066cc17e302807e011e0a04f3e1826ac78fb374c7bff2202cb3f9e0b60a1d`  
		Last Modified: Wed, 28 Oct 2026 02:15:19 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23b777ff63e884261760629e40fa30b9c06b6f296893f60ae9dbddf69ebc57de`  
		Last Modified: Wed, 28 Oct 2026 02:15:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bbeef7302b72e204ef40975db0cb77a9a6c42dd3fa68bb5dcec6767794d5b251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2722809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2502da09a8fc70a14949aa99684a3fb0ddf254107efc8d56a4790614e2deb07`

```dockerfile
```

-	Layers:
	-	`sha256:83f2bc03921af2363da1ac5a6c1de15271cd3b9ee4c2e191a3dd541670df121e`  
		Last Modified: Wed, 28 Oct 2026 02:15:19 GMT  
		Size: 2.7 MB (2704381 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0783bf72308f9001a86e1bf86409b3bd80f380ed318194a87204d82d0cbc62c7`  
		Last Modified: Wed, 28 Oct 2026 02:15:19 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7daa1f56389fd4241e4198beaf8eb248088c73c48738198eeee11123fe83d3ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142098751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379fe95102c734f652ab9597a09b9c68106a24f09e7746a29556ff4059e11956`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:21:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:21:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:05 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:21:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:21:05 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:22:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:22:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:22:19 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:22:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:22:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:22:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:22:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef47330a2ca138211654df9780b9f86b3ac1eeb57a6afd4ef73cf8e1b3045c34`  
		Last Modified: Wed, 28 Oct 2026 02:22:40 GMT  
		Size: 91.5 MB (91528799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1a0a38639a633977dd4b664a1f4ec51e6077e15f2c5de259479d128d91deef`  
		Last Modified: Wed, 28 Oct 2026 02:22:38 GMT  
		Size: 17.9 MB (17916396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec5ba7d3b9cd5cc91a3954ded06d6d411ef35e5ddf785e8e27cad590540d28b`  
		Last Modified: Wed, 28 Oct 2026 02:22:38 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cab09e827e979ed2c6a64a0922ae8169382da3ab140feb2471263cc97b09367`  
		Last Modified: Wed, 28 Oct 2026 02:22:37 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:36ec7355ba31b36975cdc634a2a8aee648ca51efd031540c587d1112cac39a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2722590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae05b0574234fb06b29464b6f0f91909679921b183b499b2cf3c4a07ddbb433d`

```dockerfile
```

-	Layers:
	-	`sha256:dc0a01cd7b61a0f8d519d997569c0ac0e1e3591c4deef0396eb6a5649ce2d9c1`  
		Last Modified: Wed, 28 Oct 2026 02:22:37 GMT  
		Size: 2.7 MB (2704017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e8466319768485b1944ec353f6c8ff3fb658a27c6b534cc366824e602d02984`  
		Last Modified: Wed, 28 Oct 2026 02:22:37 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:292209815c9159a1e776848b68e746d842d8bee8e17e74f530423f8916998bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146144427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61f1a1bbf52e340dd1d3d4d1bbf504be546a6a6410203b3a900e1e4d7a1c128f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 10:15:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:15:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:15:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:15:27 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 10:15:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 10:15:29 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:18:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 10:18:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 10:18:26 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 10:18:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 10:18:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:18:30 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:18:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ac877ccfb96d64c76c84a4224172b5fef841779b37022010cb24b2d959b092`  
		Last Modified: Wed, 28 Oct 2026 10:19:10 GMT  
		Size: 91.3 MB (91256235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8b99b6a030bce0826c23e44a7537a6fc90c62a8dee11db11479a4c3456b0cd`  
		Last Modified: Wed, 28 Oct 2026 10:19:08 GMT  
		Size: 18.3 MB (18279695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b863ef6de3ebe0185adc6d9316b96666851547e9ec6300583502851bc94a7bf2`  
		Last Modified: Wed, 28 Oct 2026 10:19:07 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a53ebf0194e28aaee746602e5bf0b2dbf78bbd7804f211f6bfcf4a858bf9b719`  
		Last Modified: Wed, 28 Oct 2026 10:19:07 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fe1f4ab30eac617213e420192aa3ca3e2063f76c92add7f7a6a731fb8b21aa33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2708022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:958b56fe7f0d030630ac4d4027fa5d5623a69aadb11a898571dfe2ed5f055349`

```dockerfile
```

-	Layers:
	-	`sha256:c1d5d6d8a5fa277a376d1d9e5fac364696cbcfaf02bc8b1e83391f860a574f48`  
		Last Modified: Wed, 28 Oct 2026 10:19:07 GMT  
		Size: 2.7 MB (2689538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e518c78abee438f9b1d916ffa292567ada8c4695b33f839fe05b1e0aa3a3a58`  
		Last Modified: Wed, 28 Oct 2026 10:19:07 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json
