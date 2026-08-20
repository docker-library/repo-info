## `clojure:temurin-25-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:1df757f11f1f4478584ac0eaa889161a7f1b49e29d759b0ffa7e440cc9167bde
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
$ docker pull clojure@sha256:57ad74eb2f6b17dd12e8a873dc6862eccca951ceff88384c2973d040ab6672a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143614776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2890d65f295761dc1e6fa4efa9220db27a2d5edd4db571f00fd1ec32774e6b87`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:48:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:48:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:48:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:48:14 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:48:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:48:14 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:49:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:49:28 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:49:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:49:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:29 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c61c47266588d734ee871661c87ab204319de6cd962263d517b093a2702c776`  
		Last Modified: Tue, 18 Aug 2026 20:49:48 GMT  
		Size: 92.6 MB (92574599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c2af32269576c9ee96259f50bf1797d9bd95c26984f7bf683c45ef966289a9`  
		Last Modified: Tue, 18 Aug 2026 20:49:46 GMT  
		Size: 16.7 MB (16743785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0214a98902e1a0a0e05e439a8f19926cd36bfae75debfd84a56901e6ea278626`  
		Last Modified: Tue, 18 Aug 2026 20:49:46 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e6f6472140f5acba6daf93e0431e2503dc5602e533072a49ce4284278da18e`  
		Last Modified: Tue, 18 Aug 2026 20:49:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c6f9fd3b21d55b4d107298c6c95367bba5bb79b527b07ff608db6c77e6e8fd61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0ba6ec454d39219a01ed80d5c373e97d4c41ed896f8b66199b80e617c6b1d4`

```dockerfile
```

-	Layers:
	-	`sha256:52a4441fc5ae07feac87a94d546a230a5ba300305f13525aafd463baaf9c2422`  
		Last Modified: Tue, 18 Aug 2026 20:49:46 GMT  
		Size: 2.3 MB (2335165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bebafe43ea0a4c2ea717a6a4699a926b3c465aa8d9adfe959dbf71dde46086f6`  
		Last Modified: Tue, 18 Aug 2026 20:49:45 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:616b7206835e2bd4511f4148848d8edfdda73aa7bc8630977cc8ec1d5ca04b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142912986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a363440032656d02e8e82d153b7fde192a98100d5f3735354f997ffb5ac8fc87`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:48:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:48:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:48:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:48:13 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:48:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:48:13 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:49:27 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:49:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:49:27 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:49:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:49:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:49:28 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:49:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e998ff8f7c4da75432ed3034209946cba1a16530a28f1088e586675fa7f5507b`  
		Last Modified: Tue, 18 Aug 2026 20:49:47 GMT  
		Size: 91.5 MB (91542254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270ca3d03888957aded09a9781edae4659354a0f92e7807ddf2aacf2ebb21031`  
		Last Modified: Tue, 18 Aug 2026 20:49:45 GMT  
		Size: 16.7 MB (16711512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc0d556aa95a506a62140a5415fcf6106da62469de7f0675f716f3b8ca20b80f`  
		Last Modified: Tue, 18 Aug 2026 20:49:45 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c972d2fa06845c96e3926f06d4fab73d502e5cb1a3e1368360bed574a75067`  
		Last Modified: Tue, 18 Aug 2026 20:49:45 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bd582cefbde430c93bfadc00f7a8f11da82c6d7e8920fdad3744ae3dd6c15f2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8414cd4e1f5b154151e03c87307d73194730b145faf18941eb45e79bd41992`

```dockerfile
```

-	Layers:
	-	`sha256:3c71bb9e50f4cb7be583de3777174fdc5add3d2dd1184a04b8616fb40f5d2337`  
		Last Modified: Tue, 18 Aug 2026 20:49:45 GMT  
		Size: 2.3 MB (2334796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70c2cf394fd48b4c271c3348d2d2a7b669196255d16d14f20ecb7d2c8f02f5b3`  
		Last Modified: Tue, 18 Aug 2026 20:49:45 GMT  
		Size: 18.5 KB (18545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:79253640b7eb802f52bdcc474aa0b485a393f2b071f736e09ce186b7fbf288e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146813940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab82f395c2a5ee60fcec1300f98aee437fabccb8277d201fff15af62fe1cd1d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:33:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:33:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:33:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:33:49 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:33:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:33:49 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:37:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:37:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:37:08 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:37:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:37:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:37:20 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:37:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd981b3bf21487bf5f3e5bedf2f580fec2bd343892811a38e927e4ab9b6a7455`  
		Last Modified: Thu, 20 Aug 2026 01:37:53 GMT  
		Size: 91.9 MB (91914014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef5f1c024c598c4145fde50d5bc3f3251ab8794decad98cf241f7091396b65a`  
		Last Modified: Thu, 20 Aug 2026 01:37:51 GMT  
		Size: 16.8 MB (16782940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eead588e62bbfa861260a70ce000a4199a43ccc8b57f1c78506e030ed6df922a`  
		Last Modified: Thu, 20 Aug 2026 01:37:50 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f962587993d1652c302257c67ea726bc96aa02eb556b6705760061d059f0570`  
		Last Modified: Thu, 20 Aug 2026 01:37:50 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:daca4d21fbe36722eb4a84b0c958defb496b8b000ebcd9a376e1b045e4316d2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2337925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9537c61941257ea2c8734c318bc5aa5759ab49ca92ca51263d652fbc72963cda`

```dockerfile
```

-	Layers:
	-	`sha256:9c7b516ccd99d17c9b65a99b2b40ed55cc59ae7c31d8b30e1037968f78139320`  
		Last Modified: Thu, 20 Aug 2026 01:37:50 GMT  
		Size: 2.3 MB (2319469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ee9b7115fa9ece297a822339fb89931f308964a12981572c3ad521a5ccdfb20`  
		Last Modified: Thu, 20 Aug 2026 01:37:50 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:981d89bb44222a9ceb2623092367edaa4ba9204c160f7316840de535e869dad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139562871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79c06033847be13a9414a028a41ad06bfc0d3bb655c235a419e435577b357a3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:49:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:49:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:49:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:49:57 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:49:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:49:57 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:51:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:51:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:51:13 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:51:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:51:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:51:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:51:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a26308b6284566882e1fa837313dbcc3c61f5aa6d3bdde066bf0edb0d69ed6`  
		Last Modified: Wed, 05 Aug 2026 01:51:40 GMT  
		Size: 88.4 MB (88420357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac5a8c5581970509706fa937d2ca4ca6776576240c13974e21f7abf53d10e24`  
		Last Modified: Wed, 05 Aug 2026 01:51:38 GMT  
		Size: 16.8 MB (16780307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e28ab8ff62e691dac150cb68f1d4162b2bae100a46d9acf95410a15c0daf2909`  
		Last Modified: Wed, 05 Aug 2026 01:51:38 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a33a4969501e84a85c83e378c1d45a67b06834014343d0fe9c6a3b787f17354`  
		Last Modified: Wed, 05 Aug 2026 01:51:38 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b9e2ef4e29339eb4d88cf17c6312e0f461568f32a7f124f3f9ef1bc66ffbcac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d091fdc9091fe2a76b089f2b2e0a6ff848cc79619db8c75d8805a3a95fca180f`

```dockerfile
```

-	Layers:
	-	`sha256:3535788633039c6fdda373b9f9e670968803103b9d4c56c124c085cd1f02f557`  
		Last Modified: Tue, 18 Aug 2026 20:38:54 GMT  
		Size: 2.3 MB (2316154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f03d0434ff1e56504cbcd3fa81fd0d9d87331d9286086ffa2ff1067d656a937`  
		Last Modified: Tue, 18 Aug 2026 20:38:54 GMT  
		Size: 18.4 KB (18399 bytes)  
		MIME: application/vnd.in-toto+json
