## `clojure:temurin-21-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:b5dfe187a141de77649760c78b435051ec1bb81af6035db04a0790b519c5aae4
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

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:cd72684905a4cf0a856e2ea8e1575fca78a79f5f605fe69bb143a6935a04b57a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231288293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9611215d76c44da90dea02d4588951a22bf38482e457e9b4ba65b0ae7694df9b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:33:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:33:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:33:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:33:04 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:33:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:33:04 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:34:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:34:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:34:12 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:34:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:34:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:34:13 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:34:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad312c82c18b2d075d41bdf1cd48f3454c71a8a29f77d8b77a28d489949717a`  
		Last Modified: Thu, 16 Jul 2026 01:34:33 GMT  
		Size: 158.2 MB (158166965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ce7e3b4f829c88d22cd5946f5c3c29c6c74a346aeacaeb1165b97f30776630`  
		Last Modified: Thu, 16 Jul 2026 01:34:30 GMT  
		Size: 20.1 MB (20108300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb20d75071dc58de22f2a8de938c66beb6d5db4dfe5a5ca01cdbef00aaa86d85`  
		Last Modified: Thu, 16 Jul 2026 01:34:30 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b5ae4063b50791c1977420b9e2183f8e964c04171056b6c60e277b015dbd21`  
		Last Modified: Thu, 16 Jul 2026 01:34:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3a1b29188898e1f0021d75867870e1cb1512a2119f5d40a0aa20384d62766bff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fce615890023bd84c5857f45b1a0ecb9a7cc0f1ce2ac3be319cd9250c75138d5`

```dockerfile
```

-	Layers:
	-	`sha256:576d484bdab0a5d6bd6deee517e3ad1d1d39e9486b7a55a242bc99a1847a543e`  
		Last Modified: Thu, 16 Jul 2026 01:34:30 GMT  
		Size: 4.3 MB (4286556 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed56c275690660970b8cf792d68353cf625360e5fe68c56833db421ae738181e`  
		Last Modified: Thu, 16 Jul 2026 01:34:30 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7bb2067bd109568795382bbec27c4bd6d3b36b19b386fba5c1ce57031cda30fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229311453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ca910cd2b9ff548da84a3673f7e6c377422e1f451c4365edb2b97f2738483aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:27:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:27:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:27:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:27:46 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:27:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:27:46 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:28:53 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:28:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:28:53 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:28:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:28:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:28:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:28:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d01eb8469b94d01f57e197670cc866a1738393c64777240c49b19b1b4d9078c`  
		Last Modified: Thu, 16 Jul 2026 01:29:16 GMT  
		Size: 156.5 MB (156461296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2672bb753e432cdda2c348c7d2ba94736f0d0bf51b7bf6ca68f77355f757df78`  
		Last Modified: Thu, 16 Jul 2026 01:29:14 GMT  
		Size: 20.0 MB (19950817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:425283534992d5b24abfc6659aed4b1fda75a03b29987c5e1242f00cbe104da8`  
		Last Modified: Thu, 16 Jul 2026 01:29:13 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5733e5c92c309ba6214dec3769f181cfe649b570263f5940607771f260c7a77`  
		Last Modified: Thu, 16 Jul 2026 01:29:12 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8736d715c462124f93a463bd648f3856f158740b23bdde84d17a9c11e25d31cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6eb659320936b03c50c8cf341a844b2ec5438d06039f4090b898daa7f91041`

```dockerfile
```

-	Layers:
	-	`sha256:570b4d3f5efddc7cf7bd3e121bc4f0364e7ebfadec5cc90540ce20984f1577c9`  
		Last Modified: Thu, 16 Jul 2026 01:29:13 GMT  
		Size: 4.3 MB (4286195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3e6f5fb1560eb04710951fec1cc89af066d0d9ab0574185609b6b7234a963fd`  
		Last Modified: Thu, 16 Jul 2026 01:29:12 GMT  
		Size: 18.5 KB (18532 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:32dfafd36a28ce7c195dcbc1997b6ce45ea29c601cb0a589926956dd3a2ce60c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235532610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d24af105adbc2de19a63a3f1ac651807e2f780a07ebf9b0632763e95eb9094`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:48:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:48:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:48:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:48:26 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:48:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:48:27 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:50:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:50:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:50:51 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:50:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:50:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:50:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:50:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c7687e3e503f67f28ed48874231824dfe0d502900eb690ce26123c0fce6c77`  
		Last Modified: Thu, 16 Jul 2026 02:51:42 GMT  
		Size: 158.3 MB (158343218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b141c068c0836395acb040834453d9668ff9f2af27b08904be6bf16681b3bf`  
		Last Modified: Thu, 16 Jul 2026 02:51:39 GMT  
		Size: 20.3 MB (20331904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c7444e0a0a93a2deef5d221fa926ec40dd28e8cb234dfadaa4c1c0e97083bb`  
		Last Modified: Thu, 16 Jul 2026 02:51:38 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8c2c6e8ea4cb0c6744003d40f2ef5de48f50ef51aca033632064f536a8557a`  
		Last Modified: Thu, 16 Jul 2026 02:51:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1af8a612d97f3eb98663609d8f2e6d22d58fb8c0b89502d0f1c6a72c32d7a141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02e7d3ad2928041f65a68ea86a7d5101ef035b690758cf57163a118f3515a1f3`

```dockerfile
```

-	Layers:
	-	`sha256:27f04cc93c118c1455fdcc1248fb57a013ab34e427eaecf0c8546d8360d11391`  
		Last Modified: Thu, 16 Jul 2026 02:51:38 GMT  
		Size: 4.3 MB (4288429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bcb266bf2d02652ea15bd8266f7ffbadabba1fe516238e0156ccacb1c6cdb57`  
		Last Modified: Thu, 16 Jul 2026 02:51:38 GMT  
		Size: 18.4 KB (18443 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:6e22698b3575b0d665821b2349b6ad90e846a036b741c87100011b696c7c9314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218832291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4d7d88f49e6af35266ea719ad8d84739e7574d1316b119d813a4df5cbac190c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:49:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:49:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:49:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:49:49 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:49:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:49:49 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:51:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:51:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:51:04 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:51:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:51:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:51:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:51:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4812f56310f0b1f5f6aee1df937e7b04c3a178a2e1815956a8e3fb4d2b23cdf1`  
		Last Modified: Thu, 16 Jul 2026 01:51:42 GMT  
		Size: 147.4 MB (147388347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ae997ea24f8bcec3879dbddffad76ef5baa493c3c7df1724dcf0ef48e01531`  
		Last Modified: Thu, 16 Jul 2026 01:51:39 GMT  
		Size: 19.8 MB (19771026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c28389d9ba60471d55c98a25d490061fd2d07497264637b853089abf195283`  
		Last Modified: Thu, 16 Jul 2026 01:51:38 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6957c9e62c0413006e1615fc7d8381781ce1f92b2e3e1369250bcdd59d38f89e`  
		Last Modified: Thu, 16 Jul 2026 01:51:37 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e3dc484176e9e3da61c93c189afc37369b530fb2b8488b5012fdb844d3871c1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4296758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28e31bf648db25f5f224319f6985581a2c81c1e8d0485a201af5278c797aa071`

```dockerfile
```

-	Layers:
	-	`sha256:cde5ba87fe0c4feb91bafd85d03403dedaede6d432fc108c20664c4c0268017b`  
		Last Modified: Thu, 16 Jul 2026 01:51:38 GMT  
		Size: 4.3 MB (4278370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebd6d9262681432eae7d481ff22018f672ed37196f05a6a82b121a022603f0db`  
		Last Modified: Thu, 16 Jul 2026 01:51:37 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json
