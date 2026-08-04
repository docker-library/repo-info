## `clojure:temurin-17-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:42562d762fa754bb3ae3e172dc605d8442d07e25b17af958de3fb08ddf2c514b
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

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:87ce70953743f9f194b326ca85e9a66c1818d0a5d1787668ae7ef74d591d6908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218625126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbb4c80cad8e254bf73376e9f812332729eb6a1cc84249e5881bb11e619276f6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:49:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:48 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:49:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:49:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:59 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:50:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:50:59 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:51:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:51:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:51:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:51:01 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a744c453fcdac4c976c83650687d4c01122248a0ab3d78f0e90c27f49cdd75`  
		Last Modified: Tue, 04 Aug 2026 02:51:21 GMT  
		Size: 145.9 MB (145905442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72811729989558a9bbb0bc09fa278abfd46609fe1ee0515637fa45bbf21a9369`  
		Last Modified: Tue, 04 Aug 2026 02:51:18 GMT  
		Size: 18.9 MB (18891454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b234e259f7eef33104a103dac59a45d9a2f47a8a375a7a913b66fcdf56f6f5c`  
		Last Modified: Tue, 04 Aug 2026 02:51:18 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:957b68e438c80e533f2c4c06e447ba2037aad2f4575f97dff32635c597cc01fe`  
		Last Modified: Tue, 04 Aug 2026 02:51:17 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c537e868a746aa8222efe93cab5ad637053a08a9622d57d343c44dc86ca50351
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ceef3977ac714f95cbd37d275717b78b0241e8414470030473e2da3cbf35126`

```dockerfile
```

-	Layers:
	-	`sha256:9efaf9a6baaecfad6b9990542a8f8a3969a289f01a15a1af08001ca2289cde5d`  
		Last Modified: Tue, 04 Aug 2026 02:51:17 GMT  
		Size: 3.8 MB (3817856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:988d1030ae1065ed02f87515c557cd144281b4bb5487f8bae583a7a06de443f1`  
		Last Modified: Tue, 04 Aug 2026 02:51:17 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:858ce7235e0fb041c58e93511eb7e3d83bdabfa64df9080406e86c9fb5c08307
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217753662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e18db1535ca830f6804c67c2b75cbc28655ac5b3c6aa83ffe334bf2ee1d0792`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:49:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:52 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:49:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:49:52 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:07 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:51:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:51:07 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:51:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:51:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:51:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:51:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758ca965c610c010fa23dde97b8d71c90faadb692613b4ff2aaf953993beb38c`  
		Last Modified: Tue, 04 Aug 2026 02:51:30 GMT  
		Size: 144.7 MB (144724288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ac9c7acc3f5bb2426daee06a598e3f383ae69a22338faee8abf21354aaa463`  
		Last Modified: Tue, 04 Aug 2026 02:51:28 GMT  
		Size: 18.8 MB (18839542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8eb3ef9b756a94fae479cb539def1a2ee0b8563edf69a073a0a2cb1dfcef117`  
		Last Modified: Tue, 04 Aug 2026 02:51:27 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1455c159ee8206efece4e80fa2bc076a847451ce08b9c5801e89823b14dba00d`  
		Last Modified: Tue, 04 Aug 2026 02:51:27 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3d275cf25dfc3741e605257a3f300fb0845b6a147b59d9c37e19f0c0b88e029e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3c79af548c55882327373520dd6a7081a72b8fead07288adfd2bcdc1da85ca`

```dockerfile
```

-	Layers:
	-	`sha256:89d1ba1f510123ca20e050f1c84a6fcf06dbf67679398ab552158e9a1f013b9c`  
		Last Modified: Tue, 04 Aug 2026 02:51:27 GMT  
		Size: 3.8 MB (3818096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8aeaf0fed5cd84d1601743ea5fb517e5f6f790f9264ad578b828f8ee126a1b5f`  
		Last Modified: Tue, 04 Aug 2026 02:51:26 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:105bd5c6956d2c89e5d516e0eb51fa750401e1ccb9562ca0d6c00a97486925e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.4 MB (222352594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0c4539ef9e1cf756018afa446564815b08c8e83246fb862f93f9fd57a6513b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 05:13:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:13:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:13:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:13:18 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 05:13:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 05:13:19 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:17:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 05:17:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 05:17:11 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 05:17:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 05:17:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:17:16 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:17:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a169777f230e111bc35c8dadc9c9fea79da3ddb0bbdcaf99b3b0e2564864cda`  
		Last Modified: Tue, 04 Aug 2026 05:17:56 GMT  
		Size: 145.8 MB (145766123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c85043282dfc2b88f0aed1c1aafaa44c50dc874b763735b12a7c4131b749e32`  
		Last Modified: Tue, 04 Aug 2026 05:17:53 GMT  
		Size: 18.9 MB (18936847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c972fe637e6bf7722669f5e79f9cac239ee6e3deaa7bfb5ec5987a0a899a4d2`  
		Last Modified: Tue, 04 Aug 2026 05:17:53 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06228b04699802eba95407970e3114f9e40b13308018cf56bcd4cb4eb0c19732`  
		Last Modified: Tue, 04 Aug 2026 05:17:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:95cf21a0749fc7cb8b4eb9f1a4d3322a4ea4668b752b2dcd32bbbd79627c6e4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58f5f5afbb98a0785bad4864466d6a2f626e9bfa3b617bcf590b00ad61b9e287`

```dockerfile
```

-	Layers:
	-	`sha256:41f6d80231b725da4b40db14a6a0bb241278ad6be5a599e5c7d46c39d9638ade`  
		Last Modified: Tue, 04 Aug 2026 05:17:53 GMT  
		Size: 3.8 MB (3818856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f96a5c4837fcb894dc9f8aff38e433b1fe0b3c07cb5c93ac447847bb9610ee6`  
		Last Modified: Tue, 04 Aug 2026 05:17:52 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:c8f8584f2c9023351e13ac3c61535b1783a1cce737b2c7e103b9da3b9f9f3e39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208730016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff087a1762af71a0c8140227a459bf1cd5fdd5305f205a2d56c0a36dbdfa58f6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:54:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:31 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:54:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:54:31 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:55:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:55:46 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:55:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:55:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31b6a9957cedf6992e8e969ed6bac7fe9a75c53574feb342eca9a71afc71f2c`  
		Last Modified: Tue, 04 Aug 2026 02:56:13 GMT  
		Size: 135.9 MB (135910436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa6a0690bf3ffe78aed36ca6fb4dbba30e89911057955efa712d33d14999a7b5`  
		Last Modified: Tue, 04 Aug 2026 02:56:11 GMT  
		Size: 18.9 MB (18922240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d93b1d22149688bb2eecffcc0f604751336e6685432cc9621a4e768fb69607`  
		Last Modified: Tue, 04 Aug 2026 02:56:11 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1206f45ec44c81bf0dcbd8a8c5d283147063fd7fdaf9f07e60ebbb7d61d8681b`  
		Last Modified: Tue, 04 Aug 2026 02:56:10 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:eb62a9f43fd5375c23d7909ac7ac02a9a6d06a55d0312244377cba17a688320a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3832000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b29fbc96061db4be4be3edc6436cdf7cbed9c4902ecf76312c884a2057a0b0b`

```dockerfile
```

-	Layers:
	-	`sha256:d33ba6a1ce3e329475be735961eb288af2ea39c624363af7b2d5f770c5efc053`  
		Last Modified: Tue, 04 Aug 2026 02:56:10 GMT  
		Size: 3.8 MB (3814283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4c9e932e97eec50550f22f65022d8a96cd1a4c0b55125adb24e67e7973c7dca`  
		Last Modified: Tue, 04 Aug 2026 02:56:10 GMT  
		Size: 17.7 KB (17717 bytes)  
		MIME: application/vnd.in-toto+json
