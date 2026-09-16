## `clojure:temurin-11-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:957f6d232707be62c693b1f9de9baf319a1e62cbbd741f9d4f7e96b86b8e30bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9497277ff5c826ef14b79d7bb85f08698510b363a1ec902c9946862432aa1b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.3 MB (202272993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a278540d37e2df4f0864e5dd8429837cb7449214861a86f55bfc9541a2e97576`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:32:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:38 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:32:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:32:38 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:34:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:34:01 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:34:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:34:03 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9ce32f269c191feceec05a6662a50817fcd77132d537b70a40428037d21550`  
		Last Modified: Wed, 16 Sep 2026 04:33:12 GMT  
		Size: 145.9 MB (145861349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8eb8ed136f53767f9c3682c5d6364d50763d6af5093b3badadcabf85de3dc71`  
		Last Modified: Wed, 16 Sep 2026 04:34:24 GMT  
		Size: 22.1 MB (22103751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89651e2f75e33e9dcc70697757d329b1ef3e48de076a2c912a2bc411106dac1e`  
		Last Modified: Wed, 16 Sep 2026 04:34:23 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:683d64c0c35afc7546f11d12eafc66ff0509c4549f6f5592dc7ae90c5f647249
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f28ac45de9665e23639a3a78a452c7e8652fa8b7f8f8363c4cdaa6ca4e43f22b`

```dockerfile
```

-	Layers:
	-	`sha256:a8571b3087735386fd9789c7b9c9091ab3243e6c70bb768ff949dd9e4b123472`  
		Last Modified: Wed, 16 Sep 2026 04:34:23 GMT  
		Size: 2.4 MB (2386865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20d5fce0e07e79d6736699673fa81728f6bbfe719d2167882d136873ac9b0307`  
		Last Modified: Wed, 16 Sep 2026 04:34:23 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fad357d5c735e514883992c113822b5fe03ca9cf78b350a342da31328264c6dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199619354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36149b35e2596f06cc3b418751e177cbf72c3cf61984554e53da9de7a6bf8e12`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:33:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:33:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:33:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:33:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:33:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:33:00 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:34:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:34:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:34:20 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:34:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:34:22 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4ad8c6cc5723a309cc76e3023dbb6af372418d5b98a0ed9f776c16e3bba3cc`  
		Last Modified: Wed, 16 Sep 2026 04:34:43 GMT  
		Size: 142.6 MB (142566238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c60fb6b426c2ad763ea9141049ecb651f9a627ca32a127342b28090169a6f38`  
		Last Modified: Wed, 16 Sep 2026 04:34:40 GMT  
		Size: 22.4 MB (22378286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc3729c0f4fa270494bdd6dece2d2c540b3edcdbefcf7cbd0aaf52f3e3c45c9`  
		Last Modified: Wed, 16 Sep 2026 04:34:39 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e345fbcbde06472e5ebe1fc0f7d69c54405ec42d8481f9707426447adc319e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b7041ee4f28d4dbc699a4a4c387a6742140a9e10c71f63b02b1d837d1062daf`

```dockerfile
```

-	Layers:
	-	`sha256:1a6fef9418fdf4ad860fa7c51edeb9fedbc77226296ef9e3f363f312fa43ed58`  
		Last Modified: Wed, 16 Sep 2026 04:34:39 GMT  
		Size: 2.4 MB (2387093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:415a7895c510f621dab9d62d61136396e25eec5d5a3292f7b423501fec948ea4`  
		Last Modified: Wed, 16 Sep 2026 04:34:39 GMT  
		Size: 15.9 KB (15884 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a4946b6d8184fe3642c0e18ea5a6847bffbcce2c7f593d5be5f621c49b4b0a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.2 MB (191210515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c75f94c75147dc49f7d43a4e53c28ac6d45bffdf7e1bb38c3ea60f3a70af3cf`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 10:39:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 10:39:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 10:39:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 10:39:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 10:39:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 10:39:08 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 10:42:26 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 10:42:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 10:42:26 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 10:42:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 10:42:29 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:748acee124d17029ddea4ad8592dca64d1e0976c49b98dc9c4bfe44b670d57bb`  
		Last Modified: Wed, 09 Sep 2026 10:43:06 GMT  
		Size: 133.1 MB (133089500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39b011a8eeec07a4eb54eaa146053ce84bebf00689823850bfd0d94b661e30f`  
		Last Modified: Wed, 09 Sep 2026 10:43:02 GMT  
		Size: 20.0 MB (19990325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6adcd8ef7bd5e31f9f8bd8f250572b73da1834b9e6f308a56f738cdefb24eb6f`  
		Last Modified: Wed, 09 Sep 2026 10:43:02 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1c36896724253a9d284aaf4c99d8f7d4f6f70992518fb0eb98068f2abd945b42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2403002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25201afb06e9110f530717134c736834d8b3666a7373156c23785435edbef7b8`

```dockerfile
```

-	Layers:
	-	`sha256:7bce35c6e0dc455a6f54773f329bf13685ca49b63b35b31887dfde2fbc5c42aa`  
		Last Modified: Wed, 09 Sep 2026 10:43:02 GMT  
		Size: 2.4 MB (2387194 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00601877768d32a5964334d282e82b889cc7583fff9e490301b2832f440c6403`  
		Last Modified: Wed, 09 Sep 2026 10:43:01 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json
