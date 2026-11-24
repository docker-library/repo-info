## `clojure:temurin-27-lein-2.13.1-trixie`

```console
$ docker pull clojure@sha256:b4678dc195a984b6feb8ee9fb8f3c575add3664f896ce80b2ab3db79103c5355
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.1-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:6c143495888023a093d971a8fcee5b6dd3d3abf02f54f8d26f75432ba7fd85fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166468028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e6d1d03461d259655cd8f934da454834d21a5831774d8e5f28dd6a5f147445`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:13:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:13:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:13:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:13:24 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:13:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:13:24 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:14:41 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:14:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:14:41 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:14:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:14:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:14:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:14:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1afef1511f150bfe10d924006a71d5f0ad97fd158b358dd07cf1d4de5bea4341`  
		Last Modified: Tue, 24 Nov 2026 05:15:01 GMT  
		Size: 93.6 MB (93649638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17725cdc6504004b2d5eef6a324d72803874e8792c2a7aee4aa53b2c0122cc69`  
		Last Modified: Tue, 24 Nov 2026 05:14:59 GMT  
		Size: 18.9 MB (18892979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70826c0508e114f641a85ddf6ed1dc76eab8d41ea2dd1708de0564309b89d58`  
		Last Modified: Tue, 24 Nov 2026 05:14:59 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3397ca05b7b0ca397f1d32748574fb2904777478c7d0405bd80f280a3741e0`  
		Last Modified: Tue, 24 Nov 2026 05:14:59 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.1-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7ec1e08c93f22dccdc985415591bdb37aedbc1e41f148f715ed95cea7b3876fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3807651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19009de1e0d049b1cfdd9fe55e5e7c8cbc6256037436458763aad8d1d12fa0a`

```dockerfile
```

-	Layers:
	-	`sha256:75445f9a77598c5c84f9a9fb0718c6ec85d1e22cfb298fe21eddf73ab8eb43d4`  
		Last Modified: Tue, 24 Nov 2026 05:14:59 GMT  
		Size: 3.8 MB (3789344 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eeb5eb9434e50d72cdf289947fe569106634c374df4795861dc5989ad95292f5`  
		Last Modified: Tue, 24 Nov 2026 05:14:58 GMT  
		Size: 18.3 KB (18307 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.1-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:7ede38f3de55769db12c50f9657d350fd94c20fbbf6912e06ef43aa8ee8506df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.6 MB (168630842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f0e104a18f3e76491004e5ea7a7c6ab697589e9529d0f9965c968b25e7bd4f2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 13:13:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 13:13:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 13:13:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 13:13:04 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 13:13:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 13:13:05 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 13:17:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 13:17:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 13:17:14 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 13:17:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 13:17:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 13:17:20 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 13:17:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77460f63ffbbd60e78ebf62aee6406d52151994424c0d5fca464d8ef76632862`  
		Last Modified: Tue, 24 Nov 2026 13:17:56 GMT  
		Size: 91.9 MB (91933318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b5707741e13b3fd8e44ec1043dcd69e16b4b44d444e53ae5241e8b8e678491`  
		Last Modified: Tue, 24 Nov 2026 13:18:04 GMT  
		Size: 19.0 MB (18951520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2f4f60cdb8621b0f25d277248f4a88a96cf27e4b8b136eefaa4c897c09deae`  
		Last Modified: Tue, 24 Nov 2026 13:18:04 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdaaa1429fb44f211b6dfc04b325a60fc3b66a14736ad5f03551ec9a2b54d6d`  
		Last Modified: Tue, 24 Nov 2026 13:18:04 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.1-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:72c6d011a5055ce33a18b41b02165c9a6bc1353d704a25d39b6be2d9eb5c8517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3790766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1796b8586d739965712d42960ede0d7be572c93ffcfb3fce7728b25afb9744df`

```dockerfile
```

-	Layers:
	-	`sha256:f2ca9dc80cae2390ad368f9d04cafdabbbc6fe7252ed1fb90ce31d55370c7778`  
		Last Modified: Tue, 24 Nov 2026 13:18:04 GMT  
		Size: 3.8 MB (3772415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b30b36732f37fb087fb1482d0f048b2e100b714ea8d1c38fc91f724939cba3f`  
		Last Modified: Tue, 24 Nov 2026 13:18:04 GMT  
		Size: 18.4 KB (18351 bytes)  
		MIME: application/vnd.in-toto+json
