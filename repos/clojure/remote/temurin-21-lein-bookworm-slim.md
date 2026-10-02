## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:12d1d3d51f3aa9b4f1c643a084b6e13180caa3b83176423ad839a3b1ac493bb2
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
$ docker pull clojure@sha256:40ccbc84ce56f64cf385effaa7b110cb0323a38ff6af43f88724bb57dbbb49f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213162637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af516952fe56745442db423c9735bc2679f66cae04cae09096900726c523b3e1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 04:54:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 04:54:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 04:54:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 04:54:09 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 04:54:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 04:54:09 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 04:56:14 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 04:56:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 04:56:14 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 04:56:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 04:56:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 04:56:18 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 04:56:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8675132cc1928675d26590aa9e0b63693254469cb35208eefcc74b4ea68a6b3e`  
		Last Modified: Sat, 26 Sep 2026 04:57:04 GMT  
		Size: 158.3 MB (158282664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10278ef0191f778734539491c011ee4ca68b7ae7061c486ba94c33c2bf9fa55d`  
		Last Modified: Sat, 26 Sep 2026 04:57:00 GMT  
		Size: 18.3 MB (18280791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108a8c8d89d8f35ef67a44c62b0ea4c64ccc35d5cf308ff4a913b03fca0632ce`  
		Last Modified: Sat, 26 Sep 2026 04:57:00 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71ed33b8252d8a6e29221f33c4df266e3838749ceb45029beb9b8e002a821eea`  
		Last Modified: Sat, 26 Sep 2026 04:56:59 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4a8760fc4bd90d110838a81d1bf64c7c45126e7d84899bc5d2c690acef9c5d7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b27cface949daa52b3c8484e997bf54f5e5b61db1d9e12923dfc16ea72dceb`

```dockerfile
```

-	Layers:
	-	`sha256:147f153e5ec30477d91964f78fc7afb93743b62358bacae79ab0fcdde53f58de`  
		Last Modified: Fri, 02 Oct 2026 08:15:45 GMT  
		Size: 2.7 MB (2741303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:548bc4f609d9068d23c1975a8e0921b423b8cbc25c31f9e2648a5cbfc96f3c80`  
		Last Modified: Fri, 02 Oct 2026 08:15:45 GMT  
		Size: 17.8 KB (17815 bytes)  
		MIME: application/vnd.in-toto+json
