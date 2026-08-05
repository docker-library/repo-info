## `clojure:temurin-25-lein`

```console
$ docker pull clojure@sha256:2b7d1858e9c0680c004cb1a4e217c9f3470dc552ad4d7e847ad35b922c992058
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

### `clojure:temurin-25-lein` - linux; amd64

```console
$ docker pull clojure@sha256:5532dc9f1fc7476428f9a7394c899a295ce4245730bc14569d1281a3625f22a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.7 MB (165705071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa0a7e454cdd6cbf9cc51f42d8d0d02408a52f618258aa79deb5bf3737e3d2e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:23:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:23:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:23:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:23:40 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:23:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:23:40 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:24:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:24:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:24:51 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:24:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:24:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:24:53 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:24:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eecc88f964458645edf7d970663b083706f59f1e08785134269001400384883`  
		Last Modified: Wed, 05 Aug 2026 01:25:12 GMT  
		Size: 92.6 MB (92574572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d809a72316ccbad7e09bdd7127b4701f23fe2dfc1d8edeedc630d45ac24126e2`  
		Last Modified: Wed, 05 Aug 2026 01:25:11 GMT  
		Size: 20.1 MB (20117811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13de87486ce9aa2113593deba140f45f5f421ef0f54cf30633447270eacfd6d2`  
		Last Modified: Wed, 05 Aug 2026 01:25:10 GMT  
		Size: 4.5 MB (4515168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8fa35309c03ab365d85644c99d65ff48768aacadbc69cd131a10ca9a94f148`  
		Last Modified: Wed, 05 Aug 2026 01:25:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:660194f9f5401f2cf976fa2f663847fb9bbdec5b717a2b93d1ada738fb2625d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a541c6a807fd1b1f7b4a7bf62585873273407d03bd96f93ded4d26dbce89e3ed`

```dockerfile
```

-	Layers:
	-	`sha256:d170651fa667138bca977edc329040550c96252ef674e7616fb62cfa09ff38ca`  
		Last Modified: Wed, 05 Aug 2026 01:25:10 GMT  
		Size: 4.3 MB (4253346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:637e1a9e82fffb8c84c1ace4cab5e28315818297bd8de132d2fbf3d6f49e7de7`  
		Last Modified: Wed, 05 Aug 2026 01:25:10 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:79658677944caf81081be5a6f316816e5eb79977702a1c86c19848a069462df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164381642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eab38919e43686c82e90be8eb0f89045baa674ade2f0463b50600230b8b8677`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:29:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:29:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:29:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:29:46 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:29:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:29:46 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:30:57 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:30:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:30:57 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:30:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:30:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:30:59 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:30:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3dabf56b0c110a584b9ef5ac99b0b26cfbec6f8602918624f049ca92f8d6ba3`  
		Last Modified: Wed, 05 Aug 2026 01:31:20 GMT  
		Size: 91.5 MB (91542236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b4b5a9198f1a82bf1318a16ea7113483e79159798c5299a0a55acd4c0fc65d`  
		Last Modified: Wed, 05 Aug 2026 01:31:19 GMT  
		Size: 19.9 MB (19940432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30fdad279cbf8da4afb26d4846fcbf9515a36a9d64418b453a349d0681695541`  
		Last Modified: Wed, 05 Aug 2026 01:31:18 GMT  
		Size: 4.5 MB (4515166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df30a01450408a8fd988dd064d9db7c2f2f5268e2236b997e9bdb1f6dd1dfca`  
		Last Modified: Wed, 05 Aug 2026 01:31:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:026a091de21bab1bf550333c793656e681927c3ac6c6d059fd05b553b31b2d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d18aa135401e662c776a32ab56b1fe9ce5909ce720bdbad9a3f5ad48b56e0d9`

```dockerfile
```

-	Layers:
	-	`sha256:75f7d75ba02d13756793def6a75b1a9ad1946200e6504a7ef895994115ab21ed`  
		Last Modified: Wed, 05 Aug 2026 01:31:18 GMT  
		Size: 4.3 MB (4253030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:974a02bd8128df3b8fd82dfcc1d1b68d3395e8b359f001a067214f8147e292be`  
		Last Modified: Wed, 05 Aug 2026 01:31:18 GMT  
		Size: 19.8 KB (19822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:d5b0a6fdb02ea5212c3bb343829d257af53d49a2b3133f64f9032f36b31aee31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169103154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0554c7ed2379f28e3f64be67a6ce7287b257e717ff59157da509dc81cecb164d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:20:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:20:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:20:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:20:27 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 03:20:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 03:20:27 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:22:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 03:22:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 03:22:55 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 03:22:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 03:40:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:40:05 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:40:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49264167cb87dad9e24e124b14d9805f39b865f49947d09178cf7347263f11e`  
		Last Modified: Wed, 05 Aug 2026 03:24:12 GMT  
		Size: 91.9 MB (91914039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2137fe339e3d820beb25b26491f168582456f46e15a40822120b5bc5baadd69`  
		Last Modified: Wed, 05 Aug 2026 03:24:10 GMT  
		Size: 20.3 MB (20331994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62254149ab073c628414f91c54ce94fabb2295756fa4731cb8abc484a31503b`  
		Last Modified: Wed, 05 Aug 2026 03:24:09 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d3b736d13e5679c306141307d6cf13a8e203668e9098e41097bed9ebe63450b`  
		Last Modified: Wed, 05 Aug 2026 03:40:21 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:a33795dbbc7686e8f6ecce46de7e911953b1dafe5ec25a0ce866ba9e345c45bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4258264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1d2a1545954f1f12e8f68bc0d325e3425ef325a5f41d585a0670dec866bc2a`

```dockerfile
```

-	Layers:
	-	`sha256:d8eb5e4ba0189d4ad32fa0307b82d967b1255fff6ce2a88201ae3055aea138c1`  
		Last Modified: Wed, 05 Aug 2026 03:40:21 GMT  
		Size: 4.2 MB (4238555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f5fb0bcc7d6ce1fb6d56b51099a2350d2489caef1ffbfb346696aa00bd93d30`  
		Last Modified: Wed, 05 Aug 2026 03:40:21 GMT  
		Size: 19.7 KB (19709 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein` - linux; s390x

```console
$ docker pull clojure@sha256:7be80b48759c0838f2595b6c1aa0883294a2979966245c823dd1af7bc07abd03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159864033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f68c91dd269fc65cf10f87f9683a0436d2126586bc2b41488cec6232111ef86`
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
# Tue, 04 Aug 2026 03:02:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:02:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:02:42 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:02:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:02:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:02:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:02:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e56f29808cdae0b0ae79a057631e06d5ee2175c9d7e6333974220725c749743`  
		Last Modified: Tue, 04 Aug 2026 03:03:10 GMT  
		Size: 88.4 MB (88420384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f39a3285608a9349b625a1cc3cd6f71299b7255b9740554a1fd060330fb3a63`  
		Last Modified: Tue, 04 Aug 2026 03:03:09 GMT  
		Size: 19.8 MB (19770730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5419c95b19692e62ab878a44092cc0269598aa96e2b0968ba957ce39dd73e54f`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be4aa268e7f22315e0f83fc100b122584fd21b0966eee3b4a18f6e4247c7353`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:6b44ea3e86a122339accfa33406dbbfb2020a7928d4d0ac5cf19eb8dacf6a4ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4249350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50c48b04461c051fe17fbfd1b9ecc6ac7cacaff41eccea6b05e5626d884dfed`

```dockerfile
```

-	Layers:
	-	`sha256:e5cd3f38cbae66a83df4d69b27c5a4b0d2c782311a1ce39344da161de1160874`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 4.2 MB (4229722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ad78c2a8f41493503932e97c8012ee5317b08de179f5f6ec209ecf08eda92ab`  
		Last Modified: Tue, 04 Aug 2026 03:03:08 GMT  
		Size: 19.6 KB (19628 bytes)  
		MIME: application/vnd.in-toto+json
