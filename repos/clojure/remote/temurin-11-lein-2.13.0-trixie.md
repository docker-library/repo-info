## `clojure:temurin-11-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:70e6c8ee8b88db2a77eaa75bede4bb1c6d1f983983625f056dbab73453964537
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

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:914a55a13c4e6ea5e6cf1548a2fb697b8b5bafbec0fde505869338809da7524e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218592892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b22c84a3ae8d6dff4a3e07347c26e3439eb5ef2a192320a7cfad14d47d4633`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:41:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:41:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:41:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:41:51 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:41:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:41:51 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:43:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:43:01 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:43:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:43:02 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:588d04d808cf2eefd4b2056064ab099918e7f70f1fbc0f3dac48a09c6ff32724`  
		Last Modified: Tue, 18 Aug 2026 20:43:23 GMT  
		Size: 145.9 MB (145884873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e2580c20fd55c19440b5acaffe59e9254c65e8e391f0ddc44621b19cc3c433`  
		Last Modified: Tue, 18 Aug 2026 20:43:20 GMT  
		Size: 18.9 MB (18880461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38139c583ed8a24b08f8dd7be99fd50ad28bab0faaf39590a00c45e9f4073cad`  
		Last Modified: Tue, 18 Aug 2026 20:43:20 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a2de1439eb726419d4a2df4b59311a43ea6fc17b308ced832422408fb5969a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce248dd2de813c9b0d0ed7c1041385f751b12b1199fc9004e4cb3827b9d909ab`

```dockerfile
```

-	Layers:
	-	`sha256:5efbd6034ef5b64e6f62ede7a9b52f637dbf63a77c3c70396d7110646fa2c03f`  
		Last Modified: Tue, 18 Aug 2026 20:43:20 GMT  
		Size: 3.8 MB (3837372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8cdc21c98d09cdd77a8c30b704e46feedf555c24a4f75e85a02e33c9b8e9867`  
		Last Modified: Tue, 18 Aug 2026 20:43:19 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7bc90c76a7c274c2a2e98153795471d4f8ada0b94f0d30ef3c146aabce0d2f1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215610880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97cbc5485f6dd9bc426253d82940d11558bd66f4591a3e5785bd8be753093088`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:42:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:42:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:42:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:42:13 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:42:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:42:13 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:43:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:43:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:43:30 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:43:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:43:31 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b55ef13d194dce86e3f24906369b11b71facbec4b16b34f8bf50f3855cdbe0cc`  
		Last Modified: Tue, 18 Aug 2026 20:43:52 GMT  
		Size: 142.6 MB (142582138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c363f34a346bbe648da5dd6a11f82578d997954dbfe0334c53f9dd0647e33127`  
		Last Modified: Tue, 18 Aug 2026 20:43:49 GMT  
		Size: 18.8 MB (18839696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b78970eaaf20ac594ef3682d370ecbd124963a59b42196c614721e2fd5a35168`  
		Last Modified: Tue, 18 Aug 2026 20:43:49 GMT  
		Size: 4.5 MB (4515168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e04c63419db9ff22ba45524eb0b1758d6ba2e68a5838fcc6e07f14350adcbc30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3854085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb403c14aab9af1a62fa3205923e410755599fa1bf8e5a41ec6feb850446a1ec`

```dockerfile
```

-	Layers:
	-	`sha256:66a7a1cf6eb7ad65071da008225c1d3999f0b1377a14e7caf8619db3bec8aca1`  
		Last Modified: Tue, 18 Aug 2026 20:43:49 GMT  
		Size: 3.8 MB (3838230 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9466f97b641d227d554c3c585e74517d1b70409390a740d03ec2748a3413c200`  
		Last Modified: Tue, 18 Aug 2026 20:43:48 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:6c164276c71c14a971e74aa7aafaaef2db2725b2a81344d7049ed6e2fbcad433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.7 MB (209695249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7e4351f76d7663aae5157fb7fd9c98be4db0b165e226a07d5134768a9911cd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:37:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:37:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:37:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:37:40 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:37:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:37:41 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:40:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 07:40:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 07:40:25 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 07:40:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 07:40:30 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c56f0fa02b637ffedeedf311160f7cb45e983a15f11560df318b1295f8caab6`  
		Last Modified: Wed, 05 Aug 2026 07:41:02 GMT  
		Size: 133.1 MB (133109714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67835c086798f7fe88a3439579e45d7382d280cd9e2f3e41a84c9f2d6d83cb64`  
		Last Modified: Wed, 05 Aug 2026 07:41:00 GMT  
		Size: 18.9 MB (18936665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2de6fc073d2b5274e3528765f540902f844758203ed4278048450e29df47bf`  
		Last Modified: Wed, 05 Aug 2026 07:40:59 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:21bf51e2abfa0c8b503790a39e5cba7b9b2cb4115f1651df441bd17fa7eaa286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d548742f9f11be2d63cbc0d20fc8e6bb8b5d4d9736b047af96dd92def1851f`

```dockerfile
```

-	Layers:
	-	`sha256:fd6911cc46febf2bba5768dd35798cdd5a609bac945ca0c5b48b57380310c50a`  
		Last Modified: Wed, 05 Aug 2026 07:40:59 GMT  
		Size: 3.8 MB (3837757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74c3738c2ae946fb123795860812da3c918599f0b877e7597b1fc00f1f4bfbd3`  
		Last Modified: Wed, 05 Aug 2026 07:40:59 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:8be0103b7a87c0918b619c530b04639feb8f32b178576686ed93618e97da1cf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.5 MB (199471126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e8d477f46d431c84d60f5bc8ec9861d3fd21ea9279e2b3539dc11a6dc8ed23e`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:31:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:31:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:31:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:31:30 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:31:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:31:30 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:32:57 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:32:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:32:57 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:32:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:32:59 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca2c115a42337f23707a636bb861eec86c2a829df83bd6e2ddc55106262e9a8`  
		Last Modified: Tue, 18 Aug 2026 20:33:25 GMT  
		Size: 126.7 MB (126652455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925b0286ed059a602a6b106591829e3d252fd4a9cb1616858b9cc31916e6865b`  
		Last Modified: Tue, 18 Aug 2026 20:33:23 GMT  
		Size: 18.9 MB (18922004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb6fd9414e2f201e5bb39441f287a28a54970b8dd26cb24cfd53996c17a0e4e8`  
		Last Modified: Tue, 18 Aug 2026 20:33:22 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:71966384590c0718fcc494fc598c92f495b48658c5d5317b0e9e6427dde2e154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3849536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90cb575a61d0f609bfebc4c2e7b119952736b1b99745f4e828d97dad9b61866`

```dockerfile
```

-	Layers:
	-	`sha256:e4e2bc1678bd192876cade027ddddd23f3a673add02127ef5eb77ceb3f7d6d48`  
		Last Modified: Tue, 18 Aug 2026 20:33:22 GMT  
		Size: 3.8 MB (3833803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16f81debfbb62af4c0af526e89a017f4161c9170b203d31c07b48539e23324e7`  
		Last Modified: Tue, 18 Aug 2026 20:33:22 GMT  
		Size: 15.7 KB (15733 bytes)  
		MIME: application/vnd.in-toto+json
