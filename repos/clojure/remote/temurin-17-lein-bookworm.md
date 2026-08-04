## `clojure:temurin-17-lein-bookworm`

```console
$ docker pull clojure@sha256:35da96d710086417ff1edb993f3410a3fea5bdb3649e5d902921c2b25ff14ea9
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

### `clojure:temurin-17-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:1d780e3fb6f50a49c3a69a106abb3dcab8d76b2feb84909f1a020a98b598ddf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219036179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779509986ef1110ead6dc30c69cf6792bc1775fcd82227a3947a358575460e6f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:49:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:20 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:49:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:49:20 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:50:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:50:27 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:50:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:50:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:50:28 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:50:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a644c7fd3e599b740b41769e8c2c78f47fc7c97aff96f3bae682aa667ca06d1a`  
		Last Modified: Tue, 04 Aug 2026 02:50:50 GMT  
		Size: 145.9 MB (145905442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1926e2f61d2ff90a1e3a6493d5caefb706cdee583146aa9a9e9aad7e58ca4cd5`  
		Last Modified: Tue, 04 Aug 2026 02:50:47 GMT  
		Size: 20.1 MB (20117713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f212cb9aea018d7665861dde6b6a3190b220986c9e8c98380109e363faf17c`  
		Last Modified: Tue, 04 Aug 2026 02:50:47 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f69dd70184f59c9d6158b85b9a880f7f965d1ed3c7559b0547398bce7781db`  
		Last Modified: Tue, 04 Aug 2026 02:50:46 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8cf9be6c505a7a5dc07dd62c40f34ea81072f0ce61fdfca69e55cc0cbee2bb19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4301792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7e7b6c9bd828f9dbc5764f7e218678dde0acf7e6e902f81a407c41f3a1cd11b`

```dockerfile
```

-	Layers:
	-	`sha256:bb07292a7de066a5ea066bef974ccaa5e5b0881308823410b294e3cfea4e7a8d`  
		Last Modified: Tue, 04 Aug 2026 02:50:46 GMT  
		Size: 4.3 MB (4284054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e9f38ea9229388d4e26c3c81487d10ebe77f7eed13af684566034303f12608f`  
		Last Modified: Tue, 04 Aug 2026 02:50:46 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ad2a7f891f6d57c4794692835dd123812d318c790a661106a7932bf70727a81e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.6 MB (217563917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c554205774beb3eb995d122f690b6e4596cc0b76ea65997b9cd85bb0f53fbec0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:49:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:30 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:49:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:49:30 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:36 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:50:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:50:36 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:50:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:50:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:50:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:50:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd6b1854a6e7e250d92efb7331aea0fcd38a46078ba691be1908acca383c6314`  
		Last Modified: Tue, 04 Aug 2026 02:50:58 GMT  
		Size: 144.7 MB (144724288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a01dfaf5d196b24812b7d25348f222e12fa838217ab21a3f00081925b8c5b7`  
		Last Modified: Tue, 04 Aug 2026 02:50:55 GMT  
		Size: 19.9 MB (19940329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657495b981c8e8bbb0929b38e4a721be3407db1f0ddbf459e9c95ebdeb3db003`  
		Last Modified: Tue, 04 Aug 2026 02:50:55 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c47487e48bab7412d7aec46dfc9330b68944766275a678f976ab98091d42a7`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:50581a1c43b7f007104d8dcb0cb49092203149e340a482c9c35a44a03beedb06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4301528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f04007407daadd5052f57030a5b6230233fd638eb0abacf5f088a9d52b64221`

```dockerfile
```

-	Layers:
	-	`sha256:77616f488107196a86e40286f3f0822f5d8aec976d09cf1e6002d74571f24719`  
		Last Modified: Tue, 04 Aug 2026 02:50:55 GMT  
		Size: 4.3 MB (4283669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7243c3b0e9f721835413f10dc76ad435a270ed990479a91d05099957ec29a57`  
		Last Modified: Tue, 04 Aug 2026 02:50:54 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:9610a41ee1c776765f5f54829d68648c8059385476697b6d758853f9a7a8cec5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.0 MB (222955860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0185c535ddf6b224b378f0ccee9e42678425250abbed18791e1688acc6b8053`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:37:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:37:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:37:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:37:29 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:37:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:37:29 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:40:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:40:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:40:27 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:40:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:40:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:40:30 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:40:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c0387545f4e8fab3fa23390ec6d4d8afcb8b8c3ffd2d40a6dd23dce7dbf716`  
		Last Modified: Thu, 16 Jul 2026 02:41:08 GMT  
		Size: 145.8 MB (145766197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014d3cc4610b99076910cb942d7d865b04179516d96eafb30b158a8511955d1f`  
		Last Modified: Thu, 16 Jul 2026 02:41:06 GMT  
		Size: 20.3 MB (20332177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02364e3706b10779ac9aa60c87744a3acd64ccca305e1225e35867db80800b49`  
		Last Modified: Thu, 16 Jul 2026 02:41:05 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:877fca7286f2fe7aba4f862a6932f536e075894f5b75073cfc59afe10ae434ad`  
		Last Modified: Thu, 16 Jul 2026 02:41:05 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:059c0ad1ae54a7ffefdb29324c66ed321d6447ba65ea6d38ab14f075839ae716
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f604241266f30a69fb00a5310d4dada1a34d449072ce261b2779a08e7e431ee6`

```dockerfile
```

-	Layers:
	-	`sha256:299a6bfa0e481673554b805a28d791c0ef698df39805b5a52eafca7e9c11b311`  
		Last Modified: Thu, 16 Jul 2026 02:41:05 GMT  
		Size: 4.3 MB (4285915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b38f5da4726b02aa255726883538d5ec59648d015a5f0f885a94b9f50b89e33d`  
		Last Modified: Thu, 16 Jul 2026 02:41:04 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:463d2f5b68cb936c5c2573e66c83868638ae01db26f23e758208965d8d769361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207353250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8dba5ab5e0fd9c53b63ad2a79b15f2ae7037f5a392fef8b66db22909b64cd5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:52:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:52:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:52:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:52:35 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:52:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:52:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:53:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:53:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:53:45 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:53:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:53:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309965fd29815352376730fa95c4d849749c698da80d21a83af566516fa3898d`  
		Last Modified: Tue, 04 Aug 2026 02:54:13 GMT  
		Size: 135.9 MB (135910420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5d1f6475473e300348805cfabe690c122627ef0440ee655ecb4a14b7f07122`  
		Last Modified: Tue, 04 Aug 2026 02:54:11 GMT  
		Size: 19.8 MB (19769924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aba123444d6e3877902fc32684f0d657439937021ae9ba18bb173688baf60d7`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95338122a9b1d364e1084dae83b24895ef156f4d40be011a5afceca627eebf48`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:104ebc38021d804ecd1f93c120d76d63b1b02af7cbb5ceacaa070fc44dc98998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4293606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b3442c7eef5bb39cbe6390ca4baa6b521b397585872446d088ecc18829bc440`

```dockerfile
```

-	Layers:
	-	`sha256:3cad48098292d4af8d035bf5f8d8353141f93a0b5da5cf8eca9d13220757c639`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 4.3 MB (4275868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb6b05deaa80ccdaa6b3b99b07f791192930ec46f46c4c67d4de6c6d148d3f8e`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json
