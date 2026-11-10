## `clojure:temurin-21-lein`

```console
$ docker pull clojure@sha256:fbe79370a5966c6f0fcb57aa19b897078486876b2712a0bd7d742bee8a3881fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein` - linux; amd64

```console
$ docker pull clojure@sha256:62fab4227fbbf64ebc2a9328d181689ada95bd256abeb82f57600380079f76a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.6 MB (231584957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:182ca88086cb08036141a139920e03d50d6301bdfaf92f12a83a00522c1c8ec2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:39:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:39:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:39:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:39:57 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:39:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:39:57 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:41:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:41:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:41:11 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:41:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:41:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:41:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:41:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887f2f559e6d68a32506fe642da2463d32d44b3d1122049da9cace9bcd3e6b35`  
		Last Modified: Tue, 10 Nov 2026 00:41:33 GMT  
		Size: 158.4 MB (158409430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c110b96027a6d556cdd94e8a222c3942b81e291dc2d834a6f4269d8e3c1d6f2`  
		Last Modified: Tue, 10 Nov 2026 00:41:30 GMT  
		Size: 20.1 MB (20132946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b378a514d856e30e6b2d8a8eacac0dea205fbcdd3e05817308e38a9de56e43`  
		Last Modified: Tue, 10 Nov 2026 00:41:30 GMT  
		Size: 4.5 MB (4515165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32fff24c7f7a59f63ebc1b5ca584a1a505f38c5a544a55d3b033dddfacb45dd8`  
		Last Modified: Tue, 10 Nov 2026 00:41:30 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:73c41dcd4f61909497d7580a5f3a4176d4978d60e51fc3cce221c3f0f8a1e488
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a35fe2fcadfcb6e4c94c7b1d5525845aeeebefe461488f2c49a805ae35cb5f0c`

```dockerfile
```

-	Layers:
	-	`sha256:6450cbc85b7c5df7c44875616cdd783bfa43d3a6f0e7336e934a7f71bc860dfa`  
		Last Modified: Tue, 10 Nov 2026 00:41:29 GMT  
		Size: 4.3 MB (4290498 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c43b18e2bbd5300b800dfcad4fa36d82a5d825915e694eadba5c729e615a70b8`  
		Last Modified: Tue, 10 Nov 2026 00:41:29 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ca3b53aaf9aaff3fcfb8ffb196e0cd2d546a4558199546b21f33dbe82990a951
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229587306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e1fae9fc820fefa130beb8526e0d453e7686b75fde1ebfd5b0e65509c4a6af`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:39:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:39:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:39:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:39:13 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:39:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:39:13 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:40:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:40:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:40:26 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:40:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:40:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:40:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:40:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25574e59e425a1900d0c0fdd8778a25659c634b662fb6848024fee13f4f3f169`  
		Last Modified: Tue, 10 Nov 2026 00:40:48 GMT  
		Size: 156.7 MB (156691645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70cf1f3a18ed0ace3db5235c1f526bea603142ce8ddab791fa7934949921976`  
		Last Modified: Tue, 10 Nov 2026 00:40:46 GMT  
		Size: 20.0 MB (19967107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e06f6913213a9eb79aea769cc59dd62188f9bbf5e560372e1e342e284bda0c`  
		Last Modified: Tue, 10 Nov 2026 00:40:45 GMT  
		Size: 4.5 MB (4515168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52df7db8abecae8d2181ecb768baeb918ee570a7be241e8dd8e529f030f9b53f`  
		Last Modified: Tue, 10 Nov 2026 00:40:45 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:c42f5f74b82396d48c4316533dcde362184dd1538f01c575d5b4d358d1ec7d32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97bd59d3b253a49fd83e61055d38215c1ca7109ca576ea3555cb96890aed6d62`

```dockerfile
```

-	Layers:
	-	`sha256:ae950faf697f820bc61eb20aa331f587d21a0a45367b27c4f13825b172ebeedb`  
		Last Modified: Tue, 10 Nov 2026 00:40:45 GMT  
		Size: 4.3 MB (4290137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ccffd4aec8c08d060f80e8b50f64d8551e368d0fe847701ddab568c3428115e9`  
		Last Modified: Tue, 10 Nov 2026 00:40:45 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:69a545a9d6b68a5749e38cd1a5ee4dd834f45019937e5bae4ca343ddeaee46bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234815640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d0170a9d8b8a40298d9ed526dbbc1ee34f0d60416d591104abbaeee166f0425`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:47:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:47:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:47:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:47:46 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:47:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:47:47 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:51:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:51:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:51:01 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:51:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:35:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:35:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:35:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43000e10f4cba449859ab339e1e184da2141ac608835cc850c77c1331117815d`  
		Last Modified: Thu, 05 Nov 2026 15:51:45 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d97c5a6ff32e42bec8566f6e2e247a99471d44e159721fdbe6663b81e347846`  
		Last Modified: Thu, 05 Nov 2026 15:51:42 GMT  
		Size: 20.4 MB (20357630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564af03b381b9b954c220c45da6c03ce4835a0547ed9a0254666a0dde27a6bd1`  
		Last Modified: Thu, 05 Nov 2026 15:51:41 GMT  
		Size: 4.5 MB (4515223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:429dd32db30d81181c756b1d64d06a1546558fdbe208d2cb049d6481d1ec9b9d`  
		Last Modified: Tue, 10 Nov 2026 02:35:49 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:cb5852bf2991589231552e62f7c617723a012a0ae34592edd55193a06cae47da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4308614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f0f273e8ce1948eda34ff5a64a85f13215867139d19da641ad7f7b35feb428d`

```dockerfile
```

-	Layers:
	-	`sha256:4c39d09fba3d252deb7cd2a4fc75b394d6a5c077cfc5d761250da0fcf0554117`  
		Last Modified: Tue, 10 Nov 2026 02:35:50 GMT  
		Size: 4.3 MB (4291125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a6c6d2c4f548c48e0338eea064eba1da4cddb616fe671ec3b55c6a3903d691b`  
		Last Modified: Tue, 10 Nov 2026 02:35:49 GMT  
		Size: 17.5 KB (17489 bytes)  
		MIME: application/vnd.in-toto+json
