## `clojure:temurin-26-lein-bullseye`

```console
$ docker pull clojure@sha256:71c75e7be52dd34f8e0d916e482e48af627cd3dca2cfd843fd2eddb0a98db28c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:ae9b32f3e2efaa9c39f616ba33e6c65c22ec979ffaf61847ca4c61dac345708d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169757029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2df3e6cdb89de95cff263c9a589e1ba8dbd1f0256dea55d8d88448a806db814`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:25:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:22 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:25:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:25:22 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:31 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:26:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:26:31 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:26:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:26:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:26:33 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:26:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c8563270dc302d5020ed04e07a41cc34e6b7fbf7df76b956f358265c3e629c5`  
		Last Modified: Wed, 05 Aug 2026 01:26:52 GMT  
		Size: 94.5 MB (94524334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11651d57e915d977b1cb6f26bdd92846c78ac9c5f2a380eb625ac6641286b1b2`  
		Last Modified: Wed, 05 Aug 2026 01:26:50 GMT  
		Size: 16.9 MB (16940027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c124f5aa43b7956f24e5e9c124cc6f10d8345bef9c075d7dcd07db0e94cf43e`  
		Last Modified: Wed, 05 Aug 2026 01:26:49 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363cbee09193e871835ab1b777baf2b8609863fadd005f2c118ab4c4ce216e32`  
		Last Modified: Wed, 05 Aug 2026 01:26:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:30e35c6b652c611b16d7ba1960d30d16db7a8de0b4589c18f31ee8e7572989f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4483649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7af81064da8414c6a5ffdd0241adc6c9a1fc737633f2dc992cd86a668f7f80e`

```dockerfile
```

-	Layers:
	-	`sha256:15a4ef5db932f836d5ddaf710b3b4711aaf6542740cd44388dfe1cddf695b76a`  
		Last Modified: Wed, 05 Aug 2026 01:26:49 GMT  
		Size: 4.5 MB (4465918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b00f0ed8dbcc6ce90a401e8e748064b1fbbeacafe16ab65461b095e2284c08b5`  
		Last Modified: Wed, 05 Aug 2026 01:26:49 GMT  
		Size: 17.7 KB (17731 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:81c455de4c81a268f985c6262c01accaa2ac1caf6242a1f2db401eb3bcc556e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167199177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:861bb05d2625debcd7baba6457a321633f393fa1043ba86e2e21c9fb1b53773b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:31:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:31:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:31:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:31:44 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:31:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:31:44 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:32:54 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:32:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:32:54 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:32:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:32:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:32:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:32:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1003d24d1c76bbddbd0b36e9e8134225a63c3b281f9701f0c45e29730d715260`  
		Last Modified: Wed, 05 Aug 2026 01:33:16 GMT  
		Size: 93.5 MB (93504352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6b45c775f93eb7d0fe7e34dd7d048c6dba6d52c289bff0e5e902381ade7f26`  
		Last Modified: Wed, 05 Aug 2026 01:33:14 GMT  
		Size: 16.9 MB (16918283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed2a3f6be22a8fd688c40d0a8f1f1d0dee2a6972843f3fcb46a91e86b1ea998`  
		Last Modified: Wed, 05 Aug 2026 01:33:14 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f946f34c60caed89693dcb08f4bfa22c599b831cec382d68eac9b32b4244e3`  
		Last Modified: Wed, 05 Aug 2026 01:33:14 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:d8479160e1a49324cd59c4beed631c053b5cb52222725849230f614e355a048d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4482741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86b4ed046df10a903656b3dc266bead8f2237e144d650c3a685834243fb0bb21`

```dockerfile
```

-	Layers:
	-	`sha256:0f7bdc0042c990ea10123325a4f28da752e8d162347d74a96186d229fbc7ef05`  
		Last Modified: Wed, 05 Aug 2026 01:33:14 GMT  
		Size: 4.5 MB (4464889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:368d5de9ef188618d5fcb6d36783d88bdd103909321c76258785a05d0cff0539`  
		Last Modified: Wed, 05 Aug 2026 01:33:13 GMT  
		Size: 17.9 KB (17852 bytes)  
		MIME: application/vnd.in-toto+json
