## `clojure:temurin-21-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:1f6af134f800bb18a8f5da85a4cb3e4c87e31ae6acb3e79a1e05325e0695adc7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:d0b5d9d76f6cdc65c7cedf26526671547b77f6081f4fca0131eea5ea9d0eceea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.9 MB (230913660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99d3132e0d56744281f80ed22b393103377b879c62c5cbe441f6cab5a1b46de9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sun, 11 Oct 2026 13:11:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 11 Oct 2026 13:11:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sun, 11 Oct 2026 13:11:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 11 Oct 2026 13:11:19 GMT
ENV LEIN_VERSION=2.13.0
# Sun, 11 Oct 2026 13:11:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sun, 11 Oct 2026 13:11:19 GMT
WORKDIR /tmp
# Sun, 11 Oct 2026 13:12:29 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sun, 11 Oct 2026 13:12:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sun, 11 Oct 2026 13:12:29 GMT
ENV LEIN_ROOT=1
# Sun, 11 Oct 2026 13:12:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sun, 11 Oct 2026 13:12:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sun, 11 Oct 2026 13:12:31 GMT
ENTRYPOINT ["entrypoint"]
# Sun, 11 Oct 2026 13:12:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e240a2640bc89b3216524e5bb19cbdd3eddd6dad4bc76a9700b75a9cce3892e8`  
		Last Modified: Sun, 11 Oct 2026 13:12:51 GMT  
		Size: 158.1 MB (158117474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaaf2696e78630e8397eaf123dfe8d8d9587d84e205ecbd3779c58696455eed7`  
		Last Modified: Sun, 11 Oct 2026 13:12:48 GMT  
		Size: 18.9 MB (18887343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3e5c787d932c88e8194d2b1d4f67926212eb796a6a16b02677dbdb593ef2d5`  
		Last Modified: Sun, 11 Oct 2026 13:12:48 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2578be80a4504755f1bf321cfba5d96cc981386e2b67cf1f33f2a5c31cfc1968`  
		Last Modified: Sun, 11 Oct 2026 13:12:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2b9aa148dfe8364179699b1499ef870f77213713c032f1eea4d50ca84a9a8963
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3847317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5012a509a5bd3deacfcb5d5b6ad35d4863f0ff58aa97e2a4eaa08e4b6d74fa`

```dockerfile
```

-	Layers:
	-	`sha256:8361379de44fc36ddfebe3dfd620613890219d2fd4eebc0fba2fec4b0d06c729`  
		Last Modified: Sun, 11 Oct 2026 13:12:47 GMT  
		Size: 3.8 MB (3829599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2257afe6720560b72dc1bcdf16b0942b01b8bec5aab49c3d75a597765604570c`  
		Last Modified: Sun, 11 Oct 2026 13:12:47 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:68a8771cd9ef30b9822731623174d5bd3dacd2b44f0f866a74c26c991a20158d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229522634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6633b4ffa53df75de5cc7e1e56ed2cffee373853348b84d989eca17885920707`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 19:11:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 19:11:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 19:11:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 19:11:24 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 19:11:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 19:11:24 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 19:12:50 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 19:12:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 19:12:50 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 19:12:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 19:12:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 19:12:52 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 19:12:52 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adf0d9f0e5ca64b61bdb04c4271ac238f51d9d763245346c19fead65c1bd980`  
		Last Modified: Tue, 06 Oct 2026 19:13:14 GMT  
		Size: 156.4 MB (156400692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5800c1111dc6f8e2502d42ffaa24070e3a9482a3dbd08b74b0bd88c529702d5`  
		Last Modified: Tue, 06 Oct 2026 19:13:10 GMT  
		Size: 18.8 MB (18845234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d0c4e1ed3c9e82366a2d6019ca7f74ae47e3b689070c24ee7549ccd3ac8ad3`  
		Last Modified: Tue, 06 Oct 2026 19:13:09 GMT  
		Size: 4.5 MB (4515172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cede57b0b6cb7f10cf08563e55285b15e9b8bdcf41929925c99c5da17ec95f3`  
		Last Modified: Tue, 06 Oct 2026 19:13:09 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:eff119882a0f39869f3bd5dd437b12a9629501d5a7112861e52331aa80e8e78c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3847678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da8daea60ce798481e950f4dc5dfd9508b51f2683a69dc6d1438dc2c1f5f58d1`

```dockerfile
```

-	Layers:
	-	`sha256:b9bac1153e91b95812e7e37a8450a85ae1526759cf1675cd1babdaeb235dafd6`  
		Last Modified: Tue, 06 Oct 2026 19:13:09 GMT  
		Size: 3.8 MB (3829839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b966ef915b24b492d146909f1e008f9885c27ceaeb5320f7a6d8c9d013217703`  
		Last Modified: Tue, 06 Oct 2026 19:13:09 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:9d2c9fead33a7beb6062e14f895b2893251e508ac5bdf1257e60c716614dff38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234948449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb9215bcb6ed8afb08624309d9be8521cbb932f8377f5d52b2467c73ba76e6eb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:22:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:22:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:22:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:22:42 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:22:42 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:22:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:26:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:26:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:26:05 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:26:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:26:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:26:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:26:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41977f413551ab2fd63060ebb846d5e4f0c049905a55110cfb81f20f82fcef19`  
		Last Modified: Tue, 06 Oct 2026 10:27:15 GMT  
		Size: 158.3 MB (158282644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cec2e72d1903a691e442e7b8393ccc9d105b2d30f9fbc7901dc00f2ef1fb527`  
		Last Modified: Tue, 06 Oct 2026 10:27:12 GMT  
		Size: 18.9 MB (18943020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2cbbcc61122e75865b4b3b50de32ad3729920d146a886b391cca69c1e7f6c8`  
		Last Modified: Tue, 06 Oct 2026 10:27:11 GMT  
		Size: 4.5 MB (4515231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e37d4c347baba63b20d3fa704438551f1788e03f1360fec9480b6b56c581b8`  
		Last Modified: Tue, 06 Oct 2026 10:27:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5facc0455b48f9b0000a60e51f22665fec95fd0e745a33fe7f78286fa1bb1242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3848358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90c880920034c9e1183c639a49485ce2abf6afbe00c2b9d92fe42de365731d2`

```dockerfile
```

-	Layers:
	-	`sha256:efc4e1db954156f7923bac278b285631405d65bca412331473a248d0258d5566`  
		Last Modified: Tue, 06 Oct 2026 10:27:11 GMT  
		Size: 3.8 MB (3830597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0edbd23e1baebee7faad84b12acd8de3e8af8b2953895b1aa98a3b3b97726e27`  
		Last Modified: Tue, 06 Oct 2026 10:27:11 GMT  
		Size: 17.8 KB (17761 bytes)  
		MIME: application/vnd.in-toto+json
