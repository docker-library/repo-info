## `clojure:temurin-21-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:f19f2cf56eac2e751067e6159e2e31b01c2c697a1fb28fa3bc2dc8f54d37ac09
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

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:6f513e8d5af9440307cc8b64deb252e457bf7dbbda96126ce1dc2e0b7cc660e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.8 MB (230829264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89092a2a1c22551a595e0a031b07ba960aa52f86809f0147fc6f068df33551da`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:17:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:17:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:17:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:17:13 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:17:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:17:13 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:18:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:18:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:18:27 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:18:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:18:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:18:29 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:18:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ef333dcc4dc617669194c8dbdaf8c7fb34f01e69d79928e2f12bb3f50b06fe`  
		Last Modified: Fri, 21 Aug 2026 19:18:51 GMT  
		Size: 158.1 MB (158120314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc03a4313c4f68d787af4802b23ab5ac522c03d75b227fe3b6dc17896c407319`  
		Last Modified: Fri, 21 Aug 2026 19:18:49 GMT  
		Size: 18.9 MB (18881001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e61b9dd98b0b80c23394316b42d2d237a7c876e0034fad49b812fb532f21f8f0`  
		Last Modified: Fri, 21 Aug 2026 19:18:48 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f1b09565370125c48bd76a2acf57a89a41aad41ecf17748bb693e807d5d0ea`  
		Last Modified: Fri, 21 Aug 2026 19:18:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e2a29692d09bd4aab92e2833d1df71d6f4fb1b2c11cf358990abf51199eaa15d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc6d9ac76fdf42dd42f60e488753cb1474e343fb0a26b7674bc74524b0a68578`

```dockerfile
```

-	Layers:
	-	`sha256:fd48575016a1cfbc7d3b57fa0dc13a8d0527223d6dd590aceda318aa1ab42b16`  
		Last Modified: Fri, 21 Aug 2026 19:18:48 GMT  
		Size: 3.8 MB (3819706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:455fb9318a79290f2dd505faa899c778a40489cb9dd5412bdb6b5134d26401bd`  
		Last Modified: Fri, 21 Aug 2026 19:18:48 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8f1269fca2356722076be4e784ebe1c79ff13e32f78174b26fd099a4b3b28d5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.4 MB (229430931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcfd5406a7932a6c00824c1f74503ccf9d21155a1dd44ba5d8fb12f78b4bf3b6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:05:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:05:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:05:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:05:55 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:05:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:05:55 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:07:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:07:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:07:15 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:07:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:07:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:07:17 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:07:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba10a028a5a6791813d1488a2b29a916ed1be90b7f63ddd1d37a126dfe99833`  
		Last Modified: Fri, 21 Aug 2026 19:07:39 GMT  
		Size: 156.4 MB (156401942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b262ae6afdf8f13f12cb8ae3a2ef2882109ac28edf9df6c0f929ecea8f2336d4`  
		Last Modified: Fri, 21 Aug 2026 19:07:36 GMT  
		Size: 18.8 MB (18839499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de12662fb783882f735d079cb7ec473a0b6961b47f3531a27c984ee9ba796f6`  
		Last Modified: Fri, 21 Aug 2026 19:07:36 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53bf97565260fd90dc0e24c1e2ef716099a6f68bacb18b4be79aa9d4169bd0e`  
		Last Modified: Fri, 21 Aug 2026 19:07:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d8cea7b0feac50436a21975740a018a7546a6aa1b27ba3088e9a51276b175a0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3902fe9458a8238b80a7b310577e8295d6b5007d1ce7293a1c0b01ce09d90a`

```dockerfile
```

-	Layers:
	-	`sha256:8cd095edc13f9a9f847e15aa92576b4b004a67796fe2acdd882f4a4fceb6c116`  
		Last Modified: Fri, 21 Aug 2026 19:07:36 GMT  
		Size: 3.8 MB (3819946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddc34838e99f9a60c39917fa4af98142224ec3ba0adb127489ea0d0b4b3b63fb`  
		Last Modified: Fri, 21 Aug 2026 19:07:35 GMT  
		Size: 17.8 KB (17837 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:24268a27ba83e14ee1b9f48c4cbc21a8f2ccdb5016d647854bd05fea3fcd5dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234860760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:557901f63e28ba9aa00c02b2dbaa6240f31c59e4f6d4808047b84f69d7011b4f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 22:48:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 22:48:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 22:48:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 22:48:48 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 22:48:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 22:48:49 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 22:51:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 22:51:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 22:51:40 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 22:51:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 22:51:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 22:51:44 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 22:51:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d4035c00299008a6ccf893c468dbdcf89e49c00b2014da205e910548b70f95`  
		Last Modified: Fri, 21 Aug 2026 22:52:24 GMT  
		Size: 158.3 MB (158274935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87bff76f78a34d251859b71f9e84f6bc41264c3005f04912e77870c76bfa29a5`  
		Last Modified: Fri, 21 Aug 2026 22:52:21 GMT  
		Size: 18.9 MB (18936570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862f5f7fb5cfb1c8ab6ee3b8f33bdb92085671db6e92e871538d69386b45347e`  
		Last Modified: Fri, 21 Aug 2026 22:52:20 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62602cfc37f28555f9b4552928261b153071f2663074e7e9ad2f946896fae8a7`  
		Last Modified: Fri, 21 Aug 2026 22:52:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6e439cc75d25304da0f4942b5acf3da5fc1b93f3ee9b5bc66fc0702a352414da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ee802352b33c21642043e6d43375f63ff605f62248923838fa9a69557454ac`

```dockerfile
```

-	Layers:
	-	`sha256:f46ac64bb05d5857cae44107220794ad39df3f13bbf8f871c6697c8b4e6f48d2`  
		Last Modified: Fri, 21 Aug 2026 22:52:20 GMT  
		Size: 3.8 MB (3820706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a00bf743e5ecfcb43300045f9031d0b531f20af24a8d2c930cf8af9b787fbf5`  
		Last Modified: Fri, 21 Aug 2026 22:52:20 GMT  
		Size: 17.8 KB (17761 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:938cd1f06de1dcf4dd6b31d89955b99eb05a622face8ebde890faeb7db820401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220166865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:553cc2caa8a597e561bee7e02ba1d9ee0a4dead36324877036c030c8a56f9cf2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:08:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:52 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:08:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:08:52 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:10:03 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:10:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:10:03 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:10:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:10:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:10:05 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:10:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:775fd98c28ae0ed25c7027064042759a4d6b00d9820f6327eaeed3588a6bd312`  
		Last Modified: Fri, 21 Aug 2026 19:10:32 GMT  
		Size: 147.3 MB (147347790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b6dbaa914e9af2e9d866f1f13e9bb90f03052d4f5673c1151fd49ee3de6b05`  
		Last Modified: Fri, 21 Aug 2026 19:10:30 GMT  
		Size: 18.9 MB (18922020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a362935b34ea93a69c776defd0365a285c9e5adea2d0a54d106529af935f0e7`  
		Last Modified: Fri, 21 Aug 2026 19:10:29 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365145033d41c264bb0703b4904c5d9c3762c645b447cb0f420aec641277289f`  
		Last Modified: Fri, 21 Aug 2026 19:10:29 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3e337d803f5246493a6a5a97e0bf12b037de8deae4160bec774ba6d4c24bf862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3833851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9907714503c1154c2c6d8b9074357995940926e3e008b329d2718d59a742b2b8`

```dockerfile
```

-	Layers:
	-	`sha256:1b7184a3f5a711f84e21dfd805a27a14688a5f2a9a6d06e1350f9d1b1c12b4eb`  
		Last Modified: Fri, 21 Aug 2026 19:10:29 GMT  
		Size: 3.8 MB (3816133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8c67a34b7c66e151093753ace99edd27ac573037277edbc6fb9a3fe5d924d51`  
		Last Modified: Fri, 21 Aug 2026 19:10:29 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json
