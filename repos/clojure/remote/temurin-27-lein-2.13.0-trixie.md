## `clojure:temurin-27-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:73c621891db623d6967afbca87700e9c2f71502826f952b652271640e0b553d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:122f66526ba337aa0278896d7b2a5abd6d45cc158af7b3b75ca0532c8110ba1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166417047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8ace437d6438bd454fb88d0485d01452aa3c50cc660a6e8e779c225bf64e25`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:22:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:22:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:22:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:22:04 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:22:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:22:04 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:23:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:23:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:23:14 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:23:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:23:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:23:16 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:23:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42a70546c27544f2285343559765359863fe856f00e2189bd8e719696b243eb4`  
		Last Modified: Wed, 21 Oct 2026 01:23:35 GMT  
		Size: 93.6 MB (93622538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c493e1f060b798fba62ef30f0fbd6ca79d8e8048271593d76fea7f3617d1bdb8`  
		Last Modified: Wed, 21 Oct 2026 01:23:33 GMT  
		Size: 18.9 MB (18885240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26dde367de1b5441c355c2cad2535bd9107492af3c95f48a11e6b9d6d5bf661a`  
		Last Modified: Wed, 21 Oct 2026 01:23:33 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f934a4938125e687427c2a9abcb3970ecb177f0027c84b60738f089521264633`  
		Last Modified: Wed, 21 Oct 2026 01:23:32 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f027de4c277a6bf103a8c0155f94e0d8f2ccca6a8a425b5db72259d7d4c56ec8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3807805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:928b4716b1da4a968aac272967735b2c559fb0cd6683d14ae30294bccb15aa47`

```dockerfile
```

-	Layers:
	-	`sha256:37061d4f4b6e681750d976ca97077b6233c6607e33952c10104b2540c88ff28c`  
		Last Modified: Wed, 21 Oct 2026 01:23:32 GMT  
		Size: 3.8 MB (3790094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85bcdf974d8115ada630d0758441f815db6d3db2c2d4e98ca62c7d92507ea6db`  
		Last Modified: Wed, 21 Oct 2026 01:23:32 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:75e4b9feb7fc3055d426ef6107d223ae02d373a9527cb0e8905695bbd3ad3a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165754313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb589b27f81e3043ef59bb01c1ccd35d31994a70aa49bd7f240bf484627e83a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:28:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:28:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:28:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:28:28 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:28:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:28:28 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:29:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:29:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:29:45 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:29:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:29:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:29:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:29:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279a5ad7f14cf68448e6ed91eaae07713ca33b667930817e530cdb91ddd16633`  
		Last Modified: Wed, 21 Oct 2026 01:30:07 GMT  
		Size: 92.6 MB (92633126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1386f9699b4e1dcf32057dab7b4a0a394a30e7643c1359adc9b7e30cdf97141`  
		Last Modified: Wed, 21 Oct 2026 01:30:05 GMT  
		Size: 18.8 MB (18843936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a0bc9ec94f8f51ec5d1f290320bd71e0093f34776961ebcc9d5cd65b9a240a`  
		Last Modified: Wed, 21 Oct 2026 01:30:05 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b5ab254d9b9c91121e569e439c782e305f1031db72153f80761d32d14d4358`  
		Last Modified: Wed, 21 Oct 2026 01:30:04 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:32c10f02f9a79727eaa856079e569ace512f50db663264b49ae5f6cf0abc9d34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3808163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3de870bae3123f500bcca234b74d974296ac7058df4413154f3784a656379b7`

```dockerfile
```

-	Layers:
	-	`sha256:8fd342a8737ce9fd21a979250d9fb629880c2a115e6d9b12719e03dd38eed5ca`  
		Last Modified: Wed, 21 Oct 2026 01:30:04 GMT  
		Size: 3.8 MB (3790331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5d3606576fcefeedc3d146c0a561290075ed1938cb18cdf96fbb9d53100b277`  
		Last Modified: Wed, 21 Oct 2026 01:30:04 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:689a1e9be0b5e850a2faf3eda4dfbd52632fcb266f60859dfbe18a60ec023d97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168919488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30e446d97672a5ba9cc7b15325700e986ea3c451f263a07dddbce5e465b8f9d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 11:19:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:19:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:19:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:19:57 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:19:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:19:58 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:23:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:23:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:23:39 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:23:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:23:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:23:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:23:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:111adca601e00eaa2050db51193e634c29c863bee4fabc375f63ab9c17d0bc97`  
		Last Modified: Wed, 21 Oct 2026 11:24:32 GMT  
		Size: 92.3 MB (92255808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7427b215435103d55e93cea95f468d2f85d3604ced37df7c8aabf919b60bd853`  
		Last Modified: Wed, 21 Oct 2026 11:24:31 GMT  
		Size: 18.9 MB (18940458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c5a03014a0dc3660ccb6f5c617642955263bb49dce1ead72cb3434fb5af031`  
		Last Modified: Wed, 21 Oct 2026 11:24:30 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c853d0c28e9f758f4b1e5324b823fa5486b29929a61a282f38f83821142808`  
		Last Modified: Wed, 21 Oct 2026 11:24:30 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:db71dbc01be98108a32a76521ab2ab97af862bca3503ed0ae6704803b7fa2bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3792779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4d6414427ffbe2aecdce3eb295a84c4b842196245017d8b4fb53c1f2c656d7`

```dockerfile
```

-	Layers:
	-	`sha256:c2b41e5b6ac5f312a58a22375ef799e28d7a5ac3673b711547b5d8051b0f1fb4`  
		Last Modified: Wed, 21 Oct 2026 11:24:30 GMT  
		Size: 3.8 MB (3775028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7ec0425c37995dd906a3d373629315f4e6196da6c41a409823ddd5e589aeed0`  
		Last Modified: Wed, 21 Oct 2026 11:24:29 GMT  
		Size: 17.8 KB (17751 bytes)  
		MIME: application/vnd.in-toto+json
