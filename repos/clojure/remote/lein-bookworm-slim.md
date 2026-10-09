## `clojure:lein-bookworm-slim`

```console
$ docker pull clojure@sha256:6d64904f567b88fc00e229c990c2b4cbd91b4b08035a75fff6fc1a35996af7e9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:472f74fdbb648fa4827b08fa703a095035b42b571aa4fc2a7f5d1ccb1d0b262e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.8 MB (145759378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d22f8b83d6d1dd309b438bf1d9411bc47b51352eb9d5008edd53c10e47002d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Wed, 07 Oct 2026 11:48:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 11:48:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 07 Oct 2026 11:48:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 11:48:46 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 07 Oct 2026 11:48:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 07 Oct 2026 11:48:46 GMT
WORKDIR /tmp
# Wed, 07 Oct 2026 11:49:53 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 07 Oct 2026 11:49:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 07 Oct 2026 11:49:53 GMT
ENV LEIN_ROOT=1
# Wed, 07 Oct 2026 11:49:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 07 Oct 2026 11:49:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 07 Oct 2026 11:49:54 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 07 Oct 2026 11:49:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d31eaea67cbd59c601b741068458dacff76d5c8bd1c20bd9a4c6ed26fbdff71`  
		Last Modified: Wed, 07 Oct 2026 11:50:12 GMT  
		Size: 92.6 MB (92618076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1827c48379a374b5905dd883319b83c6f31fa9f210f1546d962126957d7552b1`  
		Last Modified: Wed, 07 Oct 2026 11:50:10 GMT  
		Size: 20.4 MB (20376379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7ec0544175cedd86ad82d6a9b7e17e544c9c3ea5e7754e94c8a9934c25f5c8`  
		Last Modified: Wed, 07 Oct 2026 11:50:09 GMT  
		Size: 4.5 MB (4515170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3624ab5b4af2d99f44806eb4d46a3ff403c96e2e4d417f92729588474bdfbe7`  
		Last Modified: Wed, 07 Oct 2026 11:50:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d492bca92fa4c94c84d7dec6f813142b33a75ee13434a2ea9e0f267dc134614b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2724103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d5228b2802c1d3f44fb5b8d0ea62068edb7e87ce1ed142b4e005ccef7b86a7e`

```dockerfile
```

-	Layers:
	-	`sha256:daa786be3d9644ad417125b2ec1947712d8350cc2af50fe80474f08a4b724ca8`  
		Last Modified: Wed, 07 Oct 2026 11:50:09 GMT  
		Size: 2.7 MB (2705676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e59ec3f88beebc3afb86753a1bdc68d9d5fbacdec1247b0cee8e3364f24275f2`  
		Last Modified: Wed, 07 Oct 2026 11:50:09 GMT  
		Size: 18.4 KB (18427 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:aa87e5893c678523f84d60234189cd8d6c3d38cec64f61bc3161a91cf6519e10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.3 MB (144338129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d66c521cc33c46c41e235f1ed5d7de07455cd16e1565fce325280e0a02d80a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Thu, 08 Oct 2026 20:11:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 08 Oct 2026 20:11:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 08 Oct 2026 20:11:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 20:11:14 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 08 Oct 2026 20:11:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 08 Oct 2026 20:11:14 GMT
WORKDIR /tmp
# Thu, 08 Oct 2026 20:12:27 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 08 Oct 2026 20:12:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 08 Oct 2026 20:12:27 GMT
ENV LEIN_ROOT=1
# Thu, 08 Oct 2026 20:12:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 08 Oct 2026 20:12:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 08 Oct 2026 20:12:29 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 08 Oct 2026 20:12:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b860f17ed975988737eaf70475c7a94149d6c863676c05ae2bc0c4da61f76d46`  
		Last Modified: Thu, 08 Oct 2026 20:12:47 GMT  
		Size: 91.5 MB (91528844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d93829773cfb3aa33715e5240b1170e276bd759984767cfc9658b9a9e78d95b`  
		Last Modified: Thu, 08 Oct 2026 20:12:45 GMT  
		Size: 20.2 MB (20156461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0593e372464c75d0e687b9c26a7a5b2b3b265acec0fc944ca4650b8d2b05b0c2`  
		Last Modified: Thu, 08 Oct 2026 20:12:45 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd477a959e03bfe774fbc2884fd896126c03bbcaf4bce15f7000d550ff43e7eb`  
		Last Modified: Thu, 08 Oct 2026 20:12:45 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1b39a0df97c980b4ad5ae1811b8dcbfd29db785a716dc1d82291c6e75c887182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2723884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c833ac3b91f504140b32b73334fce0b57fa6582a756cadb0ae13b0264067262`

```dockerfile
```

-	Layers:
	-	`sha256:6a74f4717d29f1777db858acd709aeba5da6661c81fa85aa1eb68eac2e0565fe`  
		Last Modified: Thu, 08 Oct 2026 20:12:45 GMT  
		Size: 2.7 MB (2705312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:17cd8a220f6c354fda3b7e04c0fffaa6574aef0cacbd111bed4e2fef69d0e090`  
		Last Modified: Thu, 08 Oct 2026 20:12:45 GMT  
		Size: 18.6 KB (18572 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:b8c0e106b78394585d9c2e1ad44297d74ba8a118cebae85acb173142aefff3a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148600001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b18fc7725d99101e32464f295b255a7af0da617fc6ba38df0d133fabf71b9fc9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:33:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:33:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:33:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:33:36 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:33:36 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:33:37 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:37:00 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:37:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:37:00 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:37:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:37:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:37:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:37:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88907045d168f11890627eafe8ec8a437a3cb091d558a7d206b38791ae1d26f2`  
		Last Modified: Tue, 06 Oct 2026 10:37:50 GMT  
		Size: 91.3 MB (91256289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:409fb3154bc61377412d1681de470e7f5facff8faf998a4734cc61d6c9a69841`  
		Last Modified: Tue, 06 Oct 2026 10:37:48 GMT  
		Size: 20.7 MB (20735629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232fa570070dad782c1eead044b2ea5fb8df7752b78010314c95d715391bb59c`  
		Last Modified: Tue, 06 Oct 2026 10:37:48 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0d485ba6f664618b0cce6bcba84445a73e176787eb92ed25a538190424c664`  
		Last Modified: Tue, 06 Oct 2026 10:37:47 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8608706efd534995eabd15c57750b418847b9352b31323e4e225e27b23d9da04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2709317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aae4b6cb2aed74f557fa7b8cb50dedc399e551c9f0d2df9a4e4d27ed9501a283`

```dockerfile
```

-	Layers:
	-	`sha256:f1bd58a922e1a4ed9cedcacf2f941ef8096d43bdea9201515660c41217e6c424`  
		Last Modified: Tue, 06 Oct 2026 10:37:47 GMT  
		Size: 2.7 MB (2690833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e30385ef6374208194ec3815784c77b2ad92552b892b078842705bfb4f3c0edb`  
		Last Modified: Tue, 06 Oct 2026 10:37:47 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json
