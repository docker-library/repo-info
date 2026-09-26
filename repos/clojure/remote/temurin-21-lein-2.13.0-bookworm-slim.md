## `clojure:temurin-21-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:c751315240c874f8e8b90aec68ac0ebce23be9f154f9e7b209b693fdf3d95374
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ef9917cc7dca954b3cdf4978fd300f7a03e03891a073cd6a52e1f5756fcb2472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208958615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf89494f1b8fe8ae8675c39a8e8c1c09d9424c46a1b0a55a699b05a662b820a0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:22:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:22:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:22:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:22:32 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:22:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:22:32 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:23:41 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:23:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:23:41 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:23:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:23:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:23:43 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:23:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:639070f32817fe38f8c9e5fdea2fbd1cda491e5c7f636c216beafc1b6943480b`  
		Last Modified: Fri, 25 Sep 2026 23:24:03 GMT  
		Size: 158.1 MB (158117504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de50a8a47ad884db70e1431a403d7ebc12bd888edd39fe54794717577d56ee5d`  
		Last Modified: Fri, 25 Sep 2026 23:24:00 GMT  
		Size: 18.1 MB (18087029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69864245669a657d3a2d8d319adba3dc1dceb3bc5d42265f8445c2d0b06ea5e6`  
		Last Modified: Fri, 25 Sep 2026 23:24:00 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4328dfc631500e1e6cd2696876a563853a5ac6ac09c30b6fd7e12b91b7d5c93`  
		Last Modified: Fri, 25 Sep 2026 23:23:59 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7b308d27a0b6a1d25e6144ccca41eb876d671ac91d2c49296eb0853a1afc7c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956ac9a2af517fb06ad2e51a7b08897a06e394d72d374ca3f4bae495afc360d6`

```dockerfile
```

-	Layers:
	-	`sha256:6895483b6a1e2841f0e3fb2a900d31ac0f1cdfb33b7277f742f10a49979a97a4`  
		Last Modified: Fri, 25 Sep 2026 23:23:59 GMT  
		Size: 2.7 MB (2739470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e665b6cc2662247ccc4dbf55d5daddf02603a1ac549e5e42a92285bbf797243`  
		Last Modified: Fri, 25 Sep 2026 23:23:59 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e49c52879d973dd1a8001036d07de88299a14cc26dbfb6e6eb61659b58a0b03a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206948419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075654ed64c3da97f6061d45f08c0699e6c7ae7294f90f285ca27c1bb85f6b50`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:20:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:20:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:20:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:20:13 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:20:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:20:13 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:21:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:21:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:21:20 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:21:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:21:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:21:22 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:21:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d24913938d88b9947c8a2f3be0fad6236941a5f968c7118d844c98f5d43fa65`  
		Last Modified: Fri, 25 Sep 2026 23:21:43 GMT  
		Size: 156.4 MB (156400708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b424203f9b9cc510d71dec1e2cd7e0534bcd2e9ac669ce4e311fbc6871fc66d4`  
		Last Modified: Fri, 25 Sep 2026 23:21:40 GMT  
		Size: 17.9 MB (17908397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef00c8d62d9f0499f75571dfe2f141f3f7b9861bcd0a08402b6edf04fa401e0c`  
		Last Modified: Fri, 25 Sep 2026 23:21:40 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8915b070557de640381fd08726c60e94b091239f45600d3a0f551011ac3c024`  
		Last Modified: Fri, 25 Sep 2026 23:21:39 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:180e5be819966500f20c553c0865867b736496089145dac9c90f43f8f415c9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:982cc83c7ef335b8da80f7dca555ed066e75a0e9b701255dec7db7ba6cfbb753`

```dockerfile
```

-	Layers:
	-	`sha256:d2482560ae4dc3e3d103a32133faf5f3558f5922b37ffc138e4c56f392d2423d`  
		Last Modified: Fri, 25 Sep 2026 23:21:40 GMT  
		Size: 2.7 MB (2739085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8745bef68410937132dc3822452a93de0ce6026f820c3df7ea62a065408942df`  
		Last Modified: Fri, 25 Sep 2026 23:21:39 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:47efa5e835046e0027cb4e3c4e9e2d7b7d0925e119a4fa8a3e66380e213a75d4
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

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0e14ccb597b23dc5d876e6a299b5cd29c4f4807c76266f2072032aa0ebf2f2f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d4ca9f3ffd0eba9cad3cd708f9a453870b89169c673e94a337cd53292d5621`

```dockerfile
```

-	Layers:
	-	`sha256:c2191723bcd3191567b65ebbff5a5f15825bf0f5d4d258ca9bd6c3b697873d3c`  
		Last Modified: Sat, 26 Sep 2026 04:56:59 GMT  
		Size: 2.7 MB (2741303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06863059a6a2d547ea00bfd0db4bb012ffa42ebf7c46bbcf1a52dd00bebe29f0`  
		Last Modified: Sat, 26 Sep 2026 04:56:59 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
