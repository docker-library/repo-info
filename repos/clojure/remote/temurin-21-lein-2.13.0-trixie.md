## `clojure:temurin-21-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:408b0a5a5d772c42b4364b2f449a60a5f6a31da9a9821f4d74b8e1f472d6d254
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:3aece4ca0bbe1ef1190459e79c880941b3f406f5c91be14115159bbbb93ac029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230913398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ea66339c20f6417793b32b8ba581d93900da74ea80e486e27e9dc66fea04a2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:50:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:50:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:50:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:50:32 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:50:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:50:32 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:51:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:51:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:51:52 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:51:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:51:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:51:54 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:51:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ad043d7f6cc090ef1f01616944f44c8de4e04b9bf8c0a0cd93e7a399ea59c6`  
		Last Modified: Sat, 17 Oct 2026 01:52:15 GMT  
		Size: 158.1 MB (158117473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b0a819c7c01e17ae6febc6dc98d51816dcebcf3ca2eae4c89229e2b1b440ab4`  
		Last Modified: Sat, 17 Oct 2026 01:52:12 GMT  
		Size: 18.9 MB (18887088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d582c0def2e86632f5bf917b94a6637e8de499f55d07166fd167649b45a9f61a`  
		Last Modified: Sat, 17 Oct 2026 01:52:12 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8541f2c281a2445246b405ff351da8fb6f1d650732b6ec5c1090113a22e83cbd`  
		Last Modified: Sat, 17 Oct 2026 01:52:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0f6159c3b39c5ed0d3f797afe84b7f22cf205729634bd162d75ab5b4233526f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3847315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83859a77286e4b8e3cf133b8fc6086786f69b5d13251db89218f5ba5546f0154`

```dockerfile
```

-	Layers:
	-	`sha256:025d40ab67dc33af4bd82e4ffdfc12f97298861cdfa72da2514f700302930437`  
		Last Modified: Sat, 17 Oct 2026 01:52:11 GMT  
		Size: 3.8 MB (3829599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c76990a42526ccce434148a150cf358bea01cf0414206b86ff5fdbd7a41fa131`  
		Last Modified: Sat, 17 Oct 2026 01:52:11 GMT  
		Size: 17.7 KB (17716 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e0f2fb994986cba073e45c625dbd05e4600bf6b9d4fd6db3c785ecca4cc45e9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229522498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102e7a01ecd310420529f75e01c3444a24d82456a79d3683be77b91e0ace8c7b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:50:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:50:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:50:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:50:38 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:50:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:50:38 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:52:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:52:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:52:01 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:52:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:52:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:52:02 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:52:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114d495f95d76cb745367531b19171e6bfe10dd41282dd7372637b5af5c5b0a6`  
		Last Modified: Sat, 17 Oct 2026 01:52:25 GMT  
		Size: 156.4 MB (156400641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e48c668cef8f800b75c5d6e7d4080e809b8737ca66272e6d3fd324cadbb7a4`  
		Last Modified: Sat, 17 Oct 2026 01:52:22 GMT  
		Size: 18.8 MB (18845146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971cbbdf317672a546cfb7a9304d29e25653e042a66366006205b3b8ed49c6bc`  
		Last Modified: Sat, 17 Oct 2026 01:52:21 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd9e2026dcd44873ac59af71358658372f17a0140cf37584463a2cb65294a69`  
		Last Modified: Sat, 17 Oct 2026 01:52:21 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3a10ae9cf2fcca5e4c25bfa42ef7bf195696e2d913aea58b3ba1571594ac4775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3847678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47abd49cbf663a541f6e40153984c6fc51f110cbc06f221b7f330ff482429c5b`

```dockerfile
```

-	Layers:
	-	`sha256:e055900e249bd79121910cbc9a47ec7b9ebdecd6eed4e6ab086e4a370f432f3d`  
		Last Modified: Sat, 17 Oct 2026 01:52:21 GMT  
		Size: 3.8 MB (3829839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f638003b37abffec6fef27ee6955f25b1c5c591f7235190e2f48a05304328ff`  
		Last Modified: Sat, 17 Oct 2026 01:52:21 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:f46cb807f04b13c8d564d121b3898b193fcb395b45c369f8a39d0f8ac8a3d82c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234948191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b18cb707f1412a5c8e8f829154cc811efa306c17e59dbf076d4362eb7de00ed1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:03:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:03:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:03:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:03:12 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 06:03:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 06:03:12 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:07:49 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 06:07:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 06:07:49 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 06:07:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 06:07:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:07:53 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:07:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7696acf7ab9b391fe05c5f773ce243f2009dfca860bdc385909d39000d72c04`  
		Last Modified: Sat, 17 Oct 2026 06:08:43 GMT  
		Size: 158.3 MB (158282652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4811abc67655788bf6189943adef1a7f9299e378a1d4cb1ad23df4a2dc2b04`  
		Last Modified: Sat, 17 Oct 2026 06:08:40 GMT  
		Size: 18.9 MB (18942790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd0a0e1b545d87f68a812a90cc1ca0c26aee46e80167f541a19bc47e097606bd`  
		Last Modified: Sat, 17 Oct 2026 06:08:39 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5af4c81dcf6c2716b4cf76a360bdf2bee31d9eecc9a5ac66bdaf8227fbe192d`  
		Last Modified: Sat, 17 Oct 2026 06:08:39 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ab69cea60b5d98840f46a7e4797baca258f2a74b14808805d3e42021fee9c059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3848359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587e2fccbb0f098249d068dcb58b68307cfc6fc76b9f68dea3e5d7f89c318408`

```dockerfile
```

-	Layers:
	-	`sha256:a5a1dcf4d10f96dd800ce45838deba21d6d3890566800b700f69ba336e337266`  
		Last Modified: Sat, 17 Oct 2026 06:08:39 GMT  
		Size: 3.8 MB (3830597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9426483e02fa4a8730aab49c5dec73f83cfb83dd7125b43478f702be7e18e4e4`  
		Last Modified: Sat, 17 Oct 2026 06:08:39 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
