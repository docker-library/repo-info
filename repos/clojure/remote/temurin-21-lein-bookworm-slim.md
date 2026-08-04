## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:1ba5d390447aac473001b17f08f56a87ca1feca54e85d62e9c44dd7363b2a21b
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

### `clojure:temurin-21-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:dd71777fd2c14cbf4dfbfe8f6603ef50656c50468cc19c22e680dde292f84867
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208986889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc66e09ec1409323f45d1a9f94a5cac4f25d2f48b163dd24798fcf579988868a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:51:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:22 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:51:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:51:22 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:30 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:52:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:52:30 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:52:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:52:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:52:32 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:52:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f928a52f133e961b88a37e9864fa2cb1100876db54ba8b9b1d9a54e2a36b1c`  
		Last Modified: Tue, 04 Aug 2026 02:52:53 GMT  
		Size: 158.2 MB (158166900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d01ab9c6c747a1b89e3c490a87d87b57b1ab1dd11b24f18cea7b5f0012eef9d4`  
		Last Modified: Tue, 04 Aug 2026 02:52:49 GMT  
		Size: 18.1 MB (18071688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f05a2cd6f79c994e84a14ba93790d98127364844f971f651d825409ded1af2`  
		Last Modified: Tue, 04 Aug 2026 02:52:49 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30470f372185749e3daa69c61e155f09ef9a36ae436d8978feea1023bb281435`  
		Last Modified: Tue, 04 Aug 2026 02:52:49 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e7565da1d9cd26082392e3ac40345dd8a92f23b967ba97f26633865cbff49466
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2751998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02de62091a676ac75869c06de2807d684bf5582554adfeab82497a81a8f3ae33`

```dockerfile
```

-	Layers:
	-	`sha256:060966e911fc24a72924670eb2b0b3c50644e5262a80b520c21bb5abc2bd6e0d`  
		Last Modified: Tue, 04 Aug 2026 02:52:49 GMT  
		Size: 2.7 MB (2734225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b03e4951f0afb45852161371e3a3ee40f71ae77121bbb899a682d1fc914566d`  
		Last Modified: Tue, 04 Aug 2026 02:52:49 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9de3f5db2e5fadc1367ae4300922948767d996e5d4beac70f76ac16e95f3e692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (206988157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3d04c420d3868472b66e45c3e9ee36089afa4ea627f51237fad135e198318b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:51:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:46 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:51:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:51:46 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:54 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:52:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:52:54 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:52:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:52:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:52:55 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:52:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8b0f970a12e562a274e9043ef83bf92bae0d264c1e8e07be7dff09f5a0cb63`  
		Last Modified: Tue, 04 Aug 2026 02:53:17 GMT  
		Size: 156.5 MB (156461249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fad82ab8d8b5ec134dd13261548d210b948136b4c81eb02f5ce2535792fed06`  
		Last Modified: Tue, 04 Aug 2026 02:53:14 GMT  
		Size: 17.9 MB (17894048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b970feba07df0411a81b444b7f58af9e111ddb9e257b8b98e5c0fa0b1f7a7e`  
		Last Modified: Tue, 04 Aug 2026 02:53:13 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8690abc14004ff6ae69ad1d627b6c77173b18fde8023c7b8b122c9b57f99e0f7`  
		Last Modified: Tue, 04 Aug 2026 02:53:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a54b6f8f67403bbb5a7ed21e48af4561b1bcad9577664ba39c0623ffb1dab879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2751734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0f2c2fd5d85c0582277b7e794dc0240249b851341071908ccba32d80d922e8d`

```dockerfile
```

-	Layers:
	-	`sha256:0f5d7294a595788369ea7e285ca3715f8c35d8d67265b438225d5f16ff5e238f`  
		Last Modified: Tue, 04 Aug 2026 02:53:13 GMT  
		Size: 2.7 MB (2733840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa3c1b611a1f27a6517f9433290a18d418d44787860edba9d8aabac62c352d6b`  
		Last Modified: Tue, 04 Aug 2026 02:53:13 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8c9a7596b08e59298ac827e692da5430857129c59bc8e7594002c67e41c8a582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213198817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5658fbb01666de87132c08dec0ab931a2f48b70679d19cdd14090dc9d877cf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 05:22:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:22:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:22:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:22:57 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 05:22:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 05:22:57 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:25:37 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 05:25:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 05:25:37 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 05:25:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 05:25:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:25:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:25:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039e1178dc837c53034ec9916ce22cf02fc82a8eaca3091bf7380bee700f97e7`  
		Last Modified: Tue, 04 Aug 2026 05:26:23 GMT  
		Size: 158.3 MB (158343200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4852a42f1fa392afb62e437fd2d03c92fdb3f0a603ee9b5e44967df784c232`  
		Last Modified: Tue, 04 Aug 2026 05:26:20 GMT  
		Size: 18.3 MB (18263590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec874bb25486c57b8e033a8e152203c5d67a6f3a7e80b225b51d1c8c9bb7ff59`  
		Last Modified: Tue, 04 Aug 2026 05:26:19 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2622194fc59de9ee38afe395de916a295afe6e3e58ddcb720e3b10006b54a19f`  
		Last Modified: Tue, 04 Aug 2026 05:26:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:125246f578a73f5989a008a0ef16b5eaeeea2be39da10f9dd990669f8054a6b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2753875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6a2561256d323ef018d77305142e529a8d4183ac472698ba2fde4d1c0f5fdb`

```dockerfile
```

-	Layers:
	-	`sha256:84372454899f68c0ee97414fa3c35038f805fabec98bdff8ffe62f9a782e9570`  
		Last Modified: Tue, 04 Aug 2026 05:26:19 GMT  
		Size: 2.7 MB (2736058 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03b4ee1c7a622653f5a0f8a7aad090733fa2e823fec40b611a21f0fbd4902e01`  
		Last Modified: Tue, 04 Aug 2026 05:26:19 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:63f4ce0e60dd9b14e625df24001575cabe5bbca58b5c93d500b8e6d8985ea1fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196517097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2ef406dff129cfbbb2a4c0f1bd2acea4279fe86cc1e40de297bdb00e46f213d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:57:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:57:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:57:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:57:24 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:57:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:57:24 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:58:31 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:58:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:58:31 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:58:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:58:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:58:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:58:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a3f24365b2b7be6a120bb31ebefba7be7e45fc966d4300ec3976b14e69bc0e`  
		Last Modified: Tue, 04 Aug 2026 02:59:01 GMT  
		Size: 147.4 MB (147388360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa196c9e349364d44d77fd6624e5df1cedbd897e1b1dd32a74f778979daa609`  
		Last Modified: Tue, 04 Aug 2026 02:58:59 GMT  
		Size: 17.7 MB (17724812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c145bc2d6aa3dbca4fb244c923227ae4b74f99e05f6c5e5f9dbc93dcf808f913`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f7f7354e1c2f4323b7d535e2e9206a7ca8114b57e953900396f494b667cc74d`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c21219c923ea8686ed6947c2465781bef0bffc57893792bf7ec05c2a8ef4dff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2743812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990b9eebee90f64103ebe257d9c57bf1b4947f11664ee96b594728c39c8ae35f`

```dockerfile
```

-	Layers:
	-	`sha256:fadf4bca84fb2200d6b9cd1275c3d72a17526b6e12d3a4b4929d485813938ea3`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 2.7 MB (2726039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:311fbe1f6991b8f77104a43500ed38a689af5c982d18a12632df0838306d7f46`  
		Last Modified: Tue, 04 Aug 2026 02:58:58 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json
