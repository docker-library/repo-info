## `clojure:temurin-26-lein-trixie-slim`

```console
$ docker pull clojure@sha256:0ff4062bb33968a87bb140147e33f1562ca8833c11e525020bf2c3965df29ca8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c2e770a117998350a184a911b180e313061e61a98db4e6782ee9b343c081f2ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.7 MB (145666163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f4c0c80bc63dccca90bce586cd0ee28380963068ec3a99f66f1f23c03570f2c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:53:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:53:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:53:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:53:44 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:53:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:53:44 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:55:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:55:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:55:07 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:55:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:55:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:55:09 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:55:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc466b871777b19f8cf5ebfcf981b88c8d588441004507aa2c728aedd6954c8`  
		Last Modified: Sat, 17 Oct 2026 01:55:28 GMT  
		Size: 94.6 MB (94563508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05882ba3677cb8f55442d5b2301f2ff5e6c34b28feaff59db55e2f6631dca483`  
		Last Modified: Sat, 17 Oct 2026 01:55:26 GMT  
		Size: 16.7 MB (16743687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c35b45b4f200a76f6a476ddd36e81f844cd60f477b2bc8af531b18b584664ce5`  
		Last Modified: Sat, 17 Oct 2026 01:55:26 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61640ca33d0ae44e402dedfbcf687609d3af2393182be6b24df8de59bce007b8`  
		Last Modified: Sat, 17 Oct 2026 01:55:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:55bc20ab36ba212a1b28cf850f76b6e8b883c1a300ba076d19210884af3832c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2355670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5def7e55109791955d5be81cc97bcc65f769a9d23db8154a55990c74c553d7dc`

```dockerfile
```

-	Layers:
	-	`sha256:a8374317a49a71de1f1810cc96698cebca8ad7bcd07a379e0a22c41dfb709daf`  
		Last Modified: Sat, 17 Oct 2026 01:55:25 GMT  
		Size: 2.3 MB (2337924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd01a13ca9ae548e6b13e0189844dcde3da95a3c5dffba242c839748f154f432`  
		Last Modified: Sat, 17 Oct 2026 01:55:25 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ae6b2a536d4a72922dcfcd6815f2177f57908b71e8bfcd29bcb9a706e75228c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144971749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32dfede7e4535cbca2bf4479e234115dcfb8f32db10f69933e4a1015df8e880`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:53:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:53:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:53:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:53:48 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:53:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:53:48 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:55:09 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:55:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:55:09 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:55:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:55:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:55:11 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:55:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61245ddb30164dd54ab2b98048911620966052d1374275404a386233a39179eb`  
		Last Modified: Sat, 17 Oct 2026 01:55:30 GMT  
		Size: 93.5 MB (93543599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71947cb81a0d89ed438fd2ca7cba1347ef412978490b7165f1542ba870c6a8c0`  
		Last Modified: Sat, 17 Oct 2026 01:55:29 GMT  
		Size: 16.7 MB (16712208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012f26ef1dbfaa0e517ce7717545512e2809b4a196581f583f4109bb47ea0706`  
		Last Modified: Sat, 17 Oct 2026 01:55:28 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a93d887ac2405bbc5159b2def69d9b63a28255a9fb5f912813b3ca491f7fe30`  
		Last Modified: Sat, 17 Oct 2026 01:55:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a6e016565be4042c1e69bb9c4a3a0398b5c2a4b5246664e0f4f04ac3c6947c2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2355398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e740763827aac8c4a584ebc6c5a44b367a7bdab144dd02135749d7d6e23cf383`

```dockerfile
```

-	Layers:
	-	`sha256:f495cf47565a08eda6905b9c7b40c5d3c0ca37a58521498f689a6a03b90141e6`  
		Last Modified: Sat, 17 Oct 2026 01:55:28 GMT  
		Size: 2.3 MB (2337531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15c91cda23c69606de901e30d0dd2cc0537fee71ef9260525434c8b20f9e354c`  
		Last Modified: Sat, 17 Oct 2026 01:55:28 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:910d9dd25e736ad2089930e77cb67e2f6bfc3e577640d09da24bef082459e20b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148301040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105a0e13153a3119e2e8b0d54bfec336297e4bd163a302d171ff7ae902d61a67`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:49:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:49:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:49:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:49:15 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:49:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:49:17 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:52:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:52:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:52:42 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:52:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:52:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:52:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:52:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6279b0cce2d4e2d63d6ccefa1877ed2751fceb21434a0b490d4569b26752e991`  
		Last Modified: Tue, 06 Oct 2026 10:53:38 GMT  
		Size: 93.4 MB (93350868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c67d96be6ca62d97f0fdea15256293c97b1a254905924dab01072aa63dd917`  
		Last Modified: Tue, 06 Oct 2026 10:53:36 GMT  
		Size: 16.8 MB (16782942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea235ff65cc27853ed45d426f0116310aad1b255fbf3083ef2d4be2f372c85c3`  
		Last Modified: Tue, 06 Oct 2026 10:53:35 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ccf9d5ba16f5660aa1fa33ff5795c41cadfeb5aaf20aa59d15e080edbcd865`  
		Last Modified: Tue, 06 Oct 2026 10:53:35 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3a3a573924ca2a162e92b86cb4d95dfc2933b2657d489969295a97310e277591
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2340630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a66e214532f14100c9c60b960bc7ed65323409aaa07004349994badb76c188a`

```dockerfile
```

-	Layers:
	-	`sha256:cf76a87ebfb57e4d8ecc99bc9c3f3fcc0f0e229bf48a3936abe059f0ed726b7a`  
		Last Modified: Tue, 06 Oct 2026 10:53:35 GMT  
		Size: 2.3 MB (2322840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b997b533d0df0ad88d52e258c22ecbbef0dfa7daa43fb604fefadfcce0d73d1e`  
		Last Modified: Tue, 06 Oct 2026 10:53:35 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
