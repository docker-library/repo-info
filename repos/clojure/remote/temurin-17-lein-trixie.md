## `clojure:temurin-17-lein-trixie`

```console
$ docker pull clojure@sha256:8820f5e5ff4acde9aae228eae82181af0e0bdc9f6f6d83de1a042175b31bff9d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:8e12812c04d01f87621f4b60a7da0f74da17cccacee86fe4e93c4e6aad1b2810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218620849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b696abef6fa2bf620fa9f15852e0b46dbd0e1dc918c7b447ed9a8305268352`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:48:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:48:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:48:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:48:18 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:48:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:48:18 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:49:34 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:49:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:49:34 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:49:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:49:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:49:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:49:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22643f6b3227ba116664419fa8eb276c23fcb94ac3db05465479640c19cd3fce`  
		Last Modified: Tue, 27 Oct 2026 00:49:56 GMT  
		Size: 145.8 MB (145825445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a93956ffd678faa54c62b36530367a14852d4c7015335d99422ef9693dd514`  
		Last Modified: Tue, 27 Oct 2026 00:49:53 GMT  
		Size: 18.9 MB (18886141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:128a259dc2fefc4d1a4ca3950b969235a8f97dad75a37f7784374f0c82a3cda4`  
		Last Modified: Tue, 27 Oct 2026 00:49:52 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ccd93312f9e156bc014c7b040dd1a7e59ae2f760972ccaeec8476adfd3e1523`  
		Last Modified: Tue, 27 Oct 2026 00:49:52 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c9708d895f31cef599251ae4e65a60ca9192e0cab9443990fae1adcb87b62db5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de3369b71bb0d175888c29700aa5e52fe490634352e049094815519d53284740`

```dockerfile
```

-	Layers:
	-	`sha256:5f1be66028b37506145389497a80a3e6b7bcf036ece2dd44fcce46d8cc9f5ac3`  
		Last Modified: Tue, 27 Oct 2026 00:49:52 GMT  
		Size: 3.8 MB (3826470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbe76982d3588c648a053649b6c7e12b89fcba208278cabe627555b6a5b02010`  
		Last Modified: Tue, 27 Oct 2026 00:49:52 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c46e09fe0686219a287a5ffdfb73d19cca53372691de67efd97f121b1bc7cf8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217779906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca31e62cfb0ebf60c9413370f2381c8fd829fe6d839b488baf102f8a463e09c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:48:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:48:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:48:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:48:17 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:48:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:48:17 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:49:35 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:49:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:49:35 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:49:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:49:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:49:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:49:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d7735059f882470941590843f724ff5e397cdf84ebac4cf774b45e1e5b61a4c`  
		Last Modified: Tue, 27 Oct 2026 00:49:58 GMT  
		Size: 144.6 MB (144648251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cba720200f9773cdcdb15d53a632272668ea56f3f385d8c3d0a1194e7346bb0`  
		Last Modified: Tue, 27 Oct 2026 00:49:55 GMT  
		Size: 18.9 MB (18854430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac616929bb7f1af21798b4207e6c1fe1ab6a424ffcc728e2691f9facf8f32e9`  
		Last Modified: Tue, 27 Oct 2026 00:49:54 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37d609037318e3087fbcc0779c346a5c0be7d3375828562148c537f9184dd28`  
		Last Modified: Tue, 27 Oct 2026 00:49:54 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:efa41625de52398a3db3a8dbbe85ae53d80758ca7eafcbe09affbeb68edadfcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b85fcd14790805563432e96c33800bc18c4464695d6e652fcfd699151dbad5ac`

```dockerfile
```

-	Layers:
	-	`sha256:948bd476bfbc06684ad2a2ad37c0d21cbce98d8f6ff3f09f459ab7b7d242d855`  
		Last Modified: Tue, 27 Oct 2026 00:49:54 GMT  
		Size: 3.8 MB (3826710 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23c9dcaae76a01394450304a0e576e2a9823dfea95d9414186cc24d3f3da63f5`  
		Last Modified: Tue, 27 Oct 2026 00:49:54 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:27adbe3b89d20df1bdf7bbed3ec060bfe0e4d1322e740cd7d4aeae4b03d49ec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.3 MB (222334633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb5ae5ed91202ebe940c6f9f15647bbe586d50495f9c314aebea5e62333136b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:22:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:22:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:22:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:22:54 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:22:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:22:55 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:27:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:27:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:27:24 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:27:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:27:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:27:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:27:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14205fbba26894adf902cfcd4da08f03dbf8cc5016c01e991ea6e329381c7af`  
		Last Modified: Wed, 21 Oct 2026 10:28:12 GMT  
		Size: 145.7 MB (145671534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0b2dd87de3d0afebb60c88295d0cf34ed23691d3368657f71fba806f3167d9`  
		Last Modified: Wed, 21 Oct 2026 10:28:22 GMT  
		Size: 18.9 MB (18939863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c0178ef39859ab9920c4c2564c16deefa134a6edec042b9e5c368e62f9c4b5`  
		Last Modified: Wed, 21 Oct 2026 10:28:22 GMT  
		Size: 4.5 MB (4515229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14e7cd69314a1fdb45d4f5b3d136f2b12249390023ccb2ae07cf99b8e599442`  
		Last Modified: Wed, 21 Oct 2026 10:28:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a1f523d16f320405dcc62c11c57a3541007961a984c23c4dd3aad03562e8352f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591811f92d5a1f7840816513a9802245e3370573a5a9682a0642090c933e0d04`

```dockerfile
```

-	Layers:
	-	`sha256:a89ec2600ca53c52d7fbb85513663295168bfe5232ffc26f3c5d46bb7c8b4127`  
		Last Modified: Wed, 21 Oct 2026 10:28:21 GMT  
		Size: 3.8 MB (3827468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53b88ebb5320eaa71fbdbf1817db2ef0b9139251303fd8b0620f088266a5db93`  
		Last Modified: Wed, 21 Oct 2026 10:28:21 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
