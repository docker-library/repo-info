## `clojure:temurin-11-lein-trixie-slim`

```console
$ docker pull clojure@sha256:cfdcdba04b2a8bceab0cbf068968d0531046c23548cbcace036d2c492f9485f1
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
$ docker pull clojure@sha256:fc01456e73c6aa69d24bf0a06839d8cd20cb8fbc52c12211792f345cd06b1002
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196964728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2609c047996c55835753fcd24c32ce92713d52b8484a9730db7d70e93ab2060c`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:19:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:19:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:19:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:19:16 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:19:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:19:16 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:20:33 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:20:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:20:33 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:20:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:20:34 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ce29b2c3f841efd523bb7f6ae97056141526a1bba36db206cce9f6cf3f2145`  
		Last Modified: Fri, 25 Sep 2026 23:20:54 GMT  
		Size: 145.9 MB (145864132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399980df426c6efec8e0e1fdd1e048b1ceeb9011f5979a6319ce7e77286f9d69`  
		Last Modified: Fri, 25 Sep 2026 23:20:52 GMT  
		Size: 16.8 MB (16754974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a093683e15eb2dcc7f3a9392152cb56384510a52d3df3bbf58388f9b30683ddb`  
		Last Modified: Fri, 25 Sep 2026 23:20:51 GMT  
		Size: 4.5 MB (4515172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:826959d33556261b57ee2cb3f3495e94b1aed83ad1c523918015d35149952fae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d7a1cd6c82f263478d56758452323575d23c910c79f271ce4c88865f14b526e`

```dockerfile
```

-	Layers:
	-	`sha256:d7cfe37171f5610aecfb01c11c62e7ee7a995f65476caf8ee2ce66be5e57c81e`  
		Last Modified: Fri, 25 Sep 2026 23:20:51 GMT  
		Size: 2.4 MB (2392547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34cff2af4568c231691dca0d0038187a0529c5af7b1bb1145bcef72b837d603a`  
		Last Modified: Fri, 25 Sep 2026 23:20:51 GMT  
		Size: 15.8 KB (15764 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e219b0c6c05eb054d1ea5ef3b66fdf7994e35c46c44c947a2214b750281c6aaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (193993060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573eaae85504e8a7cd6542d1b042429d5633eb9d2315fdacd090dabe3c78883a`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:05:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:05:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:05:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:05:21 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:05:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:17:00 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:18:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:18:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:18:19 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:18:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:18:21 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18f67ef39ec8f9421c746e834cd6a184275724614bb1a069cfd9997b23fd997`  
		Last Modified: Fri, 25 Sep 2026 23:06:11 GMT  
		Size: 142.6 MB (142576547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d4063815efae21dc9fc8bb01d6a897b4fae9f2e37f19394cb4b9e1138ae799`  
		Last Modified: Fri, 25 Sep 2026 23:18:32 GMT  
		Size: 16.7 MB (16711609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c789732ba4245022b06f05fbac2139770bf1b1fc0a4e9a8654c36d6bee7f1571`  
		Last Modified: Fri, 25 Sep 2026 23:18:31 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d71fd7fdb427d8c5a98520ca9172887c7470f10742225ce310d076aa62fbcc1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2407705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18dbc7beeb2490390cc4766b4314b2480c44d16039d714f73d755c7283d4eaaa`

```dockerfile
```

-	Layers:
	-	`sha256:971e238ab53974c1ecd05407c0eff59bffea7d6a8a024380a5ba4fd3022a7c66`  
		Last Modified: Fri, 25 Sep 2026 23:18:31 GMT  
		Size: 2.4 MB (2392775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bf42527e67a60b5631ed57cdb5795c3df5ccd4867546109bd687d7c74f7e633`  
		Last Modified: Fri, 25 Sep 2026 23:18:31 GMT  
		Size: 14.9 KB (14930 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1128d78b67673f36ca51eab4fcbb938bd66f97c903899991ec1ce21785c1e1a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188028761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5285a376bacc0c91d706a13c8994e71f924b9ea99664d7fdf911b671199bce78`
-	Default Command: `["lein","repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 07:43:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:43:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:43:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:43:53 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:43:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:43:53 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:47:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:47:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:47:42 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:47:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 07:47:47 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccae2a29775f4b87ed1664fa003cbd6f8018f51b1b85e136fdd9c8eae069cde`  
		Last Modified: Sat, 19 Sep 2026 07:48:21 GMT  
		Size: 133.1 MB (133090122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11b7676733044a5dacc9fb922bc5204a68fb5eeeecb03020efcbd3981bc363e`  
		Last Modified: Sat, 19 Sep 2026 07:48:19 GMT  
		Size: 16.8 MB (16782192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7de09270b961a49270d3a5ca0e85be4bcad31d89d0a820465265b960471c3c`  
		Last Modified: Sat, 19 Sep 2026 07:48:18 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5ab58adda19c70093eb7f7e0f53e81e0b7bb7ca20a8c21970f3ecdd55f33da81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2408712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39f8e3fd36eb5df0009cad0d45440476962156797231d25b5de108c29655225`

```dockerfile
```

-	Layers:
	-	`sha256:1270efa4db5370baf2c6ac431f4e7493ccd9399a85ac22883f059d8fbd29c9ff`  
		Last Modified: Sat, 19 Sep 2026 07:48:18 GMT  
		Size: 2.4 MB (2392904 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca4a4bea7a4a78fe81d12f8b36cd618a50bc55d22ede670c187659850a947cf8`  
		Last Modified: Sat, 19 Sep 2026 07:48:18 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json
