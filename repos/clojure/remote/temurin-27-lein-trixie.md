## `clojure:temurin-27-lein-trixie`

```console
$ docker pull clojure@sha256:7365c9e4072a240b2c28cdb3bea9ee44d260b5fbbc9d342c12ef86b0df274072
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
$ docker pull clojure@sha256:98bde6964396cffc95ce6f81e70b0273d1ff768d8b929350ac4714268da8dc17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168933013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87e8958a3b853b1add1c0e909fed4c2676031483d96d9ce381eb3777692a7222`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 10:42:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:42:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:42:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:42:46 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 10:42:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 10:42:46 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:45:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 10:45:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 10:45:58 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 10:46:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 10:46:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:46:02 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:46:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41d58f5d27bafd8941c81f74ff52a0e744d1a6710ebc0597802948bd7967c91`  
		Last Modified: Wed, 28 Oct 2026 10:46:52 GMT  
		Size: 92.3 MB (92255827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de14821590745315df3dfd708dcb2bca00032984ef3d8e4f7ebb0018637e5aa2`  
		Last Modified: Wed, 28 Oct 2026 10:46:50 GMT  
		Size: 18.9 MB (18939284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96d9c586ee64c65b284766c2120acb9ee7012b5c3916cb71b822631b86851b07`  
		Last Modified: Wed, 28 Oct 2026 10:46:49 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69d4fcfcb3dc8fbdd6c68dabfa46fb192aceb5c7de00c30a491a19b4560f4c4`  
		Last Modified: Wed, 28 Oct 2026 10:46:49 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7a8985c309517119105e542d35c5ed03add21133adfc87ea781e88a5a25bb088
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3792783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7964a3aae61864df8c5bc680a10f0ffa4530f5a108ec0e685bed05518e7b7a15`

```dockerfile
```

-	Layers:
	-	`sha256:b8b8930cdc6103c943d316f03aa1c6308f635334b3c8e646d962ade01d1e6c3a`  
		Last Modified: Wed, 28 Oct 2026 10:46:49 GMT  
		Size: 3.8 MB (3775028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7ae9a83f4b8feb97712410124425d03438ced849a66a774c8aeb47dc4b89d50`  
		Last Modified: Wed, 28 Oct 2026 10:46:49 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json
