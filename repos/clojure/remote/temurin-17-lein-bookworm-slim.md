## `clojure:temurin-17-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:63680e717f6e1f17394f30e2fc6080c1e176b9713e263825111593dbafec6d85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-bookworm-slim` - linux; amd64

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

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-17-lein-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-17-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:baf3374e899f5910a7e37291849bf8afb6dc5d81db1a0f21879805d844662541
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200559707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a536f4cae991f86032e685a00408b60e3089a62fbe47cc1567c94ed1dd48860`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:16:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:16:32 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:16:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:16:34 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:20:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:20:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:20:40 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:20:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:20:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:20:50 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:20:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbee517126a754df9c55cf053e388fa44232986d93d455338c5c357816aaca83`  
		Last Modified: Wed, 21 Oct 2026 10:22:05 GMT  
		Size: 145.7 MB (145671508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2926686766373825eba811064fc02285b5ad3e9f6c83d1eca7fe749234f6c5f`  
		Last Modified: Wed, 21 Oct 2026 10:22:02 GMT  
		Size: 18.3 MB (18279327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2b02dcb4f9df9cd95552adb948e4186d3874f4d5460650a837d5bcdd6e5022`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39a5c73b6cbe10daf40d9b02995f0baaf9d29477628af1ec3c40bfbcc06bd83`  
		Last Modified: Wed, 21 Oct 2026 10:22:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b8a988269add68abe343615621b4b6e6a133613e3980d711b7106d10eaa62928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2755973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35d8b393f5a2175e7e5a3e158123e24fe50929a8bcb595b16e7868b9c365423`

```dockerfile
```

-	Layers:
	-	`sha256:a87c3b97ea9e3f4634fb94a00286c595ed04da4872cb3a371775faea2acd11c7`  
		Last Modified: Wed, 21 Oct 2026 10:22:01 GMT  
		Size: 2.7 MB (2738156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd283fcbd952dbeb7958f5a045d9ffb68b31ad9ddae6cd2bf59f965fbd0d3bf6`  
		Last Modified: Wed, 21 Oct 2026 10:22:00 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
