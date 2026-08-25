## `clojure:temurin-26-lein-trixie-slim`

```console
$ docker pull clojure@sha256:8a35093c9140a202f919a26dc3ad71552b206699db7cc6aea8a3034ce3131b9f
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

### `clojure:temurin-26-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a8a0533a22493dfcccb98faa61e10463771a8e41dca0b2d72ed52eb0fbd60829
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145615304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6059696053de940b8905f51de6edae3c7dd30b83071af4617edd00a30d30f15`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:32:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:32:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:32:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:32:48 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:32:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:32:49 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:34:02 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:34:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:34:02 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:34:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:34:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:34:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:34:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7e4afcd405cca92fea40e92afcbbc299d0017325ab895868d64d8edaafb6f7`  
		Last Modified: Tue, 25 Aug 2026 01:34:22 GMT  
		Size: 94.6 MB (94563753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db9d65847511b193db14c1c8ad9554191512e52c0787ae6cd7b83e189b3ce7a`  
		Last Modified: Tue, 25 Aug 2026 01:34:20 GMT  
		Size: 16.7 MB (16743301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75855c070163611d7fe778cd3273f4a94f4d69604b1e01ca259afbca374e3b9`  
		Last Modified: Tue, 25 Aug 2026 01:34:19 GMT  
		Size: 4.5 MB (4515162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81635507877483d01d473480a94c01956fb3998568cf67c04889ef1e0d8a5ec9`  
		Last Modified: Tue, 25 Aug 2026 01:34:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e16328df15e082ce7b75f62971c32011804944a3a238e8e7c8fc301abe2b90fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d45e7b67ac79cfcb0a0aa788fff58191bcc505e3de937b3fd8b51f491c7175`

```dockerfile
```

-	Layers:
	-	`sha256:73ca414e3a92f79ca9e19046829ae95773106e378f6464ed7d1cf918bc24ba34`  
		Last Modified: Tue, 25 Aug 2026 01:34:19 GMT  
		Size: 2.3 MB (2332208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f15c33e3d0864c376b12c2113ecde6b06d7b974545fc81a56b1a52d9a8ddbc6a`  
		Last Modified: Tue, 25 Aug 2026 01:34:19 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:43c0c14e5d693f530a47beed8ac3848e489b0d21476b89f63f0f0fb9e89d5529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144928303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdabc918558c585b535dfd16cca1ac302994d7eac895c1f60175127181e048f8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:37:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:37:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:37:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:37:08 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:37:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:37:08 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:38:22 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:38:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:38:22 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:38:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:38:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:38:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:38:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf37f50f0e3a776d9a7d29cc8ce9d52086898dc2d72b3208c42ade33c56060c9`  
		Last Modified: Tue, 25 Aug 2026 01:38:42 GMT  
		Size: 93.5 MB (93541551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1076ee07c125516c97a65b3e22589e5ed52e384267b6eca2306871a82a5a4c3`  
		Last Modified: Tue, 25 Aug 2026 01:38:41 GMT  
		Size: 16.7 MB (16711524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4227b96ad304b0a841437ae21efd3366871b7724fd89f073047c8a91a73b2cb`  
		Last Modified: Tue, 25 Aug 2026 01:38:40 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf7669a72e02dac2078381022dced3100cf9b72081d9caaec4b551f341a6874`  
		Last Modified: Tue, 25 Aug 2026 01:38:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7d9f9d2d85aa2bd552be2d7487e73110fe9ce144dd2afed514168e58929689ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2349681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21e50ae0bd84d60c8f6f471203e09104d2259996a55451b91831bda1719eaf9f`

```dockerfile
```

-	Layers:
	-	`sha256:bd8ebb9d3f338240fa8b87002d4a02484fa613e45e16ca1282f3847fa567d630`  
		Last Modified: Tue, 25 Aug 2026 01:38:40 GMT  
		Size: 2.3 MB (2331815 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df44e0eb18d28761e405ab2caac30999b4cfd9bfa31d362cbd9df31bf2393b36`  
		Last Modified: Tue, 25 Aug 2026 01:38:40 GMT  
		Size: 17.9 KB (17866 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:69c6420a0f12cfe1ea0191a7bba40c98c8db84e35534b305a8c96c2e914ac3fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148250491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85f65b4d36b3e35cca30fc9010a59d057ba25c2d227561a2dcd074bf502fb06`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 23:15:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 23:15:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 23:15:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 23:15:12 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 23:15:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 23:15:12 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 23:18:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 23:18:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 23:18:10 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 23:18:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 23:18:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 23:18:14 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 23:18:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00a09bdf5a767e9736fdd365d28374612be55a9adc74a1a557e75ee2a247a9b`  
		Last Modified: Fri, 21 Aug 2026 23:18:47 GMT  
		Size: 93.4 MB (93350808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:856470091f55c68dcc0d4e2b03c45b476480b70db55c0d9aa59f8a210947fad8`  
		Last Modified: Fri, 21 Aug 2026 23:18:45 GMT  
		Size: 16.8 MB (16782719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8864f4c49cc6f3edc2ec52d74c9edb7655f5814ba78252debdb8cc0cb1b09a80`  
		Last Modified: Fri, 21 Aug 2026 23:18:46 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a8fbbd244e3e8973281561d1dbdb3bd20c21bbf1f9fab944a1e51c5b3e7fffd`  
		Last Modified: Fri, 21 Aug 2026 23:18:45 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:364aa4ca997f9340a90f6c48230e8d0068d00342729ba843102b4d2613982529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:345d1f7cc79474c90a9d8ddd6820208414f10b8bf0794215a040c5e22191fdf0`

```dockerfile
```

-	Layers:
	-	`sha256:2b98db9591ae394ed8d092c94fa15cefae43b9f861a41b74417f19ba22a6e2c3`  
		Last Modified: Fri, 21 Aug 2026 23:18:45 GMT  
		Size: 2.3 MB (2316926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00bab5df51106915d9151e3a0cb8ad36427aa11ec9efb6ca0e6a06046be28ae2`  
		Last Modified: Fri, 21 Aug 2026 23:18:45 GMT  
		Size: 17.8 KB (17789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:b8c100a5c7ebd08b6573ec9e0393f6c1f39606157dcef244701283c12548e1d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.8 MB (141751033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac51dbd3401b5ce1136a7802524e064557de2a5f55dceda99fe1c9d3660512c8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:11:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:11:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:11:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:11:18 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 02:11:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 02:11:18 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:12:30 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 02:12:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 02:12:30 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 02:12:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 02:12:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:12:32 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:12:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a992039155c561667058922bda26b5c6d61a0a382a21652c253bb2fcd83f2fa`  
		Last Modified: Tue, 25 Aug 2026 02:12:56 GMT  
		Size: 90.6 MB (90588142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa84075364896bf7780be3aee64314a49681b65cfb0f8f8c7e1a66cf69e192c2`  
		Last Modified: Tue, 25 Aug 2026 02:12:55 GMT  
		Size: 16.8 MB (16779531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc6d5d5ce17b3437b5d3561c36b44c32c3f9523808b2c9c852700cc35016ae8`  
		Last Modified: Tue, 25 Aug 2026 02:12:55 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea7a9a33484329acac34242216dd35caf4205ed5461ebec9c01d3707b8651687`  
		Last Modified: Tue, 25 Aug 2026 02:12:54 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5268a80973d4483f9394c5da8d72d23d9c650ce88a11f265f8e1d045e35ff832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2331566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e10da7a4e3d86fe9ae3a34208e34f3357202655e8303145ae8d73eb967ef7c5`

```dockerfile
```

-	Layers:
	-	`sha256:7479dc753d6bb538858c0a5c555cb90d8708c5ea4947da9c1d9719e0f44e8cc6`  
		Last Modified: Tue, 25 Aug 2026 02:12:55 GMT  
		Size: 2.3 MB (2313821 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0d4a53b2683e75e369667dbcf739e72272e927c0b64cf823cebdf248583e89a`  
		Last Modified: Tue, 25 Aug 2026 02:12:54 GMT  
		Size: 17.7 KB (17745 bytes)  
		MIME: application/vnd.in-toto+json
