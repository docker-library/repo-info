## `clojure:temurin-26-lein-2.13.0`

```console
$ docker pull clojure@sha256:40cc045203aaea992ba081badac30c617b709a2e6db9b018b6f0a5de884ab471
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:b099f6594f3e409934265ded70a715eba6eeef647211262343d56e831aef271f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170034415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6400ab01930aa9305db9d84e49ff1efba33532e4da95b44bfa783cf2fdbf4cc9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:52:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:52:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:52:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:52:56 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:52:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:52:56 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:54:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:54:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:54:11 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:54:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:54:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:54:13 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:54:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b95a4f69a0eb584e76eb4479d5b3e9e692f950a537de2901cb3033f7f24aa82`  
		Last Modified: Sat, 17 Oct 2026 01:54:31 GMT  
		Size: 94.6 MB (94563480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00741bfa7699299e8067d9505a5b25c02cb35a2827b9f58cb27722260af29b0b`  
		Last Modified: Sat, 17 Oct 2026 01:54:30 GMT  
		Size: 22.4 MB (22437273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6394ac590522d70fa5ee5b285cb43a3cd4ad39e66e6f9b38d128c873e9cfc5b2`  
		Last Modified: Sat, 17 Oct 2026 01:54:29 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9819c45f6ebd366711b67d205eabab190e85ee9167517e4eae1c82bd804660`  
		Last Modified: Sat, 17 Oct 2026 01:54:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:4778a2dff80f00441fb3c2de6f25350effafd52a8cfbe30a028215a7c4069ba7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d7b953276ce377cf52bd4d6e5b6d539c08f0e7989b93b3df08522ed5a91ff7`

```dockerfile
```

-	Layers:
	-	`sha256:12b7f578ec1016baebe8903202519cc476ef56dd7ec8343ce7844b378f0f06f9`  
		Last Modified: Sat, 17 Oct 2026 01:54:29 GMT  
		Size: 4.3 MB (4254842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93743b0e17546f18ab4397e9eff700500c9a9cfd77bbb9f92168dad190f5765f`  
		Last Modified: Sat, 17 Oct 2026 01:54:28 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:49dbc01ab61f81f2ac2ba9d871a312536cb2aae7601e10eb73e77f5c5d0d68e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.7 MB (168690840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9d754aff57fefdef1283c5d50b03b32b7ad42e1398b5b8acadb031260e0200`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:52:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:52:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:52:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:52:50 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:52:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:52:50 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:54:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:54:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:54:05 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:54:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:54:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:54:07 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:54:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e843151786f06138e07bd6967a9f8b600688214380e3c5b0fcaaf09c8b90c5`  
		Last Modified: Sat, 17 Oct 2026 01:54:28 GMT  
		Size: 93.5 MB (93543584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e38d40681a20f5766998de1c43912273899d3431a673279b5e7430426ce0d79`  
		Last Modified: Sat, 17 Oct 2026 01:54:26 GMT  
		Size: 22.2 MB (22230072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e3e59204c9127928e076e70b57a879be9c68a3e9294773031e1d85e72e6c423`  
		Last Modified: Sat, 17 Oct 2026 01:54:25 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ce63eb554c475a1c8271ce0df3c78e3b9a4e1ac948db54e3da0919a72bdddd`  
		Last Modified: Sat, 17 Oct 2026 01:54:25 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:fd5a3439aef1cb5af51c4851eed29c2ceed978ecb881e0e121e4c4a5dd000c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a6cc0c67f5a2dc098c6c6975a3c1a7f6e5a9df394a5c84446761ae17061cac`

```dockerfile
```

-	Layers:
	-	`sha256:e979c03227ed52063adec257956f7f62c6e1f0934f33bdc9dd6b7d26a0f6c863`  
		Last Modified: Sat, 17 Oct 2026 01:54:25 GMT  
		Size: 4.3 MB (4254478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc30f66756cb5ee6cb4fc038d836a7b28c2bc7264711aa12c15dc860f70bf38c`  
		Last Modified: Sat, 17 Oct 2026 01:54:25 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0` - linux; ppc64le

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

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

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
