## `clojure:temurin-26-lein-trixie`

```console
$ docker pull clojure@sha256:b7038f8b1d87aca8a7cbea21c048d66c822e32cd66081120a1b3748b1d224cd9
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
$ docker pull clojure@sha256:0398bb0f8136cdfb4ac07a46d6590435d519d9e58bbf57b237b93be19a42a839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167359472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e33553d82d678238186004325150bfe88258ed12c276ac46b325a69423eaaefd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:53:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:53:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:53:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:53:42 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:53:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:53:42 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:55:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:55:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:55:05 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:55:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:55:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:55:07 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:55:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a198e9a06387ca590faf706373b441a76ac3b90b68b93862c6c4dfb1ca4af719`  
		Last Modified: Sat, 17 Oct 2026 01:55:28 GMT  
		Size: 94.6 MB (94563512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fefa836777e081691519b5e7eccf7b28109c20a82deef076a10d50b601f85bb5`  
		Last Modified: Sat, 17 Oct 2026 01:55:26 GMT  
		Size: 18.9 MB (18887147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c4bedf9da6e9e49914eb31b43d16743e52db360aaf223e2cf0c0c430364e47`  
		Last Modified: Sat, 17 Oct 2026 01:55:25 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05f5681dcef5b3af5305aa4385a0bc42834750d37d37a9579bd57c1c03723ad`  
		Last Modified: Sat, 17 Oct 2026 01:55:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b662dd45a06965c8a30b9fb0772af5ab2483990af098f5807a68dc9120f61c2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3810349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fded31c3eb5a8277067f348d243d6ef4f7efe0c7d37df7a356078382d707b80`

```dockerfile
```

-	Layers:
	-	`sha256:8ff55fd5124a8e8d208754432eddd94c965c8150c514ae9a17ad5a985e9f1adf`  
		Last Modified: Sat, 17 Oct 2026 01:55:25 GMT  
		Size: 3.8 MB (3792640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0c2916cd83d739288217693ea308bd17051a85cba90e6c54a6da0c7063d0be5`  
		Last Modified: Sat, 17 Oct 2026 01:55:25 GMT  
		Size: 17.7 KB (17709 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5e58a71220769e7a9d5f403938fb8c85d4f4a613d452e08ee7c0a58084ba5f5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166665592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56dfb00efcfeb94a87b6aa1e531c8673406e186b4f112420ba88aad3ab111a8c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:53:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:53:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:53:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:53:37 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:53:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:53:37 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:55:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:55:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:55:05 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:55:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:55:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:55:06 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:55:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5542b3ec7cbb8bcc2ad9ae4b6c7c3cd0a9e5075c275d7ffb9a29f03d69305f`  
		Last Modified: Sat, 17 Oct 2026 01:55:27 GMT  
		Size: 93.5 MB (93543583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5acca510f9e9d6776c6c6b24dd06ef6f79d01a7ec4fc7536d0b4c1a63d4d250a`  
		Last Modified: Sat, 17 Oct 2026 01:55:25 GMT  
		Size: 18.8 MB (18845291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c4bedf9da6e9e49914eb31b43d16743e52db360aaf223e2cf0c0c430364e47`  
		Last Modified: Sat, 17 Oct 2026 01:55:25 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fcaf5d4a0e1900f8e743195c3a8479146107213e9caa3b987b9ac690d37e7b6`  
		Last Modified: Sat, 17 Oct 2026 01:55:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:45f9106cf94734e2c5947f4c99f980bbed1267e3268cfef2fa8c004d4db40f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3810708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7aca65ca02dcb14277804d9ee73b1c17254b5eca6a5a55529507b734c38e218f`

```dockerfile
```

-	Layers:
	-	`sha256:c1fb6a5e839a1d4b27fcfe991f2991b9609fa062610a8d220c1a3b65dbfa8cc3`  
		Last Modified: Sat, 17 Oct 2026 01:55:24 GMT  
		Size: 3.8 MB (3792877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c163f036b931260608c411c20eaef373ed2cc1fce75ae7e946f558c58d43c43`  
		Last Modified: Sat, 17 Oct 2026 01:55:24 GMT  
		Size: 17.8 KB (17831 bytes)  
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
