## `clojure:temurin-11-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:41f86b55c589db6fbec18e2e3e7c3e2b065390dce65d1a5250d0c24a8767fae6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:0b907f13d4c57b1217ca609792ebafb4d150709c191028ced006487f5d2e8c61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218658799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33e3fe6e57b3a4f226dfe1e1532d32197ac73d1b845c3118940cfb5108953d81`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:46:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:46:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:46:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:46:42 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:46:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:46:42 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:48:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:48:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:48:01 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:48:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:48:03 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d848b10ae3db2fb27c6089e15f8f648211213a456b0df9652bd73d60a2d3f5`  
		Last Modified: Tue, 27 Oct 2026 00:48:24 GMT  
		Size: 145.9 MB (145864318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dfe879097cd60cda0abe2f9b81b0c0cbd157319d86b77a68ae509d3cbbec861`  
		Last Modified: Tue, 27 Oct 2026 00:48:21 GMT  
		Size: 18.9 MB (18885625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f56724c794935c1b5b2e0554e4588ef704948749512912b5c54b6fc48766151`  
		Last Modified: Tue, 27 Oct 2026 00:48:20 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a58f2eedad2eba10be6b7d5162f9898206e014e7c5d59b942c18362360194d3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3861720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d345df4300fb562073df479ab683266a3e26d3367c03e6075755c08e52e99264`

```dockerfile
```

-	Layers:
	-	`sha256:6749566a5054e4696ac6783243a5ca634cbb30a4479da760bc0085223b744815`  
		Last Modified: Tue, 27 Oct 2026 00:48:20 GMT  
		Size: 3.8 MB (3845986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d27512c1aa1483b25d00e474a2dcd0b467e6b1e6b563d7312730f74b904d84d`  
		Last Modified: Tue, 27 Oct 2026 00:48:20 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2e017aadcfdacc3c165fb4c34f4dc785a969eda3aaa453abd2cc88c6609fbe18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215707657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7c04a1f9655c25a13764c4e1234f80469db208c830daa410593728797f5cc8`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:46:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:46:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:46:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:46:33 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:46:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:46:33 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:47:56 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:47:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:47:56 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:47:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:47:58 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22acd027f435a72cc2a63b63d9c809b1f64e9ce399d8532730e5001f6353137c`  
		Last Modified: Tue, 27 Oct 2026 00:48:19 GMT  
		Size: 142.6 MB (142576520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de89cb2e34c75ae7c3f89ffb4de1533b0e04bea2b1608a563e10f18ab631702`  
		Last Modified: Tue, 27 Oct 2026 00:48:17 GMT  
		Size: 18.9 MB (18854320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d56b264d773ed6c9609b4d85855e802ea1a9d5ca2f7626bed3fb57c68015db89`  
		Last Modified: Tue, 27 Oct 2026 00:48:16 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fe1fd402aefec92b824e9832c8697593831a5d0a9e4a99ab49036f83c1d153e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:594912305ca12b3f84c200a520dc592f44737fd7b3ee21b30eadaf9b52cd17e2`

```dockerfile
```

-	Layers:
	-	`sha256:a0f2c42a7130fb1548580492b477519b4b70b30d2ad74b2947ca4d464cb9b1ba`  
		Last Modified: Tue, 27 Oct 2026 00:48:16 GMT  
		Size: 3.8 MB (3846844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99e9a92417d56d9002c3146d3eb5ad1b76aff84da1a2cc3bceb17236f23c80fb`  
		Last Modified: Tue, 27 Oct 2026 00:48:16 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ead5c196374f45c411b5b93f995faa2b02a54dd3e27a3cedccdf92cb0aef3d97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209758622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2429a23645d7354f61078becde6f8d6506517e1044326eedb3483d3e4ed98a4c`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:04:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:04:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:04:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:04:16 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:04:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:04:16 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:09:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:09:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:09:34 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:09:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:09:41 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcac8f1fb37221206ec9e42f91e7f9060981927dfbb2129eed28dc10e1790b7`  
		Last Modified: Wed, 21 Oct 2026 10:10:39 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8719d81dfbe24ae493b8108c38f1812122a6a3c01a8139affb2f4710061f34`  
		Last Modified: Wed, 21 Oct 2026 10:10:41 GMT  
		Size: 18.9 MB (18940645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611ef8cddf1352a4ca31c87f08789b7ce6f789fc11f801e42572c5188175bc8d`  
		Last Modified: Wed, 21 Oct 2026 10:10:41 GMT  
		Size: 4.5 MB (4515235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8df2a9a7a5f967b47a535ae657a9fff29655f3ad0079a9339ec7645616d104be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4be5f99d0d501f46e91651d9d2460402abfe07e8923b9ba7af35d319304fbc`

```dockerfile
```

-	Layers:
	-	`sha256:6485022285da8c88d4d403593f751b576e868f6157da43905ba463ba9e2f99b0`  
		Last Modified: Wed, 21 Oct 2026 10:10:41 GMT  
		Size: 3.8 MB (3846369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:228788cc4b37c774c56dfd54362dea1462fbbb83bc290580c5a6b686a0da6285`  
		Last Modified: Wed, 21 Oct 2026 10:10:41 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json
