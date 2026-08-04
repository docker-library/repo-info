## `clojure:temurin-17-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:ec28c13e350b7666e24cf0eb58eff9b18b1908fbcb8acf7d57d59dde13b67f86
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

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:53644d4091355fe8b66fd283a04fc025f537d14bcfb5bb38f7d1e24846c88de4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196725402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc1cd2237ebaffd6185b95c62b19c13653e5171def58fa7a82ddcfc7d7b28ffe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:49:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:21 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:49:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:49:21 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:23 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:50:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:50:23 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:50:24 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:50:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:50:24 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:50:24 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576f21d8e59f1240619eb004bd51d5e29bb300496ef08bb592d05ea71df479e6`  
		Last Modified: Tue, 04 Aug 2026 02:50:44 GMT  
		Size: 145.9 MB (145905438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657681cc599cc42106e651cec0b2d538a090ef4f7773261bba273d18d6681ced`  
		Last Modified: Tue, 04 Aug 2026 02:50:41 GMT  
		Size: 18.1 MB (18071701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d15c1ae76613467c689007fbd377b97b488de8821748ee668666e784504e84e`  
		Last Modified: Tue, 04 Aug 2026 02:50:40 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7dfb4dbb2927801ad7fa8ca607d3d30a94380d06195e075c4c7246878ccbc0`  
		Last Modified: Tue, 04 Aug 2026 02:50:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:93f5c8be58b7b53615c673e1e198de2c228dac8f277dcd1d790dff10a623ac16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2750145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714c2e708b82214d7fcb7a1dd44a3ce22c599132bd9e7130e29da922be5e0cb0`

```dockerfile
```

-	Layers:
	-	`sha256:54b140a421480ac01b5498e2da4f8cfbbde7b8f7faa8c1287083fabc0cc43a80`  
		Last Modified: Tue, 04 Aug 2026 02:50:40 GMT  
		Size: 2.7 MB (2732373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0fa7f6530228d4ab7933d77e792405bd3a4518d792fa7eb4df8fed1c42cfcad`  
		Last Modified: Tue, 04 Aug 2026 02:50:40 GMT  
		Size: 17.8 KB (17772 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fbe39005ffcc60c4ed5597c6745608b2e3f546679be3271f54265f0b01822730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195251305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d45488be4657fc404bf60a5d9e9b07ed082df4a78ea7dfc9c58db0317e51112`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:49:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:35 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:49:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:49:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:50:41 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:50:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:50:41 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:50:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:50:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:50:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:50:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78bf680febf05e7af58bc0935c0847b9ee578906045ada4cfbbdec70481e89a5`  
		Last Modified: Tue, 04 Aug 2026 02:51:03 GMT  
		Size: 144.7 MB (144724288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67407858ad70e863a1bc977203ab1549050c78b2216a0493ef687a49e65f639b`  
		Last Modified: Tue, 04 Aug 2026 02:51:00 GMT  
		Size: 17.9 MB (17894122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73233b32c5d1936715d9b1a1423f8de562e69bfc77d49d76e5b1dd13c2f748d4`  
		Last Modified: Tue, 04 Aug 2026 02:51:00 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ce198e21987f49001e5b616e9a2faf7ccc4fb550c217cb5007e4cf0de506dd`  
		Last Modified: Tue, 04 Aug 2026 02:50:59 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8e6e54f53f761ec8850a0c091d95a6d4e8997bf498ba5709b06debae5e83d6b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2749881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a0f536e8f43459d5c1b99bcef6c3e3668ebfc9d0219285c305790e5931c4c14`

```dockerfile
```

-	Layers:
	-	`sha256:43f51b893c365adf5b9ae27278e2c0b277645fcf4aea75797216dab51083b5aa`  
		Last Modified: Tue, 04 Aug 2026 02:50:59 GMT  
		Size: 2.7 MB (2731988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:612256b0f00af1ed715dd52660aada48132128b702468ff2336a81ca949b1e13`  
		Last Modified: Tue, 04 Aug 2026 02:50:59 GMT  
		Size: 17.9 KB (17893 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f7645a0122c0cea0693e5ce11ab60992f538d99eb941e6789f9d60d789799b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200621551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61712a463ba8210d38aee2e2053a3586bbd01f2af9ea835299a57227dc01ba12`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 05:06:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:06:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:06:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:06:40 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 05:06:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 05:06:40 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:09:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 05:09:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 05:09:07 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 05:09:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 05:09:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:09:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:09:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e7ace968947d768b452a44e1b13e936fbcbda6d9942d4f5035ce372818f5205`  
		Last Modified: Tue, 04 Aug 2026 05:09:52 GMT  
		Size: 145.8 MB (145766103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3230bb4753a077c5c2c769c71e051e7d6ec6c9e289fb63e8f485a809cf9eb587`  
		Last Modified: Tue, 04 Aug 2026 05:09:49 GMT  
		Size: 18.3 MB (18263420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b0530f990f61a45feee3154b0363ec2d502e534c5f8acca8fdac18f5f7ce9e`  
		Last Modified: Tue, 04 Aug 2026 05:09:48 GMT  
		Size: 4.5 MB (4515184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456813c6317866d43a2c5c9742ee59a93aadef20ad6f98d5ca7566c028054723`  
		Last Modified: Tue, 04 Aug 2026 05:09:48 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b6160651f95cc04330c377afa2c92771e88b05e02256eab8231f82009b680085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2752022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46bdcb9a85b6fb9932d4095696f299c8f15785f7eec1a91c286c1c07e8980f52`

```dockerfile
```

-	Layers:
	-	`sha256:f8d98a60ce350271eaa3c0652dc34e062ad70885c975999a77351f54751e5b71`  
		Last Modified: Tue, 04 Aug 2026 05:09:48 GMT  
		Size: 2.7 MB (2734206 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e2071ea4bb48bed9cb1dc90b7e3a087c120bd0c675bb33caba7e93a012c77e6`  
		Last Modified: Tue, 04 Aug 2026 05:09:48 GMT  
		Size: 17.8 KB (17816 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:08af117e3d7bcf135df8197d4d0f422db793aa06054294968e8a242cc8144416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (185039296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3954b1d17fbf097b76d5210fa48cd72274cc4f4d8d1fc1bb24f9825c31acab49`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:53:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:05 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:53:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:53:05 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:05 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:54:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:54:05 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:54:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:54:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e46e08b0e9e2fd3652f14029d08d559c0a676987ea34e3d6e74c4479d7b98a2b`  
		Last Modified: Tue, 04 Aug 2026 02:54:33 GMT  
		Size: 135.9 MB (135910428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b6e69352a2d623816db9ac94d1e9a4f605044ee4b4250bd27748a71a89cb89`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 17.7 MB (17724979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4114264c298dc540f8c891ee043d524f0c0174d6d9c2692f93df85b06aa0324`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b4bfb9303db53ec0df67a99de8d4090a8aec2d4d0ab88fac3f849d5029f892`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3028854a13e93fdf1973a3b70ed7d41097a4a3fa746c3755b65e96c6235d948d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2741960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3877432518c6f397398afc1809de925b15751f9f53bbe1e041f2e8cf3c323a02`

```dockerfile
```

-	Layers:
	-	`sha256:61b908b9a575f985da1acdddac2d28808d3e838ebf3b59437275d30fefe37eeb`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 2.7 MB (2724187 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:590d561c4d1479d946dd1fd5acdb9f6dc587597c22a427b1fb7deb312a0ade9f`  
		Last Modified: Tue, 04 Aug 2026 02:54:30 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json
