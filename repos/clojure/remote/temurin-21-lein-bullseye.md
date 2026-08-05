## `clojure:temurin-21-lein-bullseye`

```console
$ docker pull clojure@sha256:fb4164f57cc228bf6998685571981c951f91468c2218f7661605410f00750bb9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:035f324ae37215c6cdaa032ec56a9c3ccdd1fcb95a074906bbc96c5556475770
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.4 MB (233399505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7a87eb691d8e034559d74e0ce9745c772cb302ea4b5462d8c3cc25991b7f77e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:22:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:22:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:22:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:12 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:22:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:22:12 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:23:19 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:23:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:23:19 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:23:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:23:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:23:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:23:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c467485da9dd18d4963d35aff185beec3969f003b6fc0873c82850906fa57c8a`  
		Last Modified: Wed, 05 Aug 2026 01:23:42 GMT  
		Size: 158.2 MB (158166967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9738b6d3ed932b86eb4f5125617ec137b624c9296b7a34e2ff132407a36a9c30`  
		Last Modified: Wed, 05 Aug 2026 01:23:39 GMT  
		Size: 16.9 MB (16939880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdc2885170cc511f706003f8cca0099f9949226936eefa575b7014501e2874e`  
		Last Modified: Wed, 05 Aug 2026 01:23:39 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e955ccadda0fe92b65e74cec5dfd9367cca93fe89ed5d4648b7b7c8b6449faa0`  
		Last Modified: Wed, 05 Aug 2026 01:23:38 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:c2cc0feacdbe1ad96992be1706a7cca1ba8635c4efdd5b7ca61c56f54e354007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4520616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039cd9744dc7a9a9eff14322400a0a54ca273e27906eccee1219542039bfb7b6`

```dockerfile
```

-	Layers:
	-	`sha256:5982718b466ab5cd85cbf78c2a2437807c651e4235800d7882039d43188948d8`  
		Last Modified: Wed, 05 Aug 2026 01:23:38 GMT  
		Size: 4.5 MB (4502879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2619b7c315a4a6602a68e8e8fe8c3a7521332e3cef51a66fde4bd404b240b021`  
		Last Modified: Wed, 05 Aug 2026 01:23:38 GMT  
		Size: 17.7 KB (17737 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:33f21ccb7a1509ba40061560f19e70e9843e2a2d45ffa06cfeced94a6f522be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230155701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a089230fac92e765ac1a7897c4091ec1094edb4c26908957e48eb9acdeb6053f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:28:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:28:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:28:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:28:11 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:28:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:28:11 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:29:21 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:29:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:29:21 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:29:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:29:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:29:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:29:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c265608f7e48bc118a53e24dd99da786e12c66046fefc21f078ba8de18761e3`  
		Last Modified: Wed, 05 Aug 2026 01:29:44 GMT  
		Size: 156.5 MB (156461269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acb5ac6ffbed568d9aeec4a8637fbb220493975b59842a5a4b8c96266a9335b`  
		Last Modified: Wed, 05 Aug 2026 01:29:42 GMT  
		Size: 16.9 MB (16917890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f7735609c0ba9014f57b7ad891d00a6a338c250e1e82581637fddba5af71ce`  
		Last Modified: Wed, 05 Aug 2026 01:29:41 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d63ae98a28650b8da6603d686b079d2b49c56b6e791c133775a33e1a9976735`  
		Last Modified: Wed, 05 Aug 2026 01:29:41 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:0c74e5e5fcc0acc77f70d4814671228baa34f6cbdbcc660261dada0929d4a6f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4519712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed5c47b67dd7f2f90439b7b53d40ed6b65a66ad046370412f808a08a37172af5`

```dockerfile
```

-	Layers:
	-	`sha256:ad1ba86b64919f682e0d1da5e446c652cc3e6afaaaa6a7076d75de4d73d94827`  
		Last Modified: Wed, 05 Aug 2026 01:29:41 GMT  
		Size: 4.5 MB (4501853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b60dc4e60a5ec976b05f9b2b90d3f3c5d6383d1a7f9cd376a732165a578358e`  
		Last Modified: Wed, 05 Aug 2026 01:29:41 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json
