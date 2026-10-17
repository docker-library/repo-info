## `clojure:temurin-11-lein-trixie-slim`

```console
$ docker pull clojure@sha256:47768dd448e1246d9493ca3f00566253e8972aec55ed74e9195839352d4a4a83
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8c83c24b9824504c3d211f1243e74b25e76b478e2f389cc7f8d4eda18851aed3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196967181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e420e8d6f2e3c943732f028f4458cec8071d3337035f90fe3c5bf8b120eb00e6`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:47:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:47:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:47:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:47:02 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:47:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:47:02 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:48:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:48:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:48:20 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:48:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:48:21 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87292d9c2701c805658e5ad599b0e1da4684b0abf0ce8fd546b2b506b95c23b`  
		Last Modified: Sat, 17 Oct 2026 01:48:41 GMT  
		Size: 145.9 MB (145864517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9255525af424e4c9f1e5a5d79547bdd05a691e9bb1b0218cb2a1e711239de85f`  
		Last Modified: Sat, 17 Oct 2026 01:48:38 GMT  
		Size: 16.7 MB (16744098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9161b7db69aa637cd698f18dd21e97b4ca5877756b244e077bf923132e0fa423`  
		Last Modified: Sat, 17 Oct 2026 01:48:37 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e8962a8e937cbb89b001db665a096b7bea954dff191a4ea5678b4288a311b9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3eca35198f4946555bc5266f5d34236afa7febb0568604b7a589b62fb9f4ca`

```dockerfile
```

-	Layers:
	-	`sha256:1c03ac44ba1cfe21156dba84c3e23efad72ae8fa2d42b722a35281b5ba2dbd7c`  
		Last Modified: Sat, 17 Oct 2026 01:48:37 GMT  
		Size: 2.4 MB (2392547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8fdfdefbad0e2ba1e8cbdfc95c5e304b9d9fe5ef98a8510bb3c54ae0f727e913`  
		Last Modified: Sat, 17 Oct 2026 01:48:37 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f3787a16029bd758f9e71a9698d4c486b79160760a497176cbe4890e67c0b599
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (194004415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9627058830f35f245b1a987a0d903821a6e5eaaeeb69daa74ecc765a86130879`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:47:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:47:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:47:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:47:19 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:47:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:47:19 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:48:48 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:48:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:48:48 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:48:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:48:50 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5856ef8c2c1081614e6c4c24e2a5e3753e9ea7de78fb493a3d38700ae0965f5`  
		Last Modified: Sat, 17 Oct 2026 01:47:59 GMT  
		Size: 142.6 MB (142576575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9f267b07d91d66a6af3ed461d02ae4ada74841ac51194090ef99aa814db512`  
		Last Modified: Sat, 17 Oct 2026 01:49:06 GMT  
		Size: 16.7 MB (16712311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5f3488545737e9aca86c046c205b1b8f23d25fb2483ae471d54cdc9483e0552`  
		Last Modified: Sat, 17 Oct 2026 01:49:06 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c5a1c5368b284ae4ee7b61033ff83c39400c8921b774ecc8ecf39452fb3cd2dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d50e032b928feceb6b172b05a7cbf22de046efd22a079a6f776a8a91d834e4f1`

```dockerfile
```

-	Layers:
	-	`sha256:5f35776098cb04d8673baa1c264a558cad3956da46e65c6e9edb437c844c6f8d`  
		Last Modified: Sat, 17 Oct 2026 01:49:06 GMT  
		Size: 2.4 MB (2392775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4360c6b24356f7f3ca35b1e390a26dbf600f81bf3153ce293a5606f463092d0`  
		Last Modified: Sat, 17 Oct 2026 01:49:06 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3fe609839759a52962e0775435c0bfb2ec83434bbbb01df7f6ba5fbe45aa508c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188043931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba218491388bb5868febf50ad5c169912956f3d5547c695815756ba5baa7f76`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 09:52:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 09:52:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 09:52:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 09:52:12 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 09:52:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 09:52:13 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 09:56:20 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 09:56:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 09:56:20 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 09:56:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 09:56:25 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d600f73d0d239be1830c72a0a84ab8a24820da0b5940b7c62a7296bcc885045e`  
		Last Modified: Tue, 06 Oct 2026 09:57:01 GMT  
		Size: 133.1 MB (133094729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:820ca2f32ce276f92e7b18c25511e0dcb094ef02085632029fd4d788694f32a3`  
		Last Modified: Tue, 06 Oct 2026 09:56:58 GMT  
		Size: 16.8 MB (16782346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511120ca5b2ff0070fae975932715d3112cb37c47385743e75626d2a95efe55c`  
		Last Modified: Tue, 06 Oct 2026 09:56:58 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0e4e08b8b9d69096f030a5a68baf9ad5b0fca3332ff6f97f10374915e3218ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b04bf1fc0997b0ef4f29749ceaeda683a79183a7fdca2a69165a22cab2a2ea`

```dockerfile
```

-	Layers:
	-	`sha256:3fcf68fdd7b32d23997f675e8d5ecc74d57aac927b417bfd5cb72e802f09c07d`  
		Last Modified: Tue, 06 Oct 2026 09:56:57 GMT  
		Size: 2.4 MB (2392912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a3cb0e6ec16df7fdaf2aac9fd97f6f6b846da9f6e12756b86f63c85e659bcb9`  
		Last Modified: Tue, 06 Oct 2026 09:56:57 GMT  
		Size: 15.8 KB (15807 bytes)  
		MIME: application/vnd.in-toto+json
