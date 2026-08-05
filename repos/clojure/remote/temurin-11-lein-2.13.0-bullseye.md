## `clojure:temurin-11-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:06b8ba8ef9cfd1278d6a3b0cfbc8b25ad7867e6e9331a40b2879e89718e8017e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:49c3b1e47017730a0a447ce99f0a75bd07a9a0722c698352cf0d12130da5bf71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221118062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d05edc27573921fa0553e2972cbf96616ea1f004c43f248ccd9b8b13caf1318`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:18:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:18:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:18:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:18:21 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:18:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:18:21 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:19:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:19:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:19:28 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:19:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:19:29 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6fdd8cd58940ed7bcdc8413cc12ae6e9ae1611a9d9bc0960bd2686269edd3f`  
		Last Modified: Wed, 05 Aug 2026 01:19:48 GMT  
		Size: 145.9 MB (145886280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1acd7f5ca54c45452391a603bc424dcd1d4219ed32691f0855a676da6bbb3de`  
		Last Modified: Wed, 05 Aug 2026 01:19:46 GMT  
		Size: 16.9 MB (16939522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f511002e636561c5dd17493cbf2c3d8b756406509a385eda1fb63cde6e2b5050`  
		Last Modified: Wed, 05 Aug 2026 01:19:45 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:12402f158bc62e6ead2daa6a0356d1c1977e95013885a9d0d567ea662eb30eab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4536291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc9f8ddb657a79cdbe7f7db4350856e160d35ec65ed72d7c581b118ceb7e747`

```dockerfile
```

-	Layers:
	-	`sha256:1408d4379f91c11ed0a1855b9045497abab5e39a194b132a9a8d0be68ea1c18d`  
		Last Modified: Wed, 05 Aug 2026 01:19:45 GMT  
		Size: 4.5 MB (4520543 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e386b9ac138727c51fa3d969195b4af1c1dc62f50e9d0787f945e3d16258b7c8`  
		Last Modified: Wed, 05 Aug 2026 01:19:45 GMT  
		Size: 15.7 KB (15748 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9afa18206e8f5ebdbc33f056724d8d311a44a948a9d821d26359fa66a630ec4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.3 MB (216276752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb691c6638317337c99eacb117ef9452d8ae4597f1b072f512ecf3c7f1048559`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:24:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:24:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:24:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:24:56 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:24:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:24:56 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:26:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:26:09 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:26:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:26:10 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0eea189ff5a4d8a193d53e5736352bf7cb704b73e5e9abe8d8c939216649080`  
		Last Modified: Wed, 05 Aug 2026 01:26:31 GMT  
		Size: 142.6 MB (142582307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f032258858be829d6a6393aed657dc78cd2447609f64c30f85a3d1177e3f0d`  
		Last Modified: Wed, 05 Aug 2026 01:26:28 GMT  
		Size: 16.9 MB (16918332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a6b46552bbb1a59b9c219012b9ed01338ec8e2810089ed0439eb74d151b319`  
		Last Modified: Wed, 05 Aug 2026 01:26:28 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:b6429d9ab57d285926ad7eb5dcbf76b443e24223753df94e61f03873d2472308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4536004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9561583798139a0b141be59b405fd7402be383b3d994364508f087616d28f87`

```dockerfile
```

-	Layers:
	-	`sha256:36c190864759c8b46c84d0e2c20386e401c8f41730d9ddc7f6f2393e6c35c065`  
		Last Modified: Wed, 05 Aug 2026 01:26:28 GMT  
		Size: 4.5 MB (4520135 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a985f0103f1de062bb75006b2ceddddcae8ea13bb225bd5336433516da3c9030`  
		Last Modified: Wed, 05 Aug 2026 01:26:28 GMT  
		Size: 15.9 KB (15869 bytes)  
		MIME: application/vnd.in-toto+json
