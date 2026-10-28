## `clojure:temurin-21-lein-trixie`

```console
$ docker pull clojure@sha256:13cb413eaf973920ab651e2985269828d0c6935ff78c93f24c8e051067fa663f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:c08c8afd2d578941d87190bd5a4bcd8da09685792ea63161ecdaf0840eb651ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230926761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5170d6109dfc6637cb9ccb262b0d2d9e1923b12ef2bb87e51e8c47680ad0df0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:12:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:12:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:12:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:12:50 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:12:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:12:50 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:14:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:14:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:14:11 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:14:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:14:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:14:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:14:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9435b5b0ca2b4c727de3a8f0299f92306e36cd912fd401f5df7a83c1549da81`  
		Last Modified: Wed, 28 Oct 2026 02:14:33 GMT  
		Size: 158.1 MB (158117470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d641bed16dcb8df29c512d1e714b27c47ee64c02f00ac1fd89eb29dd9ce4e0d2`  
		Last Modified: Wed, 28 Oct 2026 02:14:30 GMT  
		Size: 18.9 MB (18885758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f89367914bb613aaa1539d16e5a318fc9feae29bc3eeb949623f55bc4021fb`  
		Last Modified: Wed, 28 Oct 2026 02:14:30 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa275563122cab236c093c22153bdeb5ba2e474e5654c9b1551eb7a75a46acc2`  
		Last Modified: Wed, 28 Oct 2026 02:14:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ae97e830f3d2da69289d410254ed3fa66cafbe094582900298c36817b2f401a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da7b12687f9954926b12bd102f9727f7a7c4d192de2f1f1bea888f9deec28cd5`

```dockerfile
```

-	Layers:
	-	`sha256:efa1287ffe0270ea9aeda65e552eb2cae51aa390a51aa7875c44ebca6aba5124`  
		Last Modified: Wed, 28 Oct 2026 02:14:30 GMT  
		Size: 3.8 MB (3828322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5b39c82386eec2d3e2a139e9d8c92d374a2c3675353009bcd81190b68cbd39a`  
		Last Modified: Wed, 28 Oct 2026 02:14:29 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3107d32504d102127caa9a55ed0feb556910590c9a0ab2eecc13c4986f5b7e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229546815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0b479f9f4408b087a05bbd14e3a78de8c6c9cad145d3c82c8db881419ce5d0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:19:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:19:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:19:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:19:59 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:19:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:19:59 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:21:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:21:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:21:26 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:21:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:21:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:21:28 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:21:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70c842ca803e129dbb155d03e4be441bdf72feea06a4107c7d31bec46a10b64`  
		Last Modified: Wed, 28 Oct 2026 02:21:38 GMT  
		Size: 156.4 MB (156400654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1978f27d4d1be600ef8640b6498952a2b4d4458ea67eac2e77adb003222f0fe7`  
		Last Modified: Wed, 28 Oct 2026 02:21:47 GMT  
		Size: 18.9 MB (18854339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f92b6cbc57e71b4026b508440e8d2905d44b0e6f14a8604b0e5b2582d71e16b9`  
		Last Modified: Wed, 28 Oct 2026 02:21:46 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2da5fa91735fb4a39b40d56195db7ebcef3f97afafb63fd95c98e088dc30e2`  
		Last Modified: Wed, 28 Oct 2026 02:21:46 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:aafc64d6706db9d5959c62752a26f0faefb5ca0bf86eea247096f98b0d847632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:858114b9b4efe4cb4def2807518df413e29187a82ec14c7b53d3ac11d41e8057`

```dockerfile
```

-	Layers:
	-	`sha256:8bd2f7c21d2d0e8a60c7799b37b9938a83b8d0e149b94f1e47f7724323b8a791`  
		Last Modified: Wed, 28 Oct 2026 02:21:46 GMT  
		Size: 3.8 MB (3828562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:780c099e1c505818bf9e7bd41f4797ca7310ba0c54378c017a753150499c853c`  
		Last Modified: Wed, 28 Oct 2026 02:21:46 GMT  
		Size: 17.8 KB (17837 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:f89064fd29e61230d4881cd6ef0a6eb64aaddcc4db2ff247d253484f17ed7e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.0 MB (234959942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5519c23668573acf5fbabac75dff48762078f613b135c2ec01aa42e5f8062c44`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 10:06:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:06:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:06:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:06:36 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 10:06:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 10:06:36 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:10:17 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 10:10:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 10:10:17 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 10:10:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 10:10:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:10:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:10:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b0cbb2f460ee06d62a8a618c39ccba555be71a056744830d2dee60ef7ca576`  
		Last Modified: Wed, 28 Oct 2026 10:11:12 GMT  
		Size: 158.3 MB (158282631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a5efb216252e5e2c00609097cbb792b31554fa9f1c27be86ed8e6b98782eef`  
		Last Modified: Wed, 28 Oct 2026 10:11:09 GMT  
		Size: 18.9 MB (18939417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b23e8c486d9f1e11410aef15c253f35747dacb8b2cc8c446fe15ed1c2e2dfb65`  
		Last Modified: Wed, 28 Oct 2026 10:11:08 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cb472ea4d8963228b7f2deb18eee4ceb5fbb2b03be18fb0019503ea57c96278`  
		Last Modified: Wed, 28 Oct 2026 10:11:08 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:946a94f7e2ec1cd6c6e5a074e86409088a3f2b2e6d14d3e93aff8d4842b6405a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3847082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f439ea4b32734f441eb4d267c21150211f4df5f69f857a9cc5c76472851414c`

```dockerfile
```

-	Layers:
	-	`sha256:e6b260499a4db64b3566b1fb5362196bbf779d0162e9ad6315440bc43d5e2cf6`  
		Last Modified: Wed, 28 Oct 2026 10:11:08 GMT  
		Size: 3.8 MB (3829320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:617907b651b1fb4111404325ebd6cb7f7e974c4af6a642124468903b8736eb74`  
		Last Modified: Wed, 28 Oct 2026 10:11:08 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
