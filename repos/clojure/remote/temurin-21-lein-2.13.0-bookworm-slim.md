## `clojure:temurin-21-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:71597b075bcf40759fe05277c8c9a616be1f51d4853f622c2451e0674c375c18
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

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2863ed62d02e81d4fc0d207dcac7f7041d10c4b137934ec777841dd28fe047c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208987842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28bbb7250e1c21ea9dd7a1ab986401ca1c3c644008c50a9573be2ebf3c3789e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:45:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:45:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:45:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:45:38 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:45:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:45:38 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:46:46 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:46:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:46:46 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:46:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:46:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:46:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:46:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:407674d67a1fa7f20e34b3968e4e776be6520d214548f74aa3b333008689a9e1`  
		Last Modified: Tue, 18 Aug 2026 20:47:13 GMT  
		Size: 158.2 MB (158166957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6012d66acd3d50a5c623f5400f9f848cdc7414f9e50856937811ead763548edc`  
		Last Modified: Tue, 18 Aug 2026 20:47:10 GMT  
		Size: 18.1 MB (18072697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecbf22411d08fd0401e2d10ac184c3d53b498fef4bd4e00dcb48972d35c4506`  
		Last Modified: Tue, 18 Aug 2026 20:47:09 GMT  
		Size: 4.5 MB (4515169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395092756e8468c88d5d37f1c40eef150fdee69d0ccaf38a381079c434f79f92`  
		Last Modified: Tue, 18 Aug 2026 20:47:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:38dc0d323f24e8f17e459b1df80255a67d147bdce2b1e040fb2f3f9f29ffa8c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84f16ff6d084e717cc571d89e9ac129a666285417e0ec4568c40665d11f5d26`

```dockerfile
```

-	Layers:
	-	`sha256:ad4bd4c5d7f1ad5cc9471039ede0ae9b5a93109133822e3507c69fd0c41c05ec`  
		Last Modified: Tue, 18 Aug 2026 20:47:09 GMT  
		Size: 2.7 MB (2739428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d18013543a6b58cd5b5caa070559d47378b6a036c7f20755e3a6473e1e5a34f4`  
		Last Modified: Tue, 18 Aug 2026 20:47:09 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1ba1072a56f82538e96649514b7083cf7482278c1d504817d544cfd95621a810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (207000772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31f8bb2335ffc1f54a4424c72e5c254f250d620b0c721663cb4c922e97ef50a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:46:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:46:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:46:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:46:01 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:46:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:46:02 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:09 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:47:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:47:09 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:47:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:47:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e20efeb07cf2cfa4b31af38fbce3eb2abe4319364cc8555f76937431595f828c`  
		Last Modified: Tue, 18 Aug 2026 20:47:32 GMT  
		Size: 156.5 MB (156461246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b9f97b145bf34472e079495b6c50667e24dc6dce68efe346e153c1ff1d8de96`  
		Last Modified: Tue, 18 Aug 2026 20:47:29 GMT  
		Size: 17.9 MB (17906680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299421b1e5e2afd2f5beaf84fe9ca3addc129fa83784081416a28d1afa61e449`  
		Last Modified: Tue, 18 Aug 2026 20:47:29 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ca3917f484e72c5c139f7a9963be2f8f9e5c6701a3f1d5ac2218e285b2d549`  
		Last Modified: Tue, 18 Aug 2026 20:47:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c5bf06e144a58c6bb43f21c967fff164cc1588684b8bb5735226f5b513635f02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45f7717b105c8e38bfa9e20b47c0ba491f4bd59f2ddb0476a6c7ed298c80ecbf`

```dockerfile
```

-	Layers:
	-	`sha256:017f1fc67fdd1f723e2682dff83d825092fe260e9431ac38027b77b9e51d3529`  
		Last Modified: Tue, 18 Aug 2026 20:47:28 GMT  
		Size: 2.7 MB (2739043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77e3140a00746ddab80a1493839d10be90d08a698e127395806595c587e6c66a`  
		Last Modified: Tue, 18 Aug 2026 20:47:28 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2a5c15dce9648e9d828cccc7a220113ce0ea5d9946a2f2890d5967f9c216e4b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213214315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ebe442b27590fc612b5abeccc08e65cfcac9271d46112d4fa84d2c10d35975`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Thu, 20 Aug 2026 01:17:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:17:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:17:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:17:32 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:17:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:17:33 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:20:12 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:20:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:20:12 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:20:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:20:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:20:19 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:20:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e33231955abebd911acb94c97eaa8b1b7cb3d3dce6e1a5ac55025e33ee20a69a`  
		Last Modified: Thu, 20 Aug 2026 01:21:00 GMT  
		Size: 158.3 MB (158343275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446fd9fa75c3ed19b217855f2d257320f369ebce48440d5c193efaa8905bb2b2`  
		Last Modified: Thu, 20 Aug 2026 01:20:57 GMT  
		Size: 18.3 MB (18279058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881bafb12a45ecb0c124c7621db9bec5b7a9a6fc6c216413c282c70a13015688`  
		Last Modified: Thu, 20 Aug 2026 01:20:56 GMT  
		Size: 4.5 MB (4515229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0227465a190b7bbf1a62fa6e4b4beef0d170eed12068767baf71350dc774a926`  
		Last Modified: Thu, 20 Aug 2026 01:20:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d615c3097a24ec3fefb2e45d99f80b686c63e24b36deeeacd4a22a58f2b60302
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5864bf47484f87ddde0495f1d9a1bc5268139ccc7e88f931900020f42155ad3a`

```dockerfile
```

-	Layers:
	-	`sha256:c879f0a025e339bc1396d04ba1600c07a0ec89dd43dfae6dc548c8b232cae00c`  
		Last Modified: Thu, 20 Aug 2026 01:20:56 GMT  
		Size: 2.7 MB (2741261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55d74f463974a6f273822cf333db77e36f27d0bcf721a02240e0c0f1d7e97742`  
		Last Modified: Thu, 20 Aug 2026 01:20:56 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:63f4ce0e60dd9b14e625df24001575cabe5bbca58b5c93d500b8e6d8985ea1fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196517097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2ef406dff129cfbbb2a4c0f1bd2acea4279fe86cc1e40de297bdb00e46f213d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:57:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:57:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:57:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:57:24 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:57:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:57:24 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:58:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:58:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:58:31 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:58:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:58:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:58:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:58:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a3f24365b2b7be6a120bb31ebefba7be7e45fc966d4300ec3976b14e69bc0e`  
		Last Modified: Tue, 04 Aug 2026 02:59:01 GMT  
		Size: 147.4 MB (147388360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa196c9e349364d44d77fd6624e5df1cedbd897e1b1dd32a74f778979daa609`  
		Last Modified: Tue, 04 Aug 2026 02:58:59 GMT  
		Size: 17.7 MB (17724812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c145bc2d6aa3dbca4fb244c923227ae4b74f99e05f6c5e5f9dbc93dcf808f913`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f7f7354e1c2f4323b7d535e2e9206a7ca8114b57e953900396f494b667cc74d`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c21219c923ea8686ed6947c2465781bef0bffc57893792bf7ec05c2a8ef4dff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2743812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990b9eebee90f64103ebe257d9c57bf1b4947f11664ee96b594728c39c8ae35f`

```dockerfile
```

-	Layers:
	-	`sha256:fadf4bca84fb2200d6b9cd1275c3d72a17526b6e12d3a4b4929d485813938ea3`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 2.7 MB (2726039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:311fbe1f6991b8f77104a43500ed38a689af5c982d18a12632df0838306d7f46`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json
