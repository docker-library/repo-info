## `clojure:temurin-17-lein-trixie`

```console
$ docker pull clojure@sha256:19f2a8d36b67d5797c40e7fe58a34836cf3145076143c2a08d0abd6c3bc26ee8
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

### `clojure:temurin-17-lein-trixie` - linux; amd64

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

### `clojure:temurin-17-lein-trixie` - unknown; unknown

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

### `clojure:temurin-17-lein-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-17-lein-trixie` - unknown; unknown

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

### `clojure:temurin-17-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:3675d2d17271241fbcd1af23df1f05521bb4fe616e0249a02b2506348ba9154d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.3 MB (222260373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb485c76314e38d0d9ae43e910f13ad5dbb824e7140c2d1665e87ecf26376131`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 21:54:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:54:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:54:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:54:37 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 21:54:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 21:54:37 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:58:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 21:58:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 21:58:11 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 21:58:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 21:58:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 21:58:15 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 21:58:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64269a486231fffab2666570443518a8aabf8a93e1e1703076e7aedd2229f4e`  
		Last Modified: Fri, 21 Aug 2026 21:58:52 GMT  
		Size: 145.7 MB (145674278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a750264def6d73df93c262adae4e48bff9c2063ce728db61cc186d816c6485`  
		Last Modified: Fri, 21 Aug 2026 21:58:50 GMT  
		Size: 18.9 MB (18936860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb359580d97e0b18e594104708f0c32d11f5bd143af4ea01223ed173b3deca3`  
		Last Modified: Fri, 21 Aug 2026 21:58:50 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944d2325e1bf8caf87621419edecf1cec7b5d9a15099bdee5ac553489f28999e`  
		Last Modified: Fri, 21 Aug 2026 21:58:49 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a5cda0027750528c50513bd84bbf2279e72ea55c376d2e4a9997fe321c6a4b3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48398e3ea551679d54cdec721094b5b55f5f2ac073a6519aff19486732dc77cf`

```dockerfile
```

-	Layers:
	-	`sha256:b0865bcef25d6c10f13eb40a37e5a986783386a73d41c5a098858bdab84b5b4c`  
		Last Modified: Fri, 21 Aug 2026 21:58:50 GMT  
		Size: 3.8 MB (3818854 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7362bcb49ee7753e7bc7bd47fb6fcfba27f31b3227e509e6700661e395083ab2`  
		Last Modified: Fri, 21 Aug 2026 21:58:49 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:b4bdddedcbbc31fae1d979f003fce339bd9f00fbddca06df026f25ce9642afaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208715595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:878df4ec2938e82af52f4f78a2e31f8cc2694bec157f83550e0db7e35547ccfe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:06:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:06:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:06:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:06:17 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 02:06:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 02:06:17 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:07:38 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 02:07:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 02:07:38 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 02:07:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 02:07:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 02:07:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 02:07:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:879a03dd8288e9de5870ec1015ec74139e6d703d9c5d69ac1f9ae16ec176ddf0`  
		Last Modified: Tue, 25 Aug 2026 02:08:06 GMT  
		Size: 135.9 MB (135871069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db79a6dc61e108d570bc494865bfc36be8994c1de5ec021dd54db8c4a38c072`  
		Last Modified: Tue, 25 Aug 2026 02:08:04 GMT  
		Size: 18.9 MB (18922196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f65464dedb81c77cf43071c53277aba2845ba857d8a90db8b9f6d55fbac0e35d`  
		Last Modified: Tue, 25 Aug 2026 02:08:04 GMT  
		Size: 4.5 MB (4515204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b33793a9920a82c1d9aaddacb8d075ab402c96ff7102af3d2d2c7975a2a491`  
		Last Modified: Tue, 25 Aug 2026 02:08:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e9c3bb8a9e3d856af9ea42848067ebd63bc52855ff4363d6b218d0a56046a46a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0adba5942554b9271f78c8c53f76c4494037ae88b3b4061d0216fc148d39683`

```dockerfile
```

-	Layers:
	-	`sha256:0831165eaaed59b2ce3a9d2b507f339e72e01667c50ab05f2d2be3ad05c632ee`  
		Last Modified: Tue, 25 Aug 2026 02:08:04 GMT  
		Size: 3.8 MB (3819259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5ae4c5a545c3f9c1470468573ab77eb3dff575ea8633d8b8a3333a8bde943cc`  
		Last Modified: Tue, 25 Aug 2026 02:08:03 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json
