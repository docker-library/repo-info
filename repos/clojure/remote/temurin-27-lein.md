## `clojure:temurin-27-lein`

```console
$ docker pull clojure@sha256:d390d4570c1e5f839efbaeb48c22aebd99559233b3efa500e273d7f1255cc8f7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein` - linux; amd64

```console
$ docker pull clojure@sha256:6870253749948805d73427e4efd775ab3afd20f09d76640bc9b0aa43c5d5d153
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166792914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaa01019d7ef8bca9503a29a44745748d9b9fb288de986f64c4b9e102d5e4d90`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:21:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:21:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:21:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:21:51 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:21:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:21:51 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:22:59 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:22:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:22:59 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:23:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:23:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:23:00 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:23:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9aede6402af990d2cd5dfe4ad803d9c33207f785ad979c99a4518766cc0ed36`  
		Last Modified: Wed, 21 Oct 2026 01:23:21 GMT  
		Size: 93.6 MB (93622445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e69220aed777f42d4a6993ce6f5694618b1dae67cf6dd3f0b1b1157fb653aa5`  
		Last Modified: Wed, 21 Oct 2026 01:23:20 GMT  
		Size: 20.1 MB (20132771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c889d1dcb930fa615dc5cf5b4b4af13be1b57cb77d45fddfd3b579b55dabd5`  
		Last Modified: Wed, 21 Oct 2026 01:23:19 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e4c6870e08815f2ce446ee519f844b255734f467ed7d38bc4239e8b4f59f81`  
		Last Modified: Wed, 21 Oct 2026 01:23:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:d42d1824fbdef4d3b2f46bef0d5d4a97b50cd2a43b6a390fc6a3d88f0343d142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:734bd4f9b699423b4aef5566f3c1444be66abab8900e44cd8f9dfb0ee209e256`

```dockerfile
```

-	Layers:
	-	`sha256:a0c6f4a946651d4de3f3d7774902016c76190b3b027bdc0da13635c2d2090a09`  
		Last Modified: Wed, 21 Oct 2026 01:23:19 GMT  
		Size: 4.3 MB (4252278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b4940b7b56979a5686270c0f08fcb33bae2a41f94b5d09f0ff32772cddd9e35`  
		Last Modified: Wed, 21 Oct 2026 01:23:18 GMT  
		Size: 18.4 KB (18379 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:478eaa33bf0cdede450da035e26c238c7e41a8f734e6e29566675109a3f0ca62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.5 MB (165518451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7e5921e6f18cecb704a2c3a617ba6b9babe99d2850f204824a5f806ae71368`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:28:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:28:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:28:16 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:28:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:28:16 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:29:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:29:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:29:25 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:29:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:29:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:29:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:29:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79b74ebb854831252c0a08b6634b2ffd9776014e302a8d15f65d8fe253e2cc6`  
		Last Modified: Wed, 21 Oct 2026 01:29:48 GMT  
		Size: 92.6 MB (92633129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76ffac9b0a0c59ce6e36b5016c6d247d060e63da108352a5bce0ac57288349b`  
		Last Modified: Wed, 21 Oct 2026 01:29:46 GMT  
		Size: 20.0 MB (19966572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a8ea99da9fa6c5d94e597fe53769201031d0314946379d524b16c03a867805`  
		Last Modified: Wed, 21 Oct 2026 01:29:45 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461b2ef9855e8449b03467bdf417e965bc250704501dbae94e82d9f518a50236`  
		Last Modified: Wed, 21 Oct 2026 01:29:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:5ea170bb3bd658df738370d2df4ac792d0a7f3c3caea4d23bd38f46e91b50608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4270440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9af187ab49b6d32aea43eff99371aba204398a9587abddbf01f59fd5e57f2b`

```dockerfile
```

-	Layers:
	-	`sha256:fa90356d52f699309b9f04b143c5030b98476d943c4f8fd4d5ec6267b9f9b958`  
		Last Modified: Wed, 21 Oct 2026 01:29:45 GMT  
		Size: 4.3 MB (4251914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2eaa9c60c620f240b4edbf34cfb9a87345f586672fac1add343a8f7376e20143`  
		Last Modified: Wed, 21 Oct 2026 01:29:45 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:f8e8dd78b58826c339bc2112153852468d6b71ab030c9d7dad15bb9f64e95aa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169492567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5d9b3dc423a78cde6f4c38d543396f33eafa6c1ba5d97ebf0dda51b88e669a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:15:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:15:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:15:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:15:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:15:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:15:07 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:19:03 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:19:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:19:03 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:19:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:19:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:19:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:19:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3bccd29f995b79b7862ff4967223c110516dd07fb12dca0006b4c37d7dba6d`  
		Last Modified: Wed, 21 Oct 2026 11:19:45 GMT  
		Size: 92.3 MB (92255808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81b56e9bdae4f60f2808c576c805bc19f7ffe079ae13079425957b2a9903499`  
		Last Modified: Wed, 21 Oct 2026 11:19:43 GMT  
		Size: 20.4 MB (20356389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd23395b90d5f5fc254cd2ed2d1fdff2aeba6b98ccddb190fcc9248910e795c8`  
		Last Modified: Wed, 21 Oct 2026 11:19:43 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1674b8d0586650300f5beeeb94ff28c14df94a69a8c2070597b7cdb1d1aadb2`  
		Last Modified: Wed, 21 Oct 2026 11:19:42 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:57b7dff9af08c271b27f0dd805b3eaaca65e8ad4bf8bdf1de12bf24ce7918783
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4256524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4878042f9ac9775618c3853df4ddafa356381df0d2307411d050fade052562c0`

```dockerfile
```

-	Layers:
	-	`sha256:1ac53b81ed2a08fd250e93b2d8ba0f3ecee9b9be02996cdb4382bd3438a9e042`  
		Last Modified: Wed, 21 Oct 2026 11:19:43 GMT  
		Size: 4.2 MB (4238087 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86fc793d27fe1728ccb7d8855c6817faccd411867233e722b4c1bf2e84880eb2`  
		Last Modified: Wed, 21 Oct 2026 11:19:42 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
