## `clojure:temurin-21-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:7bc309c1614f706383da8e785065e24f09e0361b01e7487d3ef8e04030822e29
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:8a594dbde50bf61e11bf12f0657d4500a77ec15e7cc424c8e81b901b87b8aba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.2 MB (231217792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0711fd2c9b8199c24610403db08e705e629876c2066823e37839be3c23136cf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:03:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:03:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:03:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:03:44 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:03:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:03:44 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:05:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:05:01 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:05:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:05:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:05:02 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:05:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12cf274f439340c0b7e4ed2392b23a0e9be5d51dd13500ab94f8f4995f603b74`  
		Last Modified: Thu, 29 Oct 2026 20:05:23 GMT  
		Size: 158.4 MB (158409434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a5ec455277717dfa091489b5daaa525757eb1b89d303b1c5a2ce51ba24a446`  
		Last Modified: Thu, 29 Oct 2026 20:05:20 GMT  
		Size: 18.9 MB (18884847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f85c2825e7af61506e324c02f2b19644ee226fdf9fa0dd9586c0faf731cd4c8`  
		Last Modified: Thu, 29 Oct 2026 20:05:20 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031892e19a5bdeeb308d5a81124645dc6acdfbdb566db25b9fca5f0c6c6653c4`  
		Last Modified: Thu, 29 Oct 2026 20:05:19 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6e28d0252c4a1f4945a62cfc0b14d424095c940f7f7bb8e681d8eb077c517f8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98399d17aa4c6a1ef98924be7cefebaeb018fb891e41b36c91c4c60c1ddf651f`

```dockerfile
```

-	Layers:
	-	`sha256:8ad595882222a084218299478675d3b34eae1377dd92a8221c0740f1e87778bb`  
		Last Modified: Thu, 29 Oct 2026 20:05:19 GMT  
		Size: 3.8 MB (3828314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c68ade45f24cefa4480df066f3102345a82f24520fccd0fd1fcbe2a89b9df7e6`  
		Last Modified: Thu, 29 Oct 2026 20:05:19 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:75c9456457f5307d29449e8526af8502badac23afe74054e630bcaa97588205f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.8 MB (229838339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17b34875f69a378387709fcc34172fffc19be1f34677f61fe1ad678569eeac52`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 20:04:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:04:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:04:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:04:29 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:04:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:04:29 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:05:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:05:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:05:52 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:05:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:05:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:05:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:05:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73142697173105aeb504509d7e6b1407d7e3edc787c635ad91e96ea1994b5fbb`  
		Last Modified: Thu, 29 Oct 2026 20:06:15 GMT  
		Size: 156.7 MB (156691644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0078e1718e086d87f15f7c015818c6d2fe7938941acbbf12832f8a8ce1d517c`  
		Last Modified: Thu, 29 Oct 2026 20:06:13 GMT  
		Size: 18.9 MB (18854874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b54eec465773282a3caafd8cbfafaeefc2ca1751cd6fad0d01a75de3d89ffe9`  
		Last Modified: Thu, 29 Oct 2026 20:06:12 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859fc2d21a85ec23e3bfe5d8e56e8492f6b27fae2e305eff0fee7451b6593086`  
		Last Modified: Thu, 29 Oct 2026 20:06:12 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a2978302d9f82c33743542ef9fe3bed3c3a25558524321c7b6933e0f0cdb4d6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3846392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639374eb58faa4a9a5d2159bac7f32398d4a93360d71660cd03f0c0b98a4115e`

```dockerfile
```

-	Layers:
	-	`sha256:d4147be68381eecc9cbaea1e831ef82254773d438762a5a28f9d2aa31b741f5a`  
		Last Modified: Thu, 29 Oct 2026 20:06:12 GMT  
		Size: 3.8 MB (3828554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86a8c59bfee1466bfa88c6333c786e9f753f46cf81ffffbd72333f1f674342a9`  
		Last Modified: Thu, 29 Oct 2026 20:06:12 GMT  
		Size: 17.8 KB (17838 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:1225c10e67285aa1ecd4903c3432ec3ae35d8647f85071e8d34c6c31cb1aeaac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.3 MB (234250562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52325724147ddb0048f671ce0a7ced99ed4b3d9e9cb83c46c3a912f080a4d476`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Thu, 29 Oct 2026 19:37:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:37:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 19:37:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:37:55 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 19:37:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 19:37:55 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 19:41:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 19:41:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 19:41:13 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 19:41:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 19:41:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 19:41:17 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 19:41:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:311fb72f126c25254fc06b361c0ee7992e00f2ec852a95f0b55faf65bec2177c`  
		Last Modified: Thu, 29 Oct 2026 19:42:07 GMT  
		Size: 157.6 MB (157573262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65609ded1bca9793c25bae9a3d540f1f6aa4ef89d08ed00d8f7f350b84d0e4a3`  
		Last Modified: Thu, 29 Oct 2026 19:42:04 GMT  
		Size: 18.9 MB (18939418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42c7947b92e04139bcf124aca11f1feb66a97e80e689a7de68b77b7d424fb62`  
		Last Modified: Thu, 29 Oct 2026 19:42:04 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24a8b4988008bbf013f37df4563115ef05f5a851f550dfc2b19068560316ce95`  
		Last Modified: Thu, 29 Oct 2026 19:42:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:75b5d201c8b385225150d1e8b77fea48d9f3898e6f7ca39cf776ace4e953d44a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e81f6953ea8f6e4d9b7e5e7f6b9718bcc1d1e7ea1650f4b3cf2699304361d0`

```dockerfile
```

-	Layers:
	-	`sha256:95f9fa8b276ba78f98f936caab0feb5725c91c1adef4e8f1b7b8c2ab0bae8d1c`  
		Last Modified: Thu, 29 Oct 2026 19:42:04 GMT  
		Size: 3.8 MB (3828066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aebec1c52b039702cfb972c6318d87e4eb23e211758313bc13abd09efb4980a2`  
		Last Modified: Thu, 29 Oct 2026 19:42:03 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
