## `clojure:temurin-26-lein-bookworm`

```console
$ docker pull clojure@sha256:2b4186ad88a30aa1e4859aec74dc502262e419436ff81a9228c8f3be560e101f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:892199af2c1db8878878d0d382a477018837d564e0d67383aa55e4d5a045460a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170034673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca4145a007de850c2348232825b9d5e234622f4217020ffd21c486f73d81a0ba`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sun, 11 Oct 2026 13:12:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:12:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:12:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:12:01 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:12:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:12:01 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:13:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:13:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:13:13 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:13:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:13:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:13:15 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:13:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c1867056081d9820c0ddb575f2ea741d4764908a6048a35376e615617e4749`  
		Last Modified: Sun, 11 Oct 2026 13:13:35 GMT  
		Size: 94.6 MB (94563556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d468d0f675f17fe837a4bec78b50433c9ad9d1ef8480d4a960d19249abc3dff7`  
		Last Modified: Sun, 11 Oct 2026 13:13:33 GMT  
		Size: 22.4 MB (22437489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548b790784e8761494086b7548435aee948e20ba48aa751f069cf88582d3cb4a`  
		Last Modified: Sun, 11 Oct 2026 13:13:32 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f64298d92a8038ca69063e5694d6a0b732141714a4f250de79a2459f4b3f58b`  
		Last Modified: Sun, 11 Oct 2026 13:13:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5e6bbabbbbc908f9ccf50008150ea5b98879f7116adca25c82adf5ea49d7f503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77418a956dc6749a31bbc39eca002286b8c8d60b7fffb5387e6b4bae247fbd34`

```dockerfile
```

-	Layers:
	-	`sha256:4edc5b34ce96cb979b4a8f8d4434fdd7dbe7d59fb398c1ff245ffcd515c3d91e`  
		Last Modified: Sun, 11 Oct 2026 13:13:32 GMT  
		Size: 4.3 MB (4254842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c007d4ce7080adb463a15183cddf2c695c70a75a675ac915dcc0d7ceff77aecc`  
		Last Modified: Sun, 11 Oct 2026 13:13:32 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:84498a83a13549aca7cefc3893b7845015468691757d4c123b9a60b08e2cb136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.7 MB (168691105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185b4ecb6461df3219358461dc970e5917a6b9ed7107a36de1127fafb646e83a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sun, 11 Oct 2026 13:11:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:11:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:11:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:11:57 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:11:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:11:57 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:13:08 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:13:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:13:08 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:13:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:13:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:13:10 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:13:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc08beebb9aad9d4e7dea9bbedcd67215897118432467674481815a8d7035f3`  
		Last Modified: Sun, 11 Oct 2026 13:13:30 GMT  
		Size: 93.5 MB (93543601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21852c76aa933548ad176bf2a5d5a3bcdaaab8ef080db08643568888e16c757`  
		Last Modified: Sun, 11 Oct 2026 13:13:28 GMT  
		Size: 22.2 MB (22230304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:451ed7562d131fd1f588e218ecb7c995daf63b13f7ab8e30a73bfa47fa43e1f8`  
		Last Modified: Sun, 11 Oct 2026 13:13:28 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8d32906cb6403ccc373840c4fc12923fb2db20ebac663d0a4ed435af8ca45db`  
		Last Modified: Sun, 11 Oct 2026 13:13:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d548bd619c8d968f444343715a0ab4a87d3aebc777b26001b8a62ac01b0abfc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8c1b07ac294ae36992412fa645ca6a6d30c0a14dc09b269d41c46cd1d72b336`

```dockerfile
```

-	Layers:
	-	`sha256:8f291a5d5f2cffbef753977ee9e45c2652defdaebd1d2590a6dbd146a924f760`  
		Last Modified: Sun, 11 Oct 2026 13:13:27 GMT  
		Size: 4.3 MB (4254478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf68b10378ba977eff125898b82592888e119a4c29b134741ebbd789f8ce51aa`  
		Last Modified: Sun, 11 Oct 2026 13:13:27 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:f9e2eaf8f6e05352f125e11f59ff059817b5fec7456a8da58570635ee8324ee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.1 MB (173060136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7823885e39236d5ab2526716099114f9fcb9e851d50ef7dbcd2f35f4a4157be0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:50:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:50:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:50:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:50:50 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:50:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:50:51 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:59:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:59:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:59:16 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:59:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:59:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:59:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:59:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37105b23c6926015269f3bd77d3d351843ea577420d26b29a4612063c9c6ea19`  
		Last Modified: Tue, 06 Oct 2026 10:53:19 GMT  
		Size: 93.4 MB (93350835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbc8c8ba340cbc52aafd9f915daaa77f8a28743ff19f591241dd424e5a91acd4`  
		Last Modified: Tue, 06 Oct 2026 10:59:43 GMT  
		Size: 22.8 MB (22830930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6231577a629dae704c46826f5f124f1fc065badb8eab3048aefb569b97c2c23e`  
		Last Modified: Tue, 06 Oct 2026 10:59:42 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e3c43deb698d3ebc70cc465912fa3272b2060336ee9bc8cddd56b066c5883b`  
		Last Modified: Tue, 06 Oct 2026 10:59:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:284b8f7da83d37955db0ae3fdc1eb518ec567f707522fa07a548e7a28efb70e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac8a23d913ff528926b690d98ceebf5f2fbff118cfecfd3fe6b98c8704697ce8`

```dockerfile
```

-	Layers:
	-	`sha256:24fa39c45f5290f63d59d174108e808a145cf879ecd5ef5aaae4e521cbcd9cf6`  
		Last Modified: Tue, 06 Oct 2026 10:59:42 GMT  
		Size: 4.2 MB (4240651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a06fd5c3efaca6e92b894b2d7f821e317e73b2702af430606eb4ff6986daaa1a`  
		Last Modified: Tue, 06 Oct 2026 10:59:42 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
