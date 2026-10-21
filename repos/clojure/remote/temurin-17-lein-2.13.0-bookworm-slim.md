## `clojure:temurin-17-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:4e46fd1bff32f3e97e40da1d4b1b022aa17be11b2a72c589f88cefb1161aa50d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c3e46d345aca7abdda03b96dca11572708a49cc4aa2b34e5345712786563dc5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196661653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34a05751f348a268802c204ee0a9f9bda3be7cf287ca35fa0cfec93f20a978b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:17:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:17:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:17:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:17:29 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:17:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:17:29 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:18:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:18:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:18:40 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:18:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:18:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:18:42 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:18:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f7f91e7638a2f40638dbdf39dd42116e0b92c7796ac5b3e35f1b50929f78935`  
		Last Modified: Wed, 21 Oct 2026 01:18:59 GMT  
		Size: 145.8 MB (145825471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7daaf7fb189ea3a5660504c601b4616e40cda62826b6dae5d9ab774b1f95cd36`  
		Last Modified: Wed, 21 Oct 2026 01:19:00 GMT  
		Size: 18.1 MB (18072587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6166c2d537a111ca07e00c4a38b8c71a74073de865e711f5cded60d1b046271f`  
		Last Modified: Wed, 21 Oct 2026 01:18:59 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec3c32463eb3563c7489b7742c97b6d10a356b735ee6458d52c53535fb489254`  
		Last Modified: Wed, 21 Oct 2026 01:18:59 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:00991a63d8ef4e7d930e79e9fd72d1b1a21aef3e6a46e38fcf15374bcdf90c96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc404d583063e0a0b34c3a0bb32c3871173edf8ae71c49a6ddf4e4b67493dd67`

```dockerfile
```

-	Layers:
	-	`sha256:0b508732fbc43fabba950868fd08635933ee676a86a4cd01a6d302b340d90eb8`  
		Last Modified: Wed, 21 Oct 2026 01:18:59 GMT  
		Size: 2.7 MB (2736323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11bbdd15b6e75c633040914276ccb74f9cadba570745f84f21ce5b9a1dd707d0`  
		Last Modified: Wed, 21 Oct 2026 01:18:59 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ef89887a0ec9e395dbaa9d98b6b1b75c70d1f2f6667633441b6efd9dc26a8d9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.2 MB (195208526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f69e3733514192a9ad1b2a5d5d082321737915eb596a36737f8a1eec95a71703`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:23:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:23:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:23:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:23:21 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:23:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:23:21 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:24:29 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:24:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:24:29 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:24:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:24:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:24:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:24:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca6d5a51546ed910fa6750ece34bf9627e9c85873f26c8f1cd0f742413c4ef0e`  
		Last Modified: Wed, 21 Oct 2026 01:24:51 GMT  
		Size: 144.6 MB (144648261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97fee95b91599daa829eb95a3792cfcf8e98cc3e18b89e49b94660a9d846fd4`  
		Last Modified: Wed, 21 Oct 2026 01:24:48 GMT  
		Size: 17.9 MB (17906191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b6686289229a89f36870c323efe457c2691bcd72a83edf1502acc28a75e5a44`  
		Last Modified: Wed, 21 Oct 2026 01:24:47 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:341e9d10a7b8630a3bcf42e0d03608c465bcdd8837af74ab8afd6f47a75f10e4`  
		Last Modified: Wed, 21 Oct 2026 01:24:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bf6e841edf85de907f9b548b3a64e0af866ebf9157fc22edba49bb6476a48118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2753832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceb5e7421d76d3322bc7d68fed16aa7461b70c940edba8b71b7bc018a71b0930`

```dockerfile
```

-	Layers:
	-	`sha256:b8eb1bcf0c98923c466f4831017d2eb3d53b8ca6b80e4cec0e9cd84458621cd5`  
		Last Modified: Wed, 21 Oct 2026 01:24:47 GMT  
		Size: 2.7 MB (2735938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:697ff97aae2a485890281194d0717163ae4753c9f00a70c94c75c47c030365ee`  
		Last Modified: Wed, 21 Oct 2026 01:24:47 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:384a8eb572e76d18334529c63bdcc8bf709673844397ece1051ab1846cd798aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.0 MB (203014416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f42382f4b1ba52a5bdb26fc2949cb92e14fbbbb18719e55eb520829b1108e08b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:35:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:35:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:35:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:35:33 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 05:35:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 05:35:35 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:38:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 05:38:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 05:38:28 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 05:38:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 05:38:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 05:38:34 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 05:38:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caee9e6ea3d957247c276d0a2bcfcb03fb1b199901d9e953711b51829ff4e433`  
		Last Modified: Sat, 17 Oct 2026 05:39:14 GMT  
		Size: 145.7 MB (145671534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9836aca9b8cd9f56bc9d79fefbc560a97c813831310b64253b572145d3085eb`  
		Last Modified: Sat, 17 Oct 2026 05:39:12 GMT  
		Size: 20.7 MB (20734792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c7604a8f0126151cd5079042dc8b2f23fedec5f6e6bc3b467745ab8cf026f1`  
		Last Modified: Sat, 17 Oct 2026 05:39:11 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ece7fa73e0beb89b1c03081b3a748f1844877a3e73ebc14a0f7aab9bf3bb2f85`  
		Last Modified: Sat, 17 Oct 2026 05:39:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:45f9f224d7dd18358a1eb6f8ff0c364de256a2ecc056214d676d0f43f2633a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc798b44fd0f87a0932a7072e21958a2d9ae149fae2cac2f237dd049e0b47793`

```dockerfile
```

-	Layers:
	-	`sha256:ce63f71512c00671a20c5f050f72d947945f1aad3f36855316c63c9b220299d3`  
		Last Modified: Sat, 17 Oct 2026 05:39:11 GMT  
		Size: 2.7 MB (2739451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54f21a9bb19f015dd4e090e90470233a6c57789eeff9f3139d4dbe8b30368631`  
		Last Modified: Sat, 17 Oct 2026 05:39:10 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
