## `clojure:temurin-21-lein-trixie`

```console
$ docker pull clojure@sha256:7a1122a92359cd5a3e6a88c13513c76de9bcaec8461b45ae1aa4e7b6012bd401
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

### `clojure:temurin-21-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:78096be454a7c13002246d6fcfbec3f89d44e650debb8a54beb8a1aa8b568ee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230875527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:641504cf61eec799a105c9ba0737ff7913710f978091156792898943409ee836`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:46:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:46:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:46:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:46:10 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:46:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:46:10 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:47:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:47:23 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:47:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:47:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31527798b2744670a9740ddef17389c5100cd211dcd2744466180e0717823180`  
		Last Modified: Tue, 18 Aug 2026 20:47:45 GMT  
		Size: 158.2 MB (158166957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d38cd410fba97540848e079d75939985b1a840bdedcf0b579148274c9e8d31bd`  
		Last Modified: Tue, 18 Aug 2026 20:47:42 GMT  
		Size: 18.9 MB (18880641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:351562fa4cdcd66b8797d050d7099b6bc234f6b287ab92a517d17e87164fb259`  
		Last Modified: Tue, 18 Aug 2026 20:47:41 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a6f8b5d94869d9957774048b1692d27271d285831498e5de9aec845cc2408fd`  
		Last Modified: Tue, 18 Aug 2026 20:47:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e24aa0ea84a6293f0adad6213c6e9565f0126224a358c9c5eabb9a70154e0dea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0421cd697da68f02657ef63ec1e07be1596b4077d6cb48109af323dec1209d7`

```dockerfile
```

-	Layers:
	-	`sha256:d889cdd903d48ff221c0e9ba6ee8c8edcfac82a1ea213281fc215cec49a124c8`  
		Last Modified: Tue, 18 Aug 2026 20:47:41 GMT  
		Size: 3.8 MB (3819708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f981b37514961cefb08715e4e19f65b28f13dc719da5ce34d8a302976afcc34a`  
		Last Modified: Tue, 18 Aug 2026 20:47:41 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:39712cd24b9c60dc8229e27a13536ea73782caa64f49f620e47557d78be2cd24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229490425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c9359eb6bca8afd0d292a4b5fff0cf6a4dd176c7a6651c93b426d8d14312c62`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:46:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:46:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:46:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:46:24 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:46:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:46:24 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:47:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:47:37 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:47:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:47:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca098abe837cd16b4b3b92b2ba05f772b05942d639d6cd597a3eedbd9e3866d7`  
		Last Modified: Tue, 18 Aug 2026 20:48:01 GMT  
		Size: 156.5 MB (156461266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42afb2e50158afb0bd74fd6f9882dcf8022356fdac7e4b969477bd14a25cf24d`  
		Last Modified: Tue, 18 Aug 2026 20:47:59 GMT  
		Size: 18.8 MB (18839659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf2c97ffe862f5b89cff7f05eff36f874ba9cff07fe463230d252050bc95727`  
		Last Modified: Tue, 18 Aug 2026 20:47:58 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f36049a4d71d26032fbfd2efa11f61d19b1c19d34f5474661fc31da0ed39122`  
		Last Modified: Tue, 18 Aug 2026 20:47:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8e5d657fad9a1244a9f63e4bc60599c133ef8f98cc76f7a4b41bd304045ffaea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3837787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:627569c1013b0a00464f832ae4f122c01b9cf4732985d8681168a08652d31839`

```dockerfile
```

-	Layers:
	-	`sha256:5071d60b2037dd234a010467ed3a5520df80047381c6e1a6632da8f6d7491638`  
		Last Modified: Tue, 18 Aug 2026 20:47:58 GMT  
		Size: 3.8 MB (3819948 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23e9d3293c6345626c3b3b78bc98744cffb6c23c5c16e474ffb1693b4ce3b68c`  
		Last Modified: Tue, 18 Aug 2026 20:47:57 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:c84b3146797f0db68006904a1020a7b5c723967f44763f09ca1d4d6ca5cae710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234928993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98292ba25825d47f65604cf0b5a50be3eb5223a9686ca2139512df5eb7f2ff79`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:47:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:47:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:47:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:47:43 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:47:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:47:43 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:50:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 07:50:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 07:50:18 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 07:50:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 07:50:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:50:23 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:50:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c626bff995483821a9feddd77f9c5d47b8f37cd0e214f188c0e30a5d97e555`  
		Last Modified: Wed, 05 Aug 2026 07:51:10 GMT  
		Size: 158.3 MB (158343253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9d9100915e1337e555c8613b2b8d5f7f63905596396bf61da9e9e4410fb597a`  
		Last Modified: Wed, 05 Aug 2026 07:51:07 GMT  
		Size: 18.9 MB (18936494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b5d9be1ef40c4ecce7491f83d01abb4446b5caa898127d4f13e06cb99b5d10`  
		Last Modified: Wed, 05 Aug 2026 07:51:06 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ee679885744068ab2ceb9b576aa333ae0a915d9cd701a623ee2a6c80050bcd`  
		Last Modified: Wed, 05 Aug 2026 07:51:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:afa528404a78ff6aeda8f4976798d2b7e049048085111c452bd58c6f8c7923b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3838469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6aa4c77a99b50502c38d1b21aa903ea8e8f34b9e7ba788879722f6a300021920`

```dockerfile
```

-	Layers:
	-	`sha256:83a5317afb10d61187467f6b9bfb84496bbf85d4bab5260a25b2b4445aad5e83`  
		Last Modified: Wed, 05 Aug 2026 07:51:06 GMT  
		Size: 3.8 MB (3820708 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83cafc5cf30d1ac2e251199d4eb0ec8de9e17a448fc556d4250349acdba62c7f`  
		Last Modified: Wed, 05 Aug 2026 07:51:06 GMT  
		Size: 17.8 KB (17761 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:e9c1646b765f2c7508b9baf89d83a8d4cb8f18e80db4809c5e23462a3c5b3026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220207480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee22ad875d9ca40dcc4c309026912d5fd5ee626f59d7de38025616cccb5e7155`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:48:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:48:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:48:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:48:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:48:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:48:07 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:49:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:49:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:49:24 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:49:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:49:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:49:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:49:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db00a13c62963253b62a9e4d5340036301bafd28f92718540e60edf3a7374aa7`  
		Last Modified: Wed, 05 Aug 2026 01:49:27 GMT  
		Size: 147.4 MB (147388336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e60f0fe95b7cd90113b0194d62b6381c08efe41af825679fd95654a36c4fc2`  
		Last Modified: Wed, 05 Aug 2026 01:49:40 GMT  
		Size: 18.9 MB (18922078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48281e3a992ad6e51ba1c688bc98809ddcd93635efb42b3eda4c2c72f666ed2`  
		Last Modified: Wed, 05 Aug 2026 01:49:40 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed1b971200dd85e393cae7232e9b2d1eb9ead3400b322cc8d52c407b5a3e607`  
		Last Modified: Wed, 05 Aug 2026 01:49:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fcc89727277294bb7075f1e75df7762edc701f621005a86d96fc0c3bb23db556
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3833853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f1eb72d7276319e5687c1ac905e37614b735e5c05df05f85da3b692ed98f62a`

```dockerfile
```

-	Layers:
	-	`sha256:5d57f8497636ad65ada7205444badd9df6acf2b45a6306c551c1da215768adf1`  
		Last Modified: Tue, 18 Aug 2026 20:36:13 GMT  
		Size: 3.8 MB (3816135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c0dfe4d48f0dbafbc0aa35af4dac28041179992a2d97cd2aa21123d6ce2360e`  
		Last Modified: Tue, 18 Aug 2026 20:36:13 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json
