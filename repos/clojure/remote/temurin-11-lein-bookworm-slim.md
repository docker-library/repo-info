## `clojure:temurin-11-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:a4326f444af40470907d7510472819cc9812cb951c1a2c12ec0e8f19519f9ec4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:897cb7963adaaf427bfd31305b9d4498150408f02458d812965955396a94e634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196706010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29072ced868f1b2c85450daf41e087ea0ed0bd4eda22784a22e8a421186fd62`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:18:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:18:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:18:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:18:09 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:18:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:18:09 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:19:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:19:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:19:20 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:19:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:19:21 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caa41983cae490775692a3b644172f946b41d29621ff621dcc6d0d8a79c9e9fd`  
		Last Modified: Wed, 05 Aug 2026 01:19:41 GMT  
		Size: 145.9 MB (145886290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ded4705fd6fbc961487712a1efff48dbb87f802d2570ec706db926678e8427`  
		Last Modified: Wed, 05 Aug 2026 01:19:38 GMT  
		Size: 18.1 MB (18071909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25028e43b34ec29140a07fb1d36356086cd0f93e5f5aea77c52d5956a53c334`  
		Last Modified: Wed, 05 Aug 2026 01:19:38 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aeb6b8f5ef06c5e6165655681ff28cfcd4c27404c1776cd1494cd5959cc5662c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2767667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e97ba1beff90d8063a947c0496db15dbc9180bee189f2e0615a2ebcbd4e430`

```dockerfile
```

-	Layers:
	-	`sha256:a2c20812dbd4aa0e94c687053d41477e8304a69a8a4627da6b5542a6e42be02e`  
		Last Modified: Wed, 05 Aug 2026 01:19:37 GMT  
		Size: 2.8 MB (2751889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf5e022320993eb60d5970cd235f311a2097b80bd7acd716780c3ab411f4b540`  
		Last Modified: Wed, 05 Aug 2026 01:19:37 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:582607793894d50111528f90e96a74a981ad5221e15a13b5fd20120c9982aa61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193108753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0d661416313847c9825080339c51f78d24a1d04df798713658e5302ee28579d`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:24:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:24:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:24:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:24:32 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:24:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:24:32 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:25:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:25:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:25:39 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:25:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:25:41 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf06100e31f314e77b6e732d3f4360617f178a0dd7c9b368b27623dd1277c769`  
		Last Modified: Wed, 05 Aug 2026 01:26:01 GMT  
		Size: 142.6 MB (142582308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3533bff065f5413f4a00b63df09ee92afafbc87a9433f8694a5523a4f1fe96c1`  
		Last Modified: Wed, 05 Aug 2026 01:25:58 GMT  
		Size: 17.9 MB (17893985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b82b66d1c48f0cc9edb108dc6d67b7c9a6c90ddce1d4c911408facc4373059bf`  
		Last Modified: Wed, 05 Aug 2026 01:25:57 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:90d1db4af1a454e0bdc89e41ba6e7ef8cc38c9da3bb8263c99b18aee9304d0d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37856017b2424ab1deca62348a6e9181821e4dde2d8ffa2f0ffee670236f87a9`

```dockerfile
```

-	Layers:
	-	`sha256:23b05855fd8851427dd6e46b05de550a33cca989c5c903f81aadab9eeb675051`  
		Last Modified: Wed, 05 Aug 2026 01:25:57 GMT  
		Size: 2.8 MB (2752122 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:359a60b232d000c4685ac8e572ee2e7076656ccf9ab0607ca73e71ccaede0f84`  
		Last Modified: Wed, 05 Aug 2026 01:25:57 GMT  
		Size: 15.9 KB (15898 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8975a9a4c640d35007baa400c9ab1bffc3f05d42405a68fb1ba120a1c333caed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187964686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca152e6132d9fdd023f5f157bd3a32c3cc652bebe2748d7467241de338cae4e`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:24:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:24:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:24:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:24:33 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 03:24:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 03:24:34 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:27:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 03:27:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 03:27:04 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 03:27:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 03:27:07 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149a5cce8b2000e28e80d11ac22b79ec3d3eab5bccc99d232ed6e422ba7c1f3f`  
		Last Modified: Wed, 05 Aug 2026 03:27:42 GMT  
		Size: 133.1 MB (133109636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe2e22eaa779bb5b720284f25840ded4153e0e84cb76a16ff245bdbf32d209a`  
		Last Modified: Wed, 05 Aug 2026 03:27:39 GMT  
		Size: 18.3 MB (18263494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd181fe2931e395113c236fa3a41b17c83f98550ef0336aff7e143387616a2b1`  
		Last Modified: Wed, 05 Aug 2026 03:27:38 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b2b42f922c5519cce8cc9e0ec666ff68ea39d51f11a4a2b8fc34fccd743ed07a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2768928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69038c5017b123eca752d56c2311f8625002a3808e3c5a654dceff405cfcfe92`

```dockerfile
```

-	Layers:
	-	`sha256:095b8a22d9cf740d3585d08fb981a448882f82333a6a59fd7074a372c12c819c`  
		Last Modified: Wed, 05 Aug 2026 03:27:38 GMT  
		Size: 2.8 MB (2753107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3df6d798952a3bb652623c5a21f35c203ebf63935379f09cc0bb947f1badc089`  
		Last Modified: Wed, 05 Aug 2026 03:27:38 GMT  
		Size: 15.8 KB (15821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:1159cacd7723a03b332fbcb7b3f502da66b4624206b3128ef4239b2e4b39c889
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.8 MB (175780600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f33882dcb1f7fe31781ac3921fbdfb3cb9dc0d3db7861526e20f3bb0892187`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:48:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:48:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:48:07 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:49:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:49:21 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:49:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:49:23 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a628df3bc4b8979eb35b19e174103d827ef21f8bebd6f7f511de67c5851da047`  
		Last Modified: Tue, 04 Aug 2026 02:49:48 GMT  
		Size: 126.7 MB (126652412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4c492f301f783d06a1a8196102417b2c6614c6b9fc01229e8136ea1f8ac3b8`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 17.7 MB (17724690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4008a01ce877faee517b493e555ae118f82b633fdc498c146f105905ff1ea97d`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:18387bbba52242685bcb910592b43f78c0d888ec30777ee909b6086e0ab6777a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8cd93ea4d63f961a60459d90d13c769d9ca1dc296aed09decaf567491d6ac0e`

```dockerfile
```

-	Layers:
	-	`sha256:703bfca2458421063e15f7aaf811583e97c8a9634045ab2e1bade6d9f29f9c76`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 2.7 MB (2743707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bf67842c0f009ebe32df468e6d0d7ad25e948ef5c4d59d24ad843a2c0addf8f`  
		Last Modified: Tue, 04 Aug 2026 02:49:46 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json
