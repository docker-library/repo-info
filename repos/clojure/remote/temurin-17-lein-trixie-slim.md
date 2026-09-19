## `clojure:temurin-17-lein-trixie-slim`

```console
$ docker pull clojure@sha256:030c4090666409be264552e0cf3ce2f7fba950984c9fe3024955feedc20cf182
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b02a559a37c5cd381a995df675d4fd2001bc2fedfe72966e41d85b0638bf3245
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196923327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f29abdbf0526be1421d832238cb7f614d357b26c597b778cbabd29c4a8c28b9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:14:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:14:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:14:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:14:59 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:14:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:14:59 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:16:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:16:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:16:08 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:16:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:16:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:16:09 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:16:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbc9728e85ab205c89ab1fae73825f315764ae1b6c9eb34a232b2cc638b9456`  
		Last Modified: Sat, 19 Sep 2026 01:16:27 GMT  
		Size: 145.8 MB (145822673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baffe7803821f365f0bc92cccf68fdbf1de6d76b8c879e6017baaf447f34edd`  
		Last Modified: Sat, 19 Sep 2026 01:16:25 GMT  
		Size: 16.8 MB (16754598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0955e0d257690f54d2aaf8a51d3122c638b9eb12805c1b39ad1cc137311f7f5`  
		Last Modified: Sat, 19 Sep 2026 01:16:24 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1edbd9906b08a49b3f0b6e960a9d364f2482d538be4b18616c77d108e18e9782`  
		Last Modified: Sat, 19 Sep 2026 01:16:24 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d67547125c0f389083082161fffabb2a8cb22978f14ff16c499650a2425dd3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5aaea7650f340277ca6133d904de262fb6c02b7d126c6e68276a4171ecb0e4c`

```dockerfile
```

-	Layers:
	-	`sha256:b41c4a75bcdefb46d6ef050e174b91c9ff19a64b77322929d2d2bf490cb87645`  
		Last Modified: Sat, 19 Sep 2026 01:16:24 GMT  
		Size: 2.4 MB (2373023 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07ec5289838318b74810892457d876a021c0c4f61e3569df42b689b3174d0a21`  
		Last Modified: Sat, 19 Sep 2026 01:16:24 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:999ea8b363be14e21aac32b3d321a562a34e94c349f37924c95a5e12743c8e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196064635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4382f3f3cc97fee187312a4c202e08bbe5b45057ab30259b006a76c6f5f9d7e9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:22:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:22:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:22:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:22:01 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:22:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:22:01 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:23:14 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:23:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:23:14 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:23:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:23:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:23:16 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:23:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45bd6eeead16e1fd8c5347f2405395dfce76340082f83e6c30c408c9966f0905`  
		Last Modified: Sat, 19 Sep 2026 01:23:35 GMT  
		Size: 144.6 MB (144647462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cb5432a1663fa3a4507afb38b4369354b8ba400d8fd6a39c976c87ea7343261`  
		Last Modified: Sat, 19 Sep 2026 01:23:33 GMT  
		Size: 16.7 MB (16711831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45976af3a2dad55f0566fa540e94cd643b011ee6bf6918f183c3733ed1648f5c`  
		Last Modified: Sat, 19 Sep 2026 01:23:32 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d856224cbb5df61269d50e01c2fd3a973e656a7f6483b8fa592f5c677bd4432`  
		Last Modified: Sat, 19 Sep 2026 01:23:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0ac43a03c8b8fe0d94bf9c20e0c90ee6fb41007f955982d630b6e1d58d96b639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2390507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3076166ef9440ff2b19a3dd0462d75a61d0aa5fd97bc8987208f4db596896a6a`

```dockerfile
```

-	Layers:
	-	`sha256:4746a9465556e50b27a58c9efdcc54d3ee15b0512bb481908563d6fa3c197f07`  
		Last Modified: Sat, 19 Sep 2026 01:23:32 GMT  
		Size: 2.4 MB (2372633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d31c008951598dd3e16cf0d463ecb48a6df3120822884818db39cdcd3fa05a2c`  
		Last Modified: Sat, 19 Sep 2026 01:23:32 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:aa60781ced8bd1efab219a8b93e748b6ff33d94b0036bf07fe48f9535080bc7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.3 MB (206334402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72565d8601a063eae7f59823c17a20b817592e8baf4ff4070bb28b14089c6ef6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 10:43:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:43:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:43:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:43:53 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 10:43:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 10:43:53 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:47:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 10:47:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 10:47:28 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 10:47:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 10:47:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 10:47:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 10:47:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f64ae923a17a4d37ebd2765cf1cceab85262a12d43b090b263771493ac70f9`  
		Last Modified: Wed, 16 Sep 2026 10:48:06 GMT  
		Size: 145.7 MB (145674282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cbbf7e2fdc6df41fc3fb29d6668e2b5fd514874733b15706047113b840dc54`  
		Last Modified: Wed, 16 Sep 2026 10:48:03 GMT  
		Size: 22.5 MB (22529035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c204c72a40aafc3cbae088be37fb23d6efdfecf2ed46e5a1e7b9421352b373`  
		Last Modified: Wed, 16 Sep 2026 10:48:03 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8e57aefc70f15e7c27ad5d6bb958d4a782c08b710b54720ce422e7f3ea0943`  
		Last Modified: Wed, 16 Sep 2026 10:48:02 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2203e0911b038c10b828194edbff7d1a1fec9bcecf9b59b9ad99956f578ef020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81aa1007d2a4adc3d5b232eade5f932736520ad55bace5bf04d48263e445bff6`

```dockerfile
```

-	Layers:
	-	`sha256:d4baae20d6e29d44f052e53a056131d4a0c2b422fee80ed2ed76593859ccedcb`  
		Last Modified: Wed, 16 Sep 2026 10:48:02 GMT  
		Size: 2.4 MB (2368329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c78d2654a8419912f583cfac20c542f904ce44199b107a76ab3588cee0039b24`  
		Last Modified: Wed, 16 Sep 2026 10:48:02 GMT  
		Size: 17.8 KB (17796 bytes)  
		MIME: application/vnd.in-toto+json
