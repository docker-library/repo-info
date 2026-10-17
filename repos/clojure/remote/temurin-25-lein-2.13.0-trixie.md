## `clojure:temurin-25-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:ac57af2a4476321976ca51c589c76cfea8e1155111312117ca4fb1a253082f97
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:7f364eaf828b63d649e862e59d017382c96846944f27c969b95cfb18aabc979d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165413969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab8f11ae0a8865da627a4cd644802d93b117bc975d2dd25735d2ec1c1f43b08`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:51:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:51:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:51:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:51:59 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:51:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:51:59 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:53:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:53:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:53:25 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:53:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:53:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:53:26 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:53:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8697d505287d2fe01d407a55242d5ce949faa5408108e7a10ff7020a812ae9`  
		Last Modified: Sat, 17 Oct 2026 01:53:46 GMT  
		Size: 92.6 MB (92618013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6290094be0e1aecf45e63c67148838536203de86743acf077ed0a9028ac38eb4`  
		Last Modified: Sat, 17 Oct 2026 01:53:44 GMT  
		Size: 18.9 MB (18887147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c421fc05364d8714f9b73725ff8fe954b4909611ace93965387bc2af734a1d6`  
		Last Modified: Sat, 17 Oct 2026 01:53:43 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3c211f59980853388b5c7eae5da33a90c0fff7f16aaf4a6725aca5011e030b`  
		Last Modified: Sat, 17 Oct 2026 01:53:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:695864e829fc53845071a6fa23000e5a0a75ceb421a1ebf356eef4dfe6a54d7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3814122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ed4a3b11abc738c840a4d5078a95524eb3df3c287708871de99fd41fc64bc4`

```dockerfile
```

-	Layers:
	-	`sha256:78e1ec5cec6930ae73ec3e77645212d13939841a93c1e442c6fa14524bf392f1`  
		Last Modified: Sat, 17 Oct 2026 01:53:43 GMT  
		Size: 3.8 MB (3795777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1678d9b2a440a9f2a98ac7d34e8726bdcfd58f59aa70899836d203fd1df04fa`  
		Last Modified: Sat, 17 Oct 2026 01:53:43 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7bc59f3655e0cb04f2b5c82b98d8c62ce03e79f9bca6f4ca6775c64e9accb94a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164651593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8ecced9cc57abff581d429d8426915c9f82a66e877fc4d7dd7bfb268a07f38`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:52:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:52:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:52:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:52:01 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:52:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:52:01 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:53:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:53:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:53:26 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:53:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:53:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:53:28 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:53:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef1018ed89b41007fa00f1a450e512f04402fca54c7cdd53d8de9008bed9561`  
		Last Modified: Sat, 17 Oct 2026 01:53:48 GMT  
		Size: 91.5 MB (91528863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b0e53fefd39f09ea4856844f8f04e9fbc6055b514774987f671ce801fc0aa7d`  
		Last Modified: Sat, 17 Oct 2026 01:53:47 GMT  
		Size: 18.8 MB (18845983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:595307d375f909386cb497b3516a0afc2410f8cf04c432336d21f256c1b47ea6`  
		Last Modified: Sat, 17 Oct 2026 01:53:46 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49f0ba561dda6f3d1e5fb1776a59a5a7abcf07eac1bf22fde39a7a74cf6bfd5`  
		Last Modified: Sat, 17 Oct 2026 01:53:46 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9d087530bc88539a77ae9ae158c54aa7e1186ca9b3adc9465fa7aaea9f2dad7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3814528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8787fd4b312759acb34336d0481114990fc101b8f83df5247e7a10e954949b9c`

```dockerfile
```

-	Layers:
	-	`sha256:bd33c298d8c7b9b4d6a874467058047a897eea496d9e0a6a73374cdc7c513730`  
		Last Modified: Sat, 17 Oct 2026 01:53:46 GMT  
		Size: 3.8 MB (3796038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce73af48fa726490e40d2aefdbd272eba2b7aeae5e8eb1ef2cca65c2f941994e`  
		Last Modified: Sat, 17 Oct 2026 01:53:46 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:15444b5030c523b56821a6df1d04e830db43bab9eb155626ef51993f0cc4d981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167921963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f5182c03f701b2a7b50fb475e663b1c65aabf0a88a300eb79965e47388aee13`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:22:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:22:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:22:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:22:34 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 06:22:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 06:22:37 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:27:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 06:27:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 06:27:10 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 06:27:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 06:27:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:27:14 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:27:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a7876182a56aa1df7a942e2cec45f4fefad3d7b4736ec0750c8390de086b8e`  
		Last Modified: Sat, 17 Oct 2026 06:28:01 GMT  
		Size: 91.3 MB (91256231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57182394afe97fcd5070f1fb74f832ca520c99de552b085e08c26ea48a5aa600`  
		Last Modified: Sat, 17 Oct 2026 06:28:00 GMT  
		Size: 18.9 MB (18943001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0991928e4aeff8ca8bab8576442cc6805d02a4f2d6b7c2db846f35b0e199d321`  
		Last Modified: Sat, 17 Oct 2026 06:27:59 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9379d0c68f527082587924f9ddc66047d7c46f6cd5fca343a25433e703ac0984`  
		Last Modified: Sat, 17 Oct 2026 06:27:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f3b82282af555c55f84223c4e059ce8879ecd8966b9767be2a97ac4936983294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3798496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a903d85c24cc2ed858dff7e50c78e58eaedf1ac80b007954a60e5ca565357f45`

```dockerfile
```

-	Layers:
	-	`sha256:8e0b542d6776153dab0fc69c067b1e4cf589a1119157a0db7103d59bcf006031`  
		Last Modified: Sat, 17 Oct 2026 06:27:59 GMT  
		Size: 3.8 MB (3780099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b7089d4a4cacb8d38829a9cca5786fc4cc2e7f037a18f02be6d63815680564d`  
		Last Modified: Sat, 17 Oct 2026 06:27:58 GMT  
		Size: 18.4 KB (18397 bytes)  
		MIME: application/vnd.in-toto+json
