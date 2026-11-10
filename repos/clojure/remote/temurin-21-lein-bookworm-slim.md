## `clojure:temurin-21-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:6dbb9dd26b95107cd7646a0898af7dcaf65aef23a8a9b35d40fe69cee041d693
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3fd279e623ac1f5040e990b726c5b04be4ffb16a403bf1472e0324b0d854b0c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209245984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f84b8f3a28fe1304ed24162d9776646c76c743cc8a3ffc991698d106256c857`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:39:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:39:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:39:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:39:59 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:39:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:39:59 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:41:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:41:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:41:08 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:41:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:41:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:41:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:41:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c8152003cb4e99389c5c9ada550dae4c4cf89ef8e26618ebd75dfd96b7443d`  
		Last Modified: Tue, 10 Nov 2026 00:41:30 GMT  
		Size: 158.4 MB (158409449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2507d3241f01fb2116208b2c212f024ef62ecc772febf5de01094e2c4fa83e`  
		Last Modified: Tue, 10 Nov 2026 00:41:27 GMT  
		Size: 18.1 MB (18072437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:267c27e187d91ede455ac6b08d4a1dd5827e06e9520182f2d03f26a00bb6a33e`  
		Last Modified: Tue, 10 Nov 2026 00:41:27 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46bb48f6663a2ca1e2a561228e8b0ae2a853a43f80f8e96e1d886fba24749ce`  
		Last Modified: Tue, 10 Nov 2026 00:41:26 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:00a17cc6deffd41ac068987bef4f1b7ec0caa1cff0dd9f8e375ea5526f36be51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5109387e4baa6169ffb772621cd2e4ab0f708b6442e71dd981a0786d7fdf1f`

```dockerfile
```

-	Layers:
	-	`sha256:fc615c09249f73f3860aed5b74b3f1ee96c21ba681a6c38320119f831e94dea0`  
		Last Modified: Tue, 10 Nov 2026 00:41:27 GMT  
		Size: 2.7 MB (2738167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ff6f4380746e6a8cdceffeea6d0af90b5d33d4c94a6e17ce214f4d5e0d4bf34`  
		Last Modified: Tue, 10 Nov 2026 00:41:26 GMT  
		Size: 17.8 KB (17772 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7ce2ea828324f299cb4f232790391bbf1f8bccef67eb885405bb8429ecc9815f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207258654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3726231df8d56da999bc5b6f2f3aa797bc1a1054f4f1ca56a17b7ec3e36746f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:39:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:39:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:39:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:39:18 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:39:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:39:18 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:40:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:40:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:40:28 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:40:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:40:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:40:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:40:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a8e0f2885a62b334668c7ff37399613d506b5b9083b803de8fe7b39953bea7b`  
		Last Modified: Tue, 10 Nov 2026 00:40:51 GMT  
		Size: 156.7 MB (156691624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48da17e7252c5b21ba8b9a337306ddd4719e06030eb6b1c9a9186749b847b31d`  
		Last Modified: Tue, 10 Nov 2026 00:40:48 GMT  
		Size: 17.9 MB (17906521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a30507d14de6e0b4a7856c2f56e996557a2b4ee08f6c8a68de223167a4b153`  
		Last Modified: Tue, 10 Nov 2026 00:40:48 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb36bb556619b51b28bf325d76b3bf716c3392c423a5562acae764303ba90cc`  
		Last Modified: Tue, 10 Nov 2026 00:40:47 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:182b2e93226de359050e4e74d27e13034d651f4b1e4d8cb4938f80711952f554
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89484f7799d040c1c78c3b6d1c0e97d9f4f7a7dcbc8d8a58f5b658b36c87112b`

```dockerfile
```

-	Layers:
	-	`sha256:0b6933029cf02b6ee45c6679a041f6624bc5c6f996da823cd23caff20943a883`  
		Last Modified: Tue, 10 Nov 2026 00:40:48 GMT  
		Size: 2.7 MB (2737782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3bc3bb44f5a62434d36eae415168b149303a5a0f5c739b3baa0f6535249dc3e`  
		Last Modified: Tue, 10 Nov 2026 00:40:47 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7d7158c23ed9ac04b16539e9848ac28a9e936e6dd49be1d2fc07c21eba9e3e59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212462283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff6fff18d6db8348ff2aadaa6c7954862fb03789cf340762cf7992f02c57496f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:49:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:49:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:49:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:49:08 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:49:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:49:08 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:52:09 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:52:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:52:09 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:52:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:35:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:35:53 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:35:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00ab57e54146656986c1b7733b67f6124d946328177a69a693d4f11a2f0950d`  
		Last Modified: Thu, 05 Nov 2026 15:53:06 GMT  
		Size: 157.6 MB (157573237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5442d4ac34b6dac714b8d62e407980a93d477a96f3bdcb3cbf97f880dbf32eb`  
		Last Modified: Thu, 05 Nov 2026 15:53:03 GMT  
		Size: 18.3 MB (18279342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9cf31c85ec4a6c335d92e3fb3ba3688917b928e687bd8d079158e1e615a9df`  
		Last Modified: Thu, 05 Nov 2026 15:53:02 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8ea54f5a96b8b8c3fcabfa11c13990b43890aac5ca6bb73ee436b31ec50bb5`  
		Last Modified: Tue, 10 Nov 2026 02:36:19 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f9f9016a8f54ecca57c86880f78f6f5872e57aa3bd30340fbe28c47f052815e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4ae10ed408a794f98fc4358b416010df356b9406e52f7cf635fce9faf8f3491`

```dockerfile
```

-	Layers:
	-	`sha256:59e96eebc84e00c4f4b2b1075fe87ee4e1d4bb8be0086caf480248b8f8f67c7d`  
		Last Modified: Tue, 10 Nov 2026 02:36:19 GMT  
		Size: 2.7 MB (2738754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77492c93898e57c80309bd97366d6afdbd6a60c5fa47d8cac0a082fb3d13b852`  
		Last Modified: Tue, 10 Nov 2026 02:36:19 GMT  
		Size: 16.9 KB (16862 bytes)  
		MIME: application/vnd.in-toto+json
