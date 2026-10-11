## `clojure:temurin-21-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:0fc5691bc3c127b09c289d6d5a6bde0699eb2e5164514c4ab61ac84f898f22ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:98acba2565e83481d18b2694a1e1def9c854532762520ee7e4780fe2c4c255a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211244746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab3ecf2e6995c574245ec30ef9c3b1e6e4278c3ead31c9d40ac15c4bfe5fdb96`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sun, 11 Oct 2026 13:10:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:10:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:10:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:10:56 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:10:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:10:56 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:12:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:12:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:12:08 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:12:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:12:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:12:10 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:12:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e3525d7f71941a5ae1d1e41f18492484f4d547525abedf99e27cc23b79a829`  
		Last Modified: Sun, 11 Oct 2026 13:12:32 GMT  
		Size: 158.1 MB (158117473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b51e2d31088d99f024b68104834573d180d01c73e78aecc8e7b2f49fa970d150`  
		Last Modified: Sun, 11 Oct 2026 13:12:28 GMT  
		Size: 20.4 MB (20362308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3440da334e6fb863cc70a0247069bb252d20f8150ff1686ee75b1b598aa123a`  
		Last Modified: Sun, 11 Oct 2026 13:12:27 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:464a8658bf1aa868c78f35d91d501af202e61c772cd254f6ee62324272f1d582`  
		Last Modified: Sun, 11 Oct 2026 13:12:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8410f672596a778311a1e4b115097cf5d063b00e0b0d59fabfc4cb3a74865d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5655d3cf887ed642f4e9ec5bb33d40f3a022b68f60ce6d1fc1e191a9c282f860`

```dockerfile
```

-	Layers:
	-	`sha256:8876b48c9c5188a13a7671d82658f2fd8e4f6dcbfad586c7086e0b380e2cefc4`  
		Last Modified: Sun, 11 Oct 2026 13:12:27 GMT  
		Size: 2.7 MB (2739470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2da1c72a19c91fb13e4fa3ddf2d5199ed75c62cac3f0c9e162f330cacfe1bc3e`  
		Last Modified: Sun, 11 Oct 2026 13:12:27 GMT  
		Size: 17.8 KB (17772 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:38e3fb4721ed4de5b3ff79616cd69e6daff60685ebdd1b7b28d6a41eb8ab9001
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209210144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64bd50214331d356b23293ae6b52d39137e2fa658b7de1dd52101585bfc2f18f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sun, 11 Oct 2026 13:11:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:11:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:11:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:11:04 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:11:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:11:04 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:12:17 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:12:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:12:17 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:12:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:12:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:12:18 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:12:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad75ab3d18d2aab821aa701a1dba7f5578b928a3e79977e04918edd3258c3686`  
		Last Modified: Sun, 11 Oct 2026 13:12:40 GMT  
		Size: 156.4 MB (156400671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e511ae491cf5b6053749f3bbb40cf6050587e50a21b8baaa9e24e6fa33b1cad`  
		Last Modified: Sun, 11 Oct 2026 13:12:37 GMT  
		Size: 20.2 MB (20156693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed5d6735f03d9c4ba3d5e5b3d881021673006599e4a3d6f523aef53e31e825a`  
		Last Modified: Sun, 11 Oct 2026 13:12:36 GMT  
		Size: 4.5 MB (4515171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67dce4cf32f965aa692132fc16f9fb4fa67565f132602e673afd575fd5d47b2`  
		Last Modified: Sun, 11 Oct 2026 13:12:36 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:20aa4032295473b4e13ca595faae5881287122cdca667f77ff33679b63b76b44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4cc6cfec443b6eaea3ea2f10cf4f22710345947e794d608d18b27f71ef73fd6`

```dockerfile
```

-	Layers:
	-	`sha256:caf0eca24c3102b62023f26bb34c0be1f321f1db0acfd371d0b5e65e26a79f77`  
		Last Modified: Sun, 11 Oct 2026 13:12:36 GMT  
		Size: 2.7 MB (2739085 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7de5c5e507f6dc0d9a61b40973df9cd5a9468df01ed9a84aef7881da4b86ebed`  
		Last Modified: Sun, 11 Oct 2026 13:12:36 GMT  
		Size: 17.9 KB (17893 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d86e7c02158c6144139b643a03d346cbaa907863b69a7aff004a937cb47a8a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215625897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efdfe7f7bcdab1176b4ed4f38c6e4f4ae9d00e2657ac24c1ea2ee93156754184`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:17:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:17:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:17:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:17:44 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:17:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:17:48 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:21:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:21:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:21:42 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:21:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:21:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:21:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:21:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb11497786ec274381b07071fc31623f952946862f1a8776f0627ec34640565`  
		Last Modified: Tue, 06 Oct 2026 10:22:39 GMT  
		Size: 158.3 MB (158282661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8d4e95e05f45f0a6750d3d5408e825122abc4c84458072ff5f037baa953a8a`  
		Last Modified: Tue, 06 Oct 2026 10:22:36 GMT  
		Size: 20.7 MB (20735180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60979da05ccefa4c1b501ef5b7531222ce1ae6c92813ed9db32ce97d5c8bed31`  
		Last Modified: Tue, 06 Oct 2026 10:22:35 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f8bd238e8b9f56f77a69afea45e1fbb25fb5004a411e39bda0f568d95a6f991`  
		Last Modified: Tue, 06 Oct 2026 10:22:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:26054dbc3fff7a253c4e34083ca4f70fdd506768b997ef95ff92fbfa54ee280e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab57ecb345ed7e2e31db5f4d138256e642777633f1324363a446030e5ed9948`

```dockerfile
```

-	Layers:
	-	`sha256:da9fe4015f87fff76868f95513d6339bf90d5475cde364657104d58a9afed161`  
		Last Modified: Tue, 06 Oct 2026 10:22:35 GMT  
		Size: 2.7 MB (2741303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4104e8980e770280b3b93b3d00bd8132e5ee67f15c244d845f0254bd5425c830`  
		Last Modified: Tue, 06 Oct 2026 10:22:35 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
