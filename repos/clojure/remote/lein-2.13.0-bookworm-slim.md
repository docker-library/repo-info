## `clojure:lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:ea0da268ed22c9d9adc99c9fc31a3387a10ba61fab67a48f713788822dc5e440
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
$ docker pull clojure@sha256:4034a1cda1de687b65238700d43913af801b1e4aa3db43f31f33a52494a61aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.6 MB (148599137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eea3efccd1947e4cfc5935f919b527ec8395368b69f7cbb0138a97a8d2b1f802`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 06:17:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:17:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:17:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:17:44 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 06:17:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 06:17:49 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:21:32 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 06:21:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 06:21:32 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 06:21:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 06:21:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:21:36 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:21:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf5c80906303dd2c3506329826dc50a79e29f917ec2a088bb2d847a50163986e`  
		Last Modified: Sat, 17 Oct 2026 06:22:15 GMT  
		Size: 91.3 MB (91256227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921c44992290b8c7e440b138031c5bdb42e4335681b1ef6c60e8858573d5c48a`  
		Last Modified: Sat, 17 Oct 2026 06:22:13 GMT  
		Size: 20.7 MB (20734821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:605a1559e2436462ad44d2cbc5f5e09f1bbed67aa7fdd3319daccbccc69143c4`  
		Last Modified: Sat, 17 Oct 2026 06:22:13 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a81f2b00c7933d95eed2b1f5f5498d4a2e387904c90cfcf4424facb189127de`  
		Last Modified: Sat, 17 Oct 2026 06:22:13 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4da6aaa6321d04ef799e26c905e6d312b82dc13177ffed4043b86675089db6bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2709315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f103c0fd8ba84ec0daf1c473b1b25c368f9875b3d9209a87156d4d5a1b085745`

```dockerfile
```

-	Layers:
	-	`sha256:b1885255fee1d40137456253031c84697660ec5b8c23a82d46718c3b0183eff5`  
		Last Modified: Sat, 17 Oct 2026 06:22:13 GMT  
		Size: 2.7 MB (2690833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:831e336a787652644a8cf0034d0709f9f44650eb5d3724dc22dd74dfc6b9a312`  
		Last Modified: Sat, 17 Oct 2026 06:22:13 GMT  
		Size: 18.5 KB (18482 bytes)  
		MIME: application/vnd.in-toto+json
