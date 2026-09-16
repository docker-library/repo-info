## `clojure:temurin-17-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:1f0ca1212443ba5dfdeb5ef0f3377747f2d78eab2cab0f1a32f38a036b9e37ff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:ab77dc2b84a3b4b85923c750985b51104dcd358baeaee853a4e09057a2b185eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.5 MB (224502794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b933a8b6dbabdb11973c769586fd6550d5144496b24335c3a5a182f76a4b92f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:34:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:34:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:34:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:34:13 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:34:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:34:13 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:35:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:35:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:35:27 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:35:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:35:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:35:28 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:35:28 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e430a0a58ae9c525808e189227c20bd98b5f1f12470914a857a2be66f78b4ad`  
		Last Modified: Wed, 16 Sep 2026 04:35:47 GMT  
		Size: 145.8 MB (145822694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9a7cff2191a9fa0c0a8e4cab2556586fcf3a4f6ce0bff3cab589e899177786`  
		Last Modified: Wed, 16 Sep 2026 04:35:45 GMT  
		Size: 24.8 MB (24826649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1784ba07a9c163a801693071f06cd77c7e0cd5b398d90c54fdc41821ac1f0de`  
		Last Modified: Wed, 16 Sep 2026 04:35:44 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a24b9b0a23d0949a4028d0fafe100ae717dd2e08fcd67e5dd178f75466fa55b`  
		Last Modified: Wed, 16 Sep 2026 04:35:44 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:22171cd423ed67cf37fe8999eb2b956cea2f9ee7366f73a108d30fe84c8a8c11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eec08973274b40bbf69ab8195c5a62b65200c1fe16ae79b6e71bd6a0df036db8`

```dockerfile
```

-	Layers:
	-	`sha256:abc301163f773823749cfc609cd30b80f06078b42e9fd6464c5cbb8996bd3b68`  
		Last Modified: Wed, 16 Sep 2026 04:35:44 GMT  
		Size: 3.8 MB (3822868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6d0c07ff053757e3d442220c3585cc2fc7c8d74d62ba54d4facede71ab16f15`  
		Last Modified: Wed, 16 Sep 2026 04:35:44 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:94a83a78a85eecf409d4fc2a62e19e76e5c6bfb7db1d51997b73155167ea12f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.0 MB (223961355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21694b170a7f357921513c768032ea3a5979ed841037163836ff45a3b6b5cc7a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:34:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:34:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:34:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:34:31 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:34:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:34:31 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:35:50 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:35:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:35:50 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:35:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:35:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:35:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:35:51 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:226da2c08e0d54e8f4646dd3558ddb1e8f8e89fcb9cfa98b7805d01931d9285d`  
		Last Modified: Wed, 16 Sep 2026 04:36:12 GMT  
		Size: 144.6 MB (144647462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea431d35d8d2f2df1c385dd866c81c1a7019155c7ef5cb40683780e7bbd99fc3`  
		Last Modified: Wed, 16 Sep 2026 04:36:09 GMT  
		Size: 25.1 MB (25093398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984da66280d06a476196345bb3867e750c34d92226637b6e5bbe46b0e5cd2f6d`  
		Last Modified: Wed, 16 Sep 2026 04:36:09 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a5f987c5586b0d1a444b0af9fa27b7daadd80aea5c770040c79e667298a6e9`  
		Last Modified: Wed, 16 Sep 2026 04:36:08 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:93d5dd7be18d3acd43d1b873847e580ef59eedb414e03f63828a171ea19dc4c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3840947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05bdd74e665c6e313ac09219dee1985373b6b009ae0b232c822a4c9cf384e257`

```dockerfile
```

-	Layers:
	-	`sha256:683cb8b39f3eb3128ca7464a6794feb5a1864a1f12ac8f65d8c7a234997b23ce`  
		Last Modified: Wed, 16 Sep 2026 04:36:08 GMT  
		Size: 3.8 MB (3823108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae29b3d1c48c64f6e52724149567fb31c3392c3d04a6e22aad21ced3812988ee`  
		Last Modified: Wed, 16 Sep 2026 04:36:08 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:2844539bd165731f9354db4c38f8de05627eb5298dbd95711c6b40459be568a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228620364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423ac3af3cf6e3c61967eb46f481973e56dd11cda18d2b1adf014c2d1a8988c0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 10:40:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:40:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:40:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:40:46 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 10:40:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 10:40:46 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:44:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 10:44:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 10:44:15 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 10:44:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 10:44:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 10:44:19 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 10:44:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e97171d710898b8837b880924833783b0d54fb957ef5c4cea163b9e766e5f847`  
		Last Modified: Wed, 16 Sep 2026 10:44:59 GMT  
		Size: 145.7 MB (145674285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a3d227babadb70d61877a03f8a663240afa1ba373b42d4bb436982992036b7f`  
		Last Modified: Wed, 16 Sep 2026 10:44:56 GMT  
		Size: 25.3 MB (25266146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d027cd21c5aa7e0373b1b87f33d2898c8bf7ed532632b95ac37541eb1057821e`  
		Last Modified: Wed, 16 Sep 2026 10:44:55 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c01962fde6738daa3303ce72a264a0551496774bff3aed6bc570c97be667d6`  
		Last Modified: Wed, 16 Sep 2026 10:44:55 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3c2f0c763581d25539aa3b7f8783c81fdefef7bedd07f61701638ddc2f69ea42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b7fc5df0f7a415d0a6059b1628df8a42007625451a366771cf685a32773aafe`

```dockerfile
```

-	Layers:
	-	`sha256:3dde15de203d8ba729559056caefcb182d47d0bd9120ed130ecba946667a3dee`  
		Last Modified: Wed, 16 Sep 2026 10:44:55 GMT  
		Size: 3.8 MB (3823868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2af4722dabfe5800b768317c9cdb548f75c240f424c755d0f0bb8de3f93c53ab`  
		Last Modified: Wed, 16 Sep 2026 10:44:55 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
