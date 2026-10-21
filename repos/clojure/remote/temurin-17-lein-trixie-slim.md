## `clojure:temurin-17-lein-trixie-slim`

```console
$ docker pull clojure@sha256:748ba05d8e529d2e6999817b34f395372721d7f896f05af3c0bcf55ac27b21ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b504bad5b2815ede4e1707ead5fb67d1a78a66f07d7d7f12a6c4f12fdf7b4b40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196925894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5868fc2bf702251e2b1bc795af26753780bfddd542438f354a8fee27ddc30958`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:17:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:17:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:17:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:17:44 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:17:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:17:44 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:18:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:18:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:18:56 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:18:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:18:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:18:57 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:18:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05020d4ea0dac839468193dac3902ec542c9e2f3131a6e94868eb87c6a0522b2`  
		Last Modified: Wed, 21 Oct 2026 01:19:16 GMT  
		Size: 145.8 MB (145825510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c1ea5def88d40a430f004f0b578392c8ab2baaee8d0b4d30e4472e11bf30424`  
		Last Modified: Wed, 21 Oct 2026 01:19:13 GMT  
		Size: 16.7 MB (16741173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719d771e9ab9f5b68f77a8861a6f38750a656ed4e85cd2d68fc3b7d178664045`  
		Last Modified: Wed, 21 Oct 2026 01:19:13 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98f658e3a845727f18553b02ae8107e196dd8bb4fdcf854696c576ae37ad8f9`  
		Last Modified: Wed, 21 Oct 2026 01:19:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:69ed41e038894ed97ab5900497870ff47cfee8eb0bb5c158511a3084111885e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14a5ff79b24c139002657530d0e0724b942d932685140c0b32da2e39b1b012ca`

```dockerfile
```

-	Layers:
	-	`sha256:366b51b361ddd639f490cafdf51bde455161ac92618ffba333a0dfd85f5094b4`  
		Last Modified: Wed, 21 Oct 2026 01:19:13 GMT  
		Size: 2.4 MB (2371754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdfdc5581f8a6335b1d8afa48b32e51000182a7bf5bde6ed64204f97e9e1b7a7`  
		Last Modified: Wed, 21 Oct 2026 01:19:12 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:771cae410520034a60fb62751c78781bc19f75b3ac6e818cab9ef06325a1dcb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196072913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b921f8d0aaf21d9804cd2e0d202f6369d13637c388916e776ffe48c937ab1fd8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:24:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:24:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:24:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:24:08 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:24:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:24:08 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:25:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:25:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:25:25 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:25:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:25:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:25:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:25:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a9fd281b8e5b13a3c6a7c7b23ee8a75e4e65ae0c07624ab3efeaf4757734d9`  
		Last Modified: Wed, 21 Oct 2026 01:25:48 GMT  
		Size: 144.6 MB (144648236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021eb1892d002cf05ff60a8fd22a7e3089f2918e8e3672af9e5d00d0043ac303`  
		Last Modified: Wed, 21 Oct 2026 01:25:46 GMT  
		Size: 16.7 MB (16708584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b282ce3ad75f88af2576d0da8dc7e0472d7406ae18323fe851e20372f32bcdc`  
		Last Modified: Wed, 21 Oct 2026 01:25:45 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e1c6c26dc8076b1f7337b40f341a156a7fec3466560936659f025f6bd16f0d`  
		Last Modified: Wed, 21 Oct 2026 01:25:45 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:809e8e1ede03f95527dea36137a21d2560a075e84a2e27384413dcb40142e365
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b606d5c2b5f42b2724806572ba7849a6936bcc8cb7c6050e62b6c9ef2603f7`

```dockerfile
```

-	Layers:
	-	`sha256:a3277721a61294ef9cb42d3ca01217034ccd80ab8de7540086c2ea64d7c19cd8`  
		Last Modified: Wed, 21 Oct 2026 01:25:45 GMT  
		Size: 2.4 MB (2371364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66d64a8528fe81aac107100480b7ed7a4a1c803a0ae75d8f550bf25dd2b938f7`  
		Last Modified: Wed, 21 Oct 2026 01:25:44 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8d53eb752eb5de6e4eecf05213939873fad46accd67fcdcf9dbd6628483214f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200621273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f4bcee08ad762feaf5f2b98973002b25358cdb42bd6b0b4ddf05159f7f7be89`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 05:43:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:43:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:43:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:43:08 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 05:43:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 05:43:10 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:46:29 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 05:46:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 05:46:29 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 05:46:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 05:46:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 05:46:36 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 05:46:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5b0d186657e5e293ef4d6a17bafaefc54965716a9183d1c5c66909d4b4cc8e`  
		Last Modified: Sat, 17 Oct 2026 05:47:35 GMT  
		Size: 145.7 MB (145671534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b15e4aa59dd156617117b3235473c6a6e05400b0d5a0d2454c32d46070cb140`  
		Last Modified: Sat, 17 Oct 2026 05:47:32 GMT  
		Size: 16.8 MB (16782498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e17b43b6e8b347afd9b98433cdc9ccff4a1d53010e450560872e3cd2b72ed9`  
		Last Modified: Sat, 17 Oct 2026 05:47:31 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb123666ff7b4cfdad3b26f7851d7d46fa947b1bbcafe5cba7f5ffda7959edd`  
		Last Modified: Sat, 17 Oct 2026 05:47:31 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a4cd4dee5d7c1fe10622905d55c89b6771e55677eedcf402b7cbfa726ee6b491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:098d32793ae0624815fa9ed8c40ef61dbc2665c023f062bc36ba111b48158f24`

```dockerfile
```

-	Layers:
	-	`sha256:cac5ad674f80a8d077bada82badf5ae174fd1ec41d373ed8d6603b67ef1a7dc2`  
		Last Modified: Sat, 17 Oct 2026 05:47:31 GMT  
		Size: 2.4 MB (2374011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d9bf1ad51a83d80fe281b9b6d437740206ed1b08d4239d2aa4f72983ad8f744`  
		Last Modified: Sat, 17 Oct 2026 05:47:31 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json
