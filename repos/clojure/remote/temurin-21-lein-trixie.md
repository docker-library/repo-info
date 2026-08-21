## `clojure:temurin-21-lein-trixie`

```console
$ docker pull clojure@sha256:13cf66a3e1c3457f7e7d87ca51288bc3cf514df47552ce93643daaefca7e8402
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

### `clojure:temurin-21-lein-trixie` - linux; amd64

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

### `clojure:temurin-21-lein-trixie` - unknown; unknown

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

### `clojure:temurin-21-lein-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-21-lein-trixie` - unknown; unknown

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

### `clojure:temurin-21-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:bdb170d0bdb640d93a67caec5a3c387dcfc91cb6b5c24ffb51cd34fe7a68f14a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234929040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c24de7b54976cecb5290496c11c4f16a58be9b82429a5eb8e5e94507fce111e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:21:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:21:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:21:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:21:15 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:21:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:21:15 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:24:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:24:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:24:13 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:24:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:24:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:24:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:24:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4bdd65664cd71d6af78f3ae6966803e327609aa504e54f5e11b02407b367944`  
		Last Modified: Thu, 20 Aug 2026 01:25:01 GMT  
		Size: 158.3 MB (158343275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2919c5b98cc07d3fbed3c41aac9bce5bd60dfd19034f9e3b768a28aae5494ec1`  
		Last Modified: Thu, 20 Aug 2026 01:24:58 GMT  
		Size: 18.9 MB (18936505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e2242d8a9b56f0cdd40999d0933e016070024918b7efa58a5aa1e053690c2e`  
		Last Modified: Thu, 20 Aug 2026 01:24:57 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04f55f2b70c8fc71dc6bb4d0e5fec20a1ba0a31395e08c463f086293e73ca4a`  
		Last Modified: Thu, 20 Aug 2026 01:24:57 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a5de7135e38295fe53fc8b80da46167d06982efd0f7fdeb97c495a7d1abbc43b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9fcb3f3902113710b99c7641d8995a64f3966497c3e4499d25af07ecf357572`

```dockerfile
```

-	Layers:
	-	`sha256:9a0ba8fd49dc74c55ce814f5ec1209ed6517f23cf9ffa4f82002d1594880f3af`  
		Last Modified: Thu, 20 Aug 2026 01:24:57 GMT  
		Size: 3.8 MB (3820708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfe56f09ac75d1317e390644eac74b2c796e16b4dd9671d680a3cdcdb297b949`  
		Last Modified: Thu, 20 Aug 2026 01:24:57 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; s390x

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

### `clojure:temurin-21-lein-trixie` - unknown; unknown

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
