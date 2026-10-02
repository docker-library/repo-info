## `clojure:temurin-26-lein`

```console
$ docker pull clojure@sha256:853285859a9b77499b729f674e4ed15baa9e73f54a2c48dfb3e54791fb6aa646
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein` - linux; amd64

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

### `clojure:temurin-26-lein` - unknown; unknown

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

### `clojure:temurin-26-lein` - linux; arm64 variant v8

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

### `clojure:temurin-26-lein` - unknown; unknown

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

### `clojure:temurin-26-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:fe1f2a46e59ceebfd4c86bc3f90effa1669b3a595bc6b32222e109c2fac2e662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170574083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1941b46461b04fe71e3d0e7563e7eab1576d73eda61e753b9e9aa3a3be2262ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 05:39:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:39:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:39:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:39:09 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 05:39:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 05:39:10 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:41:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 05:41:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 05:41:32 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 05:41:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 05:41:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:41:37 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:41:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe1c80a24e121d2ac2567e4fd9e76e2c1d95008d253d91f02a5a94e71c053cb`  
		Last Modified: Sat, 26 Sep 2026 05:42:13 GMT  
		Size: 93.4 MB (93350875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61cd1f40d87c5cfbb407bb82e1f194e6ad647814ff7a986ec479ef8c19fd5607`  
		Last Modified: Sat, 26 Sep 2026 05:42:11 GMT  
		Size: 20.4 MB (20358246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04680a07de9024717db640e0511c36d3af12eb8469f2638b249daefdb7f0abb9`  
		Last Modified: Sat, 26 Sep 2026 05:42:11 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b1215bc99e992d30e899fe32ee979884827774a7742b97daed2259edcde9a7`  
		Last Modified: Sat, 26 Sep 2026 05:42:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:6c9a8bf3057505f78c52d4be81efb7ed8c68be258c8dbe7d0b36e0822335c615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32bdcced90edb4339c3297ece7405e79e7a1510c7731a6e44fe08fac002b45f4`

```dockerfile
```

-	Layers:
	-	`sha256:81f5cf1f7e8b1338be30074a79cd57805c93a71e798d405fcba96cc8f4cad292`  
		Last Modified: Fri, 02 Oct 2026 08:29:15 GMT  
		Size: 4.2 MB (4240651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1f4a0384e149c04a0f9c9d926f8ef52399d14fdf4bc8cb1922a0a26fc16d745`  
		Last Modified: Fri, 02 Oct 2026 08:29:15 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
