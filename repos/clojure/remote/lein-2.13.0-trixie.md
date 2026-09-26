## `clojure:lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:9cb55688895fd6901811e697e979b3a797717aff339962c5d82f90bbdc69c3be
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:9cd3c6bdb65b323c19f39d86f0fe0e4b0393fd6c2c9d67c4edc26678d5a60b0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165410123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:628f60a53540cb676d8ba3bfbea17177fbf68a1abcc2bc2d682ea98b3b78e8fc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:24:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:24:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:24:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:24:23 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:24:23 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:24:23 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:25:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:25:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:25:37 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:25:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:25:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:25:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:25:39 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ba456fcd60e1b1a0871b7634d6ff4cdce17834e94d9aad52008f4c1db72ac2`  
		Last Modified: Fri, 25 Sep 2026 23:25:58 GMT  
		Size: 92.6 MB (92618040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d170d741272b3bd10f69a7a6db2f5130005e84d7da6c369899677d923c98e7e9`  
		Last Modified: Fri, 25 Sep 2026 23:25:57 GMT  
		Size: 18.9 MB (18896755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39fbcb3a5626a92ae2442f628e183697537db0d4f839c953281f4c5f28cf1ead`  
		Last Modified: Fri, 25 Sep 2026 23:25:56 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eca26c1e335bfdf993f4cd9a2f5b20e83bb56e30a530524237d7a067284bcd5`  
		Last Modified: Fri, 25 Sep 2026 23:25:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:77a0c29d15defd4fc368f846fbea7e752cc627730a68986efc8c415c1b1a82de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3814122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29cf15108a1f6790aa546e27b40b2c97daa33e07dae673fb63a3c1dcdeb3c749`

```dockerfile
```

-	Layers:
	-	`sha256:a498e8f4567e394a3483e14fb674e8652e1f4eb3a68161ac9d711128b2c64051`  
		Last Modified: Fri, 25 Sep 2026 23:25:56 GMT  
		Size: 3.8 MB (3795777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55e27d8b2c192be46a85cc77717a3eed232661d4ea3625773338d1731b84c6ce`  
		Last Modified: Fri, 25 Sep 2026 23:25:55 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:df7b6a24dda400f8636dc5a35c32723b740a245e29e8ef3888a54ff3e244c7a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.6 MB (164638213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb9fdeb339ee5b3fa1378990819d6ee1ce0aaf9f6a4bae325c506d4aecfd391`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:21:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:21:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:21:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:21:52 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:21:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:21:52 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:23:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:23:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:23:10 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:23:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:23:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:23:12 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:23:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e405ef73a746bde3a940d9d04887c7e53bf39f5d9ce08308cbe766ff4b09582`  
		Last Modified: Fri, 25 Sep 2026 23:23:31 GMT  
		Size: 91.5 MB (91528868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9e03ed223be567140864f2cf4e147c004ed404a874ce50ddacffae6dee0a3f`  
		Last Modified: Fri, 25 Sep 2026 23:23:30 GMT  
		Size: 18.8 MB (18844904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2362150cb4aa55950ace5481d17f82bffbb9b29f50dce11baa2434070efed23c`  
		Last Modified: Fri, 25 Sep 2026 23:23:29 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67316e38d5d81e6ef424ea7766e73af41af5628d67f6e241304ac37cb3865f3`  
		Last Modified: Fri, 25 Sep 2026 23:23:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f6b50f8d1cb97f50f16540ef9e2bec1f42e33b383434a2eb05cf1a99bef92d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3814528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f7f00af931b5c3976f092923b9058e4c321b9a3a83e9700c9ed58759a746b6e`

```dockerfile
```

-	Layers:
	-	`sha256:1488929b3c4e406baeae0b25df0911619aee78aaf04d8cdec7e070be85732d28`  
		Last Modified: Fri, 25 Sep 2026 23:23:29 GMT  
		Size: 3.8 MB (3796038 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d85007e43ab9b8e2f3b417be20616373aeaee10e0d12fa40a6ce40bbf73ed30c`  
		Last Modified: Fri, 25 Sep 2026 23:23:29 GMT  
		Size: 18.5 KB (18490 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:b497b3e3a7be40506150d3beac958185eb92fa6c59816e23dc2f245690657a31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167908444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40c89e5c6dee75e1090ae4833d9187c62e8edb49353472d99ed09de94fd4bf3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:24:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:24:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:24:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:24:56 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 26 Sep 2026 05:24:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 26 Sep 2026 05:24:57 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:27:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 26 Sep 2026 05:27:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 26 Sep 2026 05:27:33 GMT
ENV LEIN_ROOT=1
# Sat, 26 Sep 2026 05:27:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 26 Sep 2026 05:27:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:27:36 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:27:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8e960486494651b12db6bd2f54518def876598c3fc3f0b16b492cce72c7858`  
		Last Modified: Sat, 26 Sep 2026 05:28:12 GMT  
		Size: 91.3 MB (91256231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924daf9c58c72011b16511add55cf12527c5d843664b29ea1804d5f83857265e`  
		Last Modified: Sat, 26 Sep 2026 05:28:10 GMT  
		Size: 18.9 MB (18941479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869b53281a041d032674e9cec300dd36a7e144e17290bb81caa139d2e468f757`  
		Last Modified: Sat, 26 Sep 2026 05:28:09 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b989feaab036e55555aeb42ab8df4c543cb03d55fa3c9e7e55dadceda2298f0c`  
		Last Modified: Sat, 26 Sep 2026 05:28:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:816d41150e7fa2e8a74592c68645ba3b64563120c297c8870bccf24c41cacf16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3798500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dbc6684e9e4d7347257b90bd604d9e6bb8f1346832b911c10f193c991c64989`

```dockerfile
```

-	Layers:
	-	`sha256:60caebfb19b2364d5e5c028d6dab0f144f5521c82f267a16eebb9699c794443a`  
		Last Modified: Sat, 26 Sep 2026 05:28:09 GMT  
		Size: 3.8 MB (3780099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbf811b9bc73aebf9eb52bf88496eae46b27c3db37fc10165107811a55685d64`  
		Last Modified: Sat, 26 Sep 2026 05:28:09 GMT  
		Size: 18.4 KB (18401 bytes)  
		MIME: application/vnd.in-toto+json
