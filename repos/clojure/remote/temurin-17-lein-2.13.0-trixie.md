## `clojure:temurin-17-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:3039ae21e236a26e9be3a0109dfc12f9a2f8b8c4b5e656d9df2e8cd51530716a
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
$ docker pull clojure@sha256:b04a9cc1c591f4b831ed77d48fd616dc4b795c2865a687f1389c1edccba16bc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.5 MB (218531071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbf3fe6d7c9f068587d6febeff682df379b86abb5a96f7bbde55a6dc37de058`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:14:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:14:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:14:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:14:04 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:14:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:14:04 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:15:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:15:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:15:18 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:15:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:15:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:15:20 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:15:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfe23ca63260c31c11f4e759ec2f3606cb42f535a1311e64ee5394ebed7f5cb`  
		Last Modified: Fri, 21 Aug 2026 19:15:40 GMT  
		Size: 145.8 MB (145822643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce0c399ceb51025ac05809949da2e28382c6fc094aec04edfa9d3ca3db76d65`  
		Last Modified: Fri, 21 Aug 2026 19:15:37 GMT  
		Size: 18.9 MB (18880506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11006bbfeeba3dd4e121e3a214e9a66bdafb64307d6163a68342ab6ab905942`  
		Last Modified: Fri, 21 Aug 2026 19:15:37 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b9d9ded29dfb802864c1e7764d654d8957ff535dc9b4b1000bd50a4ae8d86f`  
		Last Modified: Fri, 21 Aug 2026 19:15:36 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:39aba77d781068e8517401e77bd5a83d71ab20f6e33bfe12e78a2a10d41b6fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f78b20d50006ac0c906957a171194b289a1262313e3d81f877bd480d0a7a410`

```dockerfile
```

-	Layers:
	-	`sha256:079a295846290a92011d577dba4c425d94d5500295205d40cd39cbb77d66c553`  
		Last Modified: Fri, 21 Aug 2026 19:15:37 GMT  
		Size: 3.8 MB (3817854 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0c990e56a6d0f70de44375665d98605251cdb4922aca0468fc16d45a729bbb5`  
		Last Modified: Fri, 21 Aug 2026 19:15:36 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:183195a5136404c77b19a49c271285ac30015892cb71199752ce72a04f211430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.7 MB (217676532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51c85b414d9e1753fe4ab4c56b2b5eed3c0c7f62cf99d2c1e8c68fee0294e533`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:03:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:03:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:03:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:03:38 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:03:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:03:38 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:04:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:04:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:04:55 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:04:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:04:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:04:57 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:04:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf98fbec7bcd2ee3eb7ab124629fd7baf63503b3fdd10a8ff73d85a948b9129`  
		Last Modified: Fri, 21 Aug 2026 19:05:19 GMT  
		Size: 144.6 MB (144647557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5a60c791bca3dd835c8016a7590fe7be553bc38ebbb55b4c2b258706cca584`  
		Last Modified: Fri, 21 Aug 2026 19:05:16 GMT  
		Size: 18.8 MB (18839496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06abcb03d8ecbd2800d5046ea676c328d1bd9b46b11ccb50cc58d67327035f8`  
		Last Modified: Fri, 21 Aug 2026 19:05:15 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee928b62a9f3205f696844f58cc5f483c4c7a4d8da70c2cab7098bded333cbc6`  
		Last Modified: Fri, 21 Aug 2026 19:05:15 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2aaf266f35f556e82eebbc87cfbbd8f175a85e5ab19324892609fac487b06550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0872628286042a595c2a054d830fbc8be51c4f4f1554e6e00fd10bd0a1cfaa1a`

```dockerfile
```

-	Layers:
	-	`sha256:4b715eb92c23780e8306ae1647455c5da06094a4e9cca37df1659323e13cbe88`  
		Last Modified: Fri, 21 Aug 2026 19:05:15 GMT  
		Size: 3.8 MB (3818094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3e0da9ab0bea998580dff290553ebad50418ad810917deff89c0a6e659703cc`  
		Last Modified: Fri, 21 Aug 2026 19:05:15 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:8be6d2a3805d8ad15128bb54371a1ff6779b685501888e8db58a21992368ab3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.4 MB (222351873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82a2a9c808dc8581b55428eb4c258e5ff450f1dc2fbc731b8b12f3cdb46b90f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:08:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:08:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:08:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:08:51 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 20 Aug 2026 01:08:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 20 Aug 2026 01:08:51 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:11:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 20 Aug 2026 01:11:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 20 Aug 2026 01:11:28 GMT
ENV LEIN_ROOT=1
# Thu, 20 Aug 2026 01:11:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 20 Aug 2026 01:11:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:11:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:11:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aaf7ee4a7ce8db72b4b4150cf96c296b1885780495fc941d3703783f6350c30`  
		Last Modified: Thu, 20 Aug 2026 01:12:14 GMT  
		Size: 145.8 MB (145766232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ac804136ab3f9363909d3b9277eff7abc8b4e51af58b82daea96ea5aa7790b`  
		Last Modified: Thu, 20 Aug 2026 01:12:11 GMT  
		Size: 18.9 MB (18936424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b62b61623f7e6a0b19b4bbcf9d13225bc7f4c5f57ed1505873622ceee4a287`  
		Last Modified: Thu, 20 Aug 2026 01:12:10 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4dbcaf830aec07d7e1f9556e0b580925e3f5bf94708dd31d7d6044c97e8abd6`  
		Last Modified: Thu, 20 Aug 2026 01:12:10 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e02e1a384e4c28b12b0c250f3e6cc67b352b9232abf6fe207f0ee085d5156dd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc75dd1c7eedcbd41980e540903bfc3b2b4c65e06233d1272df6a5b125dae4a4`

```dockerfile
```

-	Layers:
	-	`sha256:629090e6a0d8444c831edf612cb272f5358be9222f86ad273c2b73d2fd2504c2`  
		Last Modified: Thu, 20 Aug 2026 01:12:10 GMT  
		Size: 3.8 MB (3818856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44b293b583189c5ac762e90c2a20b88d45c3299ac09b3e8d9f81f9a0c48c47b1`  
		Last Modified: Thu, 20 Aug 2026 01:12:10 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:86dd173d3711080df10620ded2d6d5258e4614c5e9d04b940479245555d1b1bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208689924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2069543bd40bd4e280a4d3bedd61a87ddc06c9dec4b9822383474c625132a3c8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 18:54:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:54:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 18:54:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:54:32 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 18:54:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 18:54:32 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 18:55:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 18:55:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 18:55:40 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 18:55:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 18:55:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 18:55:41 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 18:55:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad992b0fb50a6311cb71108c3f0f09b03227b12d43ca8f339ed7031420f42c0d`  
		Last Modified: Fri, 21 Aug 2026 18:56:08 GMT  
		Size: 135.9 MB (135871068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5381e7fe6b2f024ff887d3e5ee5046c4fd66ba5f672773f5fdaa44af0eea99a`  
		Last Modified: Fri, 21 Aug 2026 18:56:06 GMT  
		Size: 18.9 MB (18921819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07bebdbac96a249e41d0a09de1bd092be7aae7b245240fadf4f97d751a4a57a`  
		Last Modified: Fri, 21 Aug 2026 18:56:05 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ffc0f9d59896f4a53f00c4bd8d6151972f1bc6acfbe79e09c616262e0167ee`  
		Last Modified: Fri, 21 Aug 2026 18:56:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:580ca3869aea9addeb4a98ebf31fd5d87d296f64b06acaee64fcb421f86f93d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3831999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c10491228510555680ba03822945955f28277071263316daf0797a17f7ad8a1f`

```dockerfile
```

-	Layers:
	-	`sha256:69e651bd3d3a3fb042497bf521337ef9548000d97a0ea43e847eaf4aa5eb3af7`  
		Last Modified: Fri, 21 Aug 2026 18:56:05 GMT  
		Size: 3.8 MB (3814281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca069b22abd74bba06bb9a36ac212a6892bdcf506e5a9a3c727adfbbefb0c1e4`  
		Last Modified: Fri, 21 Aug 2026 18:56:05 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json
