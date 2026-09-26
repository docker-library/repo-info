## `clojure:temurin-26-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:b787958ca46c6da07119a93aa6b848879d5b92b665898c53bd435d7c043586c3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:25355f3216510ea5bf26d4cb599dbfa4a5e2ec557b7db318a221b044647296b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.7 MB (145664606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f72063ec64d72dbdeaf85012510acb1060ecfd88e456ec02852ea01141df0303`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:25:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:25:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:25:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:25:47 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:25:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:25:47 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:27:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:27:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:27:05 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:27:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:27:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:27:06 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:27:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b849174b23c8eb67ecd8abc2ce83963deb273160835766a72da2d6ddbbbc28`  
		Last Modified: Fri, 25 Sep 2026 23:27:25 GMT  
		Size: 94.6 MB (94563471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c5dc021498b85387aa0f407625af44998f3b5c63ede926d9168f3e875c2783e`  
		Last Modified: Fri, 25 Sep 2026 23:27:23 GMT  
		Size: 16.8 MB (16755076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31da00056ce9063bf1d95193c6b9b0ce88782ad06edafc9638d6998c4ea863b7`  
		Last Modified: Fri, 25 Sep 2026 23:27:23 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ed91817aa55ec7345d2d570fe0a502b6b367aea6da5acc8da9e56eef892699`  
		Last Modified: Fri, 25 Sep 2026 23:27:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8fac4b00f1926f036e1cecf23f99d8a6642ae08915836902ef338bcdaec89e9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2355670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad54a7e748bab774028d0bb0a8d7de48ea239f13aa0ff5f417ed3cb574c96f10`

```dockerfile
```

-	Layers:
	-	`sha256:4024f968778d4d92321d53cafb8d0b013927196b688ebcedd609c9c591ab806c`  
		Last Modified: Fri, 25 Sep 2026 23:27:23 GMT  
		Size: 2.3 MB (2337924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e52c205533ca1a4c34b44e171034970f58d3af0a5f2a5a15abfe46e80522749b`  
		Last Modified: Fri, 25 Sep 2026 23:27:22 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5641dc195b5cf85fc56a7b5aa681756c6789fd1b8d9a73dadc2282f7e1e9a75a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144960844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9855274b7e100363f0e205a2a83ce0d958be86e38173a0e859a7922114b2740c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:23:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:23:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:23:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:23:38 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:23:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:23:38 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:57 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:24:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:24:57 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:24:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:24:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:59 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebec80d53853c3a03991d0bcd7902df9cf2b6e633da41649241279103df93238`  
		Last Modified: Fri, 25 Sep 2026 23:25:17 GMT  
		Size: 93.5 MB (93543593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c28b021b7fe6d2a7aae3f462040ef644db0c01b520880d613704c8e3f3c548`  
		Last Modified: Fri, 25 Sep 2026 23:25:16 GMT  
		Size: 16.7 MB (16711942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f26b1abe9cdb6ece362bf8b10d92831c5af80403be451ddebe74dffb4962043`  
		Last Modified: Fri, 25 Sep 2026 23:25:16 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8f626efed8852a62b93d948e16d4d6167d6239185f4fdc30914beb71641247`  
		Last Modified: Fri, 25 Sep 2026 23:25:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cc253fcdfb7c581c1fdae350d3e95205b2dff2e35c39369c29091f8aff1e3758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2355398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61cfad3584d6c91c8eda931198cee629bd4800fee4ce1e4cb38fb5afd0ad8f72`

```dockerfile
```

-	Layers:
	-	`sha256:b71cae8eba2924b05c68cbf26ba65ef4d7ac4df45def0ad41595af05d2b5fce1`  
		Last Modified: Fri, 25 Sep 2026 23:25:16 GMT  
		Size: 2.3 MB (2337531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72d8615f8588839ec56736a28fe34b0c8ea61ae0a0cd1b240196e6681df179cc`  
		Last Modified: Fri, 25 Sep 2026 23:25:15 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5a3ac2b4769712cfd1cd3d58dfd9d447e1b310ecfcfc504f1e23f8eb654c4be9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148290151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841c51f5b693bb7841efb73344fcac7417bf5607d986a98c3e7fcab8196bc7cb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:52:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:52:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:52:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:52:21 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 05:52:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 05:52:22 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:55:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 05:55:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 05:55:13 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 05:55:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 05:55:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:55:18 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:55:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c1d58e1ed8af222eb3223e09529d71227dfb66080508a281b43b31b69ab946`  
		Last Modified: Sat, 26 Sep 2026 05:55:53 GMT  
		Size: 93.4 MB (93350841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82994ede0482d22e4f2c186df6c609bf6fdcb48c1e601c8cf044c24c8e25ad12`  
		Last Modified: Sat, 26 Sep 2026 05:55:51 GMT  
		Size: 16.8 MB (16782433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094868ad3f2d69074e6d631188f47b490dc109f50d8fdaad8c46395aa00a6451`  
		Last Modified: Sat, 26 Sep 2026 05:55:51 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd523d203bf671bcf3474f48995093d5f12eafa5aaca6645a014e4c73805db62`  
		Last Modified: Sat, 26 Sep 2026 05:55:50 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:33a2978cfa9d5174c3585c7e12d502147e063fa681126630a099c6cedd27ea70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2340629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:731efe600fd8d5d9b21c7e4634c8d3e276468ff2c5ff6ee86f924bfeb094f02a`

```dockerfile
```

-	Layers:
	-	`sha256:b7065cb77a866c6a8d984b3e1e6633aa3fbdacb1ef9f890c86120e2bba01c216`  
		Last Modified: Sat, 26 Sep 2026 05:55:50 GMT  
		Size: 2.3 MB (2322840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5eaabf3040b851cab544c2dece76a1aa944eda8927a840a224064647c99da4e`  
		Last Modified: Sat, 26 Sep 2026 05:55:50 GMT  
		Size: 17.8 KB (17789 bytes)  
		MIME: application/vnd.in-toto+json
