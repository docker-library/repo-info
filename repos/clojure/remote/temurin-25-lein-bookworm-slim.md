## `clojure:temurin-25-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:e9b61c4167ae60ae983696625d1f9b8ad92e62838e082933515f8a61bc0d837e
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

### `clojure:temurin-25-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d81a6cf1ce0ae96426986526d9ee619c2f2d61db3c471fde8299ccd10a08e9a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143394573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687e055528fcc05f0a9b368daebe05e8ce8420d47ecdea1f4593842716033b6d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:53:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:26 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:53:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:53:26 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:32 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:54:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:54:32 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:54:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:54:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:34 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2a9ca4b1d8445ca38482274a075a699e3f83e5614fbc65161da9a4dafe555b`  
		Last Modified: Tue, 04 Aug 2026 02:54:53 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19732343468a34b2812ade0743c9edd98a6048a2d6d43890134ae7e1e4c8635`  
		Last Modified: Tue, 04 Aug 2026 02:54:51 GMT  
		Size: 18.1 MB (18071765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace54034fc972ea08374c7f1a5218d99ebe2ceda9cc04969a679505c3a385f71`  
		Last Modified: Tue, 04 Aug 2026 02:54:51 GMT  
		Size: 4.5 MB (4515172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aadd58b7c57ca11ba513bd006ab5080a84375b67e10d59429ed26ce52609c17`  
		Last Modified: Tue, 04 Aug 2026 02:54:51 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c8971d0254ce2710fd79403f747850e50bd39eb75d2f73eb1a2025554280c5f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c5446e9ce314b9423b99b7bd8bb0a535d41f3a76990cec39ff204f2aa0d072`

```dockerfile
```

-	Layers:
	-	`sha256:53f6bb14f03f092a1fcff300666e76be8e6260810821e2f7d09cc5a1e5c29535`  
		Last Modified: Tue, 04 Aug 2026 02:54:50 GMT  
		Size: 2.7 MB (2700429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7305afe531a2edfff8f2a1020f118698b660eee80aed83419b77658336e0346a`  
		Last Modified: Tue, 04 Aug 2026 02:54:50 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:62389343082738af03bf5f7e9b09884825337a9a3e502de05e426babc4f2ce3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142069351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89c5d6aa4417d19c034e6001f513d6f97f9ba2fb2fc1a2783f70e6d25bef594`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:53:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:45 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:53:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:53:45 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:54:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:54:52 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:54:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:54:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:55 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86de65462c84f058f60457f4540ab4c92738637a40049b928c42c6ed624fbca9`  
		Last Modified: Tue, 04 Aug 2026 02:55:14 GMT  
		Size: 91.5 MB (91542236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282fc23a0a54ea9ee0df841387401bc10a6e1f7c36e67ab5b656dd1cb1519142`  
		Last Modified: Tue, 04 Aug 2026 02:55:12 GMT  
		Size: 17.9 MB (17894247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c521ce14800e68df010953afec63a7ae36b220de65252cd4d881de20070f934e`  
		Last Modified: Tue, 04 Aug 2026 02:55:12 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45dcc8d8e6b580f7e48d38114f222d12f066a3f743e2337a6413ba826fecd74e`  
		Last Modified: Tue, 04 Aug 2026 02:55:11 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2d574ac828284c8544c154b9383bf2ca52d0bedb84a67394f7fdd59c5cd31205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32c809950de49247a302b286e4b49a232718c4c4d8eb54ae1028f035f0c9c5b1`

```dockerfile
```

-	Layers:
	-	`sha256:7cdf24b735178918fa2519ca7ab50c3aaeeb8c20177321b1c3f7c711b48e33ab`  
		Last Modified: Tue, 04 Aug 2026 02:55:12 GMT  
		Size: 2.7 MB (2700065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09ce3703c950472b613496ca5cfd0c02101c3cb8a76892d8303887c52fb799be`  
		Last Modified: Tue, 04 Aug 2026 02:55:11 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9bed0b807eea78b59882d1ccd0d2e94fafade7b5a51c4bd7f7a79e21b8f6aa97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146769603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b9996c5fd16fc6f0b97a620ee3df3e7298440a36f8d71b382fff33158148f4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:59:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:59:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:59:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:59:16 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:59:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:59:17 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 03:01:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 03:01:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 03:01:51 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 03:01:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 03:01:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 03:01:56 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 03:01:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae72c6d5ece1c3efec4310c7ed616d6b6592829012d6783b6a604ce01a1e80d`  
		Last Modified: Thu, 16 Jul 2026 03:02:30 GMT  
		Size: 91.9 MB (91914003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdad7a229d881305c21c1c0cb2bc0abf26b5018bfdf9d500ee8f77ae8ec6a0b0`  
		Last Modified: Thu, 16 Jul 2026 03:02:29 GMT  
		Size: 18.3 MB (18263536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4499967ad62ce2de7baadeccd7bf6bb8115a235cbada7ec26f4b874cc4a7c37`  
		Last Modified: Thu, 16 Jul 2026 03:02:28 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcfc53827e15f1790d10b9520805639001cc6ab8dbb81c6c8ee60f942c5b93eb`  
		Last Modified: Thu, 16 Jul 2026 03:02:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f44b76a2eeb79ff503c7db22d35305c190767c995795cf7e2dddae9752e509d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2704069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2dd712d9094ed497118eef571977bef70827f0347d0f1dcbc78a0f8320100cd`

```dockerfile
```

-	Layers:
	-	`sha256:c1e8ed9d3354b61a52c7aa989d475ae3961989477bb44611a070ede14aa69e23`  
		Last Modified: Thu, 16 Jul 2026 03:02:28 GMT  
		Size: 2.7 MB (2685586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed93c50006eee7d42ce54ab3832eeb657c83e3d04dc80f8ff888dee710b37983`  
		Last Modified: Thu, 16 Jul 2026 03:02:27 GMT  
		Size: 18.5 KB (18483 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:0b9c4a1481d266f5ac2d317318f1c94ecf1ffcc9c8d886191336e9db5b40001d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137549028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d7a01d2b6614f14cb834115f7c137d75a1e7f4d23930fffa93b7f72e032b48`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:01:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:01:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:01:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:01:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:01:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:01:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:02:41 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:02:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:02:41 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:02:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:02:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:02:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:02:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fa19c102198e4a4f9740d34bb6654fddf34ef5fe7ebb7eff209539a43bbf66`  
		Last Modified: Tue, 04 Aug 2026 03:03:09 GMT  
		Size: 88.4 MB (88420368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b014273c8a26e1b2e8dc8b06f2f384e93654795408d41cf1438dfacf76c148`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 17.7 MB (17724739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb535136e15de24ee9ac140907e414a8cab2c339de1883620fa31de27643461b`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fef8f0b77dd2711f03f22f8bf29948d829312655c8132e0bfb60c400e6a9233`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:72f560720b85a5cdf899b561f1afff7fc2d91b44fbb856a5cf4952d50c7fa5f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2695233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2441cd23f44af67eca126669be703afc1eafa05f2135e80faeba2147cc8c39b3`

```dockerfile
```

-	Layers:
	-	`sha256:0ef63fc7b7e75cc5093b927894e56631add80dc812fffe14df0e7e9776dc17cd`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 2.7 MB (2676805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:119e77373a2933cbe01b612c651d1eb8b3e26066129c5ef3e49f04e2b1af4177`  
		Last Modified: Tue, 04 Aug 2026 03:03:07 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json
