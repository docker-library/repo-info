## `clojure:temurin-17-lein-trixie`

```console
$ docker pull clojure@sha256:ca433af15aaceebb709891067dd29f976e93bc9d346bc7c4d76d4469e3bb4ca5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:887f75cd152d9a8ff93f6a798f423f51822502ff8e421d121e95bf1b23baa5c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218621598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eeb2c31462ca401d5e4c0164e6088e8d8cce7e26216fb83f5795577fbffaf87`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sun, 11 Oct 2026 13:10:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:10:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:10:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:10:47 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:10:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:10:47 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:12:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:12:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:12:04 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:12:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:12:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:12:06 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:12:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003445b2fb926d112573f3beb7db615a4b760e8df0047ca048d1c21a9575bb0f`  
		Last Modified: Sun, 11 Oct 2026 13:12:26 GMT  
		Size: 145.8 MB (145825468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9f0eafa54b209bf8268d6d7b04b81fca10eb207f3fb195692f06de3ce7efd1`  
		Last Modified: Sun, 11 Oct 2026 13:12:23 GMT  
		Size: 18.9 MB (18887299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5141d281c4c93dd9b7f4182e3828913a2fb07705fc48086ff20bd9a4c78ca4c1`  
		Last Modified: Sun, 11 Oct 2026 13:12:23 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d297984479fa46b4a3de6c23e6444758a599f6fefd5716655f99ca1164ff9b`  
		Last Modified: Sun, 11 Oct 2026 13:12:22 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b23c317cb0b2241e6e704641417fa804dd354bb96153585f1a4048f8cd725b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:798cb647ade3360e68bac947c4558308b86f0ef0d97c2d5901fe3e062814d009`

```dockerfile
```

-	Layers:
	-	`sha256:4bd510a081abcd3ca509b5ad1d6c77ee7b3f551ccc64500be847347a002968bc`  
		Last Modified: Sun, 11 Oct 2026 13:12:23 GMT  
		Size: 3.8 MB (3827747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:103201cd246336921b8202683715b33e4475d8a6366ba3c641df345428d9ddc9`  
		Last Modified: Sun, 11 Oct 2026 13:12:22 GMT  
		Size: 17.7 KB (17717 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4be71ab69d451de3597d792386ccdaa4bbef18474b90edc606cb8a7e0d7effb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217770641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba1c4d8bf7af1ccc85b80d122e58c610187eab9aceef1935704a6610ce83cfe2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sun, 11 Oct 2026 13:10:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:10:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:10:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:10:42 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:10:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:10:42 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:11:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:11:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:11:58 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:11:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:11:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:11:59 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:11:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25fbd29b517a38fa1c479beb224c02b9a9c3f514088221f6a55c56d5e7379a8e`  
		Last Modified: Sun, 11 Oct 2026 13:12:19 GMT  
		Size: 144.6 MB (144648241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53356b15edb669020726cf60228f1cc5a5ba3b3caef9a19ced1ea9f3b801e8e`  
		Last Modified: Sun, 11 Oct 2026 13:12:17 GMT  
		Size: 18.8 MB (18845677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01974f484c82a12449897b767d69958e5c562cb07550e048460f5cf871a9923`  
		Last Modified: Sun, 11 Oct 2026 13:12:16 GMT  
		Size: 4.5 MB (4515188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d449dfd8f3fe7fbdf43126f4a3f1f33886d1a8c4eb5a6e590794c36ab07af75b`  
		Last Modified: Sun, 11 Oct 2026 13:12:16 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:cd6da0cfa0c4d752abb89acbba83b5c8a4cd87659a81dfd6b8e51df91694daa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4cc09eb10cb9ec37f1dd023aa423b64df24b46a32408ca146cf2f2aad0ab267`

```dockerfile
```

-	Layers:
	-	`sha256:29a8c9576ba8fd777cd96416dda77a527672e03eea837749bf62a8e92a146542`  
		Last Modified: Sun, 11 Oct 2026 13:12:16 GMT  
		Size: 3.8 MB (3827987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c2c6e974a6015784e7c05160636cb4450c16ae1dd1a58d2e1e8d5c9b964ff4a`  
		Last Modified: Sun, 11 Oct 2026 13:12:16 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:a8fbb60f9dd0bf00de9d92cd3fda097200897ebe83ab33f38b23999d91f98e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.3 MB (222336996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7764cd1c187576b9132e18323ae5d9b06335223e2ad7a5fe695e915b4aec8d78`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:05:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:05:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:05:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:05:56 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:05:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:05:57 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:10:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:10:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:10:30 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:10:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:10:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:10:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:10:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa0f6933bd8bd26adacc595c8a148238e4b5f31352d2ec5037e049b8b2cfb52a`  
		Last Modified: Tue, 06 Oct 2026 10:11:45 GMT  
		Size: 145.7 MB (145671564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2765749171a8ce05a90603bae15252b645f1dd15651cc7a5a99246166b6a8c`  
		Last Modified: Tue, 06 Oct 2026 10:11:42 GMT  
		Size: 18.9 MB (18942656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3de5f56ceeb4c3564f8eac82bb1279ea9c15d561d7f77a4fbf1deddc66681aa`  
		Last Modified: Tue, 06 Oct 2026 10:11:41 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb48f5abed537ddbeb9c628c0cd675090e053973fe63cfc27c845a1e049f1109`  
		Last Modified: Tue, 06 Oct 2026 10:11:41 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f43260bf986cd46ffd0846906e2c9bb456c3702cb95abb075e627dfdefc190b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e84c826f075eedcb09b65ac718a8fd4af93af22830725501e6ded8ecc1e43078`

```dockerfile
```

-	Layers:
	-	`sha256:b367a4d5d7ada45d8685e499a703e74c5053b6aac918589381b2a0ebdf38401c`  
		Last Modified: Tue, 06 Oct 2026 10:11:41 GMT  
		Size: 3.8 MB (3828745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6315c195374d6dab5eee97af95626079c039b8ff6c4903342e2ade59c3e14ad7`  
		Last Modified: Tue, 06 Oct 2026 10:11:41 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
