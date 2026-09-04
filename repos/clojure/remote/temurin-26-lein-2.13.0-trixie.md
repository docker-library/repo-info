## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:6d1901bdc6226d8eb53991d64cecce1aa7641f22dad123254c33b313febe4213
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:3827b3bbb5fb4b05a800490aec6809aefc0061a82e6664bbbd2b5e02ce41748b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.3 MB (167298382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d27e13e11ab6c47e8e50233e020d6a593889a14d50e06eee11eaf3e39ddf125`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:32:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:32:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:32:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:32:34 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:32:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:32:34 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:33:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:33:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:33:55 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:33:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:33:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:33:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:33:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1291df4c5f035566d50b8c85d3c0b8ea194866ade23b737ec26686b396436226`  
		Last Modified: Tue, 25 Aug 2026 01:34:17 GMT  
		Size: 94.6 MB (94563772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1581123ebde09c7e2a0377307bf4ead164c77cc6e6c477e69d5ddbd92436d826`  
		Last Modified: Tue, 25 Aug 2026 01:34:16 GMT  
		Size: 18.9 MB (18881143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396c4b0243e143c983df2e482ecdb92dc025c7d66fb1a09f5886df57ab53746`  
		Last Modified: Tue, 25 Aug 2026 01:34:15 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48253fde7b42811845054b2a71370db7b0808cc3928fd2d0590e19fa0f07180`  
		Last Modified: Tue, 25 Aug 2026 01:34:15 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:509363738eb7d52643198595bad3fdc0bf6225d1cb2754ccdb862136e191c5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fd87e36d88631e262a60da74dc76bf738ae2d6585f4b51306bcd6dcf48e620`

```dockerfile
```

-	Layers:
	-	`sha256:0d8afcaaea8395c7b8cd12d161035e37b1ad430e382510602a0b322c5734dc28`  
		Last Modified: Tue, 25 Aug 2026 01:34:15 GMT  
		Size: 3.8 MB (3787727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:299d8fd7bd201ccc6be52582c93c2ff225a599db42931f95bf35fb4ef79e7f08`  
		Last Modified: Tue, 25 Aug 2026 01:34:15 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e217dacd9d896449e8da1f705f7e7aa8e29d3dd200b4cd328818766bd161dac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.6 MB (166601646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62bbb3bc1828871e5a6a184f5ed6bda5afbedda87604c1990fdd4bba4e998bd3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:37:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:37:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:37:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:37:02 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:37:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:37:02 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:38:19 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:38:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:38:19 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:38:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:38:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:38:20 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:38:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0eeca017e7212afb8c06f30fe5b7ec48c3fe786772ddbfa917d35de74b4b672`  
		Last Modified: Tue, 25 Aug 2026 01:38:40 GMT  
		Size: 93.5 MB (93541530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb2a8f9fce4138a61c75257a59ccaadd63ff0d4f7447ccd4760fda5dee31c0a`  
		Last Modified: Tue, 25 Aug 2026 01:38:38 GMT  
		Size: 18.8 MB (18839648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c65ed5aead0c69577c76015ff0c9fe73f51e1535ffd0fd3fd0b5719dcbce8d6`  
		Last Modified: Tue, 25 Aug 2026 01:38:38 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e570b766f21fe055ed5b1b0351c9510167ec6c20eaf7c43f4241d976f9d7f3c`  
		Last Modified: Tue, 25 Aug 2026 01:38:38 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c40b353db062710270cca278b49be250704f8d719f06efaa585c4572642b9342
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3805796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce4cf53dc2358031b6e78225d640fdea7c256a27d35346d62e4c2197eace0d3d`

```dockerfile
```

-	Layers:
	-	`sha256:bdc8039352917063a048c260e8625e867f4303b89b3cb3bf6b8a773bee566de8`  
		Last Modified: Tue, 25 Aug 2026 01:38:38 GMT  
		Size: 3.8 MB (3787964 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b05f3568e3b1619235ee58c4af3264d39fdc7c9b13ac5fc6d95d34098b4d8243`  
		Last Modified: Tue, 25 Aug 2026 01:38:38 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:57a5c3af8cfd79b3291cbc3111270d1f3aa398f2b190221c191f623256bc5463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (169967469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dfd1b4d89fb77200ac20c02a8abae2af4edf7b48c203a347210e1884287d64a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:55:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:55:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:55:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:55:24 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 08:55:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 08:55:25 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:58:38 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 08:58:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 08:58:38 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 08:58:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 08:58:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:58:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:58:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e49b63121daca1f76923aa83d93cb343181cb0171f7f3ad4e5e569d8ddd8cd7`  
		Last Modified: Tue, 25 Aug 2026 08:59:18 GMT  
		Size: 93.4 MB (93350786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89fdd22b6e9d909ffd783193cdcc0a57c070a26e1d761749a1b0b3316e5ed15`  
		Last Modified: Tue, 25 Aug 2026 08:59:16 GMT  
		Size: 18.9 MB (18936725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:534b1a25dd42960fc71d229c59f3b4fe567bde0c192d4e4a95e945b90c699546`  
		Last Modified: Tue, 25 Aug 2026 08:59:16 GMT  
		Size: 4.5 MB (4515245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0643927db6729742835d4b5f15be7733fa80a882c50c7b49cdc4a4ffc7633849`  
		Last Modified: Tue, 25 Aug 2026 08:59:15 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6e1927300bd4218dd63049d402ba7368d94ae3e67fe6258b13d5296693e7bc3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3790418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844d3be2430468b0055766393c7f46799655049b7704dd52a5deb3148cef418c`

```dockerfile
```

-	Layers:
	-	`sha256:027ceab3e9266b9ce38fb0ec7a56d6148d75c33c23507300aefe1610e74d219c`  
		Last Modified: Tue, 25 Aug 2026 08:59:15 GMT  
		Size: 3.8 MB (3772663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f74bc5f3ef02f178592cfd0d236ceaf71c707a080d14c65cdf7dee2180e57a9`  
		Last Modified: Tue, 25 Aug 2026 08:59:15 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json
