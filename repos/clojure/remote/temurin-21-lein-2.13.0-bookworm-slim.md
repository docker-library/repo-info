## `clojure:temurin-21-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:50f1fb53f01b30d74edeae3700ecc502ba7d1111669d605a64c21d55bc8ee195
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
$ docker pull clojure@sha256:d7312b800811d1106cefa776209b880b84534b650416ab62fde2f0c0a073b499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213153150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85b21aa0408f58cba2cbbb3ceaee5d83e4d7ab1b3156f6ba5ac9fd1b3f265cc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 08:03:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:03:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:03:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:03:05 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 08:03:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 08:03:06 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:05:48 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 08:05:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 08:05:48 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 08:05:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 08:05:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:05:54 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:05:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5584cac42c70ce6b21896391a65ef3f8918f712975e83d58d00a1f1ca66d305b`  
		Last Modified: Sat, 19 Sep 2026 08:06:42 GMT  
		Size: 158.3 MB (158274928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6fae416ff91d1b1acccc2873502ee816ff17265f11f15236047690a20f6b2ac`  
		Last Modified: Sat, 19 Sep 2026 08:06:39 GMT  
		Size: 18.3 MB (18279042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:934e2c013a1cd7df72755839f675739c32a9b4e7cbf42395e40817d1947fabd6`  
		Last Modified: Sat, 19 Sep 2026 08:06:38 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:219774bb792def4a494234c154fb588d45294c76686b07436130b27cc000c28a`  
		Last Modified: Sat, 19 Sep 2026 08:06:38 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3a19776aea809145df130fd07d07549a607468d71a66db19f586e7f9a84c1dae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2982cded3bf613edf58644739a14d8af932abdc532a2002b54ac08bc2a952903`

```dockerfile
```

-	Layers:
	-	`sha256:4304fb108f5881a0526920eb8ad93d2a693ac9e0f968495a497632475e9179c1`  
		Last Modified: Sat, 19 Sep 2026 08:06:38 GMT  
		Size: 2.7 MB (2741295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e81a381658df5e406d327b5e58ca04c1ba66338da844212b29fd07269176ec3a`  
		Last Modified: Sat, 19 Sep 2026 08:06:38 GMT  
		Size: 17.8 KB (17816 bytes)  
		MIME: application/vnd.in-toto+json
