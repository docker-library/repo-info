## `clojure:temurin-26-lein-bullseye`

```console
$ docker pull clojure@sha256:7b09c619dcf190d753244b759b107f91742813c3f1bcde271d2f4e516e44dafc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:fb475ae990c9c72c119d576f59e4f44363c6fc7f93ecd24000caee05380df703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169753229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2652fcf8caf62229c040c9363737da52a65ac671146beb797ec43ea46e62883`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:56:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:14 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:14 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:57:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:57:23 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:57:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:57:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:25 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c67cddb4b9fcdeefaf829aa012f0ccaefcfa862a558064326104b95b8849cd81`  
		Last Modified: Wed, 24 Jun 2026 00:28:17 GMT  
		Size: 53.8 MB (53773009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a370c30b0592cad4f8af694e6944c759cf1af6fa128f3689d3a362efff52403`  
		Last Modified: Thu, 02 Jul 2026 05:57:46 GMT  
		Size: 94.5 MB (94524293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc12a46527dcfae383122f5f7e0215bd82d0efafc500201fbd8e9bcb7c9f7e32`  
		Last Modified: Thu, 02 Jul 2026 05:57:44 GMT  
		Size: 16.9 MB (16940283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d69c4f189d70de36cf782be58eeecb32edb9468eadfd9d563544588fbb153d2d`  
		Last Modified: Thu, 02 Jul 2026 05:57:44 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:168e047f25ac4b0931da7ee38acb791c5ff3ea956f2aa8f0fdd7c0e289da076f`  
		Last Modified: Thu, 02 Jul 2026 05:57:43 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:2447c839acd16ff9b9e37164c46ffedfc32c7686b05dcdfcbd6fce2f70ed1394
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4483649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfecb546554d46773e139feefe8d1bd9f60be5ae76c6ef46b7f98725348e1a00`

```dockerfile
```

-	Layers:
	-	`sha256:124a36eea422ea543e17737ac3398fb4dea40bb4505063aa470844f4d8defaf8`  
		Last Modified: Thu, 02 Jul 2026 05:57:43 GMT  
		Size: 4.5 MB (4465918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76f93137e99ee7f757f3098822d1b3993b2c44db9c5cd90e9ea3c9f332724cb7`  
		Last Modified: Thu, 02 Jul 2026 05:57:43 GMT  
		Size: 17.7 KB (17731 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f3d33e7dd4147a7c13d61c6f12eb0df839f43c5eecd3288655a43392769a0d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167194963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf37c1cf5cede31ea0e8c1739bf87d7bda53ba69771a45544a097a7dcdd4bf4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1782172800'
# Thu, 02 Jul 2026 05:56:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:30 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:30 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:57:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:57:39 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:57:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:57:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:40 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:35157acdff35db21da73141f382d0dca0f6bc6d183c3a816d283fe39f471e539`  
		Last Modified: Wed, 24 Jun 2026 00:27:56 GMT  
		Size: 52.3 MB (52257219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f124785a0d001e3fa6e3538626b1ecd61845de130f326ce2b8d4f77a2dd6528`  
		Last Modified: Thu, 02 Jul 2026 05:58:00 GMT  
		Size: 93.5 MB (93504357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d611a3bdba0accaa394021e43de929a5e53367d6d6da20b9fbec67a346531c`  
		Last Modified: Thu, 02 Jul 2026 05:57:59 GMT  
		Size: 16.9 MB (16917776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1765e582d29de903500cc6e3b147d7c4eb8f952f2fb80ef763b06f7149fd8608`  
		Last Modified: Thu, 02 Jul 2026 05:57:58 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7882841ea8a262d8b9b4ea244dcafbd1e34483366681fc6b2c3ac33a993de59`  
		Last Modified: Thu, 02 Jul 2026 05:57:55 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:ede225a0d0c9e4c0f4f7976273a2bfdf375ec8574bd64e0737fcbe7d46f52cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4482741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0b6c69e97f62ab973c5b72049990b51af777caeee5316861a4277cfc9af7f6b`

```dockerfile
```

-	Layers:
	-	`sha256:89754ef34eba8f24d8e30faab6d03d901b493baa86dd874b27503966ce1e5198`  
		Last Modified: Thu, 02 Jul 2026 05:57:58 GMT  
		Size: 4.5 MB (4464889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa0c3b654bc65cf1823fd5800c059e9be310891daac90825a1a3c7ec9fdfffe8`  
		Last Modified: Thu, 02 Jul 2026 05:57:58 GMT  
		Size: 17.9 KB (17852 bytes)  
		MIME: application/vnd.in-toto+json
