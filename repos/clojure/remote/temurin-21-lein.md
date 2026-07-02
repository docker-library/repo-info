## `clojure:temurin-21-lein`

```console
$ docker pull clojure@sha256:34784d14b06b2bae8cf6e38e84e48c51839fed1766c3e6cc4184ce7a18462650
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

### `clojure:temurin-21-lein` - linux; amd64

```console
$ docker pull clojure@sha256:c5b26d82c884a734d4541ba59c9349291c8298fe547e7fd1ff7efdfd98210a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231302124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abad3cafb353c87fef2ade5264171fa8c6ec9845f8fcab5b3f5b73a783552adc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:52:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:02 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:52:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:52:02 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:53:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:53:10 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:53:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:53:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c81eca21a0ef8deaf99a41db6d8a738b0f14d2edc9a8a83227330f1b0031c937`  
		Last Modified: Thu, 02 Jul 2026 05:53:35 GMT  
		Size: 158.2 MB (158166913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab9c83defa51d7913b9e2c812b70ddd1ddb594e4a04c6e8d88030b3aed1621a3`  
		Last Modified: Thu, 02 Jul 2026 05:53:32 GMT  
		Size: 20.1 MB (20117339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78da011a1163a3a8ef7b02da29ca62a30d592f741a5ac7312cd3eb0aa99e5e86`  
		Last Modified: Thu, 02 Jul 2026 05:53:31 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4880addc0b996208a24c76dd6038af9116252a92ae373affaf07451eb09115f`  
		Last Modified: Thu, 02 Jul 2026 05:53:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:0c570dd17d4d8c334a6d92d61defa179785ee3edac3abc1e700df73c7151f87a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d3458dd30ed6c99e6a2f86656569a0837f974610bfde3427392c0d79159cc3`

```dockerfile
```

-	Layers:
	-	`sha256:dcf07fbb402536b2c30b09a277f3e246cf7c2a1163451007af970637f22901f8`  
		Last Modified: Thu, 02 Jul 2026 05:53:31 GMT  
		Size: 4.3 MB (4286520 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3c83fc50ce69d38df42105c3e6e46aea8362c5d330fc145fb667411fff7c092`  
		Last Modified: Thu, 02 Jul 2026 05:53:30 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2485587426663318bc844488091e4158025b594f300cd31a35f4776c732533c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229306266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68ba16c73043ad8ff88377b5abd36eb3cf5a1352d846e7eaad3ec03f438bb735`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:52:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:17 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:52:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:52:17 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:53:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:53:25 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:53:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:53:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6278daafa00c63fdb35db271aaaf560d91925e507117e957f855537cbb068f`  
		Last Modified: Thu, 02 Jul 2026 05:53:49 GMT  
		Size: 156.5 MB (156461290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:200e5636381272ce6dfe310ebd2fb8dff10314c506f92a020b50832c2231627b`  
		Last Modified: Thu, 02 Jul 2026 05:53:47 GMT  
		Size: 19.9 MB (19940123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64a3627920d5a2ac78c087ffc0926c5916e2abccf7861a864d0a20769f57f88`  
		Last Modified: Thu, 02 Jul 2026 05:53:46 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72ba5c3f1e5b01c2fa7ce3b46f6429502aed64027d37dd42c35ee4081f17e682`  
		Last Modified: Thu, 02 Jul 2026 05:53:45 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:70a0dd95bef4738a65d574d51148928edfbb30a2bc0d1f22813580026cc291cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd09ab3ec9210d71b0d5ffdce30cb0cdc49571662f97b240f5731cd96321a2e0`

```dockerfile
```

-	Layers:
	-	`sha256:bb633052da8d7f340362be728f2809bf93b7466be68c35fe30eaea027a38ad64`  
		Last Modified: Thu, 02 Jul 2026 05:53:46 GMT  
		Size: 4.3 MB (4286159 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b7d9247ba1ee57b40a025b9e39bae57bec7486948e2d7529ece8d40d000174e`  
		Last Modified: Thu, 02 Jul 2026 05:53:45 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:81c74a47564d8012bbc975bff8bd405e152ae3d23b6db26399ab76f8d1e71948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235537990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27d00404208ff8e14eea64ab656be8dccda832b65165454c8103a99fd40ea936`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:19:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:19:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:19:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:19:07 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:19:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:19:07 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:21:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:21:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:21:47 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:21:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:21:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:21:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:21:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9336473475900452c48606b59d65c92a5631d6774370e5dc92b53680a448ea`  
		Last Modified: Thu, 02 Jul 2026 07:22:36 GMT  
		Size: 158.3 MB (158343220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d10f2ad49c058b28ed580b1c87c9e9e7d3b7df11a11f9cacd930bac61dadf10`  
		Last Modified: Thu, 02 Jul 2026 07:22:32 GMT  
		Size: 20.3 MB (20332271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b563c6fadd7c1238c1cd7cee71a4154d24d97546e3596e61f441962a2eeebda`  
		Last Modified: Thu, 02 Jul 2026 07:22:31 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcd4b26e0baac67e0564dc4c2fdc260e1a652a73129a391aef16cfe457427ed`  
		Last Modified: Thu, 02 Jul 2026 07:22:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:61bbc5fc73fb7a068bfe38c25757bc699624cf6519d7e648c79635ed6cd3eed4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:215451edea095f58276e0bd87af07febe1269fd8aa0fd4110a1571a711ace4c4`

```dockerfile
```

-	Layers:
	-	`sha256:8093040698633491a9e3b5bdc9e604c800e7a350cc11143ed0902fd784d9e1ed`  
		Last Modified: Thu, 02 Jul 2026 07:22:31 GMT  
		Size: 4.3 MB (4288393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec6ea3891fef3221a9a6075119ab1f6fd8f9266a17b886ba3e5c135ee7fd6e15`  
		Last Modified: Thu, 02 Jul 2026 07:22:30 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein` - linux; s390x

```console
$ docker pull clojure@sha256:c83f5aa0538540c6e3c700b5cd99d8a2de300598965af34c737f210f21645781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218835818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96dcf0d7290513c5ab55c405ba72222f20f92b299f82c17b88f845db5959b329`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:52:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:52:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:52:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:52:07 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:52:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:52:07 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:53:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:53:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:53:12 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:53:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:53:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:53:14 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:53:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e014712a24813f5c84e7dc8cb6c633392b39cc5509ed44e2fca49b06838dd63`  
		Last Modified: Thu, 02 Jul 2026 05:53:42 GMT  
		Size: 147.4 MB (147388340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ef81d9204afeb31d5c5c0da3b43ec176630c064fda161e559477d520b6865b`  
		Last Modified: Thu, 02 Jul 2026 05:53:41 GMT  
		Size: 19.8 MB (19770155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcefc1623422459724225f52a2c8a44862cca9f84aa4e9ac383f192cba25a70`  
		Last Modified: Thu, 02 Jul 2026 05:53:32 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e7e1b8a84da6d08cd3c13b8292b45b7ca1462b6d3ac2d302364032aca2c08b`  
		Last Modified: Thu, 02 Jul 2026 05:53:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:765a4092638180fd45af2bbac4d580409bf410ee5c7057c8775469db61658638
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4296722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b6527ff1d4f38edf7b46a8351b3321893bffcf718ae4acc2b5a17e6f22bbf9`

```dockerfile
```

-	Layers:
	-	`sha256:8a9a3ee92bd32274c3fe5a94de582c611f288ca971345548b718d07ec8390958`  
		Last Modified: Thu, 02 Jul 2026 05:53:40 GMT  
		Size: 4.3 MB (4278334 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34f3a9697300d74a216c7248e03bfe05f1de299d5bacdc3af13e818ca3f7b0a2`  
		Last Modified: Thu, 02 Jul 2026 05:53:40 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json
