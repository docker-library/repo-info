## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:fa595906cac5e65b750929e40039b35791406deeb070c75165f2329a3f5a82e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2509e6a03bfa07a72a97d1071891151081c23555047ffa7894e42c7cd7b222d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208958536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:862ca35f5fd56d378381b8ac20bc7610db99eaaa9be7a3aed024441e31aa03dd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:46:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:46:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:46:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:46:36 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:46:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:46:36 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:47:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:47:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:47:49 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:47:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:47:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:47:50 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:47:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae523a272f8f4ff42ef3a26a6690936c83c0962109dad99a7438bba7de98f6c`  
		Last Modified: Fri, 02 Oct 2026 02:48:12 GMT  
		Size: 158.1 MB (158117500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf00766a6dc81ca8028b5cdf5c24869f83ba28eafa8e92ef8889a12a91dc1b30`  
		Last Modified: Fri, 02 Oct 2026 02:48:09 GMT  
		Size: 18.1 MB (18086980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:324bbe814b9d700691e6a68e25b37804bd332d4251777ace4df4bd497fdffbea`  
		Last Modified: Fri, 02 Oct 2026 02:48:08 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4836d3382ec442933568da77caa7c9646362639116fb22d827b11cb29e03da3`  
		Last Modified: Fri, 02 Oct 2026 02:48:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2e57c233527f96501bfd91bb5c8205b58a52a0989add53de92880b9463f0f09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27094f09cadcab6e55cd4eaf4a374fd09d8e053cd875ae86ac78cbec08da9f0e`

```dockerfile
```

-	Layers:
	-	`sha256:fb613c8e1f8f41363f9d2d9f2d01fa1593d60926891620788ab17d91bea6dea1`  
		Last Modified: Fri, 02 Oct 2026 02:48:08 GMT  
		Size: 2.7 MB (2739470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6c297a9c05137d266d21ba76d46f953c3604adab8c1a481bd8669b9bff93629`  
		Last Modified: Fri, 02 Oct 2026 02:48:08 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:564457228ab7411049b208dd58aca4e7d735119e21c60fc159888ffaa9a297e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206948348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac2cd5e0b2be20610e452b603531b28eca68f265a9d88bf60fca3d4a0a50342`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:46:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:46:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:46:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:46:23 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:46:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:46:23 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:47:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:47:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:47:33 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:47:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:47:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:47:35 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:47:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731aedf1d4d07c6b286ec480d7ea3ba01dc276e7e0ab4d106cd19f3d41cbb253`  
		Last Modified: Fri, 02 Oct 2026 02:47:56 GMT  
		Size: 156.4 MB (156400683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d225992cd14f9313c53440df7fdedee23a8f564e3f0d73230e9670db74b122fc`  
		Last Modified: Fri, 02 Oct 2026 02:47:53 GMT  
		Size: 17.9 MB (17908333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e243c7aeb331741190834502988fc91300b7ea920c23a961512ccb2ef0f024`  
		Last Modified: Fri, 02 Oct 2026 02:47:53 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d005c294dd6c34fcdf10d4ebd01347779e1d1de0325348dc4a775fef8db9f9e3`  
		Last Modified: Fri, 02 Oct 2026 02:47:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:13359b0c2f17b9411463a85ee0b4c4faf17221f6d3b2d71b9712a0c87bfeffae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:193ec885d39f5a57b918f49148f4e17bf3674c8c4d269f00d30b6fedfc5d7387`

```dockerfile
```

-	Layers:
	-	`sha256:543e6315a7469e11095ec3fcd9458978dc3a0a7d8a6bd67e2b378da5c73dbfdc`  
		Last Modified: Fri, 02 Oct 2026 02:47:52 GMT  
		Size: 2.7 MB (2739085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1a7c517c8e2cadeb9e21b42f95fc290822d5b0391b24e4a86c18c449ca5dae2`  
		Last Modified: Fri, 02 Oct 2026 02:47:52 GMT  
		Size: 17.9 KB (17893 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d86e7c02158c6144139b643a03d346cbaa907863b69a7aff004a937cb47a8a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215625897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efdfe7f7bcdab1176b4ed4f38c6e4f4ae9d00e2657ac24c1ea2ee93156754184`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:17:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:17:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:17:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:17:44 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:17:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:17:48 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:21:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:21:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:21:42 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:21:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:21:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:21:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:21:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb11497786ec274381b07071fc31623f952946862f1a8776f0627ec34640565`  
		Last Modified: Tue, 06 Oct 2026 10:22:39 GMT  
		Size: 158.3 MB (158282661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8d4e95e05f45f0a6750d3d5408e825122abc4c84458072ff5f037baa953a8a`  
		Last Modified: Tue, 06 Oct 2026 10:22:36 GMT  
		Size: 20.7 MB (20735180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60979da05ccefa4c1b501ef5b7531222ce1ae6c92813ed9db32ce97d5c8bed31`  
		Last Modified: Tue, 06 Oct 2026 10:22:35 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f8bd238e8b9f56f77a69afea45e1fbb25fb5004a411e39bda0f568d95a6f991`  
		Last Modified: Tue, 06 Oct 2026 10:22:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:26054dbc3fff7a253c4e34083ca4f70fdd506768b997ef95ff92fbfa54ee280e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab57ecb345ed7e2e31db5f4d138256e642777633f1324363a446030e5ed9948`

```dockerfile
```

-	Layers:
	-	`sha256:da9fe4015f87fff76868f95513d6339bf90d5475cde364657104d58a9afed161`  
		Last Modified: Tue, 06 Oct 2026 10:22:35 GMT  
		Size: 2.7 MB (2741303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4104e8980e770280b3b93b3d00bd8132e5ee67f15c244d845f0254bd5425c830`  
		Last Modified: Tue, 06 Oct 2026 10:22:35 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
