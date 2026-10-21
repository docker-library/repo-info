## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:22f7194b31e16dcf178e31386d5b57754703441f16b86c4c45f55d791d6e6b70
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; amd64

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

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

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

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

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

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:55a58b8c62d240cef18c5e8315ab0a08f29e2aa4a3019683b36051150ef77771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200618306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:452a339ddb532d6264c84d9ab7e4c0d0ba195d45bd231a61275865268d143b0d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:22:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:22:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:22:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:22:54 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:22:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:22:55 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:27:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:27:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:27:16 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:27:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:27:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:27:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:27:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14205fbba26894adf902cfcd4da08f03dbf8cc5016c01e991ea6e329381c7af`  
		Last Modified: Wed, 21 Oct 2026 10:28:12 GMT  
		Size: 145.7 MB (145671534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92211fd462ce15ba3088453f1811460f451ce282cd2cb480d2f4387b6c0265c6`  
		Last Modified: Wed, 21 Oct 2026 10:28:08 GMT  
		Size: 16.8 MB (16779183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:803b9a3b252a137c796fb7818aed54f2f0985b3d0bbf475a74eb3894d6482f67`  
		Last Modified: Wed, 21 Oct 2026 10:28:08 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a680ef88cbd70e5618b8b51ec3bbe9d63da006fb3f67e765ef745530876257ee`  
		Last Modified: Wed, 21 Oct 2026 10:28:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:de1391db57e5f658ccc682d469fc10018e6c7dd78920344adf789a739b312460
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7641392b9304dc1165f177f64b5429acff2c46f8e145e8e039273ccfd6a2f942`

```dockerfile
```

-	Layers:
	-	`sha256:f7e5c1c6b78629156a63fdb2cbe519dee8c201b5c2b8d3f3d339e11957721e99`  
		Last Modified: Wed, 21 Oct 2026 10:28:08 GMT  
		Size: 2.4 MB (2372734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4798ee171556953ec1bd966040c0371d8121822b9b8919611fdfcce2fedf490e`  
		Last Modified: Wed, 21 Oct 2026 10:28:07 GMT  
		Size: 17.8 KB (17796 bytes)  
		MIME: application/vnd.in-toto+json
