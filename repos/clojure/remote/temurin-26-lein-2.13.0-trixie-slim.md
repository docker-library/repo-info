## `clojure:temurin-26-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:e1cb6b82b3b8f6b540377230dd22150d25a0f3a646eb2464a395f2aa923800f3
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

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:6f956468a2ad005df8351f5a70ddb681d7d2ed7b51330da5dd0d8e0155301bff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145564332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591a4df75085ca3c8c6f233679663a731a47738ce1bea8d2f54cf96115bf44c0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:50:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:50:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:50:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:50:10 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:50:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:50:10 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:51:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:51:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:51:25 GMT
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
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3acc5237d9c3faf68a0ee1d56d9fec7d8b16bff41f7996bc568981f1aa86d385`  
		Last Modified: Tue, 18 Aug 2026 20:51:47 GMT  
		Size: 94.5 MB (94524351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cccaf2e786ae32dbb2b2c37c4756cb3c5368ea1b3ac7477d7a361b75438e242`  
		Last Modified: Tue, 18 Aug 2026 20:51:46 GMT  
		Size: 16.7 MB (16743592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2ff9eee743c889f133383d1ea501688cc6661d8cd5029f5211f7618b04ae1f`  
		Last Modified: Tue, 18 Aug 2026 20:51:45 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f704d7c8f00c3d0b664b0aa4bb4ffa7f6b160a80e24e224cd039307c6c23d048`  
		Last Modified: Tue, 18 Aug 2026 20:51:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a119afe72e196992cf9df28e5a7ca6fc52c38e82a205d3f1417b4d3f646a1bf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475a5444e5bc640dd2b33a9fb5892fd42508885c0552f3b9fe81cdcb346fde1b`

```dockerfile
```

-	Layers:
	-	`sha256:437e2d32ca1ad4681405d88ad35feaa418bb77e84e74797128093cc933a1ac47`  
		Last Modified: Tue, 18 Aug 2026 20:51:45 GMT  
		Size: 2.3 MB (2332008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae9636b1bca4afeea64c3ac9b73816949f69032e7971d85e937651bdbe933f68`  
		Last Modified: Tue, 18 Aug 2026 20:51:45 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0029b270b31fc430406f877b6a35e92ecf687d24820a5fb478c6d0028c790ae5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144875281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:560503bd208a66969a398d44ab4074eded3d4a1e13ceb94050c3ed8301fae301`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:50:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:50:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:50:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:50:00 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:50:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:50:00 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:51:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:51:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:51:15 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:51:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:51:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:51:17 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:51:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b8cebe5fd4526308bbd6a464c7831cc8ac9a4b5364f3d89da788d14e1e7fd8`  
		Last Modified: Tue, 18 Aug 2026 20:51:37 GMT  
		Size: 93.5 MB (93504354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31bc4d9288fd83515e09021d48d1e4c748ba4bafe0b3b2f3fb0995433609dff`  
		Last Modified: Tue, 18 Aug 2026 20:51:36 GMT  
		Size: 16.7 MB (16711681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc507b051b375cbeeba9ec1596f3d1a3ff5f9a8736f6b68c35610ed52319b71e`  
		Last Modified: Tue, 18 Aug 2026 20:51:35 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e9af53372db9b900d9877c6adfb492d1f641b15cf7c63352b29cfe87626081`  
		Last Modified: Tue, 18 Aug 2026 20:51:35 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8e2a9abba2966715ca94bba13a10f35b5fa08b6835899e87219a3e27987a071b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c483ace077e77da80bf658666eb3b684ab881d6a3b0b565fe21672e41dafda`

```dockerfile
```

-	Layers:
	-	`sha256:a2da18f90dbdf54d35bb6694cdebf6750bacfe67afa9d9cb760c8b189073a1e5`  
		Last Modified: Tue, 18 Aug 2026 20:51:35 GMT  
		Size: 2.3 MB (2331615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:306cd0f2d74d24f16452395cf0e567548fb595a79c0d12103cbceb9e0c811a81`  
		Last Modified: Tue, 18 Aug 2026 20:51:35 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3f08d13505c32e9521fdeb74cf4700c808852bf454cb26577bb75cce8c11b296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148801306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5b0f48d1436fdca09ae0313972a4d8fa848a8e11da1c81d0ab74181fcd03233`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:58:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:58:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:58:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:58:24 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:58:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:58:25 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 08:01:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 08:01:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 08:01:04 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 08:01:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 08:01:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 08:01:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 08:01:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb4acaedaaa7309a50cefdf6d418c1ed45dd4e7ce35533e2b816c03865bc463`  
		Last Modified: Wed, 05 Aug 2026 08:01:40 GMT  
		Size: 93.9 MB (93902051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5adebd256c01cb90bb4f5abecd94e00d4727cc7f9c007f0dff982af7a418f55`  
		Last Modified: Wed, 05 Aug 2026 08:01:38 GMT  
		Size: 16.8 MB (16782295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1e4e6b7a37425db040904065e78f304c8ffaee7ce770a7be6e795ea94466853`  
		Last Modified: Wed, 05 Aug 2026 08:01:37 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b7740123fa5767b991e8ad90a3472edfa85eb936c4a636c7d17882ba3499dd`  
		Last Modified: Wed, 05 Aug 2026 08:01:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c84c574535563e2824744bc4fad1555dd069ab95e6c8b51ad862de611ad0fce2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59bd933d23e0331ea608a7e903a6506702aa8b36ac057d6e1877c4b0705ecf2f`

```dockerfile
```

-	Layers:
	-	`sha256:217bef1ecdf97f0b9a5c07401e138567146ba0794ed20cc2914774db471500d4`  
		Last Modified: Wed, 05 Aug 2026 08:01:37 GMT  
		Size: 2.3 MB (2316924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2feea3aa1407435e5190afca3f22caa3dcb38d631953f36d2ff14a22ee22d112`  
		Last Modified: Wed, 05 Aug 2026 08:01:37 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:291aae38bd46988ab29de552181b3f8f7b18cef3e52dd9ff2b803f040d661537
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.7 MB (141678819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a65576e43eb301c7df8c9d67e2166c4315bfae0c1a791b24796a32717fe2b2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:51:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:51:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:51:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:51:57 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:51:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:51:57 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:41:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:41:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:41:40 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:41:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:41:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:41:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:41:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbebdf1ee4edad28782d9e56bd3c2bc6dca484602f77f08c721dd097eee79627`  
		Last Modified: Wed, 05 Aug 2026 01:52:43 GMT  
		Size: 90.5 MB (90536953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9ca1f15dbd7d80fa40409df69032c64167847e24b63622b32a1065b6115412`  
		Last Modified: Tue, 18 Aug 2026 20:41:54 GMT  
		Size: 16.8 MB (16779671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9208f557842d99909058f9706ea3e453a3c8464cf868a3a23a22cd76c3951621`  
		Last Modified: Tue, 18 Aug 2026 20:41:54 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f8d49df5a069f0ca9b6786149d4a439f8e03315ec582a303bb905818f84903`  
		Last Modified: Tue, 18 Aug 2026 20:41:54 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:519960ad3cebf7177756ce30b361a91fa226e47708258e903b89a387da11dba7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8255825a0ab19842e6d3c7dfbffb9044155f2b0991b37275b2900930294bc63`

```dockerfile
```

-	Layers:
	-	`sha256:131d77ba9197d3527c70a93355c2b72438ed9585fc335f9f2e29b77834991014`  
		Last Modified: Tue, 18 Aug 2026 20:41:54 GMT  
		Size: 2.3 MB (2313621 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a527f6c05a5a005a094f479cd579839d261c418fe51f69ef730ecff4570284b`  
		Last Modified: Tue, 18 Aug 2026 20:41:54 GMT  
		Size: 17.7 KB (17745 bytes)  
		MIME: application/vnd.in-toto+json
