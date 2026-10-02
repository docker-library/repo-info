## `clojure:lein-2.13.0`

```console
$ docker pull clojure@sha256:5bf022806db29928691d6816c45e23df739d9445d5ca25ad40382dd71a7e43ec
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:0ca10c5ad7268d2b52da75574d5c3dde85d4f49a7efa09d6e6354a8ed3a91fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165784024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:886c7322d94bf89dbd13230259892c24cc1d76680e0b0072141967c29172ecc6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:48:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:12 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:48:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:48:12 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:49:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:49:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:49:18 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:49:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:49:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:49:20 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:49:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3f06891f9a07925d30ab6a0c3a3c9d5598fe6b9362d788dbfc7163f2fcfad4`  
		Last Modified: Fri, 02 Oct 2026 02:49:38 GMT  
		Size: 92.6 MB (92618048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:943f963c9b5a2ce7e24d8925d071970dc93f898a76005d19cfb292d0f3e75f96`  
		Last Modified: Fri, 02 Oct 2026 02:49:36 GMT  
		Size: 20.1 MB (20146889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c397c6ee3c927f9d71f24dce79477474182bef9f6f7b9f20b27001fbb5bb29`  
		Last Modified: Fri, 02 Oct 2026 02:49:36 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8147307478be390f7d1562d6aa6a191fa3eaf93792ab6dee880ecd176fbfcf`  
		Last Modified: Fri, 02 Oct 2026 02:49:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:6de5678922cec6bdddfea73eaccf2190093ec6af83d4ffc210bec0a1e8cfcd64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c1d4a246a875f9c2a7d343f606e908387febd1165ef48d594803b309feba44`

```dockerfile
```

-	Layers:
	-	`sha256:f06d1af4eced198bea487b49c8906b715dff52fb7e89b2fa4dbcd6db393c6a9f`  
		Last Modified: Fri, 02 Oct 2026 02:49:36 GMT  
		Size: 4.3 MB (4258593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:325b7443caf956080cf74601c58eb8731b9546f843d1f3483e58571b23b1ddf6`  
		Last Modified: Fri, 02 Oct 2026 02:49:35 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e98756dc7d40bcad1449a2bbe1d016472e764d3a65b3f8a541af5c87bd77a0fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164401858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a344b3f0b1b0ac2bd00a7d820a5fa3f06c2a6f63ff0837fa56f0f23f6d09edfb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:47:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:47:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:47:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:47:57 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:47:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:47:57 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:49:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:49:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:49:11 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:49:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:49:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:49:13 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:49:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86ba092a3738183bd7a72049d6d93d1a75676ae7e1abe918d29f46d0ee521177`  
		Last Modified: Fri, 02 Oct 2026 02:49:33 GMT  
		Size: 91.5 MB (91528872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a856570ca210f6449b16dd3f9d07be5c4a8830be3d2dd823bb40e87de44a8e`  
		Last Modified: Fri, 02 Oct 2026 02:49:32 GMT  
		Size: 20.0 MB (19967422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49ba6c31b29d53c4193bcb637d451a25de4d017094e8f20b146eaf28bb4b67a6`  
		Last Modified: Fri, 02 Oct 2026 02:49:31 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4278412e162db5ee98b553358d80b5aa5ce8f7338ee64f11676918a49b5d7ef1`  
		Last Modified: Fri, 02 Oct 2026 02:49:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:ee24d05a87ecb757851a01eb82e38c11813e63b371196fddddc8a01ab1251cfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03843a7cb017331a7924fd67b050585cf4ba50a8f883b2429863a094b3b4f239`

```dockerfile
```

-	Layers:
	-	`sha256:ad94a561bc3ee88a9d16f591bfd4de61448e06bd4821bbb45a7cad1c31dd3b4d`  
		Last Modified: Fri, 02 Oct 2026 02:49:31 GMT  
		Size: 4.3 MB (4258277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:56a3f585687ae52603a86e8d578be382a9a5a8f8a8eb31538099033daa0fce98`  
		Last Modified: Fri, 02 Oct 2026 02:49:31 GMT  
		Size: 19.8 KB (19821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:2f63a2fe6ff6fa12659f825aafc68e49f39f92aa2a35f6c4eaa83cf15e5ce13d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168479584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a17b507cec99983d499be503f415036eb6658438ce1141b1ee2cebb57838c64`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 03:39:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:39:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:39:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:39:05 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 03:39:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 03:39:06 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:41:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 03:41:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 03:41:45 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 03:41:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 05:17:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:17:46 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:17:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da04e914040a479971a3ed1caeca790017eb916416f5fcef351c9f764d805fc2`  
		Last Modified: Sat, 26 Sep 2026 03:43:15 GMT  
		Size: 91.3 MB (91256264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae09b42099793a3143d008e2fd40ddbf3493455397fe3ac79ca5e3cfa9a6e6e4`  
		Last Modified: Sat, 26 Sep 2026 03:43:13 GMT  
		Size: 20.4 MB (20358351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99d9376f75067724316363794bc1da03e8a75f4ced42d57442896eb0a7b6555`  
		Last Modified: Sat, 26 Sep 2026 03:43:11 GMT  
		Size: 4.5 MB (4515236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d499aa4d16deafc2ab79f66fd9b31dddd32cc3ff7609ec66674b3773af78778`  
		Last Modified: Sat, 26 Sep 2026 05:18:03 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:006faf8be6c66a033311af17033a39f01b08336a91f8631a1075bb18ec91f195
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4263511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef55152c4750b95beec80c6f40cd9071b9e0d9860b043a78ccf0055dc045ea8f`

```dockerfile
```

-	Layers:
	-	`sha256:9d4d5a567f2063e059b6910188c76cc41287c4646727698142acf013902bacbe`  
		Last Modified: Fri, 02 Oct 2026 08:24:22 GMT  
		Size: 4.2 MB (4243802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c456205dee882af702285b383b673f92ac86c60c9409d4a67bc134f75350bede`  
		Last Modified: Fri, 02 Oct 2026 08:24:21 GMT  
		Size: 19.7 KB (19709 bytes)  
		MIME: application/vnd.in-toto+json
