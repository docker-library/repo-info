## `clojure:temurin-25-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:467519189812df39a913227f1ca4bfef11e0e92848ea5607485549287d67b0ee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9a04607b093833a6c9967cd80a559c95e382a47302c84a7d49242b0933bc06c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143459179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd0e146b0bca11f6644553ceae1f40aa1982fc557429202a2cd6f8ca65eeaa18`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:24:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:24:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:24:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:24:12 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:24:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:24:13 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:25:21 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:25:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:25:21 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:25:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:25:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:25:22 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:25:22 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f0758b0fab8332b5cb6c127973359f9343f2adf178f38421d076e40886cd1c`  
		Last Modified: Fri, 25 Sep 2026 23:25:42 GMT  
		Size: 92.6 MB (92618043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c8c604fd78fa68d7d29bb44e9fda51c0c98a74a04cf6383a54e9a4da67273da`  
		Last Modified: Fri, 25 Sep 2026 23:25:40 GMT  
		Size: 18.1 MB (18087071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2bad30996b4535d98d9526b01d8cd0a64c95f2e7361c2f0c25bc78cbc7b4054`  
		Last Modified: Fri, 25 Sep 2026 23:25:39 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd1c32609c329732a91933cd947ac13e4a0457e692f45dc3fe9ea3b14524512`  
		Last Modified: Fri, 25 Sep 2026 23:25:39 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e9b74ac1e5ad5afc96bfccac46f3c9eb1ee7f19a711c0cc00f68d9776116f893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2724104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3083fa7441c164f79d3880c728e700423ff4a4dac671b54883c28dbfd85260`

```dockerfile
```

-	Layers:
	-	`sha256:cd95a7378cc7e5dc3e128d4e79ce11ce247261de2a8c086a8fa2c3f0a6594684`  
		Last Modified: Fri, 25 Sep 2026 23:25:39 GMT  
		Size: 2.7 MB (2705676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e621a3276593cdda19bc1d6815061e03854507ab98699265a7ff3e28e0174467`  
		Last Modified: Fri, 25 Sep 2026 23:25:39 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d69a2daacf93ceb64690ebdc1411a3d65de91a0e371c744a4b817b8ec93c813e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142076470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ed72cd45be4001ff12b9b7a2e3304acf11ef5f6f2e6911a39a51832f80a3cd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:21:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:21:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:21:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:21:50 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:21:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:21:50 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:22:58 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:22:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:22:58 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:23:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:23:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:23:00 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:23:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63400c18cd4a2e99a922ac5a2c948235e3f64485e20b5f6eefde39d5c157c3ac`  
		Last Modified: Fri, 25 Sep 2026 23:23:19 GMT  
		Size: 91.5 MB (91528868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb164275dcd770417ef7b6976b9aa68c531d8fb549eab8c27f10bb5d32a5763d`  
		Last Modified: Fri, 25 Sep 2026 23:23:17 GMT  
		Size: 17.9 MB (17908294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435394895b213b3fc1b25ba38439dace7896023ae886389760c21a4fb006deaa`  
		Last Modified: Fri, 25 Sep 2026 23:23:17 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7f777d431a5366ee9a5438e102c0f3b2e25c244ab89789c7ef4e1bd7bf2b5f`  
		Last Modified: Fri, 25 Sep 2026 23:23:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3be933cf53a56a777486ddb0825078328de72fdf9ee3daf7637cdb7dac444d40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2723885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b7c5973f51b3f7c0e1ccf143b455af14ce4d8c415e12f5de3bb798771953aaa`

```dockerfile
```

-	Layers:
	-	`sha256:4021ffe3d4149d4fa58864d0b5a611c9463a4ab833491ca9d3a2e26a76a12edd`  
		Last Modified: Fri, 25 Sep 2026 23:23:17 GMT  
		Size: 2.7 MB (2705312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:568f44f721f944c6a143f1c406093d2da4e84dec60f04b4be7c4bdd332ebd5e9`  
		Last Modified: Fri, 25 Sep 2026 23:23:16 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:3cd7e7e12f3dc52fcff6d12baf062aaff659500fecec4d5d15a0d27f0a7632d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146134563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed867f5048ecd5e889e88ca6862f6bc06e3d329d865e85ed39456e25b9c93879`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 08:15:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:15:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:15:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:15:10 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 08:15:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 08:15:10 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:18:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 08:18:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 08:18:18 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 08:18:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 08:18:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:18:21 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:18:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8b45bcb39b6c6ccac622b12389186f44a6f6e5836499fd9e571b1f68545fba`  
		Last Modified: Sat, 19 Sep 2026 08:18:58 GMT  
		Size: 91.3 MB (91255822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba49545cee8af25cebf58ce211940b7cedc20390a793219257e736d7b686dd1d`  
		Last Modified: Sat, 19 Sep 2026 08:18:57 GMT  
		Size: 18.3 MB (18279524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46fdd98f4efa70da08f9990bd2005c86a5673e11a49365fe342772eee988cba0`  
		Last Modified: Sat, 19 Sep 2026 08:18:56 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ba6214303a0a242272b06b59b731f9b6667eae1b58df2a57072a341bda26d1`  
		Last Modified: Sat, 19 Sep 2026 08:18:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b4c1681bf52fee48614d7bb20e6aa0938e1439b938706e01a12a7f6138d5082f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2709309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dab788abca2b3f36e028dded8711cea8c38af68fa3c567fa10e3315ebced1bc`

```dockerfile
```

-	Layers:
	-	`sha256:15b6be44bfa5448bf620d9a7552c2fa1a4d1fa5207d65581a7de80d49b4943eb`  
		Last Modified: Sat, 19 Sep 2026 08:18:55 GMT  
		Size: 2.7 MB (2690825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:958b470bba9572594e5f224c29832cf7a382f683f0db4ea33ca3df5207f10e15`  
		Last Modified: Sat, 19 Sep 2026 08:18:55 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json
