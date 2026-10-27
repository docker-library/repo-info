## `clojure:temurin-21-lein-bookworm`

```console
$ docker pull clojure@sha256:7668820312c6b43d45723f33f69a7358eb8fd73931e57ff97f660d5265a6876e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:0ac7f43d20fe9c69f9f9d842dcee5cd3c208793ebdc333e329cb0bf99973c67d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231288131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16c37eea09030c7aa5346c46fd306a798a2f6c6e7c9619ace63f3a92b54311c7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:49:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:49:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:49:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:49:32 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:49:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:49:32 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:50:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:50:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:50:42 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:50:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:50:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:50:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:50:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b22718f10518f3869dfe3fafbdefdc8168a5da66e7a9c57b4273bd1a1f67ce`  
		Last Modified: Tue, 27 Oct 2026 00:51:06 GMT  
		Size: 158.1 MB (158117472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddb4274e62357428ca726fa377c165a49a57a366cada6e8a7285d7da5ab1825b`  
		Last Modified: Tue, 27 Oct 2026 00:51:03 GMT  
		Size: 20.1 MB (20132935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73df6df5ac808f9a11c63fd1813466efe80d3ec74a892a0b2d388b29195961c6`  
		Last Modified: Tue, 27 Oct 2026 00:51:03 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd2000f6f50cb2c13753d9cb8ae87c91b0c68f2f212249a501ac49d1a8bf01f`  
		Last Modified: Tue, 27 Oct 2026 00:51:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6f2bf93e9ad8e5fb65b4b85862ca0633164121db892faa0ac7069516e57fb109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbecc2f86d2adbba68a1a17b39b725c7904d4d71e4f691a0ca587f90b28ea08d`

```dockerfile
```

-	Layers:
	-	`sha256:9d6cca2ab2c8263748c4fdac6cc6685851daf8f1576edc4646251fb762c7f044`  
		Last Modified: Tue, 27 Oct 2026 00:51:03 GMT  
		Size: 4.3 MB (4290506 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:113493c8910e6243cf6238a770571f99f867399d7baea97ee9f0c734128c2b64`  
		Last Modified: Tue, 27 Oct 2026 00:51:02 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9e0d218b85a7bb476df26bb06602fd153320dd3ba677291d9ddd627e01df6cfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229296018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8b6ddd2027229f091e9936549e7b2486b2400871b192ea88a26c8bfc2fbec3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:49:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:49:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:49:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:49:19 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:49:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:49:19 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:50:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:50:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:50:32 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:50:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:50:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:50:34 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:50:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f4c9f39d7f80e3f7ed447f5e8dd3a7caeef32931a050632dff3bc68dc20d2c`  
		Last Modified: Tue, 27 Oct 2026 00:50:56 GMT  
		Size: 156.4 MB (156400669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52311fa1656972c817941e10874d00fa6fd81c28ed35eb524ea3f79ff82966b3`  
		Last Modified: Tue, 27 Oct 2026 00:50:53 GMT  
		Size: 20.0 MB (19976633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f15e92bbe5556a9f1a9980d4a8dd8747915ee3f6e67fc008ac692ac5e314575`  
		Last Modified: Tue, 27 Oct 2026 00:50:53 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835c0a70742be40fd68b29abd8e6bf076093f4d4dd5df7fedb00978cdafd602b`  
		Last Modified: Tue, 27 Oct 2026 00:50:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4a660cb67d56c3a5af0f3b5201adcc2cde396a9908468b0e21999e83a9e5b340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcab5ff361c99ebf113ae13e2cc3fe954e1a1d8b0a9ff03345af76bfd50e0b84`

```dockerfile
```

-	Layers:
	-	`sha256:27cb31a1a40fdfe4c59aa4ac2456367fd925513303fd438bab900c13b2d320e1`  
		Last Modified: Tue, 27 Oct 2026 00:50:52 GMT  
		Size: 4.3 MB (4290145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df1b8784bc28ab1363cf42b1445e3ebdb870f07e8225c60901319cba0ffb855c`  
		Last Modified: Tue, 27 Oct 2026 00:50:52 GMT  
		Size: 18.5 KB (18532 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:77a5d82c9f36cba1141ec1ef5b9cbb04cdb4e6709894e987184f16daf41f2a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235519249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdda8927f10b3517f209f235621e6eff95b130a42de75074ae4c4dfeba6ee2c2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:33:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:33:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:33:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:33:21 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:33:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:33:22 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:37:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:37:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:37:51 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:37:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:37:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:37:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:37:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:916f56caeeabd6654227a0fe59d93f1d7414db3ffd6d7284aa029ff5ef282137`  
		Last Modified: Wed, 21 Oct 2026 10:38:58 GMT  
		Size: 158.3 MB (158282653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03aeedbc4e3c2932bdaeb98a299d7ea73df8c707812a2c63e17518619471b9be`  
		Last Modified: Wed, 21 Oct 2026 10:38:55 GMT  
		Size: 20.4 MB (20356213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50e63427e440504b98b8e1aaa5c9a820fb4007ff43a266ce1ed45eb5518bdaa`  
		Last Modified: Wed, 21 Oct 2026 10:38:54 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a472e2be435cdcb4713d537c920205c6576e4c4d957ac7d2d67723fcf0a57550`  
		Last Modified: Wed, 21 Oct 2026 10:38:54 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:73f1edcede0954b2a0ba59cdd6ffb6ee0f984f70deeb0db0528be9a04c912855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fff37f70ce9c574dd5c7f8bc855aace060bf26fbabd7ac06ce1233562d9b9f5b`

```dockerfile
```

-	Layers:
	-	`sha256:201a62fa21ab5752b105fb9cce150d1959e358a5670d8a5a45a2fa57922f5bcc`  
		Last Modified: Wed, 21 Oct 2026 10:38:54 GMT  
		Size: 4.3 MB (4292379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:409281de425a47962d063be15918ab133d8922ac7cd7f5e52a5e3e5e0e3e6dfe`  
		Last Modified: Wed, 21 Oct 2026 10:38:53 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json
