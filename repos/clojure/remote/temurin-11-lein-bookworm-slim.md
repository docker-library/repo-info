## `clojure:temurin-11-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:486589ad32f0712443de21bbd4ca1ecbe5995e4c3ac48aca2f7fc2d3ff19ea1d
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

### `clojure:temurin-11-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d63dd7a599d73cd20e395e8aebcc5c555cf7eb94d533af2dd8539c2bc2c30431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196706802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00228531bef5981558fc9c1ef9dcd7af1f5ff8e0df517931641756ba0856265b`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:16:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:16:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:16:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:16:14 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:16:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:16:14 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:17:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:17:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:17:21 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:17:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:17:23 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e35eadb05c904b277cc07164a40cb1fac9d97ae1a6932cc2c30f4294d91090a`  
		Last Modified: Tue, 14 Jul 2026 02:17:44 GMT  
		Size: 145.9 MB (145886201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:647f86f352c3be0237bb1e891a9b88e54cb4b488d354237101e4b62715fb06b3`  
		Last Modified: Tue, 14 Jul 2026 02:17:41 GMT  
		Size: 18.1 MB (18072739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9f64e6913552139c100c3e9fb9ad184413bc19368916690a22e5a437756dedc`  
		Last Modified: Tue, 14 Jul 2026 02:17:40 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c82ffdb518c66cc74868d7b2bdd53a2b5525a070bf5b1d0bbebdf505cfc30b84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afccf8e1d40c0463ae03b8f83b19699429e27f627ae8cab9d612961f6580fdc0`

```dockerfile
```

-	Layers:
	-	`sha256:7ab054423d6217c8d9616dba7f8fe4ecb0442baba3fe3f960789f09aa2de5feb`  
		Last Modified: Tue, 14 Jul 2026 02:17:40 GMT  
		Size: 2.8 MB (2751889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b10c8db9e57b9ee002c7c93187f36e9b868ac45ece7fbe602fb373981f5409be`  
		Last Modified: Tue, 14 Jul 2026 02:17:40 GMT  
		Size: 15.8 KB (15777 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9bc67ae75260af7e1291eb1caa94f84efcc74f77ad2a16e9dadc2facb83380bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193120861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6034a23ed8e4b6b795ca73c753d971eac00b702bf660e4418e0b4468887176a`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:23:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:33 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:23:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:23:33 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:24:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:24:40 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:24:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:24:42 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b3b24bdbd9b1c20e4faa7c9dc40d15042a2f1eb9b20dea6afd7ac005bf54d18`  
		Last Modified: Tue, 14 Jul 2026 02:25:03 GMT  
		Size: 142.6 MB (142582230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2bf8f597ee98c4d1fe3f1753909104b9fa14121d7c4772f7f2f4139d6df3d7d`  
		Last Modified: Tue, 14 Jul 2026 02:25:00 GMT  
		Size: 17.9 MB (17906129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc5c42c8541256e1ad38d35a4d7bc297f4ab319e4417223a82c794def279c38`  
		Last Modified: Tue, 14 Jul 2026 02:24:59 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:69a90f839b359bc0e1328dd1724c0e29df6c56a97c8479bff23c91719d83d6d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75554099db00286ddfda23ceb3d2153f55383f73f738803b83de9463855572be`

```dockerfile
```

-	Layers:
	-	`sha256:e18a2f64b4d30b8bee83ab572f8a0305fe6930120dbfc60bb1a851b7e3fd3e2c`  
		Last Modified: Tue, 14 Jul 2026 02:24:59 GMT  
		Size: 2.8 MB (2752122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d34159df0272600daa88eac6d368c184fe353a2f1fa30ab929760ecf0c5fdbce`  
		Last Modified: Tue, 14 Jul 2026 02:24:58 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2da621682c206e6de26e369bedd990fe59d82aa01ef851908a53d2105306e6c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187965606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8935fe091b44d8686ccfc58c7a36810eb58d758a1ea0cc1c42a3aa080342f6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:12:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:12:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:12:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:12:04 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 08:12:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 08:12:05 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:14:35 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 08:14:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 08:14:35 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 08:14:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 08:14:38 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba944fac20ef8449ec303e3e748ff729291783978d409a4b83616a2f578f2fa1`  
		Last Modified: Tue, 14 Jul 2026 08:15:13 GMT  
		Size: 133.1 MB (133110218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48cf11fcdd21e45a26d9e598d1159fb967e0923b26271fd518323f5c841726e`  
		Last Modified: Tue, 14 Jul 2026 08:15:10 GMT  
		Size: 18.3 MB (18263717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44061ea208021ce0d60787be70998bae989df7934bd47e5a80090e213a21b00`  
		Last Modified: Tue, 14 Jul 2026 08:15:09 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:79497a11ea23a14c8f9634fb37560ee70302376cc6f95a2b51c86e33de1f63b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ff59036cbf3993ba7130397a6d32202ac4647e17f993fb84ba760236c32f41`

```dockerfile
```

-	Layers:
	-	`sha256:7046ef8356a0e2463d80c1488fab120f6eed185816a230c4aa6f159c0dc89ac2`  
		Last Modified: Tue, 14 Jul 2026 08:15:09 GMT  
		Size: 2.8 MB (2753107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c77d5296554b0e6696f4dc5e1da96935ef6f4471d98b7da9840a1f9db4df0d71`  
		Last Modified: Tue, 14 Jul 2026 08:15:09 GMT  
		Size: 15.8 KB (15821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:14a089296ce3dbcbbd719a448c5a5bb0c60b7f0936f49d598f2a462f21729720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175779595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5895f1f4a52ff63d8aeb0c81faecb2d3e436f88a67b47adb10a8fa15a074c573`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:24:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:24:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:24:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:24:57 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:24:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:24:57 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:25:57 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:25:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:25:57 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:25:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:25:58 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acdad0a71028b9af0dad5c13fbdfd0a9f24d260b08c63205e5b0f7190e2498a8`  
		Last Modified: Tue, 14 Jul 2026 04:26:22 GMT  
		Size: 126.7 MB (126651526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aadc931e1065d6bafb7746eb7d7b1a4fdd0f4f606aec8b2fe54ecbd2491688c2`  
		Last Modified: Tue, 14 Jul 2026 04:26:20 GMT  
		Size: 17.7 MB (17724563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc887aaf8ee5a4fea665ff85026c27c44d7755a20dadb24ad7f4c71577a2294`  
		Last Modified: Tue, 14 Jul 2026 04:26:20 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7e80cbcb3ea72076458919b5d49d68120d2ca2b218bcf33e2d10c2d54c3d468c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfc59d66eff2291a49df25861fe186e7b7944895d340b9223e026a310b7d8e1`

```dockerfile
```

-	Layers:
	-	`sha256:95a5661b86fc6f619a7fc28fa02d5d21e1ef9762cc3343e159ef68359fe8b9d5`  
		Last Modified: Tue, 14 Jul 2026 04:26:20 GMT  
		Size: 2.7 MB (2743707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab312c488cefdfb5ec1c7e8c63bc2c76cf540b00ae58c848eab925b2ba4a95e3`  
		Last Modified: Tue, 14 Jul 2026 04:26:20 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json
