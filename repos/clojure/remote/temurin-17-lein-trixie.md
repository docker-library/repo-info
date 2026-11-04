## `clojure:temurin-17-lein-trixie`

```console
$ docker pull clojure@sha256:fd2350c0952185737956cc95d68264ef7bdb58abdddd80e537df75685a7bd8c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:3f08dbcafd55deb62fd2d0537973d185ce6839c1a5edfe5eec80ccf9ecec8579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218894973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31a0e3b51afe4d6d027616c25db520c3ec1530bad3f677576903977a55dd196`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 22:17:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:17:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:17:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:17:56 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:17:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:17:56 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:19:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:19:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:19:18 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:19:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:19:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:19:20 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:19:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6afa958ca1df07a89619bb4461ab0f212b614e894f8ad354ce611ad5680784d8`  
		Last Modified: Tue, 03 Nov 2026 22:19:39 GMT  
		Size: 146.1 MB (146086163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20cbc83c4fea47a325d5f6413e54b4170323f233614aba0acba626b013311c8`  
		Last Modified: Tue, 03 Nov 2026 22:19:36 GMT  
		Size: 18.9 MB (18885255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2756e15258f67589018675bc084e71ca2f119edd1fe6bd673efc712e0aa8047`  
		Last Modified: Tue, 03 Nov 2026 22:19:35 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8dc1edc17045fcb8048f6c337f3ae9fab3032353783432866c046e23d3dde57`  
		Last Modified: Tue, 03 Nov 2026 22:19:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:63bba862a95506f7be31433cba12f348c855c061e6a0f1d98023dc3c768d9a93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f82d2644692849b8e77ce541e99b9c8879e64a063fa3aa04692cda4fa3c8c99`

```dockerfile
```

-	Layers:
	-	`sha256:2d5847ed4709f6e321904ed06c209fbab37d92fed143b86924f651ab7a7690f2`  
		Last Modified: Tue, 03 Nov 2026 22:19:35 GMT  
		Size: 3.8 MB (3826462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c491aa794cd5967418399fcf6faab9ca7f3dd870cf389399f709e9cf96966f40`  
		Last Modified: Tue, 03 Nov 2026 22:19:35 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:571782087a5f96eda4a1a1573b60776ff83d28f0099d0417e7acf0ab92d9ff82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218103810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d691480b52a767b4a8376902ae5de1f7b7a6cf96c5ea40137e0e5955e4bd889d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 22:17:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:17:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:17:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:17:36 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:17:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:17:36 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:19:07 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:19:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:19:07 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:19:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:19:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:19:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:19:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ca206f4ebb7f9ec07a0ea675ce4180c8faedec2916dfd2af71b71c2a87a530`  
		Last Modified: Tue, 03 Nov 2026 22:19:29 GMT  
		Size: 145.0 MB (144957183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be0f24bfc6119ca103ee7f7e722c952ad38df0332cac5f7680c3c523c4745e1`  
		Last Modified: Tue, 03 Nov 2026 22:19:26 GMT  
		Size: 18.9 MB (18854786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c68730218b700a26fff2a4a2d71e658405f6a9e77b80e73fc52d57ff5153b7d`  
		Last Modified: Tue, 03 Nov 2026 22:19:26 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ec03c04438db30eb801065fed58a8770f1e7063d6d058ee2151c598dea683b`  
		Last Modified: Tue, 03 Nov 2026 22:19:26 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8c2bea03e5ef020109765b891f9622889a297d1363e732d8fc5e04b6cda508ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3febde531aeb6b7041b98a5be14771ae8119e896b39a4e5186a7b766cda8a3b7`

```dockerfile
```

-	Layers:
	-	`sha256:fab63207a89f6213ce3cb07e0eb1eb7e86de53b11b2b9c85d6b574cc45c375f4`  
		Last Modified: Tue, 03 Nov 2026 22:19:26 GMT  
		Size: 3.8 MB (3826702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edc4c086a41ba4f0b26f109470cddf5bdf47c764463dd63afbaee91a412c0f67`  
		Last Modified: Tue, 03 Nov 2026 22:19:26 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:e64cdd9c6a96a08550a2e604bc52ecf94772a67407056f3f5684c05aba7ae05c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221537566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae05c9a63fcb42765f54558e73cf9053f46845678f779a274735d1b462c011ee`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 22:41:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:41:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:41:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:41:18 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:41:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:41:19 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:45:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:45:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:45:18 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:45:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:45:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:45:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:45:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26f7bd79180e8e785a34b9a71891ebeb5035d1e0b0d0a45d51650e658811318`  
		Last Modified: Tue, 03 Nov 2026 22:46:07 GMT  
		Size: 144.9 MB (144860469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55044cc01b7163b0aa2a6a2d4093496242050c20dcb860cc43dc297aed03263f`  
		Last Modified: Tue, 03 Nov 2026 22:46:04 GMT  
		Size: 18.9 MB (18939213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b80a8dac739b5ce9bfd0f0d18681a8350f58b207e91c624fd8b078f11068d78`  
		Last Modified: Tue, 03 Nov 2026 22:46:03 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ec5d0c9526ed62675ef6b4b0349474d6da7f41a08b86d4e610170dcfbc0da9`  
		Last Modified: Tue, 03 Nov 2026 22:46:03 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c19f1f7b89acfdbd16c3b66c39c1575e2b925d24e14c46e345489e3de028c7a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3843976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f50a0e5e93e9fba595185818314e07a3219c63e208e856fa00e81720ebe669f`

```dockerfile
```

-	Layers:
	-	`sha256:cdd89121c7f6c1b60637d0af6ee2e48df05cfe1829a35a57a33bb9b2674e647f`  
		Last Modified: Tue, 03 Nov 2026 22:46:03 GMT  
		Size: 3.8 MB (3826214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb23fe3bc706883bba42aa170f0f9df166137218e536c53e477ffabf7430abb6`  
		Last Modified: Tue, 03 Nov 2026 22:46:03 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
