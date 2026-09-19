## `clojure:temurin-25-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:4902cefdc68e2f758351c516c877660c71f58b5cb023c2d1f9dd678f675544ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:dd92698625247637d68c08cb92b38a9af864dbf2fbe87347595393b8e3f78908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143455033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfdef40249c6c9c9f9f62b7dd2e8200369bddbf48481daeb5cfd9d4b2a948ffa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:16:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:16:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:16:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:16:50 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:16:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:16:50 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:17:54 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:17:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:17:54 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:17:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:17:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:17:55 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:17:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c22bbc8cdc771e2758284c397bc3f852ec221dd8646f479116a13c6359e7869c`  
		Last Modified: Sat, 19 Sep 2026 01:18:14 GMT  
		Size: 92.6 MB (92615105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fe6e94118cde167348dd94502790d9d156d56e8a2a43302f2c6177fdad2619b`  
		Last Modified: Sat, 19 Sep 2026 01:18:12 GMT  
		Size: 18.1 MB (18085869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a87d0f712724c47f6d7d55a396208c9f627b9acab32c5e98c0c8b9016206e5c`  
		Last Modified: Sat, 19 Sep 2026 01:18:11 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ee728c1521c36ab3993c9845e6ed7d7f77902f5cd1d67979986e5df21e262a`  
		Last Modified: Sat, 19 Sep 2026 01:18:11 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d774da8cad3d76364be5b1d36c58a469293acf5f7183d0605a76d8c293a79836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2724096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d1b99007e6ba3e7a92836a69479957bc869bc9a9198c76e0da833084a50cc89`

```dockerfile
```

-	Layers:
	-	`sha256:303b82b973e35308951f58464326a47cdc039ef94b5d4048df7bb21925715a74`  
		Last Modified: Sat, 19 Sep 2026 01:18:11 GMT  
		Size: 2.7 MB (2705668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ff5c5c8b19b51851282f2a7c89980f38bff805f727f3b0124d242eaa6c99f14`  
		Last Modified: Sat, 19 Sep 2026 01:18:11 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a1d5775dbde0fe338fbb575789b836f4e5ce677a783ffbcda5eb52a87c4597a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142078608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac615c2a3bc7c4fa4d0e3d9ad70590294468c4809dfc60057e770ddfe4255e7e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:23:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:23:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:23:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:23:57 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:23:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:23:57 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:25:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:25:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:25:03 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:25:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:25:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:25:05 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:25:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c3d911f42c7b5b542fcb3e5161b6ccbfb7b03f90c78a45eb0a53b6cde333e51`  
		Last Modified: Sat, 19 Sep 2026 01:25:24 GMT  
		Size: 91.5 MB (91532236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f798cae1c0a98d26cf474ffab717a18a60e135aa9ca5945d546a456755af7cf6`  
		Last Modified: Sat, 19 Sep 2026 01:25:22 GMT  
		Size: 17.9 MB (17907046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80f4e9af5a7977be6fa2a5ad9ee13fec1e65c535c591001d8b445b09851363e`  
		Last Modified: Sat, 19 Sep 2026 01:25:21 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27eb0f31a6ddbce4c9a3541c0f407c9ee23b87f6deedba06a043918516ea008`  
		Last Modified: Sat, 19 Sep 2026 01:25:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:348a20995aac9b011230cc680f5858a037cd740ba5b938752dff04486be6dafe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2723876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d58e655c99915246baa26f3a5c4abd102741df48d1814817a21f2dbb1287a2`

```dockerfile
```

-	Layers:
	-	`sha256:ee2968d046b71efa11a9dfb702f26b015d837ac030c4aed2fd09cb30896a5fd5`  
		Last Modified: Sat, 19 Sep 2026 01:25:21 GMT  
		Size: 2.7 MB (2705304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d38342cd5f16b8d2512cad6be8da0162c8c5754c21d143de4e1c5ccbd3fabde`  
		Last Modified: Sat, 19 Sep 2026 01:25:21 GMT  
		Size: 18.6 KB (18572 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3cd7e7e12f3dc52fcff6d12baf062aaff659500fecec4d5d15a0d27f0a7632d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146134563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed867f5048ecd5e889e88ca6862f6bc06e3d329d865e85ed39456e25b9c93879`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 08:15:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:15:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:15:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:15:10 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 08:15:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 08:15:10 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:18:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 08:18:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 08:18:18 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 08:18:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 08:18:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:18:21 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:18:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8b45bcb39b6c6ccac622b12389186f44a6f6e5836499fd9e571b1f68545fba`  
		Last Modified: Sat, 19 Sep 2026 08:18:58 GMT  
		Size: 91.3 MB (91255822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba49545cee8af25cebf58ce211940b7cedc20390a793219257e736d7b686dd1d`  
		Last Modified: Sat, 19 Sep 2026 08:18:57 GMT  
		Size: 18.3 MB (18279524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46fdd98f4efa70da08f9990bd2005c86a5673e11a49365fe342772eee988cba0`  
		Last Modified: Sat, 19 Sep 2026 08:18:56 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ba6214303a0a242272b06b59b731f9b6667eae1b58df2a57072a341bda26d1`  
		Last Modified: Sat, 19 Sep 2026 08:18:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b4c1681bf52fee48614d7bb20e6aa0938e1439b938706e01a12a7f6138d5082f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2709309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dab788abca2b3f36e028dded8711cea8c38af68fa3c567fa10e3315ebced1bc`

```dockerfile
```

-	Layers:
	-	`sha256:15b6be44bfa5448bf620d9a7552c2fa1a4d1fa5207d65581a7de80d49b4943eb`  
		Last Modified: Sat, 19 Sep 2026 08:18:55 GMT  
		Size: 2.7 MB (2690825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:958b470bba9572594e5f224c29832cf7a382f683f0db4ea33ca3df5207f10e15`  
		Last Modified: Sat, 19 Sep 2026 08:18:55 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json
