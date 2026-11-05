## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:62e13a47c217ca119269801a902b191e009b2f400310520eb68b3218ef2dbaf5
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
$ docker pull clojure@sha256:49317da55a763d3009efb08c62bbc645f43a94831a2aca9e36d5772c088dae21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 MB (197198686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1823490b28de259b3f169fa21d66b281b3a4087d23ddddb05918d98592cbae2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:08:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:08:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:08:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:08:20 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:08:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:08:20 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:09:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:09:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:09:28 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:09:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:09:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:09:29 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:09:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bcce7d59042fb4cbeb8d35b5048a89bb6141a5808cd63f83f824a30baf9ed0`  
		Last Modified: Thu, 05 Nov 2026 08:09:48 GMT  
		Size: 146.1 MB (146086207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5c6282aee6f7d78d80baac784fd6b634d282d137f9f42a0c207d8009c3b2ff`  
		Last Modified: Thu, 05 Nov 2026 08:09:46 GMT  
		Size: 16.7 MB (16740744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52984571e1cdc5c7fbd36b63d316612d20bd265f7506fabd8a6b874c61cc6a93`  
		Last Modified: Thu, 05 Nov 2026 08:09:45 GMT  
		Size: 4.5 MB (4515173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a49af5bc28b01075c3ab9a268e1dc19ee8d18a249a2f9528d220396df5df30`  
		Last Modified: Thu, 05 Nov 2026 08:09:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:73330fb731ebf0b04d1ecc38cb90e72f449a5752c0fa2b12d041460c590fbc30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:691fd804c7cc6937618e14e90ca2fd5064b232d016fe7511f143a1e2ccc8a523`

```dockerfile
```

-	Layers:
	-	`sha256:73c7e9fee3bf376eca757743d814e925f3bb15aa0d8665271fe4784f85757f4f`  
		Last Modified: Thu, 05 Nov 2026 08:09:45 GMT  
		Size: 2.4 MB (2371746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac97edc95af588d144564fb98d89a2fdae3fad6f979eb9076cad7c8f40cd382e`  
		Last Modified: Thu, 05 Nov 2026 08:09:45 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8d55eb460572e1a222c174c1abb37b08e766c4ecb74e898aabb54da546218b41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196394288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:759fb9e3dd1fdcf84f1021adc2e1a782e011ef1364c61e0ca518922d688b00e2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:17:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:17:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:17:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:17:33 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:17:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:17:33 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:18:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:18:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:18:49 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:18:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:18:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:18:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:18:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad040b93ccf21db8607e17d90ce24d8e17a7e10f28b60b84d244ea99a3628d9`  
		Last Modified: Thu, 05 Nov 2026 08:19:11 GMT  
		Size: 145.0 MB (144957202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b309a3ba144dbbca167114fc80dd3fb991f433b3c1f0d0ebb52b422f7f0e84`  
		Last Modified: Thu, 05 Nov 2026 08:19:08 GMT  
		Size: 16.7 MB (16707427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa199e8ef50353a739df10cc9a01e1413c0143468184cf3b3e542d15c7d38a7a`  
		Last Modified: Thu, 05 Nov 2026 08:19:07 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297e51a8c04ca64af867b724e61df9f852229340d4d6d53d2494565a28342b87`  
		Last Modified: Thu, 05 Nov 2026 08:19:07 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3b3d33a0af431ee5fcd1590498a8325c262a6741e30ebd8ab1d050ec33401f73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7269e003eeee88185bc347917258bf46b6a89ce02363082b913745418a8f98bb`

```dockerfile
```

-	Layers:
	-	`sha256:565c83efdb0f91ae76ab1b28141ec7b04650efcc7885b5bb21f3858b9dde2a8a`  
		Last Modified: Thu, 05 Nov 2026 08:19:07 GMT  
		Size: 2.4 MB (2371356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f5f88859563e6ef28d931b4f09cafbb11ec020a1cbcda66d58b1f5cd87c07f8`  
		Last Modified: Thu, 05 Nov 2026 08:19:07 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1702c919abc1088ae1c8e6342c25dbe458469fe4dd16cd7bc42c5128efb83fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199821137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa9382d30aad9b158733b6740176aa8e3027ca69d4eea369dab604dc289478ac`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Tue, 03 Nov 2026 22:42:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 03 Nov 2026 22:42:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 03 Nov 2026 22:42:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:42:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 03 Nov 2026 22:42:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 03 Nov 2026 22:42:29 GMT
WORKDIR /tmp
# Tue, 03 Nov 2026 22:46:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 03 Nov 2026 22:46:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 03 Nov 2026 22:46:08 GMT
ENV LEIN_ROOT=1
# Tue, 03 Nov 2026 22:46:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 03 Nov 2026 22:46:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 03 Nov 2026 22:46:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 03 Nov 2026 22:46:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caa1439eedc0664cd6ab9b06966ee483aca719e4ede6de00d0dfdd8f2f09ce66`  
		Last Modified: Tue, 03 Nov 2026 22:46:53 GMT  
		Size: 144.9 MB (144860490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f0979ffae047461987d932a779710ceab4154603c10ecc7ff1cfcd0e7a9aa9`  
		Last Modified: Tue, 03 Nov 2026 22:46:50 GMT  
		Size: 16.8 MB (16778760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d95011f77b2cf42c666502f82b0bb1af5b6586cb200bc1c28a02249d7d7369`  
		Last Modified: Tue, 03 Nov 2026 22:46:50 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba6304fb30f8b1020ce3f0cec974e358362789a66fff90225e530bc8fd34b052`  
		Last Modified: Tue, 03 Nov 2026 22:46:49 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:73a6753b8be61d132c66b51fbacd8b1f4c887aaf72df5e9ccfaed826cf916993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a2055c305309af1df486821199c6a9b0572345edefa001d8179f9b950c3c3f1`

```dockerfile
```

-	Layers:
	-	`sha256:92130907d6a02bb22ecc5350aea6444d1d84c67ea0f3f127e3a3bb827e4bc795`  
		Last Modified: Tue, 03 Nov 2026 22:46:49 GMT  
		Size: 2.4 MB (2371480 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eab50c9e7c5f89467fd17b64aff00f3163716892ec55771b46b3c309cfdce506`  
		Last Modified: Tue, 03 Nov 2026 22:46:49 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json
