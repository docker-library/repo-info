## `clojure:temurin-25-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:9f8f66a4fb14b04d80668520a7c101780e768bd421f89d5e0422ded3c993db0d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4a23170549df5ca6819300ec656a77f236ad635ceeaf7fae94788550d91fed71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143454209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc947d919e4d070a595731a8b1442c142133b0a824762b4666221c073382a82`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:51:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:51:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:51:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:51:25 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:51:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:51:25 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:52:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:52:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:52:39 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:52:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:52:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:52:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:52:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5e71cedfb38727e5493c9f5313d751dccd6e31ec9888ded43eb493927a99667`  
		Last Modified: Tue, 27 Oct 2026 00:52:59 GMT  
		Size: 92.6 MB (92618065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec428228bbb04cc45a7b572001e8924bad124f4e74a915af5c6494059e6e9c53`  
		Last Modified: Tue, 27 Oct 2026 00:52:57 GMT  
		Size: 18.1 MB (18072585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3a091963343e866c5ebb401ef1e9eccb35265ea43f5b35f93778d1939586ee`  
		Last Modified: Tue, 27 Oct 2026 00:52:57 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ded83d7458af58652150480e509ea42e36ecf7351f5a4a440a5659b6978a62`  
		Last Modified: Tue, 27 Oct 2026 00:52:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:42d15de16d9034758c0e5b92286b1d0817b6d4e192d311f41bce3e117f5ed987
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2722809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5c4bee43b4ddbdca54b83e7902e336e6e799d5f7e1a414d08b2030890e7cad5`

```dockerfile
```

-	Layers:
	-	`sha256:859f6ea46b318d1a442112b6dcae01ee734f152c4f7a2a56784b66564a1d2e51`  
		Last Modified: Tue, 27 Oct 2026 00:52:57 GMT  
		Size: 2.7 MB (2704381 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf7acea99ff2280c2fbf5ee2b11daf289b372b76f22067a83684910014277dfc`  
		Last Modified: Tue, 27 Oct 2026 00:52:57 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7daa1f56389fd4241e4198beaf8eb248088c73c48738198eeee11123fe83d3ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142098751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:379fe95102c734f652ab9597a09b9c68106a24f09e7746a29556ff4059e11956`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:21:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:21:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:21:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:05 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:21:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:21:05 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:22:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:22:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:22:19 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:22:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:22:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:22:20 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:22:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef47330a2ca138211654df9780b9f86b3ac1eeb57a6afd4ef73cf8e1b3045c34`  
		Last Modified: Wed, 28 Oct 2026 02:22:40 GMT  
		Size: 91.5 MB (91528799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1a0a38639a633977dd4b664a1f4ec51e6077e15f2c5de259479d128d91deef`  
		Last Modified: Wed, 28 Oct 2026 02:22:38 GMT  
		Size: 17.9 MB (17916396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec5ba7d3b9cd5cc91a3954ded06d6d411ef35e5ddf785e8e27cad590540d28b`  
		Last Modified: Wed, 28 Oct 2026 02:22:38 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cab09e827e979ed2c6a64a0922ae8169382da3ab140feb2471263cc97b09367`  
		Last Modified: Wed, 28 Oct 2026 02:22:37 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:36ec7355ba31b36975cdc634a2a8aee648ca51efd031540c587d1112cac39a72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2722590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae05b0574234fb06b29464b6f0f91909679921b183b499b2cf3c4a07ddbb433d`

```dockerfile
```

-	Layers:
	-	`sha256:dc0a01cd7b61a0f8d519d997569c0ac0e1e3591c4deef0396eb6a5649ce2d9c1`  
		Last Modified: Wed, 28 Oct 2026 02:22:37 GMT  
		Size: 2.7 MB (2704017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e8466319768485b1944ec353f6c8ff3fb658a27c6b534cc366824e602d02984`  
		Last Modified: Wed, 28 Oct 2026 02:22:37 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:77b1d88110a4acd03afbcb11d52398fd7cb8e7f319a3e96b46e7e444a021e8c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146143798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78351fb301f29fd03a70fed580cb1aefa74a3e91dfa3369d4795dcd63b6ecff1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:49:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:49:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:49:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:49:47 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:49:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:49:48 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:52:39 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:52:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:52:39 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:52:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:52:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:52:45 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:52:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7571101308f800b4e51099571fab93477a86d9b3aed49f71193b77a9cfc6132`  
		Last Modified: Wed, 21 Oct 2026 10:53:20 GMT  
		Size: 91.3 MB (91256224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f955054d77d07e4588e9f92824720641e757c2bd528ba2bc7c045a2a60a3ecd2`  
		Last Modified: Wed, 21 Oct 2026 10:53:18 GMT  
		Size: 18.3 MB (18278733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a19418fe830b7b92ba189d56125cf99d3847d29573255de04902b9916fe5ec06`  
		Last Modified: Wed, 21 Oct 2026 10:53:18 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f07f32472a33a7f985c96fd19aa1cbe6e2bd5d99f9f34073905fab079e4dd9b`  
		Last Modified: Wed, 21 Oct 2026 10:53:17 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4834f3407386e325552d9828a58c8ecb4598bfe9d13b40d17a8fcdbef82bb785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2708021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7617b8fee18f3e287b2cfeaff0303f2e1db5bc80248dd48ab89d0e0b08156afa`

```dockerfile
```

-	Layers:
	-	`sha256:665346ef788703edca4115156543c0d10d13df5a7848b532ab77cde54bc7cd69`  
		Last Modified: Wed, 21 Oct 2026 10:53:18 GMT  
		Size: 2.7 MB (2689538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:19a9d6f684f13e038e3aab6a45114c0c6b11a024b808eccdee0f4e1b02f6669c`  
		Last Modified: Wed, 21 Oct 2026 10:53:17 GMT  
		Size: 18.5 KB (18483 bytes)  
		MIME: application/vnd.in-toto+json
