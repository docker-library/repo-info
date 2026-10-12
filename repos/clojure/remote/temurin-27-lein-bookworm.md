## `clojure:temurin-27-lein-bookworm`

```console
$ docker pull clojure@sha256:a3393c1b778438163036bae26c8b0cd6f50dd16e073b3520f29b8ae1e864005a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:2a03c418750375840de19122dd110bd9f5f1bccd5b0f3cc84e731061806a0f57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169093435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fd67c1331179ec71bbc76989212f7cb03fe3d101ae53e77e4e934044946057`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:25:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:25:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:25:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:25:39 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:25:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:25:39 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:27:00 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:27:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:27:00 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:27:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:27:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:27:01 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:27:01 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60363d19734aaeeefefb1e2276bcc8cff447aa6519945577b0f32567cd9acd5`  
		Last Modified: Mon, 12 Oct 2026 18:27:21 GMT  
		Size: 93.6 MB (93622506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf8b5f9b372edfb8a9daa1d543bba85cb4b7cd504c776d379f76388fcf9569a6`  
		Last Modified: Mon, 12 Oct 2026 18:27:19 GMT  
		Size: 22.4 MB (22437298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0076a5ff9be0bd8c6e1466a8a1f2cea840419545620bbe8a7a0ad3a91e26b6b`  
		Last Modified: Mon, 12 Oct 2026 18:27:18 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b88ff40b0773bcb05e7c20398a176ba28f619f0bb28b91a0266383f58a8563`  
		Last Modified: Mon, 12 Oct 2026 18:27:18 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9fda63a0eb71bf91566af4fd8c9671bd50b1c8c250ea14a6a0c5247f07d6307f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e63e934aedd79baac45e1a7534bb2ee5ef7ae592c0c7533b8e47dd3ee6b9b8eb`

```dockerfile
```

-	Layers:
	-	`sha256:0884acd1740c34151e0e08ff2f0ee0d7666318d6f54228e556711c20b40127a6`  
		Last Modified: Mon, 12 Oct 2026 18:27:18 GMT  
		Size: 4.3 MB (4253573 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1edc173c8787ed02969316af34246bc606bd1dc75b9b94745ea611b718976ad0`  
		Last Modified: Mon, 12 Oct 2026 18:27:18 GMT  
		Size: 18.4 KB (18380 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2ba43c3186bd9587528f62dace19b4193bb5adfee3707b7dca81d1e8ccd0d83d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167781040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f85dc4de14584800b5faa64ea215d44f30950644ad0163ddfa7721696458a9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:27:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:27:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:27:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:27:37 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:27:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:27:37 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:28:54 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:28:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:28:54 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:28:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:28:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:28:56 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:28:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7e573fc75ec118b006af937603e7cc063b4a8f7da9f360c2be8b4db20cd8aa`  
		Last Modified: Mon, 12 Oct 2026 18:29:15 GMT  
		Size: 92.6 MB (92633112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea24bd6fbf547ac054d6de88af63bf4cb5998425ece6d30c0ff495907f61a1e1`  
		Last Modified: Mon, 12 Oct 2026 18:29:13 GMT  
		Size: 22.2 MB (22230721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c26a34b9b3aace699f2642f46cc244554cf3f708695b623920318eede9218e2d`  
		Last Modified: Mon, 12 Oct 2026 18:29:13 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cb8921abfb5b099553e637e45ccff9a19bc1b2686c095912309c08c1d926bd`  
		Last Modified: Mon, 12 Oct 2026 18:29:12 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3f1ceebe3262352fea4b3aa15b266604ecd303ee4b1ad53c7481d54831e19704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd926eeeec4040f2ab615733b3a943f974aba857d0d619b1e691a175679aef4`

```dockerfile
```

-	Layers:
	-	`sha256:9c1b1ecc176f5f498cbf0b602029280886e6c629ff157578e547057f1f039d72`  
		Last Modified: Mon, 12 Oct 2026 18:29:13 GMT  
		Size: 4.3 MB (4253209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5324bc56e9f6770116c0236e1360c43afdd409e4fd145ce115bb9411281aa889`  
		Last Modified: Mon, 12 Oct 2026 18:29:12 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:1ae4cbd344de97f98acbda8a5bde5e8d3c34cbd44f9409eb743118df843dfa79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.0 MB (171964831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f2a2ce96667c413e77e9ec1d8e467119ba24117c8f79847ba681c935a1e60d5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 18:17:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 12 Oct 2026 18:17:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Mon, 12 Oct 2026 18:17:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:17:58 GMT
ENV LEIN_VERSION=2.13.0
# Mon, 12 Oct 2026 18:17:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Mon, 12 Oct 2026 18:17:59 GMT
WORKDIR /tmp
# Mon, 12 Oct 2026 18:21:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Mon, 12 Oct 2026 18:21:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 12 Oct 2026 18:21:27 GMT
ENV LEIN_ROOT=1
# Mon, 12 Oct 2026 18:21:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Mon, 12 Oct 2026 18:21:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Mon, 12 Oct 2026 18:21:33 GMT
ENTRYPOINT ["entrypoint"]
# Mon, 12 Oct 2026 18:21:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c35d2189bfffaa47d970581dc56eca0931336fc01963dc24bcb1872321d3f0`  
		Last Modified: Mon, 12 Oct 2026 18:22:20 GMT  
		Size: 92.3 MB (92255804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4569f4444c01cf743071865bd19485a768e16c182199fea3cc1f2cf271910c3c`  
		Last Modified: Mon, 12 Oct 2026 18:22:18 GMT  
		Size: 22.8 MB (22830656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b983f6c88c7b4ca35c06b3b89ed1c831d73d2cd89abea0bebe3792f33fb40d1`  
		Last Modified: Mon, 12 Oct 2026 18:22:18 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156794d9cd10df015d5f00e73bced6c1dc82f274f102afcb3430586717455298`  
		Last Modified: Mon, 12 Oct 2026 18:22:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7779ee481e7178d3f8143379685a02de0efaf0f4e3b83ee02bef217b5b68e2c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4257819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7251c9b7a53be9fe914426ce6ea7573ba90e9195e03c66c2f2f987c960e22465`

```dockerfile
```

-	Layers:
	-	`sha256:7fc06a7737052d8cfd4be6ace2dc938757d72f01b63abef413f2dba70d9d8d18`  
		Last Modified: Mon, 12 Oct 2026 18:22:18 GMT  
		Size: 4.2 MB (4239382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a825a358ef296f5bbd7f3dea46e71bbdd9f9c13d45ef90114c2822a8208fbe32`  
		Last Modified: Mon, 12 Oct 2026 18:22:17 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
