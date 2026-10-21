## `clojure:temurin-27-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:943208e6c57ef6a2f0f0ceaa8f98312c7fd4e92c5861e09a4444fd390c1c737b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7854750a144a9f1abedffddf2b7de52b35c04f4ccc7b7e9b4dc4c0a5ab1dabc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144458996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d023a65969cff854a03b7afac4400ef52386d18e71db28b20242c4496b04e68`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:21:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:21:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:21:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:21:52 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:21:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:21:52 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:23:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:23:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:23:03 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:23:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:23:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:23:05 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:23:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5925ff7107613384c973ef3324ffad41cb802eb5efddaee4b9b86b6624233a5`  
		Last Modified: Wed, 21 Oct 2026 01:23:26 GMT  
		Size: 93.6 MB (93622452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6199cd00e899dc47ef90b010d05559e5db02ecf64cb7018203bb249c7d418a29`  
		Last Modified: Wed, 21 Oct 2026 01:23:24 GMT  
		Size: 18.1 MB (18072995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c70745b6b5ff26c66e7e7d952da4a3e86d2ab3778ed58a14776da37ee254722`  
		Last Modified: Wed, 21 Oct 2026 01:23:23 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483b73bc109f75c36da090e5f026a83036e9cf35690680cbbe3be2374db0447b`  
		Last Modified: Wed, 21 Oct 2026 01:23:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e3c02f0f1429140dcae72eb20523c4ed16905eb5708366c48ecc802522ad7c42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a988671d4b9f5488d13e7a81024f14fbdaae7b2009be7ddc0108d090bb0b2d01`

```dockerfile
```

-	Layers:
	-	`sha256:ff23e7bff6e3c127b1f17d1b841566052ed37e5305f22e146177355d53fe5e02`  
		Last Modified: Wed, 21 Oct 2026 01:23:23 GMT  
		Size: 2.7 MB (2699947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ab1c1d9092f73e2a781d185c5e308d723dcc62607fabb99814df8bdc54a34cc`  
		Last Modified: Wed, 21 Oct 2026 01:23:23 GMT  
		Size: 17.8 KB (17765 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:695edc189679f5ff801835054da987f59f281f70365350aff8e7f3d6989ec4da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143193887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38a848a3d02fd7c726bd0110f3c86783aee16569960eed23f0181b859e5c37d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:28:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:28:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:28:15 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:28:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:28:15 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:29:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:29:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:29:28 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:29:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:29:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:29:30 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:29:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79b74ebb854831252c0a08b6634b2ffd9776014e302a8d15f65d8fe253e2cc6`  
		Last Modified: Wed, 21 Oct 2026 01:29:48 GMT  
		Size: 92.6 MB (92633129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28ff5f2b6b5bd930e6db9c417184c6eec8f8deaf6c0e814ba781b9836defe4e`  
		Last Modified: Wed, 21 Oct 2026 01:29:48 GMT  
		Size: 17.9 MB (17906703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f2a71fd128bf23e95b1455f5a7afbdc1366c9fa1ab0f901de89a598f1498de`  
		Last Modified: Wed, 21 Oct 2026 01:29:48 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d9c3761978fa67a4477a096f401a2b9c0e9d01195ecd6e5335d7dbfb2bbc58`  
		Last Modified: Wed, 21 Oct 2026 01:29:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3a2058de2461660c60822ba429dbebcb95b70d5c6af26706bf34a02de7d13c6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb188dd66d979c3fe6b9723a69cbb98f154cbabf69e9a4e16e11c86958c0b369`

```dockerfile
```

-	Layers:
	-	`sha256:afe8fd1c00498449d114bdec31492b927dbf155995d676baebd8a765e12859b2`  
		Last Modified: Wed, 21 Oct 2026 01:29:48 GMT  
		Size: 2.7 MB (2699559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b9febd57132c124890bb59bace58f719880c2b2e83ed466d86dbbd61fa543d1`  
		Last Modified: Wed, 21 Oct 2026 01:29:47 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:08447113128e96c3097a5fa5c56d9736f7ed35fe9ae8a26f9a6011eb712af2d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147144009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a7422678f311679ce13dad17b3e517de9d651fed3a11fe54bb07c49a5ad2821`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:17:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:17:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:17:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:17:24 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:17:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:17:25 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:20:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:20:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:20:43 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:20:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:20:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:20:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:20:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ec518236d5067a8af035d0726c270d0334bcfe44ec1a32d3c23943fe275b8b7`  
		Last Modified: Wed, 21 Oct 2026 11:21:23 GMT  
		Size: 92.3 MB (92255784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff4a1ee5639ca897c5064e1f9dc08b043f0b6ffe6a3692115ca15ab032ac76ff`  
		Last Modified: Wed, 21 Oct 2026 11:21:21 GMT  
		Size: 18.3 MB (18279365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba1db72aaf4576bdc497da5cbea2b79c414409a2305c9a3bd3b9384c5cbd875f`  
		Last Modified: Wed, 21 Oct 2026 11:21:21 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff856df48c67824c6e99437d8a402921386b54b4f705b1239b14440b3b025088`  
		Last Modified: Wed, 21 Oct 2026 11:21:21 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:588c82519bb480b0caac03b70c807196e8fc39712c14c7eb73be66958646d862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2703526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0811b7e8d0533ca89f4c33fca69687fe9c87cbc26f13a89e54be99fa69f0ea7e`

```dockerfile
```

-	Layers:
	-	`sha256:031aa1c6051e004ef3c19a0211d6f975c11f0cea067d85a3a323e84345402927`  
		Last Modified: Wed, 21 Oct 2026 11:21:21 GMT  
		Size: 2.7 MB (2685716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55d729743e35502cb3db68b0711b9ada4c44c8c1dac44c70b28351bec13a9fd8`  
		Last Modified: Wed, 21 Oct 2026 11:21:21 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
