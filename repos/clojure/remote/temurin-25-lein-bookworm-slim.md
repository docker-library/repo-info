## `clojure:temurin-25-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:2fbdde79703f5dfbc42431d47092d1356224dbaebc7ac3c3498ef9754625a8b3
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

### `clojure:temurin-25-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:893e57e9c8fca1fe33719e9180ef2229f3ae4f66aa14dadd8935168138c28341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143383370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a648cde87e19a9752321c5240b564ff821cd5fd8bab7e5168950c9d3a369df`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:34:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:34:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:34:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:34:34 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:34:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:34:34 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:35:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:35:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:35:43 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:35:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:35:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:35:44 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:35:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:714ae67d19cdb2a786840441a12cf7e6c019cabce3afa09b8e8dcd4c0edf4cd9`  
		Last Modified: Thu, 16 Jul 2026 01:36:03 GMT  
		Size: 92.6 MB (92574583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d2662764ba9eef0dd3d6c8510b4079a19db243ba1207b50f4cafe011ffede3`  
		Last Modified: Thu, 16 Jul 2026 01:36:01 GMT  
		Size: 18.1 MB (18060521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0296bb0c0509f179140d8212c3b5d941e1d2ca9384828987054cb5f9d75a9a`  
		Last Modified: Thu, 16 Jul 2026 01:36:01 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0593bd7d745a6598761fc7920f2c895da6902c709071d1c2f3d6415e3710f7f4`  
		Last Modified: Thu, 16 Jul 2026 01:36:00 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ee78b09d5c3cfd758f941b627871c94f8fee35159aea1339fd66bf6ccce3f3a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70756277b99e2e65df7774e6dacb4355b0b45676aae84d953110ae5074466e15`

```dockerfile
```

-	Layers:
	-	`sha256:667e837a10904cbc9200ac82c399fc3241d56e3305b31d50a3f4bbca2d3dd9ac`  
		Last Modified: Thu, 16 Jul 2026 01:36:01 GMT  
		Size: 2.7 MB (2700429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd9a8426566dcbdbe5cae49bc1434031ee6e1ff2539ecbde18124a382e6ea0b4`  
		Last Modified: Thu, 16 Jul 2026 01:36:00 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b2c6508f8ae515197a7792727d967ec2bbfcc18406664a15103cfa15b25d4dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142081806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65a10ed463127cbfb524505b22a5c30ceeb6704e932e86924a9c2979718123a6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:30:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:30:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:30:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:30:15 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:30:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:30:15 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:22 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:31:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:31:22 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:31:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:31:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:31:24 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:31:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56151a588ea594cc8280a97ea7d96cb85758a99655629f000db96a9c0dd20332`  
		Last Modified: Thu, 16 Jul 2026 01:31:43 GMT  
		Size: 91.5 MB (91542297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5253e64590251a0dd15d209e92dffdc7945fdf17e46f9f2d33ae29322993aa60`  
		Last Modified: Thu, 16 Jul 2026 01:31:41 GMT  
		Size: 17.9 MB (17906605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a5d0aaf5c00fee7f80654adf273b1583bb7340172af5b7a9594e35c0cb332b`  
		Last Modified: Thu, 16 Jul 2026 01:31:41 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b3de0e7a850bc638b15408b3c6226fd3df13dcc82b2b45f58bf6e38f2325d1`  
		Last Modified: Thu, 16 Jul 2026 01:31:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2bd9ba88f534ad4d309a77a12a4d7edac36f70b54a1291fda34ff0b0273935de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f35dd5b65fdaa3045148e27480919e2f4cbfa2caf08b14ef9d2b2fdce7646ab`

```dockerfile
```

-	Layers:
	-	`sha256:a605dc9e5b0f770a0055cb411e60239351404c96abb6af9dafc0356e10c49536`  
		Last Modified: Thu, 16 Jul 2026 01:31:41 GMT  
		Size: 2.7 MB (2700065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ec03c3bca9aad70ae3a7fb009de3c4628bac5afec2a64f6f0edc270337a82ee`  
		Last Modified: Thu, 16 Jul 2026 01:31:40 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9bed0b807eea78b59882d1ccd0d2e94fafade7b5a51c4bd7f7a79e21b8f6aa97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146769603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b9996c5fd16fc6f0b97a620ee3df3e7298440a36f8d71b382fff33158148f4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:59:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:59:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:59:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:59:16 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:59:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:59:17 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 03:01:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 03:01:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 03:01:51 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 03:01:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 03:01:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 03:01:56 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 03:01:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae72c6d5ece1c3efec4310c7ed616d6b6592829012d6783b6a604ce01a1e80d`  
		Last Modified: Thu, 16 Jul 2026 03:02:30 GMT  
		Size: 91.9 MB (91914003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdad7a229d881305c21c1c0cb2bc0abf26b5018bfdf9d500ee8f77ae8ec6a0b0`  
		Last Modified: Thu, 16 Jul 2026 03:02:29 GMT  
		Size: 18.3 MB (18263536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4499967ad62ce2de7baadeccd7bf6bb8115a235cbada7ec26f4b874cc4a7c37`  
		Last Modified: Thu, 16 Jul 2026 03:02:28 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcfc53827e15f1790d10b9520805639001cc6ab8dbb81c6c8ee60f942c5b93eb`  
		Last Modified: Thu, 16 Jul 2026 03:02:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f44b76a2eeb79ff503c7db22d35305c190767c995795cf7e2dddae9752e509d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2704069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2dd712d9094ed497118eef571977bef70827f0347d0f1dcbc78a0f8320100cd`

```dockerfile
```

-	Layers:
	-	`sha256:c1e8ed9d3354b61a52c7aa989d475ae3961989477bb44611a070ede14aa69e23`  
		Last Modified: Thu, 16 Jul 2026 03:02:28 GMT  
		Size: 2.7 MB (2685586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed93c50006eee7d42ce54ab3832eeb657c83e3d04dc80f8ff888dee710b37983`  
		Last Modified: Thu, 16 Jul 2026 03:02:27 GMT  
		Size: 18.5 KB (18483 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:7210f316617c147ed7a58f3cab1bf54771ace5d6757e4acb5f08835578c4bc89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137549808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30ed5557bf336047adf2a666849a95686fb9bede7ef7dea6f453252eeebc99e2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:53:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:53:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:53:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:53:09 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:53:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:53:09 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:54:25 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:54:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:54:25 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:54:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:54:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:54:27 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:54:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba7d532459f3ef1805877980c86b75af0276b737ee196cb99240497e32f4d72`  
		Last Modified: Thu, 16 Jul 2026 01:54:52 GMT  
		Size: 88.4 MB (88420319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d76b0eb30e43daa1a33294b280848fed649cf29086c92801f7e6ed66ae587e`  
		Last Modified: Thu, 16 Jul 2026 01:54:51 GMT  
		Size: 17.7 MB (17725579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa8a7b9071a0d9b48bf90760bf7db6fdd5036c95be294d8bcab3851b64d238bf`  
		Last Modified: Thu, 16 Jul 2026 01:54:50 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c81cef1d6b9e041dd4b9924387add9dfd5a13ae184fcfaeb7a7f29360853abbf`  
		Last Modified: Thu, 16 Jul 2026 01:54:50 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3defaac15215aeb7134fcdf9e34ebfd4e10db2cc3bcbc9acaf67d9eeccc20eb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2695233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d03af7194dce39aeac5f616ce27a3fc68ce5326cb47c7096e16749ee960e3d3`

```dockerfile
```

-	Layers:
	-	`sha256:c18b6634b5cb4f22be9def951eb8477a61d4652a5155348d29cdb6940e311ece`  
		Last Modified: Thu, 16 Jul 2026 01:54:50 GMT  
		Size: 2.7 MB (2676805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32925057db6ce1bbaf831706693b1e1a01a7527d5275abf5084a055f4ae2a9b9`  
		Last Modified: Thu, 16 Jul 2026 01:54:50 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json
