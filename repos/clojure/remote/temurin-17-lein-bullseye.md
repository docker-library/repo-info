## `clojure:temurin-17-lein-bullseye`

```console
$ docker pull clojure@sha256:a3a49d7caa00e578efb3efd387320cfd1b00abf1fb114a8336a0274aeb16fd1a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:bbdde1891d63f4247e01ddde3036506f49fce326e0b1df08a9d6982f381b2fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221138144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce42898f4d0974625aca93c85a15aa5103ef3f51527029ddcc2c00e7456b442c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:43:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:43:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:43:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:43:43 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:43:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:43:44 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:44:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:44:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:44:47 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:44:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:44:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:44:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:44:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e436f088d44ff9374e530e6e5e5ef685a152d2acf1c0901990732fd18e2d90ce`  
		Last Modified: Tue, 18 Aug 2026 20:45:07 GMT  
		Size: 145.9 MB (145905460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a518c38d4fdd9a90e8df306c33d1bcef62905f59140cdbceb642a0336115b4`  
		Last Modified: Tue, 18 Aug 2026 20:45:05 GMT  
		Size: 16.9 MB (16940021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d8efc2747eddc4766dde6f7a1679d617b95aa2f7f54a0a5b47833c44d53d87`  
		Last Modified: Tue, 18 Aug 2026 20:45:04 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54b1c98c5c280fd2eeae9691a4867117eb8521b5ccc977ef70ac8f22608a1366`  
		Last Modified: Tue, 18 Aug 2026 20:45:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:7aa10a11c0dc2889d74d3ccea10d5b3720c696aa0d59f1314db98f0513ee895a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:155f0d027ec593065e0a88f7cb11b9eb97300444d911e169f08353b7d1d5e81b`

```dockerfile
```

-	Layers:
	-	`sha256:4eeb074749cecf6897512d0200544fc46c998184a4756275d6edc8ca40535e93`  
		Last Modified: Tue, 18 Aug 2026 20:45:04 GMT  
		Size: 4.5 MB (4506230 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28dc3ddca5195cfaf828a3be76a54a0a9016283d7a521fc34928d19d9a9d9857`  
		Last Modified: Tue, 18 Aug 2026 20:45:04 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5d4afe5bfb42c88f39aa2fc307bb88ce7cb4d799e6678020712c7db4646fe42c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218431296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb42875063d249cf4c880ee9239c8a0a4b5133f472a1715ce8787ed882b7a833`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:44:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:44:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:44:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:44:14 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:44:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:44:14 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:20 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:45:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:45:20 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:45:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:45:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:21 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036b5b054978c899f41c27319a116f8bcd5817a5b0e5f609bd9d23c430b462b5`  
		Last Modified: Tue, 18 Aug 2026 20:45:42 GMT  
		Size: 144.7 MB (144724292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42312c9093d424c1286aeb0b797047003d97f2070d1d4bcdfc20868cf29eabcc`  
		Last Modified: Tue, 18 Aug 2026 20:45:40 GMT  
		Size: 16.9 MB (16930495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c641c79e45e35d298aee4da6863dfabf38fca08bb9fb0861a3951e476dfd2228`  
		Last Modified: Tue, 18 Aug 2026 20:45:39 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aba8ad9c7bad7f543e6fef461cce8c604876cc4bbab923b3241abe44e33576e`  
		Last Modified: Tue, 18 Aug 2026 20:45:39 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:1774a63d69ff6404218d9ac13dd40d6719e66d9c081206adbad9556395d3c165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4523063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bb5279fde0c19ba25dc420a7dcc8ecb840ef80b7a975a8851a431ccb478dc01`

```dockerfile
```

-	Layers:
	-	`sha256:a0dc26ced6022fc54ac01cb80c0800557368d3274bb0e8d8ffc5721a621763ce`  
		Last Modified: Tue, 18 Aug 2026 20:45:39 GMT  
		Size: 4.5 MB (4505204 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:872bba3b8da2de8424f44451ce6885ca95ff6fe62c087a2cfe25418692208831`  
		Last Modified: Tue, 18 Aug 2026 20:45:39 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json
