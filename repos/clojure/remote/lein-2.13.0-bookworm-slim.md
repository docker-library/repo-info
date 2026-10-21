## `clojure:lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:a11b06b861c0033316c0b5c011a3dce5a657f89e7697d2d73accfbc2e93c3e49
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ca408e4a38c4b25af27c3f1ed045d46de3c57616b368b776ff759cdbff1e9b91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143454168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1a93263d0e19714cf0ab9c749f83e88464c680570f0257faedb40c74d7230e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:19:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:19:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:19:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:19:55 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:19:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:19:55 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:21:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:21:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:21:08 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:21:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:21:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:21:10 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:21:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a274b42da574b42719ad156db6b2615aef938d0c8de834f78d42ad793e34e68`  
		Last Modified: Wed, 21 Oct 2026 01:21:30 GMT  
		Size: 92.6 MB (92618034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d7a846f24212191c1ff7b3e17ec4de3efb98c77ca7ce2909b14af4ef58d296`  
		Last Modified: Wed, 21 Oct 2026 01:21:28 GMT  
		Size: 18.1 MB (18072551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0da7c4f69822ce6650220d3f23bbdbf8beed0c6e19fcae31f246e7e5d2bb211`  
		Last Modified: Wed, 21 Oct 2026 01:21:27 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5d0c1ba48dcf25d6931bf7b016b2bef0299f7aa58513cfbad95f22faa1414e`  
		Last Modified: Wed, 21 Oct 2026 01:21:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5451460ffab827247bda1c4f83a7f994689e99d2e26d664e1c6748e3fe487d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2722809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d36cf9759238ce660c4410011abfd5bb6fbd6bd3966d54178d349097b88d7c4`

```dockerfile
```

-	Layers:
	-	`sha256:cc76e832328298216e8d25d944682eeab1aa28498ad7811ad2001f54dcfba9c8`  
		Last Modified: Wed, 21 Oct 2026 01:21:27 GMT  
		Size: 2.7 MB (2704381 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:464c5581ed3b86db4f83fd5aaafc64ba09a71c1366f437b8045d4d46b34c8a10`  
		Last Modified: Wed, 21 Oct 2026 01:21:27 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f5d6e145a7d19601bf61e398010a9743b6ba98542a8efaf4969cb9b70d93d15a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142089093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c152f039cba8ef479a7547f55409b27a6642ca3b869acc14e3422ddfc1a45a3d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:26:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:26:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:26:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:26:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:26:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:26:00 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:27:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:27:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:27:10 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:27:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:27:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:27:12 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:27:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e777dbc4f565e66fffa52c0b408db35a6f01137f99740edc6ab8663c5f294379`  
		Last Modified: Wed, 21 Oct 2026 01:27:31 GMT  
		Size: 91.5 MB (91528873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f501fb00a5519bba19d7e1f8048ab46cf5264220fa4e6098cfa0f39d7f4c6177`  
		Last Modified: Wed, 21 Oct 2026 01:27:29 GMT  
		Size: 17.9 MB (17906179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c77dd93616da6a56f270f4ebf2ed10b91a8f5641b7ecf8f559b68a141b419a3`  
		Last Modified: Wed, 21 Oct 2026 01:27:29 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6734af2d61cc1e2dca0d79172c363e9239b37620df11eb93f9771dd51271c7b1`  
		Last Modified: Wed, 21 Oct 2026 01:27:28 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9b669105a9e481e3a9d181f9de644461a5188c0261a0da027773722da6fea28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2722589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b61a6bd7cf454bb62d166d5b35829d0be2f14989884cbc422d7af3dc9e47b8ff`

```dockerfile
```

-	Layers:
	-	`sha256:45e5391a0be177966f2e658aa2a4ca2a1c54d73c0312ac9bb77595770581b565`  
		Last Modified: Wed, 21 Oct 2026 01:27:28 GMT  
		Size: 2.7 MB (2704017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc415368d4485fbd880595d8937467477b9e05f24b59984f1e05c03aac1e6550`  
		Last Modified: Wed, 21 Oct 2026 01:27:28 GMT  
		Size: 18.6 KB (18572 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-bookworm-slim` - linux; ppc64le

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

### `clojure:lein-2.13.0-bookworm-slim` - unknown; unknown

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
