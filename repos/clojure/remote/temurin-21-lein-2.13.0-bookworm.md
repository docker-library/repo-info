## `clojure:temurin-21-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:2db00ca341bb80847aa23629ab9678499dc84982a7c601e3663060ce841ee761
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:ee03cf2e3a0ecefaaf12dcd22289ad6eee472ffbc696de3ff0e4133e33d5a284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231257152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:940b4615a8539a8f01db7da0de7fb5fdeb1d4d9714e3aa09d366f96d21f7a379`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:29:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:29:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:29:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:29:03 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:29:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:29:03 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:30:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:30:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:30:14 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:30:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:30:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:30:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:30:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bf6a9175fee7fc44449ec08e4cd03dbc03b432f69243f6cfcb06b63a45ef64`  
		Last Modified: Tue, 25 Aug 2026 01:30:37 GMT  
		Size: 158.1 MB (158120272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06af6ff1d79523272110d24d17d5abdbca33e3bacad22560252a3d2bc016b580`  
		Last Modified: Tue, 25 Aug 2026 01:30:34 GMT  
		Size: 20.1 MB (20123905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c0997ee75886b1c8467076ba96ed74e966d21ca5c421735611ec7ae94a0d12`  
		Last Modified: Tue, 25 Aug 2026 01:30:33 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f7826f72588840249c1ad8c0c3677cb11bae47cb2c4fddb557aea6ca027d5f`  
		Last Modified: Tue, 25 Aug 2026 01:30:33 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7891ff2efda96069c93d7b9916bf346a0c6686b38575e530c04caf80dee7121a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b9aab9ff45722ccfa2100ccf2befde2e0c71285a276f9653f077dc1de14c64`

```dockerfile
```

-	Layers:
	-	`sha256:1391ddd9562043f2eafefba39109ac059fcfebe67a0233949123da67db0a1544`  
		Last Modified: Tue, 25 Aug 2026 01:30:33 GMT  
		Size: 4.3 MB (4291757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:396a1e1e0bb8c2676e93a6f20b30a5a5b7d9b8f9d6916fff4d851deffc349e16`  
		Last Modified: Tue, 25 Aug 2026 01:30:33 GMT  
		Size: 18.4 KB (18387 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0ee72a27ad6b56431426c587bce5aea948d2eedbcf8153aa0c8ea94898eb3389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229257022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edaee1246a9450af0396e5cb5b2e9143ffae17f67cefa58ab1b2a7ceef3c167`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:33:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:33:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:33:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:33:26 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:33:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:33:26 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:34:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:34:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:34:34 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:34:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:34:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:34:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:34:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a991eb59d4f430e97d8acaaa137b3c4725dc0568f9b7f1de62982b96aefb0be4`  
		Last Modified: Tue, 25 Aug 2026 01:34:58 GMT  
		Size: 156.4 MB (156401957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:895337c3643ea8eb808a5c2ecddc15c8969e0f48f757bbbfa0f842b3d4468069`  
		Last Modified: Tue, 25 Aug 2026 01:34:55 GMT  
		Size: 20.0 MB (19955768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a504991c640b76d7459964782f32e8ccacc784bc379ac08aa2d897a8369f87d`  
		Last Modified: Tue, 25 Aug 2026 01:34:54 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c143de6c5c7a84f2b3cddaff84fcd098467288ca3946a3a3ed1aa55ca481be42`  
		Last Modified: Tue, 25 Aug 2026 01:34:54 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f185ce417dcf6b4179bf8a79a7e45b68e07bf3a0f6e3928c41aff807c97a8c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76dac36a0da53d7f8a4deaef50c62a3aace86444879436596a973e191f10ebe`

```dockerfile
```

-	Layers:
	-	`sha256:224e2d6c3a396228eb01d3d25208f2be0153d874e6904d1f3b009abd1775d1e4`  
		Last Modified: Tue, 25 Aug 2026 01:34:54 GMT  
		Size: 4.3 MB (4291396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e41339797a4a9247e46e65a5cc1d12cd37ae151c69772f9262c73ef0c8a038a`  
		Last Modified: Tue, 25 Aug 2026 01:34:54 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:eac4861156ac8224d89826bad709dcbe7105ad9a743d4577f633a79a4121c245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235480719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb99f62e8e424adf42c5fb2bb95bb7a3017458c7fa47cfb504586eee10f11a1e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 08:29:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:29:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:29:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:29:31 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 08:29:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 08:29:31 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:32:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 08:32:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 08:32:55 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 08:32:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 08:32:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:32:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:32:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0659641dc3442b34275460f512c46092764a4e396154d80c7548e6c24cc73ead`  
		Last Modified: Tue, 25 Aug 2026 08:33:41 GMT  
		Size: 158.3 MB (158274894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39de2d201a653504dc329f42186d9d95f48f8ae48f4e366e471cc1fe8e071926`  
		Last Modified: Tue, 25 Aug 2026 08:33:38 GMT  
		Size: 20.3 MB (20348427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68f5ba2dac0cb0471a33a5eeff06ecfe202402d7ae2299a3f5848dfde9a112a`  
		Last Modified: Tue, 25 Aug 2026 08:33:37 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0647e68a85ecd97d70a387aa3755d85d1ba5f815cbb3ac090bf299dac147f4c8`  
		Last Modified: Tue, 25 Aug 2026 08:33:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:325c3d55711ce8b7dcc05b98b40977875df4d82ef76d839dc72a3da0fbcd27b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4312074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e84b707847dbbd9be403e93e80afc3715a219484ca989a1fc4cb8b48a8ac44d`

```dockerfile
```

-	Layers:
	-	`sha256:737aab7775d1dad3f7e62d372e82fdc316c878210b432faa3d8f7d0c14103323`  
		Last Modified: Tue, 25 Aug 2026 08:33:37 GMT  
		Size: 4.3 MB (4293630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab92064ddb6630f4276115fbd4160cd072de881ba7fd5de709a689cca93032a5`  
		Last Modified: Tue, 25 Aug 2026 08:33:37 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json
