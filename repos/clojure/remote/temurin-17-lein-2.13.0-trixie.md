## `clojure:temurin-17-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:f10fa6a439c9afeca3a32325ee1dd10a9bdcda1a5273ea8b348f1faf87e3b26c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:65e2d449f200c84577390927cfd8a397bdadf0a9d975308608a31640e048f29f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218634526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d232bbcae9dda4ab5716a1b09fb71f938c026d527caf0ae81ad3411ef6aaaba`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:11:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:11:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:11:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:11:56 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:11:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:11:56 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:13:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:13:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:13:12 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:13:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:13:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:13:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:13:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68a77596cf55aef7df61c880ebc8fef012301da4cff3362644c1426532ef033`  
		Last Modified: Wed, 28 Oct 2026 02:13:33 GMT  
		Size: 145.8 MB (145825466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:131961ea1bd8eaf2bff1545ea5b29a66bb5e323e0e2c4321e87a3def104208ed`  
		Last Modified: Wed, 28 Oct 2026 02:13:30 GMT  
		Size: 18.9 MB (18885572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e3be5e93432d5ee66f919e173f0daa17fb21f9c087409872a096b751c83e72`  
		Last Modified: Wed, 28 Oct 2026 02:13:30 GMT  
		Size: 4.5 MB (4515161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81dbde925178ed98bc28aaabd9515688a4646312f8db60474d213e98d6d3a3e`  
		Last Modified: Wed, 28 Oct 2026 02:13:28 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4bfe43ee3bc7b80cdedc24c3cfb0258250d339a9fd688740a9311210950c29c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f1861c2f9a8dd32e03eb47cafa25b5a9855c7ab24f88b0b7d944383288114cd`

```dockerfile
```

-	Layers:
	-	`sha256:33a301d9498abe80ab7604caba533d244782d7d0b51583fbb9ab0428f71127e0`  
		Last Modified: Wed, 28 Oct 2026 02:13:29 GMT  
		Size: 3.8 MB (3826470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35a9c51112007abf7fc4f47b5c38e395c33dad48768f344e9545fc36b12e7d29`  
		Last Modified: Wed, 28 Oct 2026 02:13:29 GMT  
		Size: 17.7 KB (17717 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6a8fbb749d7043ca6609b2362ae9c059c668208311189c9bf5da8fb9bcb49e8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217794348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d279c0180d3a37f63eb264632dd1af16ecf030a9d1a037eacdc019d3060de15`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:18:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:18:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:18:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:18:20 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:18:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:18:20 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:19:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:19:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:19:42 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:19:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:19:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:19:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:19:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec0a9652f5d3e6c99db3590ab40e50fd851d31af841179ab1cdfe057dc15df30`  
		Last Modified: Wed, 28 Oct 2026 02:20:04 GMT  
		Size: 144.6 MB (144648247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98912785e9a0bc772875775db7a863d1b0e878a43fa55153852ae7b483be1a0`  
		Last Modified: Wed, 28 Oct 2026 02:20:01 GMT  
		Size: 18.9 MB (18854287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42767ba6841349dd49f3b86df48542a33a38e36aa1a41e5eb200f54bc36b5c48`  
		Last Modified: Wed, 28 Oct 2026 02:20:01 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3783f507bc0fa8b71f1d9f3159594218e157dc687b42b56959c56692e4d9ff30`  
		Last Modified: Wed, 28 Oct 2026 02:20:01 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:72f74db80423fa3452361828a2e48a031380ca8677eb6853634a81e3b1b7b926
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58404f5268229d57d39726c176a4b2d658bbf2e58fddee5626b6bb536271a69a`

```dockerfile
```

-	Layers:
	-	`sha256:fc152fd3dbceb7fa8cfc8b5be6276bd76b83aed06923c92f97f75ef16766838b`  
		Last Modified: Wed, 28 Oct 2026 02:20:01 GMT  
		Size: 3.8 MB (3826710 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfadf538246186d9cff40e37c1e54f793008da970e25ec88b4a96f92dddc873c`  
		Last Modified: Wed, 28 Oct 2026 02:20:01 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; ppc64le

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

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

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
