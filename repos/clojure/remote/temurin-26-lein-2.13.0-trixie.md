## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:a36da990c46e3b8b334b12179194aafc35d26b030dd8ccba9fee856724c348fa
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

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:e5c0008ce6e11a8dd057e9e664b5a9d0130c673c97264d36154e2608c32aec2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167233808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a399e96eb2443a890e4453bd5155caa93a97be86bbe9f8dde436dcda8d122d54`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:50:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:50:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:50:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:50:09 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:50:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:50:09 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:51:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:51:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:51:26 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:51:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:51:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:51:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:51:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb2968d6aed198f000a783ab39a35d7a747f89c7a903523190d12401b96dd6a`  
		Last Modified: Tue, 18 Aug 2026 20:51:47 GMT  
		Size: 94.5 MB (94524339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77deea92cbdb436380a291a56bac350f53722b6827d8121d60d5a25c10c23f5`  
		Last Modified: Tue, 18 Aug 2026 20:51:45 GMT  
		Size: 18.9 MB (18881555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97f6ed92b6c3a6f3dbb702b0eb7276cc4bf1170a86b458d67f691f55da2c24f`  
		Last Modified: Tue, 18 Aug 2026 20:51:45 GMT  
		Size: 4.5 MB (4515170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8f9e48634a3ba6300b59a88a26382c417f5398841480e32b947974698f9fc43`  
		Last Modified: Tue, 18 Aug 2026 20:51:44 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6c8e1d285e75de0d0c9dc843508cac036b64450aaef4e5c0299fdcbcfeadab87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:076439a73fbb07fc1511f40495be7246981233584b0a75285f5a7477e2304830`

```dockerfile
```

-	Layers:
	-	`sha256:6311d0b6b55ea1d36d5aa75fb9cc860f78a76976da0d6fc5bec5589902cd2ad9`  
		Last Modified: Tue, 18 Aug 2026 20:51:45 GMT  
		Size: 3.8 MB (3782747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1992402cf9e6c33be6ee0312e51b6ba8bd4917aa72acba24a7004f0a4960e50f`  
		Last Modified: Tue, 18 Aug 2026 20:51:44 GMT  
		Size: 17.7 KB (17710 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:658decdded7ccbcc93df85f68d8c568845328fc29855354256eeaaf5351f1871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166533355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:282beb5825af66144e7b15698ff1f91bef4750cb0c3e7ad33f99fd8e3bbd01d2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:50:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:50:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:50:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:50:02 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:50:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:50:02 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:51:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:51:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:51:20 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:51:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:51:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:51:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:51:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b8cebe5fd4526308bbd6a464c7831cc8ac9a4b5364f3d89da788d14e1e7fd8`  
		Last Modified: Tue, 18 Aug 2026 20:51:37 GMT  
		Size: 93.5 MB (93504354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:819f88008c2ea90f22a1e503ef84a7294535e0de36eead169d1f752e976d084e`  
		Last Modified: Tue, 18 Aug 2026 20:51:39 GMT  
		Size: 18.8 MB (18839509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd54c7e6dc3a682e5bfb0de94ac09af5dc4ba486b9b06e681a8d0fdefb4e930`  
		Last Modified: Tue, 18 Aug 2026 20:51:39 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f022d5710b8bba46281729471ceb53437080b76070a956f194abcbfc818da6f`  
		Last Modified: Tue, 18 Aug 2026 20:51:39 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e576c7d449e0965cf6110d03e99e9f78e5795bb40454347ce508e984bece5f58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f52819d532e029279b0979aa03616050e26b5721fdd3179d7f2ab1f9387bf6`

```dockerfile
```

-	Layers:
	-	`sha256:a080162f0a82eed1151d544ea9fd5232508a628a8d8fbeb8d8e4e37ebcc521e7`  
		Last Modified: Tue, 18 Aug 2026 20:51:39 GMT  
		Size: 3.8 MB (3782984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fd4b56e5b0d9cebfd5b7cde07237983dc8653598ee751df843c6bf82c1982ab`  
		Last Modified: Tue, 18 Aug 2026 20:51:38 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:92d033eb26ae2fd1434fddf7604848ab47839830a7104b54acc66cf6ca98e7b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170487904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3343bd34f45c0dcafb50526bef75920c029e34cf6f73c3aaa63fc4b71218e68d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:58:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:58:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:58:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:58:05 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:58:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:58:05 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 08:00:54 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 08:00:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 08:00:54 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 08:00:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 08:00:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 08:00:58 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 08:00:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecbfb1da30f68e5c90c9a0de84cd20ef34d884a56efe1330e00aeb79f7446bd`  
		Last Modified: Wed, 05 Aug 2026 08:01:33 GMT  
		Size: 93.9 MB (93902057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b19fae54561d3e9a6dc14a3288a8bd872d977208f61e790132ed99bb240b3a3`  
		Last Modified: Wed, 05 Aug 2026 08:01:31 GMT  
		Size: 18.9 MB (18936598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9620181b4572071aa19b8394da03c1869fd1a5be1b2545134d638c94290ebdb`  
		Last Modified: Wed, 05 Aug 2026 08:01:30 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01373541274a40c302ceeac1224776741345559afe99f523146cd7408f3e849a`  
		Last Modified: Wed, 05 Aug 2026 08:01:30 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9151780a54b3f0e84f7888d1efcccbc9e4871569122a5797f83847653e182139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6d6ebb6a56b1df103caf16caf865b505155bd3b9c5c52caf9ee29bfe243dbd`

```dockerfile
```

-	Layers:
	-	`sha256:454db0d7d9d3d8c9997aaf789c54dc4d3e7e2bf31924ff79c775df45c7fa9b56`  
		Last Modified: Wed, 05 Aug 2026 08:01:30 GMT  
		Size: 3.8 MB (3767683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:382a535165cb4aba154d2e20f0de6ae78a4a675647974d8f78d9218993c25c49`  
		Last Modified: Wed, 05 Aug 2026 08:01:30 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:6b78fba259a3bc3aec9021ce74576469cf64f7e45c40af9c6bc264fc5e750e37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163356333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c95d56a068f1f4371c00424d6b3e8b3fd94e5ffe4f0ba30d5ea274a52421bf6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:51:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:51:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:51:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:51:18 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:51:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:51:18 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:52:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:52:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:52:32 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:52:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:52:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:52:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:52:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6973823e6df810f0c1f74c150b3996a6badda23c956392754dd05a1e1cd00937`  
		Last Modified: Wed, 05 Aug 2026 01:53:00 GMT  
		Size: 90.5 MB (90536967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca37e4186abe2c387999c879348823dd538ad09f4d8aafd4726d39f03f24529`  
		Last Modified: Wed, 05 Aug 2026 01:52:59 GMT  
		Size: 18.9 MB (18922290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecf5b4aa7994040cb3af63813b5b87857fcaecd512d6ad9e8bdfc694066c2da`  
		Last Modified: Wed, 05 Aug 2026 01:52:59 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a970f08682361b63c3483aa890a66e2504968978f48718c4fb733473b25e7c35`  
		Last Modified: Wed, 05 Aug 2026 01:52:59 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:50616a57da975cdf3571679e4122e9ddec04e4d214bb60f319082569c9e4cbb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3782070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d329174ecb79e1e653e9bce01533abd653ba6685f8c17b488bf3921e6d5b06a0`

```dockerfile
```

-	Layers:
	-	`sha256:ecdde59443d999c887f3b404a7e68e957e8a9a9bbf3bb42f72c1f39a9f19de1f`  
		Last Modified: Tue, 18 Aug 2026 20:40:14 GMT  
		Size: 3.8 MB (3764360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9375cf808bb8fdd83a00f13d58d763669d49ee1dfd985d10a46d9b23c58b31d9`  
		Last Modified: Tue, 18 Aug 2026 20:40:14 GMT  
		Size: 17.7 KB (17710 bytes)  
		MIME: application/vnd.in-toto+json
