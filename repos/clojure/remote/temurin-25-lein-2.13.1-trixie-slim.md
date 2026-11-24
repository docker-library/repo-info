## `clojure:temurin-25-lein-2.13.1-trixie-slim`

```console
$ docker pull clojure@sha256:782eccf2a7d87cd1b80ce65c70d1190bdff42dddd008fa62134d7ac0ba80eede
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.1-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1be1284dc47bc0162ca9c0209ba5623933a285afa7f96cc18fe8c31d775289ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143713470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f2503219f5f9a3b74596e8d25117b4aa8344fd68c3d77a4feb75a44524b4a31`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:12:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:12:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:12:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:12:33 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:12:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:12:33 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:13:53 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:13:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:13:53 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:13:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:13:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:13:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:13:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67a6e356a563ca768ddeb677b9c8f5d842030ab3b56994b05506a4e8058e0a98`  
		Last Modified: Tue, 24 Nov 2026 05:14:12 GMT  
		Size: 92.6 MB (92613957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254bbb0861f3f3d3bba34253f3c4bc3249b9e50454cbc7c4df43ad2b11820a5d`  
		Last Modified: Tue, 24 Nov 2026 05:14:11 GMT  
		Size: 16.7 MB (16741228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d395b1f75f7809d60d2d03f5a834f1eecea3c5065b5ee7da8ba9a0e1c722165a`  
		Last Modified: Tue, 24 Nov 2026 05:14:10 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6a160d3277a09febb009000196a7c37ad2e62780e4ccf150be9cf469dd7080`  
		Last Modified: Tue, 24 Nov 2026 05:14:10 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.1-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:54f8982bd3ecce5c16e7e6ebd2ec36df196f90cc575d5312d18e480eb35eade8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2358828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ead8a335dbdcd4710e3fdf558f293a5b87b5e60baa943e97052f9500c25867`

```dockerfile
```

-	Layers:
	-	`sha256:3f015fe1c067f8b190e87c4153680a3ec1de6de1b6b8f2dc67f5bac116a1ed4a`  
		Last Modified: Tue, 24 Nov 2026 05:14:10 GMT  
		Size: 2.3 MB (2339832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4cf779a33bd9dee2ff7e44a932657ab86698280e252d330a01d51c68f17b46b`  
		Last Modified: Tue, 24 Nov 2026 05:14:10 GMT  
		Size: 19.0 KB (18996 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.1-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:75c4e799d6ec041e5e69ab17d7fcd4ee6e5a199286d2926eb2c6b5874c30fe7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142985787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b787996c4eb1f31b60dfdb6c7fca89c0bb3f93e43f9fd28d6fd84c7a24a98bf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:18:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:18:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:18:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:18:19 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:18:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:18:19 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:19:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:19:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:19:40 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:19:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:19:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:19:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:19:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c3a68fdfa701b261f3f82ab2c47a46529c949027f26984df07c30c69fa3f0c1`  
		Last Modified: Tue, 24 Nov 2026 05:20:01 GMT  
		Size: 91.6 MB (91553944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c816dd9d3b7eafe0b9928f36679e80dcc536df1845c4578c473f5715607c8929`  
		Last Modified: Tue, 24 Nov 2026 05:19:59 GMT  
		Size: 16.7 MB (16717685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3774cbf3ec3d973d31ab394fa0f2a193bf35541d502af880d86c130b3e2272f8`  
		Last Modified: Tue, 24 Nov 2026 05:19:59 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6ae24c798cbbb9ade1e6cf3445924ce535cb79cdf447fbc13493134d88766a`  
		Last Modified: Tue, 24 Nov 2026 05:19:59 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.1-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c3fc905dfb8136ea4b35dd515c7fb7a08e34fd54a4f13d7041a07dfc7dd2be80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2358603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b25a200096d55359370600a03bf511d81a5f3a1a6ece11d19498c192c0631621`

```dockerfile
```

-	Layers:
	-	`sha256:6fdbcbadf9ba17cff3d748ed5fdee4904cd37410aff75acf1e61b8b448c3bddb`  
		Last Modified: Tue, 24 Nov 2026 05:19:58 GMT  
		Size: 2.3 MB (2339463 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1b0d92ef2c6bc3545965b25e50e701f8b08fd17b823a6380e7413158a8f0dae`  
		Last Modified: Tue, 24 Nov 2026 05:19:58 GMT  
		Size: 19.1 KB (19140 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.1-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a4d583d2a10f6a00582305793b1b542db9a80933822ada3f530d85669c41a97d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148295686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af9e735669e3fdcb76036f74f5add807b7fd388cbf25069a89ad663094bf45fe`
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
ENV LEIN_VERSION=2.13.1
# Fri, 20 Nov 2026 19:51:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:51:06 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 00:36:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 00:36:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 00:36:10 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 00:36:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 00:36:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 00:36:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 00:36:14 GMT
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
	-	`sha256:e302d27abf045e96fd26debbd40b9b1ab5e937f0eeaf998990ee30b2eec83680`  
		Last Modified: Tue, 24 Nov 2026 00:36:34 GMT  
		Size: 20.0 MB (19992291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a7920266a08366d7d6a1af1e9c7f81924d5ea200da05de73b0893bc26dc5b1`  
		Last Modified: Tue, 24 Nov 2026 00:36:34 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43f1ce29f912f7ba58715bded92bd7382ea00582e9ddca6629c94a65e9ef36d`  
		Last Modified: Tue, 24 Nov 2026 00:36:33 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.1-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:eeea959789a1dc20ae3b84009c7445d17b3e9e7441c878b1da0bb7219bb0c41e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2341299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10284fcce7ea7dce6388d6c8960c746c3ef72bef2b53d071e8a56e3c47be5f83`

```dockerfile
```

-	Layers:
	-	`sha256:969fcb1687ddc050b0afcc12ac0a219ba920baf0ec379ca1a803d952cf49adfe`  
		Last Modified: Tue, 24 Nov 2026 00:36:34 GMT  
		Size: 2.3 MB (2322247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:992c6c7629e96bd9a7038430e8598c61d08fb096707fbf310fed4956b08af8d5`  
		Last Modified: Tue, 24 Nov 2026 00:36:33 GMT  
		Size: 19.1 KB (19052 bytes)  
		MIME: application/vnd.in-toto+json
