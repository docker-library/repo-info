## `clojure:temurin-26-lein-trixie`

```console
$ docker pull clojure@sha256:f1bbc539194050d37549876954acfb9a57f4018793eb05d5f6103e50c2dd1bfa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:4638f2285270039c60315fb87ec84444b71b7de325f00c72fba7bfc9d33d09c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167359796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f5b18eb8456add07580a9c9183acf37e793670db2d17a07baed6dd6ec7c12b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sun, 11 Oct 2026 13:11:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:11:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:11:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:11:51 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:11:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:11:51 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:13:06 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:13:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:13:06 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:13:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:13:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:13:08 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:13:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d8b930253cc336452574f1c60965b3f61012be2d92df2bc2e274a7c573d48f`  
		Last Modified: Sun, 11 Oct 2026 13:13:27 GMT  
		Size: 94.6 MB (94563498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72c4178a18be793acb417db04922fd4401fff19d1fb785355afdc32cacd54da3`  
		Last Modified: Sun, 11 Oct 2026 13:13:25 GMT  
		Size: 18.9 MB (18887497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7677ca13b299662fbdaef40e9d2ebc512f69391f8f57db749605a818a3f0e3d1`  
		Last Modified: Sun, 11 Oct 2026 13:13:24 GMT  
		Size: 4.5 MB (4515171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63722e1d2c4783905d03a1a070a5a2f5444783d8d5307467014642c24a63a3f6`  
		Last Modified: Sun, 11 Oct 2026 13:13:24 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:cdce008d2c0219da17f3124319ce1b80afef90cbebb59092563849e267f5939a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3810351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b51cf25af1be33189e5bf6682faee69153511c134e4f450037b4aa7963c1bdf`

```dockerfile
```

-	Layers:
	-	`sha256:eea5d1ffa0087742800db4e4b3ed3bda43885dea1944f3ec55fec0d72a4afa3b`  
		Last Modified: Sun, 11 Oct 2026 13:13:24 GMT  
		Size: 3.8 MB (3792640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffefc2289ec0176f6cf558e74b43853556dd3ba49cf64613d0cb81692edf48cc`  
		Last Modified: Sun, 11 Oct 2026 13:13:24 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ea0fb589f69cf7e606b7f91ca09b4f32cf0a10cf95d15013d367b3348bbf14e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166665583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932c44e0bf71a38856c366267b50b881183adbe2e9b89e01b0d50ea82e761d64`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sun, 11 Oct 2026 13:12:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:12:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:12:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:12:21 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:12:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:12:21 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:13:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:13:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:13:37 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:13:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:13:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:13:39 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:13:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7ba2947d7e0b4341ffb7696a10b2a148d8f678b9bbf69c7ec3788495f02e28`  
		Last Modified: Sun, 11 Oct 2026 13:13:58 GMT  
		Size: 93.5 MB (93543627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc9cca70ba857380c5fc2459fd55cab4fbd815931e0f07fdf3d168aac8adae2`  
		Last Modified: Sun, 11 Oct 2026 13:13:57 GMT  
		Size: 18.8 MB (18845249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d891a438118e2defa584cc8fe66c63e8d0d1928b6c60391c9405491ef5319c7d`  
		Last Modified: Sun, 11 Oct 2026 13:13:56 GMT  
		Size: 4.5 MB (4515173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adb7ca0bc13d8201cd444e621d5563b33cd1e401d87b8cbbc9f6fc34c69f0946`  
		Last Modified: Sun, 11 Oct 2026 13:13:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7ccb9c9eb4abe91e6ebae753fc4ad302fae5ac6237839bd15572413dbfe8c760
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3810709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3bb9bf2ee4804bf0ec4969cc4d52dad26eb3776c8bc571d0c95e9f7b7293851`

```dockerfile
```

-	Layers:
	-	`sha256:a820919e161e3e4346bcb1be7ebb8c70ce2c6801d4b0e305245db5e4924c567d`  
		Last Modified: Sun, 11 Oct 2026 13:13:56 GMT  
		Size: 3.8 MB (3792877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d526097e1d55e0fa04056b535fa862ed28ffc4e9e270b705d70ef74dbb135617`  
		Last Modified: Sun, 11 Oct 2026 13:13:56 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:2e585f7937ea5f4a5d9ca7415d810aabe7d2dd7c58425d538df711ab2dde13d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170016433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d53733bd5ae8bb66b1fd767ca626d9395dbc43bce61742d596d4876e4b0d444`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:45:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:45:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:45:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:45:45 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:45:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:45:47 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:49:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:49:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:49:26 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:49:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:49:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:49:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:49:38 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88cdcd646a285810a3b5f823b032cf404fabed96d1486d706047a978af6d8ff`  
		Last Modified: Tue, 06 Oct 2026 10:50:28 GMT  
		Size: 93.4 MB (93350853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b267ba6aa0c5d8b995a3fe8de5f22b2daca93523b36c0f6029a6250adf3a1c6`  
		Last Modified: Tue, 06 Oct 2026 10:50:27 GMT  
		Size: 18.9 MB (18942823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d86cd1b24addec791e88d3941c8b4580b3f94b9b031b7098b1f2cbc54a75a50`  
		Last Modified: Tue, 06 Oct 2026 10:50:26 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbf324012fd71e3ae0ca4fc36d4b7b3026fb53ca7ed8167b947343c68f95f5bd`  
		Last Modified: Tue, 06 Oct 2026 10:50:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2240708bf6ad28df74363bbba2267c747e15cc35842d91ffe33ee41449d328c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3795329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8666ba435e2bd54138b39836576723862501fbdb67802c742ddd8ba2a35572ce`

```dockerfile
```

-	Layers:
	-	`sha256:c5af59a8f3f054e46f98df52947b44a9e2600ba24da255b12af7c3fa7f96e886`  
		Last Modified: Tue, 06 Oct 2026 10:50:26 GMT  
		Size: 3.8 MB (3777574 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84fb1cf7b2e972a02ee8a3dd75deb8548bb43258c054084e5f26b2bbe303a6c2`  
		Last Modified: Tue, 06 Oct 2026 10:50:26 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json
