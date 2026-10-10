## `clojure:temurin-11-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:86cc56190c66a8ba436077d7f8e040ffb2a48ac5e91a5acb0199de12aa694794
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a981bd87e66dced72e0e5cb4fd7cac862fe7b22a47edc76587e77d670e9ed64d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196966709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848694e1c99c65eb85a7cad40e3e15edbbc7726a438de972daa26c5c30c346c4`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 10 Oct 2026 04:47:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 10 Oct 2026 04:47:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 10 Oct 2026 04:47:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 10 Oct 2026 04:47:46 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 10 Oct 2026 04:47:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 10 Oct 2026 04:47:46 GMT
WORKDIR /tmp
# Sat, 10 Oct 2026 04:49:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 10 Oct 2026 04:49:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 10 Oct 2026 04:49:01 GMT
ENV LEIN_ROOT=1
# Sat, 10 Oct 2026 04:49:03 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 10 Oct 2026 04:49:03 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756b083e2128d355b0ad0c0b5dd7f510616c39c55cecec280fc106a3d3234af4`  
		Last Modified: Sat, 10 Oct 2026 04:49:23 GMT  
		Size: 145.9 MB (145864273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7a9694db4b017ea6587c3c29542604f034666460b7f9dc233dbf29d5f97b6b`  
		Last Modified: Sat, 10 Oct 2026 04:49:20 GMT  
		Size: 16.7 MB (16743824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1582c787c972a2e3fbc23ddb43bd1fb4e62f77a94da911b3140a4196e65654a2`  
		Last Modified: Sat, 10 Oct 2026 04:49:19 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:2b38542036c57924b2f29effe70f1cbfd0d8df5d773e0af1baf7a1b5e7b1304e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8edae2fa8688fffdfdced29bf08e471309e2286329df574e2ea4f13d68726c7`

```dockerfile
```

-	Layers:
	-	`sha256:c7cb71ed6afdac818d80494613b4f84ba3de7dcbc172f8c20ef01b99bc05e124`  
		Last Modified: Sat, 10 Oct 2026 04:49:19 GMT  
		Size: 2.4 MB (2392547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8bf2380d17f8e2b5700ca9c04bef4d4a4c28a6b2fca8b045c7c9d6e55b1c814`  
		Last Modified: Sat, 10 Oct 2026 04:49:19 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:acf65460acce88ecb2db745470724ccbfd43b161c60d79d8153167dcb83681b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.3 MB (197327006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4253b12d8e188c8a8f55e70036efb93806844f2d91e3a4dd8545917efa1e1db4`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:43:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:43:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:43:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:43:31 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:43:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:43:31 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:44:50 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:44:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:44:50 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:44:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:44:52 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:834759166ea2d094b5da584e725a19af5612b1fb805e639e4434a447c99daa6a`  
		Last Modified: Fri, 02 Oct 2026 02:45:11 GMT  
		Size: 142.6 MB (142576526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b2baab24dd77d4e0b863e1811b10cdd36e5090e85ddac08232d841eba3835b`  
		Last Modified: Fri, 02 Oct 2026 02:45:09 GMT  
		Size: 20.0 MB (20045549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c8acb9bd89c71674fe977021854e7b2ce7af18b5fe39a8cde2f1c2a7c55b8ea`  
		Last Modified: Fri, 02 Oct 2026 02:45:08 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5aca604fd4e20ba32afbe6b3d5a4f87e3ca973288fcfcd71313369f842599059
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d2a5f3a52be19a8040f1ab5684cfd33747381c749820ac4fe33ead7f83d81aa`

```dockerfile
```

-	Layers:
	-	`sha256:262da61568c9449376259e2cde260c31a83781114afa3a8e3b5a573d51af7b69`  
		Last Modified: Fri, 02 Oct 2026 02:45:08 GMT  
		Size: 2.4 MB (2392775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18581afbe55412805f5594e130e2e52dc0f39f1ae0112246ddf956662a293b4b`  
		Last Modified: Fri, 02 Oct 2026 02:45:08 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - linux; ppc64le

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

### `clojure:temurin-11-lein-2.13.0-trixie-slim` - unknown; unknown

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
