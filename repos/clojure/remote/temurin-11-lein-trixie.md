## `clojure:temurin-11-lein-trixie`

```console
$ docker pull clojure@sha256:df5f5bf0aa2f1c0468def6cf321973b21be435b75f2d403bdafa182a143e22c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:06a1cd5941f3f940e16712ce9a943a5e33cd9232bd686f6d27074237a0152bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218740883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05932b9920112efd2c89da0695a4aab7095f862cd6da3d1edea57b1738e3f963`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:09:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:09:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:09:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:09:22 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:09:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:09:22 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:10:41 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:10:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:10:41 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:10:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:10:42 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:133e21d3e00f3d2179ee10bc16a86f143abd8d09d42089b8b8542a3f01c80448`  
		Last Modified: Tue, 24 Nov 2026 03:40:25 GMT  
		Size: 49.4 MB (49409288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f80b9c465350e921467c6e0fb38e7f4ea8e2764bf05a38ae8974b76dc0f722`  
		Last Modified: Tue, 24 Nov 2026 05:11:01 GMT  
		Size: 145.9 MB (145923125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fecd07bdf61876d407cb1fdf52c80b83d4f3380a6c04f29bfd63a35c2802f86c`  
		Last Modified: Tue, 24 Nov 2026 05:10:58 GMT  
		Size: 18.9 MB (18893225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3f1f7d5cc518cfe5caecaa5ca89956db14dc6d4f178b46a380779f5eea5d78`  
		Last Modified: Tue, 24 Nov 2026 05:10:58 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9ded7e79f5736703cb866fd645316fef5991ca12351ea1cba04e63cca18924af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3861538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcc56233361ea1d54b68ac3adb45c89be3139737cb025bc620bf3aea4cd4724c`

```dockerfile
```

-	Layers:
	-	`sha256:f53b160a02833e767b622f5ce02a8f177843947de20c5783feb176e4781b6733`  
		Last Modified: Tue, 24 Nov 2026 05:10:57 GMT  
		Size: 3.8 MB (3845208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c14b1d3b2df27d3644688ee1cd9474f60d40fd568afcb25200906a29eadefe4`  
		Last Modified: Tue, 24 Nov 2026 05:10:57 GMT  
		Size: 16.3 KB (16330 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:81b183c32a654855c35db2b7648aed051c009fe143ad69b53069c1059a923a89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215772121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92c426f1d6f41926726824160b99ba8c8a87f8b61e50c5252d03e19225070226`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:17:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:17:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:17:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:17:16 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 05:17:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 05:17:16 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:18:41 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 05:18:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 05:18:41 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 05:18:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 05:18:43 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6bf9dd8e528e8b59aba65241842ec43567ab9ff163d6d444bb4701ece0f11093`  
		Last Modified: Tue, 24 Nov 2026 03:40:31 GMT  
		Size: 49.8 MB (49770086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2f47382eec811f24cc1a40064c91bfac740650262c6e096fc88c68959d5efb`  
		Last Modified: Tue, 24 Nov 2026 05:19:03 GMT  
		Size: 142.6 MB (142621061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c2ffd01e1b60a6f510b2cb3bb69a243ee140837372117240af0393131c64f1`  
		Last Modified: Tue, 24 Nov 2026 05:19:01 GMT  
		Size: 18.9 MB (18865731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d93acbbdbb83be202a61831bb89b78a02acf33afb47027a38a1391b3daca06f`  
		Last Modified: Tue, 24 Nov 2026 05:19:00 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2babac4f3f064959747c7e7467bfa668cc88aa64c9afeabd6c5bca6f1f5d19a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac7ca7718b014aa31f6038f72957a8d9c9bc4cfd2c07184b8405c037afdae45`

```dockerfile
```

-	Layers:
	-	`sha256:bf1fff1b5ab03d8f2858e3ff401b42b5897ef431eb98a318f5b7cb78c7d2bc24`  
		Last Modified: Tue, 24 Nov 2026 05:19:00 GMT  
		Size: 3.8 MB (3846066 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:345d942bc1baa935db9a945792e1f6c9497d5fc7dbdcb0e4cff188ffa4d03b83`  
		Last Modified: Tue, 24 Nov 2026 05:19:00 GMT  
		Size: 16.5 KB (16451 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:6ffa8e7875912aa46567ab941058baa7c0ffaee8e5770ec0fe514574267fe78b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208967558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24a5729e5dbefa29bfe6346e54221e8e507e08d2df018663ba0f546bef9a116a`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 12:26:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 12:26:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 12:26:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 12:26:29 GMT
ENV LEIN_VERSION=2.13.1
# Tue, 24 Nov 2026 12:26:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 24 Nov 2026 12:26:30 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 12:29:17 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && [ "$(gpg --batch --with-colons --list-keys | awk -F: '$1 == "fpr" && prev == "pub" { print $10 } { prev = $1 }')" = "9D13D9426A0814B3373CF5E3D8A8243577A7859F" ] && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d109a01c2bc295c1ed218ed335c36481938b745b" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 24 Nov 2026 12:29:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Nov 2026 12:29:17 GMT
ENV LEIN_ROOT=1
# Tue, 24 Nov 2026 12:29:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 24 Nov 2026 12:29:20 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:093f53d0e9f641810a7485217f02bd22f1e2ef53f6967daec0ea023f2413dcba`  
		Last Modified: Tue, 24 Nov 2026 03:42:43 GMT  
		Size: 53.2 MB (53229845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:601dc47421a3ce95bbcf5d65d5542e0e22fcfb207100c4a0cfb319ee562e617f`  
		Last Modified: Tue, 24 Nov 2026 12:30:00 GMT  
		Size: 132.3 MB (132272163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35944da5d3ed5e44d519dcf86efd21d63db498e9c8db32a3c02c29eaeb3384d3`  
		Last Modified: Tue, 24 Nov 2026 12:29:57 GMT  
		Size: 19.0 MB (18950298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc7f07fcf6eb82233a4f3ab54428501d20d49440be9b65e4f55b3903fbc9a7b`  
		Last Modified: Tue, 24 Nov 2026 12:29:57 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a62927572ab008cfaf755260fa4b078f2912615a96fc65cb2f667f51d19e5525
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3860717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b9034b84edac4127dfb379447f2c8af7e54082c3e66467616be68e34bc3b1b1`

```dockerfile
```

-	Layers:
	-	`sha256:c2ac023a7d6e16fbdca6a43075b981dfd4c5d4382319f9527c74ab7634a99306`  
		Last Modified: Tue, 24 Nov 2026 12:29:56 GMT  
		Size: 3.8 MB (3844343 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31c95429de09f155eefa2ba94a4095ea8b23b580ec83859238ba6c17b299b023`  
		Last Modified: Tue, 24 Nov 2026 12:29:56 GMT  
		Size: 16.4 KB (16374 bytes)  
		MIME: application/vnd.in-toto+json
