## `clojure:temurin-11-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:684c8f674705f1dbcad6c08e7bca775e79e91606420372108542496a6284268f
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

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:ba4bce7fdb7e62b7e43e966885f72d9fa39b63708658875a57e929c166b36a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218605215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3e91b9a3698b166d70425567b492fe82e9762f8996836420629fa547c73e0bb`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:18:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:18:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:18:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:18:51 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:18:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:18:51 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:20:05 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:20:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:20:05 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:20:07 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:20:07 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e873c9ac5e4495587257e6ea54e704f44964c6344991786e6db0b98273063b`  
		Last Modified: Wed, 05 Aug 2026 01:20:27 GMT  
		Size: 145.9 MB (145886314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909920ab7d688cd12f5788c0cf794cab09defa6842c405324812e8553a40c9a7`  
		Last Modified: Wed, 05 Aug 2026 01:20:24 GMT  
		Size: 18.9 MB (18891337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58046932527e5b30f8aafd23ecfb08f46df1057a463a373d0407d5cf2dc19966`  
		Last Modified: Wed, 05 Aug 2026 01:20:24 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:79857d4d6a82645f2610db37b91a415246bf07b1e99821f5983546e1d79d9f91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045059822a661a60dfa72d937978c525ea594bc800ec466bcf7d0a81d6d03ef4`

```dockerfile
```

-	Layers:
	-	`sha256:58992ae214d8eb4a1859c1736e009cdce5e569d7c0e1cfc88a6ae9f6e6f04476`  
		Last Modified: Wed, 05 Aug 2026 01:20:23 GMT  
		Size: 3.8 MB (3837372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e2e3dd30002870c7d227bbad874d3acb9fd508ce15cb81cb5ebff07617b3297`  
		Last Modified: Wed, 05 Aug 2026 01:20:23 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:847bac48949a8e3e32bce1d65136c7e1514e5367250eadb3871c9d57ac1aa034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215610931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee208dcf881e595c4a48d1ba5c2749d95051441c5b04f5ddc69198ac29bf2ce`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:25:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:25:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:25:00 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:26:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:26:16 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:26:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:26:18 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7357128c9010df82bd75b9f0a77101c35327c15a1930d350e69a84fa71b405cb`  
		Last Modified: Wed, 05 Aug 2026 01:26:38 GMT  
		Size: 142.6 MB (142582304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d687bc6ec045e7a09f24bee2e6ff9f8edc6eba4d120febe608aade45c1de3c`  
		Last Modified: Wed, 05 Aug 2026 01:26:36 GMT  
		Size: 18.8 MB (18839542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8950ef1c9822f4a8b842427ebb43ace2a8191b391bcfb30f7b6e01f59b056508`  
		Last Modified: Wed, 05 Aug 2026 01:26:35 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6b9ae7d55692cf45aaaa94464df0d09c169f2bb11ec26f62f9f93bfc475b4a99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3854085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be4d5f662a8c7ee68a4a4c0752375e36284c9043309c9d818d7e6a40bb3eb060`

```dockerfile
```

-	Layers:
	-	`sha256:e09a553b3dc909afa889425544fa9f48e58873b231f6edb3f0253ab98329e42d`  
		Last Modified: Wed, 05 Aug 2026 01:26:35 GMT  
		Size: 3.8 MB (3838230 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e4bfb0bea98dc40c362b47cda73bb17bfc5eff57c9e2741c71d6d2309b303e5`  
		Last Modified: Wed, 05 Aug 2026 01:26:34 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:6c164276c71c14a971e74aa7aafaaef2db2725b2a81344d7049ed6e2fbcad433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.7 MB (209695249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7e4351f76d7663aae5157fb7fd9c98be4db0b165e226a07d5134768a9911cd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:37:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:37:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:37:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:37:40 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:37:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:37:41 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:40:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 07:40:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 07:40:25 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 07:40:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 07:40:30 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c56f0fa02b637ffedeedf311160f7cb45e983a15f11560df318b1295f8caab6`  
		Last Modified: Wed, 05 Aug 2026 07:41:02 GMT  
		Size: 133.1 MB (133109714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67835c086798f7fe88a3439579e45d7382d280cd9e2f3e41a84c9f2d6d83cb64`  
		Last Modified: Wed, 05 Aug 2026 07:41:00 GMT  
		Size: 18.9 MB (18936665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2de6fc073d2b5274e3528765f540902f844758203ed4278048450e29df47bf`  
		Last Modified: Wed, 05 Aug 2026 07:40:59 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:21bf51e2abfa0c8b503790a39e5cba7b9b2cb4115f1651df441bd17fa7eaa286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3853535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26d548742f9f11be2d63cbc0d20fc8e6bb8b5d4d9736b047af96dd92def1851f`

```dockerfile
```

-	Layers:
	-	`sha256:fd6911cc46febf2bba5768dd35798cdd5a609bac945ca0c5b48b57380310c50a`  
		Last Modified: Wed, 05 Aug 2026 07:40:59 GMT  
		Size: 3.8 MB (3837757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74c3738c2ae946fb123795860812da3c918599f0b877e7597b1fc00f1f4bfbd3`  
		Last Modified: Wed, 05 Aug 2026 07:40:59 GMT  
		Size: 15.8 KB (15778 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:2150e0f6f2c947c86286d90a9566aadec4c94d599b5732f0b73e1fdb3212a840
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.5 MB (199471278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb11305d0cdd4ef808a1f9fb69160f5db62b5d4dcf14b4bb90bce2718ceb759c`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:44:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:44:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:44:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:44:20 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:44:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:44:20 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:46:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:46:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:46:11 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:46:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:46:13 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb9161ac4639db1d944e7c59abde6410a031afc4574d01ec9645a358136fba0`  
		Last Modified: Wed, 05 Aug 2026 01:46:38 GMT  
		Size: 126.7 MB (126652438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a3a9eb906778b406e6c6c45daf0875b55d9997ec9d0ee97b5b8033b14cf358`  
		Last Modified: Wed, 05 Aug 2026 01:46:36 GMT  
		Size: 18.9 MB (18922163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1560abc7edc1dd9e392b4d92ba38639e6f95b538b707fa45abae8a1fbb0a984`  
		Last Modified: Wed, 05 Aug 2026 01:46:36 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3aff4a550a5bc61245df16e375dedae455cadc4a73b23871f1ec509e8c5a2a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3849536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d56a86289246d7be023188e9521ca63e95fc0ff4e81c39495d22c7a7679cc9f`

```dockerfile
```

-	Layers:
	-	`sha256:9c1f20e5dd8c07366cc9c699ebd5154d52571d1b152eb03c1e25e30325bca4f2`  
		Last Modified: Wed, 05 Aug 2026 01:46:36 GMT  
		Size: 3.8 MB (3833803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58f439cbfa30f15db8c6ed66120a7d4f679302844d6630c8f4ad1aa57e3e00f6`  
		Last Modified: Wed, 05 Aug 2026 01:46:36 GMT  
		Size: 15.7 KB (15733 bytes)  
		MIME: application/vnd.in-toto+json
