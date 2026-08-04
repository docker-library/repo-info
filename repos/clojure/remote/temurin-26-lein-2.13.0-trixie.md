## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:7f50f859df208ee30826f64bc333a1d8fb4e2a24e1b388445bfbadd14725af03
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

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:11ef900576bb3e7aaf71d0337020ef3ddd0a2f4a5ba7ff7310e452955cb53d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167244106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b68cbe6f8c10d407613fac383bc2c02b51ed21bff1410073519a9331f07536e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:55:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:55:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:55:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:55:31 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:55:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:55:31 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:56:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:56:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:56:44 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:56:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:56:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:56:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:56:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37aa99a6413b4ace56ec3dab2ac77eb595822ba8458efa34cd4ab7f971d9394`  
		Last Modified: Tue, 04 Aug 2026 02:57:06 GMT  
		Size: 94.5 MB (94524335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f9bebef760e1b4c6b4537d64e1f746c50fec8ba7fcbd85ad6f2d50ee586565a`  
		Last Modified: Tue, 04 Aug 2026 02:57:04 GMT  
		Size: 18.9 MB (18891540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74a8bb9a5edbd317cee118579fa09ade1dd7733ee62a21ed8a0bb9e07e2f71f4`  
		Last Modified: Tue, 04 Aug 2026 02:57:04 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77081deedf8b2366bab08148c063a1939a7cb76d7c7fd4f81bbc941cea12dd14`  
		Last Modified: Tue, 04 Aug 2026 02:57:04 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7f0b6cd7d56b66fe8913f3c4c7531eacc02a43d64f057c456b23b7fdca2f3a08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25ee58ae06baf85360b7c1d967244bf2b5870a81b067f54eae9deb4be7c61a5`

```dockerfile
```

-	Layers:
	-	`sha256:648155b56bb22ecd28f3f280acb92788b171d031fbf2d664614427226733efda`  
		Last Modified: Tue, 04 Aug 2026 02:57:04 GMT  
		Size: 3.8 MB (3782747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32f4f9cbdc0f9c576d48201d6c7e5d49d235cd7b54a490a5c13873a3b8aea011`  
		Last Modified: Tue, 04 Aug 2026 02:57:04 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:11723b2a4bfd647474002821c96708486e69f78a5cb78d53e1215131d9c8f728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166533786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9d30d77a3996ad2bcd2dc64708c353ca9e02ec08d960e801107a4e828a5f1c3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:56:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:56:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:56:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:56:04 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:56:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:56:04 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:57:19 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:57:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:57:19 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:57:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:57:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:57:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:57:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf8cee79d1edd757c243bdbb3b24aeb777a987384a41e7ae0410146dda2d1454`  
		Last Modified: Tue, 04 Aug 2026 02:57:41 GMT  
		Size: 93.5 MB (93504365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee712df97a75d016944117104e26292358d2a02a6c85f9d26f2e89356336b08c`  
		Last Modified: Tue, 04 Aug 2026 02:57:39 GMT  
		Size: 18.8 MB (18839632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d57684ff15ee39eeeff6d2b37af3662b671bf402529318d4353d3bd65873e3`  
		Last Modified: Tue, 04 Aug 2026 02:57:38 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e212fb457d7185178d034e755cb1245868310b53ab40c1c32cba08e94b2e13c6`  
		Last Modified: Tue, 04 Aug 2026 02:57:38 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:14bf676575508881a670df68252f1ce1ac3538b49dc2c32c326d7ecc38d4f684
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71ed3e90994f5c1fce1ec44bdd0707876086bf1ad8a583738ab5e99c5e375f1d`

```dockerfile
```

-	Layers:
	-	`sha256:e015fdd421ab206781bea27d39892ed346482c0796aae0ab62118536cb501572`  
		Last Modified: Tue, 04 Aug 2026 02:57:38 GMT  
		Size: 3.8 MB (3782984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e028b912996001c976a58c4d850d1b91c379278dfc669271d4e9ceec1049e93`  
		Last Modified: Tue, 04 Aug 2026 02:57:38 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:559c7bcaf1bfb21c24e9c92a058344e0819cff8187f7e9a4f99f715540b0b979
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170488419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:963b8b72aedfbed8352773c17cd4afff34e1d6299e7903eb3e94bf41bc29c9c6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 05:53:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:53:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:53:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:53:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 05:53:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 05:53:28 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:56:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 05:56:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 05:56:12 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 05:56:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 05:56:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:56:16 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:56:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8250bf8e9ba81de702be4577c7ef54faa81c6f2ce1cb2f20c4aff3718d57b1df`  
		Last Modified: Tue, 04 Aug 2026 05:56:53 GMT  
		Size: 93.9 MB (93902077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800a97b6be79226e920df3ced4634f23518657532d48c407924f4235868206b3`  
		Last Modified: Tue, 04 Aug 2026 05:56:51 GMT  
		Size: 18.9 MB (18936671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33a4abea919264efdd0fe657762d87519b6b478f2b79dd5e9cb7e04afca2477`  
		Last Modified: Tue, 04 Aug 2026 05:56:50 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c69234eec72b71d00646135804f7349cd443776f6088f7e3c8e99ff2c84ae9ad`  
		Last Modified: Tue, 04 Aug 2026 05:56:50 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dcab464a5bea6b339e79e2adefe4c85feb7ca08d2b920b17daeb581a6ea91dbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d7526fdd2c803752a052154648b69f6d6450739429640ff72f7e9932586bb08`

```dockerfile
```

-	Layers:
	-	`sha256:527588ad7b350b418c254610922922d809549358f921690965f981cfb2f6c9ce`  
		Last Modified: Tue, 04 Aug 2026 05:56:50 GMT  
		Size: 3.8 MB (3767683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:330232db4ac00138125e6b49c52f10e1b324767df2351184879c0a4d842e2474`  
		Last Modified: Tue, 04 Aug 2026 05:56:50 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:cc88d4a698291f1cd9b64d420c4cb72dfbe8c37114b9ac4e71ba6d0a2b0c9a58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163355992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7412c311801b0fab70727dad48931a10ae768a033c2001a6ff9789a69e6df747`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 03:05:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:05:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:05:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:05:44 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:05:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:05:44 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:06:59 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:06:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:06:59 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:07:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:07:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:07:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:07:01 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad3b5ac7cc833089cf6bfce8ab4e67e901ce485ecc6c6f6b43a749b0b3a91776`  
		Last Modified: Tue, 04 Aug 2026 03:07:26 GMT  
		Size: 90.5 MB (90536961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87743888f1c0211172149fe1e1f4505bb70638354f8d38fb8b6f4e529c150c45`  
		Last Modified: Tue, 04 Aug 2026 03:07:25 GMT  
		Size: 18.9 MB (18921682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b74439d4e9c836f767e2158035e3ec7d076f77cdf2981c4ad3918f58823225e`  
		Last Modified: Tue, 04 Aug 2026 03:07:24 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b50a73b52299d25f871bd2d0679c9167f7f6d7314df128ca97933c77aaa4fc`  
		Last Modified: Tue, 04 Aug 2026 03:07:24 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7fc888b325412ffb05e5141fe32681c9f892645f32d4c29d0684c5da0d4a0b40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3782071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4503b75848144fb58f8cc13cee92c9d9c5ac194672b1b71c90df45a3212e8a8`

```dockerfile
```

-	Layers:
	-	`sha256:748c6deaa03252732cfbb37a9b70ebfaf82740fcfdaf3054346bb9935f02d319`  
		Last Modified: Tue, 04 Aug 2026 03:07:25 GMT  
		Size: 3.8 MB (3764360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:857206f75b3540e988eb52ddab7601b727f53ba15b3de8f24d8fe5e87442e8ab`  
		Last Modified: Tue, 04 Aug 2026 03:07:24 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json
