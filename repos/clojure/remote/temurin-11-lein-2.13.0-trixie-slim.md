## `clojure:temurin-11-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:9ac786f6c01c8b9fb9b4851531be0c27546bdb20b721002c92da98aaa750d301
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a82abe93be580d2738b0b1dff189875836963edec7eb3b6df6c5cf199c1f08bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (197035906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38ab5d1e0a63c0ee47752258725ad43c7c88fe271bd4e1686eba770861cb2d63`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:46:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:46:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:46:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:46:08 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:46:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:46:08 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:47:30 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:47:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:47:30 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:47:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:47:32 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1285f427ec9aeccb8e198c5023ce5f83e197cae881caaeee4db1427cce64b669`  
		Last Modified: Thu, 12 Nov 2026 00:47:52 GMT  
		Size: 145.9 MB (145923080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc6c85c364a60b2a06ea6a9ffcc1983c511c5c7e4641f6915a3a360587ea0c2d`  
		Last Modified: Thu, 12 Nov 2026 00:47:49 GMT  
		Size: 16.7 MB (16741483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb865094bea7a713a9ed2ed96e90ca12c9317ce1c0ee475d17464a4041bbfd30`  
		Last Modified: Thu, 12 Nov 2026 00:47:48 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ff07edec1a437e8f27907926abd91f7d704e1d75ba3a4bca141655460f64ce76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f88c7439ee3352b43589c815e3d3826fe3c89aa938b8d4e58cec2d654952c6`

```dockerfile
```

-	Layers:
	-	`sha256:3eec01ae4b2ddd45e857b5fbd74880936b39aa9ca24c55e43314f2eac72a8cc6`  
		Last Modified: Thu, 12 Nov 2026 00:47:48 GMT  
		Size: 2.4 MB (2391264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34ebe62b3cc5636a9a7fe3a75525430ecb5042d736f91e42bbcb1817f5e06152`  
		Last Modified: Thu, 12 Nov 2026 00:47:48 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:549847c399fe3a4dd77641c5a4d5730f095a14febe181e577a3c74679eeebbf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.1 MB (194057477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ecfdebbd7cdcce0411becd24f0dfedbcc762b0d34c216bfd4ec5d03d47d3ea`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:01:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:01:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:01:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:01:26 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:01:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:01:26 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:02:53 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:02:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:02:53 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:02:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:02:55 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea87c40c4b01e94659d1a79f9ba23f7e8309669f5f999f80a772f511c45013a`  
		Last Modified: Thu, 12 Nov 2026 01:03:15 GMT  
		Size: 142.6 MB (142621057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3881d365bce85a722dfb95445c9655c45b925b9a8a52783201901a22aa50ad7`  
		Last Modified: Thu, 12 Nov 2026 01:03:13 GMT  
		Size: 16.7 MB (16707124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e1232843513bf2369cf42028960c1881dee7b9634ceb75037445e5032aacc3`  
		Last Modified: Thu, 12 Nov 2026 01:03:12 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:786b2bbb0d9bcd60e7252f0f05d4491f6a5111acbcb4c1d7aa9438ecf767001d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d2051f9aaa8a2662809916823518a88c160a55635d453e51d7e3ca738f82a2`

```dockerfile
```

-	Layers:
	-	`sha256:a092a63488c207573c7ad44bc9317ba0d8eb0220c0037acd489a550bab40ea51`  
		Last Modified: Thu, 12 Nov 2026 01:03:12 GMT  
		Size: 2.4 MB (2391492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:823e81b35dccc8bf954428c15bb08725fc20997978f8eb97ac5a3a8165a9f179`  
		Last Modified: Thu, 12 Nov 2026 01:03:12 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2323b24ffa4e0283720ffe79014ba2f557d690641226e335d6441cfb1582bc05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187234215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa82c7b18f7113b83bbd3b4a4ed7429cafd83f7ea87109a08c65bc781e4c944`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 02:12:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:12:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:12:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:12:57 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 02:12:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 02:12:59 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:18:11 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 02:18:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 02:18:11 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 02:18:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:18:17 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5879de0790458ab88dda2f95824e4df7ec91828c96c5629829900a960eb1d953`  
		Last Modified: Tue, 10 Nov 2026 02:19:14 GMT  
		Size: 132.3 MB (132272201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7351d48a52521eea273bbb264113af56469b4b684cf8bea52894e3b157b89aa`  
		Last Modified: Tue, 10 Nov 2026 02:19:11 GMT  
		Size: 16.8 MB (16779070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9bade2baa12f7eb4027692dcb5f8bbe7a07da50dc3725dbbd2ead054c7f8c8`  
		Last Modified: Tue, 10 Nov 2026 02:19:10 GMT  
		Size: 4.5 MB (4515264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:79039815ad3b5dc6f62da0e7f11c41ef4e86c8a5e591fa10a33c3084f3687baf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2406191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef02c2b811f191cb8d1838f5436e7074a97d8296c5da57669fe35e3612982b72`

```dockerfile
```

-	Layers:
	-	`sha256:ea1fe162c30630abbe432dc96763af60a777aeb1476a4931e77cc40f4352220b`  
		Last Modified: Tue, 10 Nov 2026 02:19:10 GMT  
		Size: 2.4 MB (2390383 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a2196f2f35f38d66e864546e6294b7726576a09c12081b0f2a289782e7ee044`  
		Last Modified: Tue, 10 Nov 2026 02:19:10 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json
