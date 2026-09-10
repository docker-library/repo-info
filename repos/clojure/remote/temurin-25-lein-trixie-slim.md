## `clojure:temurin-25-lein-trixie-slim`

```console
$ docker pull clojure@sha256:a6fa5d527577751f3d4fa47fad10d8ce59aa91b16e349ee46c9668b0ad6b9cc3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8855a2bca1c3912f380dcead87cd619b03ad51d12693b447ae3c81561f70a4ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.6 MB (146639267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c4cda01f94a709648b378210e1d417bdaf391ed03e0d76b7cbdb0d5d74f2eb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:50:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:50:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:50:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:50:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:50:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:50:00 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:51:09 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 03:51:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 03:51:09 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 03:51:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 03:51:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:51:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:51:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236cd00b26a291c0302dd2a4c7c8b9a50877f8fef7917dc90272206d4e3c63ef`  
		Last Modified: Wed, 09 Sep 2026 03:51:30 GMT  
		Size: 92.6 MB (92615082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e223d3ddff17dcfe96c05fcb9ebf5b70a2d6723de5041af1d4dc4e2be1295ad`  
		Last Modified: Wed, 09 Sep 2026 03:51:29 GMT  
		Size: 19.7 MB (19715881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af08c47d595fb0b64e193f0648460a84c6f76c76298f5d46e2c3a2bf4c671e31`  
		Last Modified: Wed, 09 Sep 2026 03:51:28 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a812986aebd968732a6e0fcd794c4ca8ce749fa19e8e056b916588d9f28bb04`  
		Last Modified: Wed, 09 Sep 2026 03:51:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:028278ae9501b9eede71f416765ba8588af3e3b6c535a9abfb8e55873b1959d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:042fbaacfbd8232e0b0aee780d0c53c92d43abf5c279374a146fd5dfe75ac865`

```dockerfile
```

-	Layers:
	-	`sha256:bdd54831152a5d0c337799b3896380893aced1a57abe193a0de9bd56142339e2`  
		Last Modified: Wed, 09 Sep 2026 03:51:28 GMT  
		Size: 2.3 MB (2335363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d91b27776a3b2a7063523810abcb2c8d02edc3c1c33d9858b76d7434c06b5a5d`  
		Last Modified: Wed, 09 Sep 2026 03:51:28 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bd6e10e728ad5648d35a2caa26150ebca6d609740761da7703fc5a8e5dd06de9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146244855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddb835f5a731fc457965036bf470b635155415f45481474646c330582cf54b0d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 04:01:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 04:01:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 04:01:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:01:50 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 04:01:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 04:01:50 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:03:09 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 04:03:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 04:03:09 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 04:03:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 04:03:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:03:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:03:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49beaffb4fd7cf7581ef715e5074e45f0f879c2bac6089dde424fa6a487ff41`  
		Last Modified: Wed, 09 Sep 2026 04:03:30 GMT  
		Size: 91.5 MB (91532215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0516b01b2e8cf5625e66ab36a3de050206f5b57431f712ee485ad24043f1e9`  
		Last Modified: Wed, 09 Sep 2026 04:03:29 GMT  
		Size: 20.0 MB (20037435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b790bfbc8c2865f55858e834f165a231f4c8d05ee6ecb9079b85fd9bebbe8f4`  
		Last Modified: Wed, 09 Sep 2026 04:03:28 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb39e951820a0cf1fcd935b3032cc665dafb86bd5d2efa05d585f756d3a5843a`  
		Last Modified: Wed, 09 Sep 2026 04:03:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c8e0455d725ae87bf52ed0ce5e510c5b755ca8cbeb9f138fb3ec1511506be035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8734fb5b72dd933fd03d085f02735b6900b3a642d2832572bd2e9a1a56d5dac8`

```dockerfile
```

-	Layers:
	-	`sha256:54226d1d5f9acf2a82e0a47e28505bdc482d656fb0baeeae9eece1608cb6db2b`  
		Last Modified: Wed, 09 Sep 2026 04:03:28 GMT  
		Size: 2.3 MB (2334994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7c891666f1eacb1b2704f52be3b767b1860e7b75c9b2bc2b3f1c39538ba39ec`  
		Last Modified: Wed, 09 Sep 2026 04:03:28 GMT  
		Size: 18.5 KB (18545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d273f2d800d75665aae5aced3ec00b747ae59bfe3e05df4fc6512b6c50e73afa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.4 MB (149377439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39a94f0ba236afbe91d54e12e2c1b7c6a971a028e3f886eb444ee0bca7b8a6a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:30:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:30:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:30:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:30:39 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:30:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:30:39 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:17:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:17:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:17:31 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:17:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:17:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:17:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:17:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8084f28e02f46493ed99594a968a5e403aed0d99dd596c6994e2e5a127d449cb`  
		Last Modified: Fri, 04 Sep 2026 00:32:39 GMT  
		Size: 91.3 MB (91255818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1da14409563a897d7ea6671f002d57c418da73c1fa92a640afa07dd8bfc424b6`  
		Last Modified: Wed, 09 Sep 2026 11:17:59 GMT  
		Size: 20.0 MB (19990517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06919234443e1e5e6403e46f16ad8d8f663f3f777173aa5d904c752658d1fc86`  
		Last Modified: Wed, 09 Sep 2026 11:17:58 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01bc5e0d4106cc3388ca89d0c5178d0e3d2c707edbaf39e31daa0c54fb4c5cbe`  
		Last Modified: Wed, 09 Sep 2026 11:17:58 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6447ac73215c7473a881be57b50fd161f2937e912aa4bdb127e76b975b7049df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2338123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e210891acb49243e11050c92abeb1d3d260190cac4a119c1ae14822815d2f3`

```dockerfile
```

-	Layers:
	-	`sha256:4db8f9faf772722e95fe8473dcd2bdd388dde14b0c3b0e2af7e1887bb5f5edc8`  
		Last Modified: Wed, 09 Sep 2026 11:17:58 GMT  
		Size: 2.3 MB (2319667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04b9f2e9de86b97e410c3bc8afa8cc51325fe150cebf2ee67ef92b345ad15b3c`  
		Last Modified: Wed, 09 Sep 2026 11:17:58 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json
