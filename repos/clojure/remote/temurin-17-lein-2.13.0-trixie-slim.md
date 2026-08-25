## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:5f589f3e662fc9d94f4e50c39769d5548606dcd4d2c9a39ae094b2d26d0ec61f
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

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4bc543ece5fe1e979f8203bd77e5c94121c3b0f4cbc5e77509767b9bda9e282a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196862860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d421f1d111a2b4034b7f2e691e69d6aed9322acf832f6a84d0bcb2f29479ea03`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:14:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:14:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:14:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:14:53 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:14:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:14:53 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:16:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:16:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:16:08 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:16:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:16:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:16:09 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:16:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d23100c6a828d7a79b7c8c80da38814829618d640a55825cf00d685a81847f`  
		Last Modified: Fri, 21 Aug 2026 19:16:30 GMT  
		Size: 145.8 MB (145822691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb2b479595a06629ae65867c36e4e4694bf5b10f55b6036cf329541240e1cd1`  
		Last Modified: Fri, 21 Aug 2026 19:16:27 GMT  
		Size: 16.7 MB (16743792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc3bebff223ae6a574bbee5485fcc7fb1be129f455754c54b5e9d2a7b03490f`  
		Last Modified: Fri, 21 Aug 2026 19:16:27 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660e79ad83a7bd80f01e3dc54e6a9292780e3be0f9cb12e1503915df8d34835f`  
		Last Modified: Fri, 21 Aug 2026 19:16:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fad67ccdb92a260ffc4ca210a6e215222efda7eebc597b324c4fa9e1cee4f5ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb44cb9a87f76e71afb67a24a73ccef1357cb00fb12476168c61be88317be55d`

```dockerfile
```

-	Layers:
	-	`sha256:cc745f6f429655e4a9433e8d3e4d2ac32a7b82145c72be0f58151c00179645bb`  
		Last Modified: Fri, 21 Aug 2026 19:16:26 GMT  
		Size: 2.4 MB (2367115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c961739a1a2c8b18e3b9b92c74e917d1e3ac03c445736b0908f081234157c75`  
		Last Modified: Fri, 21 Aug 2026 19:16:26 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6f282b161cf0ba304b04ae51b6057516f4e888fc8e87de64aadf75ba32155b44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.0 MB (196018105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe7674f031cdc4371ed92abab796c12c10014d610534ba6a3781d49683bfb09`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:03:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:03:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:03:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:03:53 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:03:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:03:53 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:05:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:05:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:05:08 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:05:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:05:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:05:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:05:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9593c7b16bf5b8a0c07b71bd3dff1d710d6c0493537bf2fe708739f751bc6e56`  
		Last Modified: Fri, 21 Aug 2026 19:05:30 GMT  
		Size: 144.6 MB (144647557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde1453ac10dc3acf11996bdd01387f9bc6c253f5dd9d9dfce130deb6316898d`  
		Last Modified: Fri, 21 Aug 2026 19:05:27 GMT  
		Size: 16.7 MB (16711307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354b7b9355ed4ee1bf7abd68e54821012b896494066cebb6416416531d80695e`  
		Last Modified: Fri, 21 Aug 2026 19:05:26 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c08c27528ec9664222e5ae0656269c2648a1d68f9b9f06f1e5f1b988b245d1`  
		Last Modified: Fri, 21 Aug 2026 19:05:26 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7ea9b7cd5221480fadc762d8829c95f3b3f10f39a16405c1de7cce386d8486aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2384599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e62a3dd7e5d09c8528543eeea9395ca84287871a564def70ea5d46d7a572643`

```dockerfile
```

-	Layers:
	-	`sha256:ce142c6a0ea0e3245e8edbefb4ceedc40f3c8e022ddf05eaed77056c90e10fd5`  
		Last Modified: Fri, 21 Aug 2026 19:05:27 GMT  
		Size: 2.4 MB (2366725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:314d0d9619f81626615d2a892db81cc5e423265b29591c0b7a49184d67a7be47`  
		Last Modified: Fri, 21 Aug 2026 19:05:26 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:64f62df78f9e51621eae579f9ec76f6c6a7faf6fd0afce47d5a2daaff06d7c54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200573730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e8efc818f815e64bb5b140bfe7613790da7f5ea7d479b136fbb704517dade3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 21:54:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:54:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:54:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:54:37 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 21:54:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 21:54:37 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:58:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 21:58:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 21:58:08 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 21:58:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 21:58:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 21:58:12 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 21:58:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:42d86b36693f284701ea61af2ee3f7366d96c1bf067d1bde1036423871f7cc22`  
		Last Modified: Tue, 04 Aug 2026 23:53:10 GMT  
		Size: 33.6 MB (33601343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64269a486231fffab2666570443518a8aabf8a93e1e1703076e7aedd2229f4e`  
		Last Modified: Fri, 21 Aug 2026 21:58:52 GMT  
		Size: 145.7 MB (145674278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79288d3b08e4472d4ebb40522c6dcb1b70866449a9f629f2e4e01e40495ec129`  
		Last Modified: Fri, 21 Aug 2026 21:58:49 GMT  
		Size: 16.8 MB (16782507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4282946739bdf4604df5052fcb2fe3ddcd5aadc480323cd120e5b33d0252d1ae`  
		Last Modified: Fri, 21 Aug 2026 21:58:49 GMT  
		Size: 4.5 MB (4515172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4f150fc17d25fe2a782bd5fbd27dd84735999e0d9c8f4afa965d562277b5b93`  
		Last Modified: Fri, 21 Aug 2026 21:58:48 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bf39cc7b5464aa919d343731343c0d9cd3554779acc5b5abb8a289d12b2dad43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2385892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaed5dab0414d1e2ecf358504d3431020823baad1a2c8fbbf9fd1d41c734ccf0`

```dockerfile
```

-	Layers:
	-	`sha256:b3170027c1b9966c3b86fd6edf02f49e389a1c4d28e4e3905bca0f4e1cfa83ae`  
		Last Modified: Fri, 21 Aug 2026 21:58:48 GMT  
		Size: 2.4 MB (2368095 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:359523b89038a9dcdf2a2ad634923f6250aefddb683e67eefbc5275ec835fe42`  
		Last Modified: Fri, 21 Aug 2026 21:58:48 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:b6fb60c09ca0e4f421e4d0116517fa522230a9e64b0f3c3ae3c981991e15c025
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187034319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c34873e36b11aa008f5bf190cd41a1bf320dade344efe6be502d1973c0522c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:06:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:06:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:06:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:06:25 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 02:06:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 02:06:25 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:07:41 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 02:07:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 02:07:41 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 02:07:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 02:07:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:07:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:07:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a9e3be4509b0edee218fc2ee7628467752ac7583bb42e9d7e0f2ae58b6d6d4`  
		Last Modified: Tue, 25 Aug 2026 02:08:08 GMT  
		Size: 135.9 MB (135871059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a785194a84aabe1a61d3295cd385c36522f04fafecb5e5b74b88ce3b69b03e7`  
		Last Modified: Tue, 25 Aug 2026 02:08:06 GMT  
		Size: 16.8 MB (16779924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79720c16f9d5348433d6bb14c4c70c3a54f208d7895c591c24a475d3d0f69e9`  
		Last Modified: Tue, 25 Aug 2026 02:08:05 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcfd7125bfc6acec0bbf308ef468dc2f949dd80916df0cd0b69a69882d1ce729`  
		Last Modified: Tue, 25 Aug 2026 02:08:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b04d1fbffce803933e463529982ef04963936ca03e66d08840145178d28f96a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2381493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a806ae6e1d9bf1cb7e30d33114a5b2a5fcaca42350f7bf309a1371c7d13c5f76`

```dockerfile
```

-	Layers:
	-	`sha256:ba760a6f219647beaa33d46a6b8e20a107287cb19e149c41e271c1ebba6b8a8c`  
		Last Modified: Tue, 25 Aug 2026 02:08:05 GMT  
		Size: 2.4 MB (2363740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41a3b9de4022a41138144121d983adb424d4b4f0620ed01a5a5f162dd6f3b4a1`  
		Last Modified: Tue, 25 Aug 2026 02:08:05 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json
