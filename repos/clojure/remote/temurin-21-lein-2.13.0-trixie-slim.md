## `clojure:temurin-21-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:eec0c9fc5e9a440cb8b3a5a89f1eb001147c93d912b512af7f63f21e9697b400
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

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:dd29fab4ab8186cbe130921211e17ce67982d0a5856fc9e1a0a3dde5e91dea82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209207347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9f844521917eda3b79cf0cea5a29dce1ae8118d8e3a2c7883e06d6954859168`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:33:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:33:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:33:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:33:29 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:33:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:33:29 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:34:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:34:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:34:42 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:34:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:34:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:34:43 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:34:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04062b6c080a410294ade84de749d1dac224b86472f8f963527cdf17d4c8fe97`  
		Last Modified: Thu, 16 Jul 2026 01:35:04 GMT  
		Size: 158.2 MB (158166967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5025f4e96eca1025103ad36b04352fa59d10fcbaef24c010d6a3fda2cc51bfb`  
		Last Modified: Thu, 16 Jul 2026 01:35:01 GMT  
		Size: 16.7 MB (16743862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6ae9398f8de0eea6c94df807acee62df1cd83f39a79b8ddd1466233c435280`  
		Last Modified: Thu, 16 Jul 2026 01:35:01 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ee001c35f125b371bc6538c119abb5f16cb822e2ee5487dce88d5d667cbcfd`  
		Last Modified: Thu, 16 Jul 2026 01:35:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a8ffcb21d7bbf43224cefafeffc43d7bc7cbb838edac80a63397050994b9d2bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045ff7fcd7d9eda77592e1937a83ca6ef1d1da34f4eb314430cd25f1641165e6`

```dockerfile
```

-	Layers:
	-	`sha256:c98252dd4bb0a6cd87862d1e008a2584a7cd2f71afa9b4f0d7afee0723d4ec9f`  
		Last Modified: Thu, 16 Jul 2026 01:35:00 GMT  
		Size: 2.4 MB (2368969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cf114449e61cff5c8451e6e13f836d41ef59d6d564b25a2fb200e23cd2bf8e0`  
		Last Modified: Thu, 16 Jul 2026 01:35:00 GMT  
		Size: 17.8 KB (17752 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:35faa408c93b9925ab09ff7bb69ba3144e098807741716ff5ffe032c796eb096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207841879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65010336f48538681be2ae0e26703d9011b5b2758f514468966c2380e428bb8b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:16:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:16:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:16:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:16:26 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:16:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:29:23 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:30:38 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:30:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:30:38 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:30:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:30:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:30:40 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:30:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9650e31e6f85552f3e72f5ed730c2cbbf4bb083a865b838506b2ea0a1b1fd3`  
		Last Modified: Thu, 16 Jul 2026 01:17:19 GMT  
		Size: 156.5 MB (156461293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8706f497cd749aabd5b77940c4a6844e021af1d840defe1c129f405f47d0bd45`  
		Last Modified: Thu, 16 Jul 2026 01:30:48 GMT  
		Size: 16.7 MB (16721241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd6c77828665a18ede37a632e6780812a6c0d7543a6984df63866906f9bc3f1c`  
		Last Modified: Thu, 16 Jul 2026 01:30:48 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8da65dd1ae5db72ac46d8f6b34b18efb0b622739b0e57868b6970fe0075bada`  
		Last Modified: Thu, 16 Jul 2026 01:30:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6a3a360d4d950b87f9aa3c97ebb2c736e927f7f8c0510ae635a638703fce7adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2386453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f3f237ae61a638ee0866263fd1e1afd647025ec29c8aeeb98ed04904549311b`

```dockerfile
```

-	Layers:
	-	`sha256:7da36e84afd4514f5697054b4cc343eb9f36db5e4a126b3dbf226a8e0d5757a5`  
		Last Modified: Thu, 16 Jul 2026 01:30:48 GMT  
		Size: 2.4 MB (2368579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aaf9186dcd0eb0d4706bcfba04e70ac2566137142aa07dd9a30c7df3b169f7ae`  
		Last Modified: Thu, 16 Jul 2026 01:30:47 GMT  
		Size: 17.9 KB (17874 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d798752aca29540e9ec1c2cfb24e3ce93a8a83ec885c18e373b5280bbcf04070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.2 MB (213242232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7ab0b66fb480fb4d8f2fe38565460ce2c97c4ca6ec8f6334dbcf4c7246bd13`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 02:52:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:52:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:52:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:52:06 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:52:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:52:07 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:55:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:55:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:55:08 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:55:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:55:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:55:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:55:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bde8679fb1e7aa32fbf77a5eb9478dc2a87a552d24aaa3b4df306d7bb38a6c`  
		Last Modified: Thu, 16 Jul 2026 02:55:53 GMT  
		Size: 158.3 MB (158343200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c71f3b76769156c21ed3e9194647712cd47e6e09986f27d2fa00b8de2ebc05`  
		Last Modified: Thu, 16 Jul 2026 02:55:49 GMT  
		Size: 16.8 MB (16781927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f23553155034163113f21b125002fa1723148a58bb3aa02715f42730e36dcd`  
		Last Modified: Thu, 16 Jul 2026 02:55:49 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d3d32a12c1a8939f4981aa8feb54b372902841b098aaa2914ea8a54726e45a`  
		Last Modified: Thu, 16 Jul 2026 02:55:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dfb2dc721ef3aae0aa4260b55b269422a98a2c56cae4235ea98db714ce143d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2387746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bca9d60b6752c6c98784aca27d6683e78e2128ce2708eaf2f38a786ceb478113`

```dockerfile
```

-	Layers:
	-	`sha256:1e4129a394ca87c3ea90ae74a46cc233a3d2a955aeca5e0f872d1810e9b6e555`  
		Last Modified: Thu, 16 Jul 2026 02:55:49 GMT  
		Size: 2.4 MB (2369949 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e40901d28aa7b83695b2f8c4e72bb17f0821221d2aff68a53d7a98ded6db8d5`  
		Last Modified: Thu, 16 Jul 2026 02:55:48 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:b7fdc23521cb8f34e5668c0a614cda3ecb162439ec1b065ba78482506e8e663f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198530477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4def83e54e11e0d650d0c6ee1359124627bd76cd3be70bfc96c478ef0c55c646`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:50:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:50:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:50:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:50:12 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:50:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:50:12 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:51:37 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:51:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:51:37 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:51:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:51:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:51:40 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:51:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e879ec414100f7cd0d5ba94df500980e20e9741e3a4a6ac85a4565a0bf6d874`  
		Last Modified: Thu, 16 Jul 2026 01:52:08 GMT  
		Size: 147.4 MB (147388350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753745e7413fc047b6496b516bfad383fadef4f6299da510efff46ae71caf14a`  
		Last Modified: Thu, 16 Jul 2026 01:52:05 GMT  
		Size: 16.8 MB (16779860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98aca296a796b6fc538662edf3bb7f9a02bd41bf599eddd2ae61b12c58645536`  
		Last Modified: Thu, 16 Jul 2026 01:52:05 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe11778bd5b5f99116cd7fc337255c217d887da522798d9b424038999a56a87`  
		Last Modified: Thu, 16 Jul 2026 01:52:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b974cfc7c3708af5ce8f22121871eec86843a669685bcd2c1c055230742147db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2383149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92fb628a222da040bd234bde12bbab1382aa51cfa5d7605c1810bcde2bb7e58`

```dockerfile
```

-	Layers:
	-	`sha256:358d437285b541a665088aadd5660e808a1592ba01d7d8b601a05946396b3091`  
		Last Modified: Thu, 16 Jul 2026 01:52:05 GMT  
		Size: 2.4 MB (2365396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2eef71d46e8f502f5547c3153d746ffddc94815f954f6c5c4b99729b1d3d3eb3`  
		Last Modified: Thu, 16 Jul 2026 01:52:05 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json
