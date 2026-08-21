## `clojure:temurin-26-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:43e60d884d55a71a52eef38c235ff62453eae410c68c648c454d4922995b0ba5
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

### `clojure:temurin-26-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:becadefedf7d8a18ac0a1a89e33870e21c11beab9f8415ee0b5a18356f23f3a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145385216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e8a5e8f6230ba818cace9c28783c1e3da18a37476c59c3cf700ed92ab58197`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:21:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:21:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:21:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:21:57 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:21:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:21:57 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:23:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:23:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:23:08 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:23:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:23:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:23:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:23:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fbde589b713f36bfadc695abbec15afa0a5b8a21f97e40c63590c9de0df12d1`  
		Last Modified: Fri, 21 Aug 2026 19:23:30 GMT  
		Size: 94.6 MB (94563780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1261ce5c0a918de508f220098d6f598df4a5833158782a1cf0843a1e13145c6`  
		Last Modified: Fri, 21 Aug 2026 19:23:28 GMT  
		Size: 18.1 MB (18073199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d32f03b6baa67f74060cd50d3da9bef85881a9ba7219263193b75f3d7be1283`  
		Last Modified: Fri, 21 Aug 2026 19:23:28 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5bd41a9eea8287b86234b817c165509d373abdc3a142fd74549c14ccab5f2c6`  
		Last Modified: Fri, 21 Aug 2026 19:23:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fcc01751b6d9fe923cd7061eb2070261cf2af289171c4b0661db4df0d97589ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2720235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b753bda8ccd4b3698b7b93c5488bcf00e93dd3c621bea0cfae5a09a0d598b5c`

```dockerfile
```

-	Layers:
	-	`sha256:b9fe17014cebf2fbd88429f30b5142769d079492d568b295df38ebe3833329c7`  
		Last Modified: Fri, 21 Aug 2026 19:23:28 GMT  
		Size: 2.7 MB (2702469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac9437f4af5ea5b0f56cf5f12f26a0a341b90fe604bacceabb30258a079b1383`  
		Last Modified: Fri, 21 Aug 2026 19:23:27 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9fb3b4ec241b0a9a2a284bf3245c88c1247695a2fc65f0a8a604c21c3a35335c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144080983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c46bea1ea79ce80a0750cc218c18a3374deb3124d6c438a211efa69345e984`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Fri, 21 Aug 2026 19:11:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:11:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:11:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:11:39 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:11:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:11:39 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:12:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:12:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:12:50 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:12:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:12:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:12:52 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:12:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34126e45cc9960b5493ba677ba1fa9f7ba42a35f97d9af86573f2b581544fd2f`  
		Last Modified: Fri, 21 Aug 2026 19:13:11 GMT  
		Size: 93.5 MB (93541550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec5f298d6fb28bd89fe0bb04dec80a202afc17b03175033006f6f1ae52037a5`  
		Last Modified: Fri, 21 Aug 2026 19:13:09 GMT  
		Size: 17.9 MB (17906638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3e344a1e301f477e0772fd354bd9f57e29d1ca6d578630634284fcb598ac4c`  
		Last Modified: Fri, 21 Aug 2026 19:13:09 GMT  
		Size: 4.5 MB (4515163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de586727b78c98cd729eb90d94e731f34e6fe7abdd69036b769fa591f1b5585`  
		Last Modified: Fri, 21 Aug 2026 19:13:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d7a4fd7f24649c663b9aa16c7cad93f1136e11a212e543f413afac7e4d7e1a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2719968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae49c003b68893667f52342442566cdf952505326d2bce98702f170ca34cfe5`

```dockerfile
```

-	Layers:
	-	`sha256:86e1ff3d107e5741d0fcd4c4e1281c16e97d23bba7a7ea42427759e6f2871697`  
		Last Modified: Fri, 21 Aug 2026 19:13:09 GMT  
		Size: 2.7 MB (2702081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d49657fe634cbf2bf4d3341aa234251e36b5e3d86536530f51207b4e96683a3`  
		Last Modified: Fri, 21 Aug 2026 19:13:08 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:13735edd7754e2b17036a0260aad42dc7577fa5fd36855f88244951eccc6cd8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.8 MB (148773539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8d0967ff54c7881a8457e49c7798c79150ba207ed9c3c5e4d664966a3087c8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:42:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:42:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:42:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:42:35 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:42:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:42:35 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:45:02 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:45:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:45:02 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:45:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:45:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:45:08 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:45:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb6132815f1b95cd35c0709a89fe7d50e3b335a454584dd5908d7ecb843963ec`  
		Last Modified: Thu, 20 Aug 2026 01:45:49 GMT  
		Size: 93.9 MB (93902044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc541dab13648f40a861b16a2497b45edba4c36abee3c7ca6a40bb255c0c2e4`  
		Last Modified: Thu, 20 Aug 2026 01:45:47 GMT  
		Size: 18.3 MB (18279531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63618d2bde5e8e6db8a12d709d8b6fc6b7304a77ad28029bcf25be9425124fc0`  
		Last Modified: Thu, 20 Aug 2026 01:45:46 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3241caed14c75880394328ee81435aff55b3807c67be41d6184efca2e067147`  
		Last Modified: Thu, 20 Aug 2026 01:45:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dc4a90709a95b68259f636f91c9512117327b7aa4770395db9ba4a8c4f9445a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0054aa0bc4a1a5212e8f0b1e74d4d53e5b353ca47c7268a680220e77b947c9b`

```dockerfile
```

-	Layers:
	-	`sha256:28ab09548fa6c78eb15f7b86e03d8dfba159f75c0a90e9afbe58bbad3635997e`  
		Last Modified: Thu, 20 Aug 2026 01:45:46 GMT  
		Size: 2.7 MB (2688236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d6593e413bbc70a91a10ad879e934c83077d3d219924bff9ab68ca085973046`  
		Last Modified: Thu, 20 Aug 2026 01:45:46 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:d67eed4f424e351e624ed60883c9ee10a6106aaa79da2605d1e231fe594a9129
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139665727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88fc4bbd070c27a08e6a64c38e99cba6c7207c0f51da92eff983bd856350d940`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:05:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:05:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:05:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:05:12 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:05:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:05:12 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:06:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:06:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:06:16 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:06:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:06:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:06:18 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:06:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036c1c2293a8c00db9584c9c37e69e7c0dd3e86f95cdbf4098831ad891c4ce7a`  
		Last Modified: Tue, 04 Aug 2026 03:06:41 GMT  
		Size: 90.5 MB (90536989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8030d6075021958871fcbcfa0174c32300bf132be925b4d5f969968ab0fa0dc9`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 17.7 MB (17724818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b37166f7cc8d4ae3e59bdf14a1a4853422104c4b5b775d96798e30882be6962`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f56abdd71c14774276b7ae16b4d0528ea1f70d79957c92784be9dc3cd1c3f1`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8a4df52dc2e73c69124644139bca582c4042f7e7952429492cbbdd17522f8454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2692030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02f04a37896152f8b4bc29e3b50270daa55dce16074aa4626666ea72178c918a`

```dockerfile
```

-	Layers:
	-	`sha256:efd596409ae742a032599088009d307da101c623602e725a7afe328c8b9e157e`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 2.7 MB (2674264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f55bddbd465f1a5f5bbffb8742bf4f79f6577ba1236a5d980fa482d3b5433098`  
		Last Modified: Tue, 04 Aug 2026 03:06:40 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json
