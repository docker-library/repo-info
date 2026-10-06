## `clojure:temurin-26-lein-2.13.0`

```console
$ docker pull clojure@sha256:9befbe269b286a687aea9f8670063f54777539a6e1809317e8be905b3b0fdd23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:542326186492c4db3ea90d1878b339dbffbc416302ae813025187b18627a825d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167729953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1e3def1f6ed5c3478f74ee24d0a2d82b51951a94cd902826d84d7f0dc9c8c83`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:49:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:49:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:49:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:49:14 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:49:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:49:14 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:50:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:50:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:50:23 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:50:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:50:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:50:25 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:50:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd5843042460acd4219f557475b0c8e817911a71936e54ad776c900de63ed1e`  
		Last Modified: Fri, 02 Oct 2026 02:50:50 GMT  
		Size: 94.6 MB (94563486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c289a44d4539bce5e375fb44fe077355668aab208b54e8a6430c959429e4a27`  
		Last Modified: Fri, 02 Oct 2026 02:50:48 GMT  
		Size: 20.1 MB (20147392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35f13569e41eb13d3d32996d3c01217eba20d80cb215cb375dc8f56d19521db`  
		Last Modified: Fri, 02 Oct 2026 02:50:48 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d7bc7402862f190ecd40d917d5bf84992c3ea2047b333b3a155f4558e2cd40`  
		Last Modified: Fri, 02 Oct 2026 02:50:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:dc8fcd8aec57540e1ae98195fab4c763c24bd10a5586ef5f645849aa3c9daf0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37e019df720d8acde5f872705bd9da13d41409ea8cddc47894ab12f34ac0705c`

```dockerfile
```

-	Layers:
	-	`sha256:3ea3964fd53a8bf27f8a1a5566d8472743b4330659d5b034276c2c4b8c7b25fa`  
		Last Modified: Fri, 02 Oct 2026 02:50:48 GMT  
		Size: 4.3 MB (4254842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:162529e6910a11d02e5a971b673d9a9cd036510f14087d63b985985216049468`  
		Last Modified: Fri, 02 Oct 2026 02:50:47 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a04b82bf0fb7b35b0d9d1522018146a3fd07d3e2ef64c7a90f352efc6cf1ddbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166416822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faf39a2ef5a7dc286a6ea59f594f489d37499a79f74392855004787019bb9837`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:49:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:49:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:49:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:49:04 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:49:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:49:04 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:50:17 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:50:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:50:17 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:50:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:50:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:50:19 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:50:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71baf83963ea7ba55e1454e478cafa5b32da50fa3d076a00aaf1f40d8eb73936`  
		Last Modified: Fri, 02 Oct 2026 02:50:38 GMT  
		Size: 93.5 MB (93543593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce432791f5fbd6649e2a86fe64d32414eb0c17a74fa4e1b552bc727c0f5160e2`  
		Last Modified: Fri, 02 Oct 2026 02:50:37 GMT  
		Size: 20.0 MB (19967681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:773167dbddb2bccc4f940d0459821df31e445da8156dec390c9a393b784734b7`  
		Last Modified: Fri, 02 Oct 2026 02:50:36 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f276a07e2098bb580fbe2780adf0222149c78b12494561182443bad1b50ea878`  
		Last Modified: Fri, 02 Oct 2026 02:50:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:b2db5af70cd2d514c8fa73314bad5ebef1344ba36696e2c6279d5675861d07a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b2abc2624c37f3f4d275c40443de2aa24ed5dfce68a3bfe8885e2e152d815fd`

```dockerfile
```

-	Layers:
	-	`sha256:1fef889cc3c8323acec7ff5e397dbc98a29b1dde7c572d87b83f146dbe93cc2d`  
		Last Modified: Fri, 02 Oct 2026 02:50:36 GMT  
		Size: 4.3 MB (4254478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:497404efc7e01898d1c71d2326e03b24381d7082e542621efd7ce04d76a23f86`  
		Last Modified: Fri, 02 Oct 2026 02:50:36 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:f9e2eaf8f6e05352f125e11f59ff059817b5fec7456a8da58570635ee8324ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.1 MB (173060136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7823885e39236d5ab2526716099114f9fcb9e851d50ef7dbcd2f35f4a4157be0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:50:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:50:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:50:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:50:50 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:50:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:50:51 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:59:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:59:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:59:16 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:59:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:59:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:59:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:59:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37105b23c6926015269f3bd77d3d351843ea577420d26b29a4612063c9c6ea19`  
		Last Modified: Tue, 06 Oct 2026 10:53:19 GMT  
		Size: 93.4 MB (93350835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbc8c8ba340cbc52aafd9f915daaa77f8a28743ff19f591241dd424e5a91acd4`  
		Last Modified: Tue, 06 Oct 2026 10:59:43 GMT  
		Size: 22.8 MB (22830930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6231577a629dae704c46826f5f124f1fc065badb8eab3048aefb569b97c2c23e`  
		Last Modified: Tue, 06 Oct 2026 10:59:42 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e3c43deb698d3ebc70cc465912fa3272b2060336ee9bc8cddd56b066c5883b`  
		Last Modified: Tue, 06 Oct 2026 10:59:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:284b8f7da83d37955db0ae3fdc1eb518ec567f707522fa07a548e7a28efb70e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac8a23d913ff528926b690d98ceebf5f2fbff118cfecfd3fe6b98c8704697ce8`

```dockerfile
```

-	Layers:
	-	`sha256:24fa39c45f5290f63d59d174108e808a145cf879ecd5ef5aaae4e521cbcd9cf6`  
		Last Modified: Tue, 06 Oct 2026 10:59:42 GMT  
		Size: 4.2 MB (4240651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a06fd5c3efaca6e92b894b2d7f821e317e73b2702af430606eb4ff6986daaa1a`  
		Last Modified: Tue, 06 Oct 2026 10:59:42 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
