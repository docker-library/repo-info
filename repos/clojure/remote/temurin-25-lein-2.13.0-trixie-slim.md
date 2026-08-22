## `clojure:temurin-25-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:c171bc94be72e1a42735e20d3342dc9ab50a1558a3026d6850f49411a69a50a7
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

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e773d6528b1cf49ee37b0e83ee0839dd3c6e0e1fc359bc4c4aa2bca36c937d2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143654916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db3bbe31eb976d82871ab53eae4dc59e4a2e8d6bc977bff28fa5aafb18dc31f6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:19:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:19:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:19:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:19:55 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:19:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:19:55 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:21:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:21:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:21:08 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:21:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:21:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:21:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:21:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eebd9393d1b8d9ed02a0fc8a2a3d2e454701c1f354a767baa65d8fcb1bddc5a`  
		Last Modified: Fri, 21 Aug 2026 19:21:28 GMT  
		Size: 92.6 MB (92615096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33357279cfe1cfaf272b9d7b9f9a7a84ccc4e80d0323e77f86486cde648e4924`  
		Last Modified: Fri, 21 Aug 2026 19:21:26 GMT  
		Size: 16.7 MB (16743408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:532bcc5a617a3dcea614af693edf9993fa47f8b8ed3a1507815b625345280204`  
		Last Modified: Fri, 21 Aug 2026 19:21:26 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9853c7ca8c545c405fb540cfa9bd72d5f886028232215ad44d0d2e2ccc19e5`  
		Last Modified: Fri, 21 Aug 2026 19:21:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:31236eec57fb21c9fcde8c4f7bef84d335625a89b03edc04d0ecdd6191f3f64f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a2fc50ca2b7bcef477111b68fc41a9a7c4f1395ef3189e33f7613fefed5aea`

```dockerfile
```

-	Layers:
	-	`sha256:5620288cf2d008da78943d1b79612ef1f7828bc04119568b39dfee4be65a7f05`  
		Last Modified: Fri, 21 Aug 2026 19:21:25 GMT  
		Size: 2.3 MB (2335165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb0087d15d6acff08b113ac7c3aa144ad350e09c15876d98c668144827396d1b`  
		Last Modified: Fri, 21 Aug 2026 19:21:25 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5d07b110cfd706ff58dc61432fb52922ea1da88cb5bbf9078f0c0b15226c399f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142903140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:669db8e73d0ad6de168a2ed5de451a7994ced2b24b28eb3708f1531a6942c1bb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:08:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:10 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:08:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:08:10 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:09:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:09:25 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:09:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:09:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:09:27 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:09:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c38c44972c27ab1ff98348ea36534da8d0dafe2d65351c196316ae022939226`  
		Last Modified: Fri, 21 Aug 2026 19:09:45 GMT  
		Size: 91.5 MB (91532202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a235183344d84dc7952a70741f885baaec09c7d7601765a208f68de9d238b465`  
		Last Modified: Fri, 21 Aug 2026 19:09:44 GMT  
		Size: 16.7 MB (16711711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708dff3fb8fffac19434d4629549ea0d1da86e9ecb6ddca731c9b850b5daaeb7`  
		Last Modified: Fri, 21 Aug 2026 19:09:43 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df74586dacd680c878be0b94a47d1f96a1a3abba738735b43c5e3c9b4a66fcd`  
		Last Modified: Fri, 21 Aug 2026 19:09:43 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f8c1d45576d8f81c2a5a11c5aaeda968cf4e38cdf47bad2602724ffafa1dea2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d5171834cd9ab84dae953a8b9f2df783089adc7bd26cefde3406d4592f61b6`

```dockerfile
```

-	Layers:
	-	`sha256:53b3ed0475e4be375d30afc6dda0044f0f386d1718b065b08e190e27a01214b8`  
		Last Modified: Fri, 21 Aug 2026 19:09:43 GMT  
		Size: 2.3 MB (2334796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94fa13f1890493659462f07a6b48cb7384c99e4280f3c3a0fb287ab0f0ea4c0c`  
		Last Modified: Fri, 21 Aug 2026 19:09:43 GMT  
		Size: 18.5 KB (18544 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7be9dc3fcd5149db51ee8b2a8c04eb3d685bf3b1c5f8a6cf69eeefca44caa96f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.2 MB (146155646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbded0a500d73ea4cd37c9015134e6c906721a9a8b7ee158b2b1732fbc6d4e57`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 23:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 23:01:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 23:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 23:01:28 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 23:01:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 23:01:28 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 23:04:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 23:04:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 23:04:42 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 23:04:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 23:04:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 23:04:46 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 23:04:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4edb0c3d053e0e063f478af219f58f4a2de903462aa8084fe8ffee2311107aaa`  
		Last Modified: Fri, 21 Aug 2026 23:05:19 GMT  
		Size: 91.3 MB (91255829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7702504d92812ab0b85da2dd1c3cbb85e7ef52280b45d598a74b4caa049bbf9d`  
		Last Modified: Fri, 21 Aug 2026 23:05:17 GMT  
		Size: 16.8 MB (16782826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b723d31b33a4c5c28cab8baf63f1d14d2bc8727895dd61a6aea733dc27f779`  
		Last Modified: Fri, 21 Aug 2026 23:05:17 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a507c3ccd13a9f8851744409ea2870e9efa30c505833f1c16795446b985c41`  
		Last Modified: Fri, 21 Aug 2026 23:05:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ced0f0798b382121972f7b108a4618ba6b3a116ade34d34a741eb3d60ad55c0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2337925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d857d4a25d39ccc47b089567825a29750bb9a9746bd4f3974611db0b2f03a25`

```dockerfile
```

-	Layers:
	-	`sha256:07fbd559afe43b2e6aded6d3b70eaaf863d9d6b29aa891b24e2ff4e356fec810`  
		Last Modified: Fri, 21 Aug 2026 23:05:16 GMT  
		Size: 2.3 MB (2319469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c790728dd66bcdb3a658268cc6366e9b83685911f829a2413fe3411a9fbdf7a`  
		Last Modified: Fri, 21 Aug 2026 23:05:16 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:003ee329baac2a9dc25b39cb78e7d329b56fc8893afd88a101090cb5dc0ce707
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139563921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c49ca7490ffb0554416d4f444d3cd0b3d15d2c685f0bc2412e3cb67c3d4e70`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:11:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:11:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:11:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:11:40 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:11:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:11:40 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:12:48 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:12:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:12:48 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:12:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:12:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:12:50 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:12:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46705dfe435c8f8c0b271e602e00735acb24ab97701f5ffc898cb464d2a38ce`  
		Last Modified: Fri, 21 Aug 2026 19:13:13 GMT  
		Size: 88.4 MB (88421933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d7a7ed64e01e0fa0449e0eec594f94a55c622998ec05d446990a443ceae54b`  
		Last Modified: Fri, 21 Aug 2026 19:13:12 GMT  
		Size: 16.8 MB (16779776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da903ba76576bee5f35560e61fdc7e474c7a44bf645d75ca809d81f8690cee8`  
		Last Modified: Fri, 21 Aug 2026 19:13:12 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfb6af9b1eaeecf6e7152dca973861a7d23c891dcc6f0da472dc2ec49f186074`  
		Last Modified: Fri, 21 Aug 2026 19:13:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0077f41e921c3e1ce625c2fa78d3c020451aaf43415c3191fd658eb4e5fe71a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30a31ee0fa5964d922238157efe1de27b92b921c5130da4c20b2d860798b8da0`

```dockerfile
```

-	Layers:
	-	`sha256:67f187160634bb3faed5d328827a373b1b178ff95273fa5d93579298b129a535`  
		Last Modified: Fri, 21 Aug 2026 19:13:11 GMT  
		Size: 2.3 MB (2316154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25d5c50008d8f9f985d2fe7139518e7b65de93ab0617b46fff81d615f2bdbd20`  
		Last Modified: Fri, 21 Aug 2026 19:13:11 GMT  
		Size: 18.4 KB (18399 bytes)  
		MIME: application/vnd.in-toto+json
