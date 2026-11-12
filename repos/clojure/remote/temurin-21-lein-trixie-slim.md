## `clojure:temurin-21-lein-trixie-slim`

```console
$ docker pull clojure@sha256:3530b90f4bd44fa9f120a5a5626d17130a1801ce1a6a6437bf29476d51049810
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c75d9107ab6e9d25512c48f70a3d13910d2314688ca087d67bbce831ee4197ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.5 MB (209522754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0a59bd4133f142ca913edfdc25285c28ae14d969f24561224a6d028205c235`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:49:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:49:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:49:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:49:49 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:49:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:49:49 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:51:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:51:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:51:04 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:51:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:51:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:51:05 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:51:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce6e761273072814edb5a14df51fb3c247dd1a4ea9b980036a818f3b0d3f2ba`  
		Last Modified: Thu, 12 Nov 2026 00:51:26 GMT  
		Size: 158.4 MB (158409449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc2da6deef036e08553fc33cae5312e23206564e0e2eb56ab24bcd6d93532f3`  
		Last Modified: Thu, 12 Nov 2026 00:51:23 GMT  
		Size: 16.7 MB (16741066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d19b8b591b5c33de3fc8ef9f343ddc23cdc125e368f97e12e7316285771122`  
		Last Modified: Thu, 12 Nov 2026 00:51:22 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eea19e203563fd8358301093ec3fc9e751e2725ead59685b36ddd2b35b38d86`  
		Last Modified: Thu, 12 Nov 2026 00:51:22 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:88110fcefb2156d4584ad4580f1685b76097ef0b8aaedde54561e900a5e836cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8112605cfe042732efb7e74309ad5ffe8b6c67b604b7742ee8f7fc91de7be3e6`

```dockerfile
```

-	Layers:
	-	`sha256:a8a8814e15053b7e1567badcb513509b45728d12b4b3de3dcb54b11148559463`  
		Last Modified: Thu, 12 Nov 2026 00:51:22 GMT  
		Size: 2.4 MB (2373598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2b49540b9067151de2979a58b7d9602cf1a1a6274924d4d4e3f00dc0cefd563`  
		Last Modified: Thu, 12 Nov 2026 00:51:22 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b2b398df582c4526d3736614dc77789c6b11e4a665fd5f9e2a1b17272a580849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208129708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9396c559668f202088aeb636147dc27675c7bc38ec392d835053cc223a09e574`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:04:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:04:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:04:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:04:59 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:04:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:04:59 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:06:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:06:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:06:19 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:06:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:06:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:06:21 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:06:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3658acdb7deafb1ebf695bf78ecd2b3833aab54d0d4d50b2808f9a5db87843`  
		Last Modified: Thu, 12 Nov 2026 01:06:43 GMT  
		Size: 156.7 MB (156691653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cd49a3c4692b7ed485d0f88af32db6dff576615882996d07a95f4f2bec11dd`  
		Last Modified: Thu, 12 Nov 2026 01:06:41 GMT  
		Size: 16.7 MB (16707871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d22b9779274638f8e651616b35584c108bcfa1e91d68d4f3ae27dcc887f36e`  
		Last Modified: Thu, 12 Nov 2026 01:06:40 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4cb8e575ced568217a05e5641bfc1c9bc089cb47c2bdd1b23d2f9d7f43d822`  
		Last Modified: Thu, 12 Nov 2026 01:06:40 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:63d444e251b0ec00c112911f218d5f68134efdbbc3b6fe4f64e1f3e8c380d9bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2391082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc56662c3f3f1e1cbc18045efdcc15f7aabc5210da7af8897e507ebf0bece88e`

```dockerfile
```

-	Layers:
	-	`sha256:d00bfbf0a08a4cc4582109ca3081fdb2552145f77b0f2a8c5973d6e1359988ea`  
		Last Modified: Thu, 12 Nov 2026 01:06:40 GMT  
		Size: 2.4 MB (2373208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8335bd34dfd4476a3124c797cda68c03fa4904610a64fc7f629aa7f9346f8152`  
		Last Modified: Thu, 12 Nov 2026 01:06:39 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e955dd66060b02f143c9b4d2820371b36f4bb44c1af274b79e80b57543e4a4bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212535630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245d9d460e202d5c5e8087c66d9c149b7ecb4489fbb22fe30a4d57564608c873`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:53:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:53:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:53:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:53:33 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:53:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:53:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:56:59 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:56:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:56:59 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:57:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:40:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:40:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:40:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160e4dfd74fce827efd180ea39399ead65ff78ebe435d963c4044d95e7490255`  
		Last Modified: Thu, 05 Nov 2026 15:57:42 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a71df8ba6f9ad35f0e7db34f66b4c635f25d8c820df919f999d0bc652242de9`  
		Last Modified: Thu, 05 Nov 2026 15:57:39 GMT  
		Size: 16.8 MB (16778629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b3170757ba665434bcdabf0a697a40c2e61c2facbcca385bf565cbe8acc72f`  
		Last Modified: Thu, 05 Nov 2026 15:57:39 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56cd4654ed779928c6ac1ef45d2467b82c112672b7f861caf6bc2e461df31993`  
		Last Modified: Tue, 10 Nov 2026 02:40:50 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2baebcb3b8a504da1e9648ae0a72b436f013664046dadb8c02c38c82baea1564
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aa35354bfc93a9d0f5d365f1e405436002d1a45ba384710b0ce63fb0f86d6e1`

```dockerfile
```

-	Layers:
	-	`sha256:913d3b3d47e53880638c9e61e1ed3dd3eb87a2cc227da08b3f31955fbb4facc8`  
		Last Modified: Tue, 10 Nov 2026 02:40:50 GMT  
		Size: 2.4 MB (2373332 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:029c1094c815c04f16e74e73955a8cd0be921c794db5394a3fe194c4c37e58e5`  
		Last Modified: Tue, 10 Nov 2026 02:40:50 GMT  
		Size: 16.8 KB (16841 bytes)  
		MIME: application/vnd.in-toto+json
