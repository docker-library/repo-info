## `clojure:temurin-27-lein-trixie`

```console
$ docker pull clojure@sha256:a603f028f2de2054d7f33abed66ff11c9a019c9c32fc8b7bbeb143866a7cd1b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:d12c6fe135789e37e021ad4999aa31ae6f30cba93bbb5d255e99a8d11adcf34b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166431842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5789c6092a98a1e6bbb67ed98f0756c2902addfc67065646f353274fd992833`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:16:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:16:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:16:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:16:12 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:16:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:16:12 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:17:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:17:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:17:47 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:17:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:17:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:17:49 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:17:49 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4060b45bb99ee7c1b34a5b01a8a78c8a44f2ff5f43a3d4a46a8802502d70c808`  
		Last Modified: Wed, 28 Oct 2026 02:18:12 GMT  
		Size: 93.6 MB (93622485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f9f3930420b4ef5c8c63be83c53edb9cd8e42a3f2f05b7a51413fe2a0679ad2`  
		Last Modified: Wed, 28 Oct 2026 02:18:10 GMT  
		Size: 18.9 MB (18885841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d934141f948171c2574ac5d6572b2c9d70f424993e77cbceb3e1576d7984096b`  
		Last Modified: Wed, 28 Oct 2026 02:18:09 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d6d82d04a4ccab86721cfc64f28f713527d546dad096960dd0c1a9e0776d99`  
		Last Modified: Wed, 28 Oct 2026 02:18:09 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:60f7c2dedbcb66b2b98b3ecb4b937e67e501562b5e19ff17791b4493a5c4f956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3807805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73242150011b2e5609a2b67340a9352baa37668bfd5edcfe823e4336a311b9f`

```dockerfile
```

-	Layers:
	-	`sha256:76e6fe6eb045c8dc54c14a36bb6abe0af52e8427f912850f3acd968456203fdf`  
		Last Modified: Wed, 28 Oct 2026 02:18:09 GMT  
		Size: 3.8 MB (3790094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f49e59379571a1f504af15e29caa7f3d12c5eb3537e9311fb518b649ba8bec7`  
		Last Modified: Wed, 28 Oct 2026 02:18:09 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9d44c3ea9b3a8c54d2c70f53321c0bcaf2599e128bb4eeac3c3a02d1f4da9fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165779466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e5ff149ec740e28d349faa7f57238ea2a2e3fca6986ff8e23c7a8240cec20f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:23:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:23:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:23:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:23:59 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:23:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:23:59 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:25:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:25:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:25:27 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:25:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:25:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:25:29 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:25:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7585dddea18f01baaffdd77de622010c09febef066c43cced8a519c0d8da9111`  
		Last Modified: Wed, 28 Oct 2026 02:25:51 GMT  
		Size: 92.6 MB (92633118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a753295ad94df82b070fc77272465f799b05d479254010decefb57042a844554`  
		Last Modified: Wed, 28 Oct 2026 02:25:49 GMT  
		Size: 18.9 MB (18854534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9133abad3c35cfd8544854c2e0b892391b2f0b42bf723a194c7a9b00e7051ff`  
		Last Modified: Wed, 28 Oct 2026 02:25:48 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f74c7e1548d28aad7e37813b7f6977231c704786f50a8eaeeba0c560d88a772`  
		Last Modified: Wed, 28 Oct 2026 02:25:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:36771e49adb6d675407c0d5cd4af6ba59f92dd01ee86505b6f509bff0d49856e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3808163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95585314aa7a373ff548422c62575cf937a0fda65032f79163c87502aa2e5bb0`

```dockerfile
```

-	Layers:
	-	`sha256:1dce27a4c5fbddc99d844fafa34746d3cedb6e527b73ce2bfacbd379f540e308`  
		Last Modified: Wed, 28 Oct 2026 02:25:48 GMT  
		Size: 3.8 MB (3790331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2937da84a701f53c0075d454214bb1e96739d12dedf5257ad7c0f91854a82ce3`  
		Last Modified: Wed, 28 Oct 2026 02:25:48 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-trixie` - linux; ppc64le

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

### `clojure:temurin-27-lein-trixie` - unknown; unknown

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
