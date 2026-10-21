## `clojure:temurin-21-lein-trixie`

```console
$ docker pull clojure@sha256:0d255ee2f4ed3dc9f35ed9887eac6e0b369a6ab8870a91f770e5ddfeac3f25fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:c1338f729154b4407cd9cc13178e5f20d50aacfd2a43fbb1f918468f257b6d6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230912467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983a56aad229fb28e223248f2dcd66fe71c3c289fafefd01d1306690b02f8ca9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:18:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:18:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:18:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:18:47 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:18:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:18:47 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:20:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:20:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:20:06 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:20:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:20:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:20:08 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:20:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:667c1daebfc8beaf4c84bb0d7820a87920c70cea0782140b055dcdf88fced5e0`  
		Last Modified: Wed, 21 Oct 2026 01:20:37 GMT  
		Size: 158.1 MB (158117468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4909da5f3af860e894245da4d5c1babce52f03ab8f8ec0519083c993a1970fdf`  
		Last Modified: Wed, 21 Oct 2026 01:20:33 GMT  
		Size: 18.9 MB (18885759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd3395046d3fb9530b19c74a56ec9eb6ca45948b799043d853208c468bc0704`  
		Last Modified: Wed, 21 Oct 2026 01:20:33 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebad9315a6351ab3162501e829de7106ccaba966ea40437f7468f5f877dc38a2`  
		Last Modified: Wed, 21 Oct 2026 01:20:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c03585247b3b30d62fa40000d79bb4e30161c5041df7dd6a6fafbb117715cd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2bc5d3fc8b89c751280041466423ac62c39bd440f8df7e47ff0699fe0b03369`

```dockerfile
```

-	Layers:
	-	`sha256:50aeac0b0b1cc0f107372b0748f48c407bf5618d6acde71d7ecfd6a3d4f2ca5c`  
		Last Modified: Wed, 21 Oct 2026 01:20:33 GMT  
		Size: 3.8 MB (3828322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:588b67c9f35e8360db5a5409a77cc8ea2b99bd7b04ff4bc156ee112850132be0`  
		Last Modified: Wed, 21 Oct 2026 01:20:32 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2389e52cb366d2490d8968de5640102b5bf25c76815d86da1e72c9177ce9b8c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229520935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e074aae9e8c14f80697e44ffaa10566d9258db258d7427b43e77e3ad8998291b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:25:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:25:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:25:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:25:05 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:25:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:25:05 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:26:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:26:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:26:20 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:26:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:26:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:26:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:26:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:913fbb19c0d149240c29f9c91560987da322f57e611e822d2b6b685e2bb441ee`  
		Last Modified: Wed, 21 Oct 2026 01:26:45 GMT  
		Size: 156.4 MB (156400685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac885bdfef3cab232a8e07af9acc6b39efda403ef2b0aaf9edbdde179f6ef2b`  
		Last Modified: Wed, 21 Oct 2026 01:26:42 GMT  
		Size: 18.8 MB (18843024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f82c4546c2fe0a2d1e5de16a9cf02c63a58291682ed8eeb928f3f27581c5ea3d`  
		Last Modified: Wed, 21 Oct 2026 01:26:41 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94150bc6d0be68b31a113aa4d7ef304c37373541a4e263c36567a8cb1e92840`  
		Last Modified: Wed, 21 Oct 2026 01:26:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c3dfe7401bf3096417a560cebd8b0548b9010cd53ebff0f20e8da76c2a4d0c17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda4a4ce267cb3f02b6b0a9dcec84f7b68631b458e59d89c49f13dd5caba944f`

```dockerfile
```

-	Layers:
	-	`sha256:4fcd82fe884f6a824dc7636ea6bcdedacf8374567660c48768ce56d2a1e39cd3`  
		Last Modified: Wed, 21 Oct 2026 01:26:41 GMT  
		Size: 3.8 MB (3828562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:daf4cef702e449ab8f7998aaafe1b16e41c1ab8d5b580bdebb5ca25306e448a6`  
		Last Modified: Wed, 21 Oct 2026 01:26:40 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:f46cb807f04b13c8d564d121b3898b193fcb395b45c369f8a39d0f8ac8a3d82c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234948191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b18cb707f1412a5c8e8f829154cc811efa306c17e59dbf076d4362eb7de00ed1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:03:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:03:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:03:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:03:12 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 06:03:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 06:03:12 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:07:49 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 06:07:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 06:07:49 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 06:07:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 06:07:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:07:53 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:07:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7696acf7ab9b391fe05c5f773ce243f2009dfca860bdc385909d39000d72c04`  
		Last Modified: Sat, 17 Oct 2026 06:08:43 GMT  
		Size: 158.3 MB (158282652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4811abc67655788bf6189943adef1a7f9299e378a1d4cb1ad23df4a2dc2b04`  
		Last Modified: Sat, 17 Oct 2026 06:08:40 GMT  
		Size: 18.9 MB (18942790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd0a0e1b545d87f68a812a90cc1ca0c26aee46e80167f541a19bc47e097606bd`  
		Last Modified: Sat, 17 Oct 2026 06:08:39 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5af4c81dcf6c2716b4cf76a360bdf2bee31d9eecc9a5ac66bdaf8227fbe192d`  
		Last Modified: Sat, 17 Oct 2026 06:08:39 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ab69cea60b5d98840f46a7e4797baca258f2a74b14808805d3e42021fee9c059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3848359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587e2fccbb0f098249d068dcb58b68307cfc6fc76b9f68dea3e5d7f89c318408`

```dockerfile
```

-	Layers:
	-	`sha256:a5a1dcf4d10f96dd800ce45838deba21d6d3890566800b700f69ba336e337266`  
		Last Modified: Sat, 17 Oct 2026 06:08:39 GMT  
		Size: 3.8 MB (3830597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9426483e02fa4a8730aab49c5dec73f83cfb83dd7125b43478f702be7e18e4e4`  
		Last Modified: Sat, 17 Oct 2026 06:08:39 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
