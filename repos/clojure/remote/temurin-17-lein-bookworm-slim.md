## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:48ccdb3d9fadcac3f4c437d03da63167b8cee5c7f575afcfae1da525993555df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7e2bf041c13498fa36bfcf9c8d0f025fb10e3f94d75bc26cb43847410c30783c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196665955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:909de071542c5bd995bbb315229e7de3a6bf7b9f8ecc98f54f37c020ffb6375c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:21:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:21:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:21:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:21:03 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:21:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:21:03 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:22:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:22:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:22:13 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:22:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:22:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:22:15 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:22:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69415412eba6e4e31938358751113a3e28754a215ddd2a5a2e0f9aa2f356c89b`  
		Last Modified: Fri, 25 Sep 2026 23:22:35 GMT  
		Size: 145.8 MB (145824874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad89aec8243bd4a1dc19da86cd38d519ac25d4c62303e8cb747202a126f35630`  
		Last Modified: Fri, 25 Sep 2026 23:22:32 GMT  
		Size: 18.1 MB (18087034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db09e200d80f29080bc9413787d57e2e0fa8a4f7faaeeec775fef963dd90921`  
		Last Modified: Fri, 25 Sep 2026 23:22:32 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7b500401b30baef69e1fbd81fe241cad29bc553259b0ec0ce32da53de696726`  
		Last Modified: Fri, 25 Sep 2026 23:22:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2358dda214ec0db32eda6604b1102e681cc727a25ee57433bb7bb74c62308f94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53d6b5aa8ccfc431db822d56415ef3eeacfd17246c56ea54a9730c11634c022a`

```dockerfile
```

-	Layers:
	-	`sha256:fa71a54b392df8309a19a810baf17c6faca56e8df3d60bd8e5d724a1a8d77303`  
		Last Modified: Fri, 25 Sep 2026 23:22:32 GMT  
		Size: 2.7 MB (2737618 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:014bcacb70b5f878eca1b7fd8aaa4cf73bfc6dd13e00a3dd5078de25349aa09f`  
		Last Modified: Fri, 25 Sep 2026 23:22:32 GMT  
		Size: 17.8 KB (17772 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:36686c2b7bfbccd1bdcc7706044ff84b07e9fd8590e7dd55d6ca59ea60494eb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.2 MB (195195615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:842e2eddeaccd86e58cc5522a8b0edc1a517ceda585d3e03fe669ae27e741c6a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:18:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:18:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:18:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:18:41 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:18:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:18:41 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:19:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:19:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:19:50 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:19:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:19:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:19:51 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:19:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b68c30268389e335800b3caf80afbef0de6f3739258c2b2b3cb95c00df3ea6f`  
		Last Modified: Fri, 25 Sep 2026 23:20:13 GMT  
		Size: 144.6 MB (144648249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ff0a16c56402e59d2ee1b7ca481516359f3d45a64c83e48560d64170aca864`  
		Last Modified: Fri, 25 Sep 2026 23:20:10 GMT  
		Size: 17.9 MB (17908087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c9c9913770956a27bcc62672bb187fd5b3c0cde5bd88376fe508e0a45a1ffe`  
		Last Modified: Fri, 25 Sep 2026 23:20:10 GMT  
		Size: 4.5 MB (4515170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa017920ae8ff003ca2a5f1366d07eaa0a7156379ea4ca9abe587f61c1a829a2`  
		Last Modified: Fri, 25 Sep 2026 23:20:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e3a0bb64b55caddeb9d5a88aea5e38b1e67888776a5012959a4bbd0646fa6bd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9845bba7f09c80951de39b1629fb475aa33787be10a5683a97c21564a6a1846b`

```dockerfile
```

-	Layers:
	-	`sha256:715e65ed46064e4bc6bbecb962465981385331158aa06167a63756c5b12ac6d9`  
		Last Modified: Fri, 25 Sep 2026 23:20:10 GMT  
		Size: 2.7 MB (2737233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48c4c0b5ff7de0f8774b91bfde9f958b35660242bc75874ed06f044bf1332794`  
		Last Modified: Fri, 25 Sep 2026 23:20:10 GMT  
		Size: 17.9 KB (17893 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ff142d423b1632e67beeb3e94b23f3c0d4b89193476c0f3f68f6d2ad7de02af1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200552676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b1c1f419e534365284397226fa2b9f15f6a138c0624875d3babf36b310e79d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:51:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:51:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:51:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:51:52 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:51:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:51:52 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:54:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:54:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:54:07 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:54:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 07:54:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 07:54:11 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 07:54:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c1e2072971df062c998cfee78bae6a9efeaf4c5741e49f7cf9b2bdb7610ee9`  
		Last Modified: Sat, 19 Sep 2026 07:54:48 GMT  
		Size: 145.7 MB (145674296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4da83b7483ba5d2f2d420c13c700681e785ae5b6fbefb250b012a10aed7b75`  
		Last Modified: Sat, 19 Sep 2026 07:54:45 GMT  
		Size: 18.3 MB (18279187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb63783a82c67bdce3deb113303efd601ed3e92e85571ad5fe4984a392eb4f8a`  
		Last Modified: Sat, 19 Sep 2026 07:54:44 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac101b099e1b3e92b08712f98a7370bc6782818e87d3366e9a280fdf92ffe3f`  
		Last Modified: Sat, 19 Sep 2026 07:54:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d738eb509e768a85c7463831e4e511727b606a21a33db5ad80a2b9bc3a2922ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b198b46930e0692b6b0c60ba5e170d2b066298b4b27a8f0c8441dbb3cd125a`

```dockerfile
```

-	Layers:
	-	`sha256:39425f1b1f91b6dc59f1e04e71d95e0878ba2448221b5fa8fdb47caa2a8d5f5f`  
		Last Modified: Sat, 19 Sep 2026 07:54:44 GMT  
		Size: 2.7 MB (2739443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac0739a174943d4ed68719236c06dc62afe8f127b51661f1799bdbf21dc47d12`  
		Last Modified: Sat, 19 Sep 2026 07:54:44 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
