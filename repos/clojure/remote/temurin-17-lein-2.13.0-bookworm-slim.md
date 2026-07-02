## `clojure:temurin-17-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:97360cd55f7aa10a1fd33750cf38184c274c1219002836d96d2815512297dede
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

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:01d9556a3123bcbc51ddf0def46380b2e39d9ad1ca2c7b4f12f002d968da3252
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196731554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0036840397a829567d1242c91548fab2cfc0b3a2f8a169c3734d91f004f323d0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:50:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:07 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:50:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:50:07 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:14 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:51:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:51:14 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:51:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:51:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:16 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e4fc5a84dc2837510d2ddce2457c2c0c32940a81c5d4cd9d9fb7431c2194a0`  
		Last Modified: Thu, 02 Jul 2026 05:51:37 GMT  
		Size: 145.9 MB (145906292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2acccde57715d89e685894345cdc882e4ee499c8dffc3107c066a6235bee5a23`  
		Last Modified: Thu, 02 Jul 2026 05:51:34 GMT  
		Size: 18.1 MB (18071964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f027e05b2674650d9c3795fad551f049a8d582930ea70a75080ad68b9e7da9c`  
		Last Modified: Thu, 02 Jul 2026 05:51:34 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92ccd267a6ecd19c18e4deced903257c51fc9c4b20f0dc0f2d6ee9cdd5aafcdc`  
		Last Modified: Thu, 02 Jul 2026 05:51:33 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:17c6591b7d0a95262c60c911071bb008b56b912490f04cc70544de4176598b51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2750108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aca09da5187938812c44f80b1a1fe8512d3abab3bff7e5a4014ebbac724b232`

```dockerfile
```

-	Layers:
	-	`sha256:1927e9170943f1a860ed40533f4ef29847de35ead9003a200185e88f81b7ef63`  
		Last Modified: Thu, 02 Jul 2026 05:51:34 GMT  
		Size: 2.7 MB (2732337 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a44b911a832363b1254b7d59946822dc530dd3ac5789a0c09679091a281ce90`  
		Last Modified: Thu, 02 Jul 2026 05:51:33 GMT  
		Size: 17.8 KB (17771 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7e23b89a8f3e2e22c77eb0b63eec640e00ab65a693e3e7518e8e15445a52b7f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195256262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff8312eb18f2126a565c56e310eeaa00a6527a323ac51d3f07d91357d77a7c0e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:50:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:50:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:50:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:50:30 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:50:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:50:30 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:51:36 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:51:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:51:36 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:51:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:51:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:51:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:51:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb737a60abc812c17196bf5e3d4f2c65276f5d81e31ac6d194752f39d74a0169`  
		Last Modified: Thu, 02 Jul 2026 05:51:58 GMT  
		Size: 144.7 MB (144724344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46418f2a272e4f5e9a52988abe8e6169c3355b1420a1ed8c7ecdc70bcd0373d1`  
		Last Modified: Thu, 02 Jul 2026 05:51:55 GMT  
		Size: 17.9 MB (17893896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f52e683699f37d478d8d8f15f02b58b6d03855cb36b991f9779238d15821d5`  
		Last Modified: Thu, 02 Jul 2026 05:51:55 GMT  
		Size: 4.5 MB (4515173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99f6f736c02783bc2afe63c7a2881de180afe0e82d99c205821b5641cef86d4`  
		Last Modified: Thu, 02 Jul 2026 05:51:54 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b39e6a99828fe0f4edfa21f096f6b06f62f7fdf21fc9ce2225d599e6df55c590
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2749846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d183e7fb4c25b9172f924edb763400351c9bb9f14d9abe92d9dfa78eeb328cee`

```dockerfile
```

-	Layers:
	-	`sha256:7ee9a5af52e8b00929ed7c2e247d356663461289c60ed4d6edddcd5b5a752d3d`  
		Last Modified: Thu, 02 Jul 2026 05:51:54 GMT  
		Size: 2.7 MB (2731952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c37604d638d084175558d8ecf5a1555b35cb987d26ea777d29ce89c01931c53a`  
		Last Modified: Thu, 02 Jul 2026 05:51:54 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5a7dad7086e4391dfbb59a0996440207a05ca8e3d156094773f2a96384e8f5a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200627482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a2aa672f370d4aee14bfe72592a04f08bdefcb63fd789c6431c9390c1d0658`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:06:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:06:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:06:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:06:31 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:06:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:06:33 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:08:52 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:08:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:08:52 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:08:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:08:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:08:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:08:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7229c8e0b663baf447dddd27c15f1ceaae1559bc107cce4efdf074f13bf0e26d`  
		Last Modified: Thu, 02 Jul 2026 07:09:31 GMT  
		Size: 145.8 MB (145766183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5cbe5f446aaded9845fff681a9a232cccac12793619968c314fec25e707ce3`  
		Last Modified: Thu, 02 Jul 2026 07:09:27 GMT  
		Size: 18.3 MB (18263690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2090562cee0fe514b611957fd09758210b4d6d4fd782f9c38fac699d3f2c1d45`  
		Last Modified: Thu, 02 Jul 2026 07:09:27 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a12d2755cc53294025490bebca1f57edf638418056536bc9f37a293680fc140`  
		Last Modified: Thu, 02 Jul 2026 07:09:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fe6cb845b69cd44abd88cf807fe79c568364f2410e1b0dcce16bec3398a160ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2751986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5290453b46af18048baf041885e2a87d66e687b95953e9d06ea8c50e548cb17e`

```dockerfile
```

-	Layers:
	-	`sha256:bbb8382b8eb39a58c2f07a63f325f89dd7608997afcb835f2c66e223726596d0`  
		Last Modified: Thu, 02 Jul 2026 07:09:27 GMT  
		Size: 2.7 MB (2734170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09e45716d5531e0916417f7b54accc72d8642edde92548206370a2bbe83bfb7d`  
		Last Modified: Thu, 02 Jul 2026 07:09:26 GMT  
		Size: 17.8 KB (17816 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:4a9f12a6750686e0f5c3ec3a007fffd10ca63d65541c9e6dcdc72fd9b536fc83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (185044440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32a163362f3f9ade50d02a106e07eeed13024b9da147b522a0c5f62edfff2955`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:48:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:48:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:48:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:48:34 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:48:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:48:34 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:38 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:49:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:49:38 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:49:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:49:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:49:40 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:49:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c36d6cd847fcae8e735f6766ef856f258130017efd75d3a8cca62c057bb5939`  
		Last Modified: Thu, 02 Jul 2026 05:50:05 GMT  
		Size: 135.9 MB (135910439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1264e9661756dec129fcb265e67545907fcc134e67743b6b9e1e363412e941`  
		Last Modified: Thu, 02 Jul 2026 05:50:03 GMT  
		Size: 17.7 MB (17724782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0715b310c3de2ae4d1023c7b0c66a53a2f11cee7c54a4dda94612b98f0fd2d9f`  
		Last Modified: Thu, 02 Jul 2026 05:50:02 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75e3f8c6c81c6272bcbfb774239eae0baaf8b9d0e252e93b57b1402c84d98e7`  
		Last Modified: Thu, 02 Jul 2026 05:50:02 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:048e2fbeb27378d13639abd6cfb17003196a6d19870ae462e6d6418445be2915
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2741924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab05000e632f48e6a49d64c5da6658b650a83bca527ae8ee77a448f1c45f988c`

```dockerfile
```

-	Layers:
	-	`sha256:f3d5e433f5568df654553617a2909dc2e3b471680fa5f8abef93d51270e503d4`  
		Last Modified: Thu, 02 Jul 2026 05:50:02 GMT  
		Size: 2.7 MB (2724151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4752891825b7ffaa4c7b42c35186790e01fee0d676b0c7633fdd79a04ff7dbb5`  
		Last Modified: Thu, 02 Jul 2026 05:50:02 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json
