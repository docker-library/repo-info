## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:26844051986669e53011e8e012614e766d45318a06e2ff5fe11728f7365c5920
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

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:1fe2c57e88ee2c92479df3d7c96da9833e4a1ed81b16cee841ff6c5aedff5c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167233499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b0cb4e4093ec7aa9af3d5a6db8124eb179adc57dfaae108007d0961a161086`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:36:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:36:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:36:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:36:17 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:36:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:36:17 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:37:31 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:37:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:37:31 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:37:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:37:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:37:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:37:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b59061b28bb5a5a93458d3c07b87b46b8ff9a567be77d1d9ce310a7d9bb5feb`  
		Last Modified: Thu, 16 Jul 2026 01:37:46 GMT  
		Size: 94.5 MB (94524351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c81cde5ecb88f15aad125a87d0497a879ec86b3278a5ea98c05d7a348ad388d6`  
		Last Modified: Thu, 16 Jul 2026 01:37:50 GMT  
		Size: 18.9 MB (18880970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55768ce915920075f297345d96f68cb554119f326a24329b570939c76c214225`  
		Last Modified: Thu, 16 Jul 2026 01:37:50 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63d690c76440f2de39b87bb51cd408da6fd67e1c08c72a1da812432cbf4d541b`  
		Last Modified: Thu, 16 Jul 2026 01:37:49 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:123f99c4123a09e2f45788e26a08ffbfa180c928af961a1d54ad9826a5984250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712258e7fbb16e70474aa583fa409103d90619b725532d9289407ac0f5a71b92`

```dockerfile
```

-	Layers:
	-	`sha256:4240341d4eea67595b6884c7dea471cfc62fdf21dbf28a1670ca9718be5c2c93`  
		Last Modified: Thu, 16 Jul 2026 01:37:50 GMT  
		Size: 3.8 MB (3782747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31f7d7b1d229f62ce59e284fe03657897add07f1958f85b0ae9aca839a215baf`  
		Last Modified: Thu, 16 Jul 2026 01:37:49 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6eb88f58044da6f71fd28afcbd985c39f95cc46b0d650c4383e5005069113894
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166546186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3328b5d68a82267077c6932888ba90b8317d35bd45ffc0885f084270f0d3f068`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:32:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:32:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:32:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:32:08 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:32:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:32:08 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:33:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:33:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:33:27 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:33:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:33:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:33:29 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:33:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8233d54ffdd729356815b0e6de8efce0dece4321ab9d65e75bfefb0ce24d7179`  
		Last Modified: Thu, 16 Jul 2026 01:33:48 GMT  
		Size: 93.5 MB (93504346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9533a36e810f16259405481af84f3a33679fe6ddf98ec1ad570cccf974710f0e`  
		Last Modified: Thu, 16 Jul 2026 01:33:47 GMT  
		Size: 18.9 MB (18852017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114984b8e9e69adaf7b2afca82abe3e9498e62eb1f7121712ed375205e54dfd2`  
		Last Modified: Thu, 16 Jul 2026 01:33:46 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e66399d4d684beeb6a415246514083ac2527f010d8ebbef18065c0c5d2ab0a6`  
		Last Modified: Thu, 16 Jul 2026 01:33:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:eb65fa32a3df824ad900cdbd01134df841cfa033e4921f09c3e02114f74ef409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3800816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc98e0bec262a5e0bc24fc266934e5c6b67f7de80d20f8695cc222306e6fe61`

```dockerfile
```

-	Layers:
	-	`sha256:cda8345ddaef92cedb9d65ff3c1e6d5a1b30336e9c2096423857cacddf3d99f8`  
		Last Modified: Thu, 16 Jul 2026 01:33:46 GMT  
		Size: 3.8 MB (3782984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d079ea042ff56a9ba0d06db436f08850dbd54cdd019ea6d400777c70aa5f046`  
		Last Modified: Thu, 16 Jul 2026 01:33:45 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:3f17515b90492a07249d26b49ac2f6067d7e646218ca3b734b6b65646163cb43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.5 MB (170488136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba00b37c2a142f22f933044040c84c8e44d79a25c1cffad715873c8dcdf36f75`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 03:11:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 03:11:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 03:11:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 03:11:30 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 03:11:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 03:11:30 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 03:14:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 03:14:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 03:14:32 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 03:14:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 03:14:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 03:14:35 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 03:14:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d802252fed6a86e051f7ebf1a7a994303c8a02ebb4ed0ddf62f95be98271b5`  
		Last Modified: Thu, 16 Jul 2026 03:15:14 GMT  
		Size: 93.9 MB (93902046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be7bc08c618ea92f75e2763d0e2a01fa0c80bd527713ac90c0363afa52f0051`  
		Last Modified: Thu, 16 Jul 2026 03:15:11 GMT  
		Size: 18.9 MB (18936438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e4420c56c2a91a152dc6d4a54672a116a6cc7ba53ae4637b39a85710c806b65`  
		Last Modified: Thu, 16 Jul 2026 03:15:11 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf135fec9b4433757765960a7f913dc2d20b38e1fdee1da376769f847555d44`  
		Last Modified: Thu, 16 Jul 2026 03:15:10 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fa26dbd0cb842e9c8fd706f600020cdfc75d08d7f9f15d794e5b4f060549f12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3785438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7147fd30662ab0211d7a4f14a84a90d4277f1877e5d91f348c54767a608d7d`

```dockerfile
```

-	Layers:
	-	`sha256:d0e9e34ec543a75fb99817c0ba44fa30d3bde0587736ae4615fdf0eb3e0e3f00`  
		Last Modified: Thu, 16 Jul 2026 03:15:11 GMT  
		Size: 3.8 MB (3767683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1ea73673618a00b64d6b6a31dc874c14b926bf8b62a078b07db73cc2ebb0de5`  
		Last Modified: Thu, 16 Jul 2026 03:15:10 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:4f93c94ebcf8832a3b5590d0927184a2959971164c80c4e9d6a981a6c6670ff9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163356386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a475b2166855167d289e8e13714bf82ddf1f96ff141754ca383e9ffa6ae5f675`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:56:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:56:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:56:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:56:12 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:56:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:56:12 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:57:31 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:57:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:57:31 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:57:33 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:57:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:57:33 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:57:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93e385edac4a6ffe9bee6dffedf7d4ce5e8787ebce3861b348b7396fec4ff129`  
		Last Modified: Thu, 16 Jul 2026 01:57:59 GMT  
		Size: 90.5 MB (90536933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:127123a10e47f3e0244318217a52bcc70dece90a1cb8e09d21008f863e3d6924`  
		Last Modified: Thu, 16 Jul 2026 01:57:58 GMT  
		Size: 18.9 MB (18922084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be21ee59fb520a0cb9999238559e2328318dd278adac5c41ac628d638d977e5a`  
		Last Modified: Thu, 16 Jul 2026 01:57:57 GMT  
		Size: 4.5 MB (4515233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe1ac613c91082800de85a11ecdf3ace15234f879aac1403400d1753623ef95`  
		Last Modified: Thu, 16 Jul 2026 01:57:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a4b6c7302ae35df01f284db8a2321c6d4535d487498ce1dff64848598025dd40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3782071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca3d108ac104fe404d6e15fdc0e8c2162bd3ee232a3a062756faccceb9a1e5d7`

```dockerfile
```

-	Layers:
	-	`sha256:f26b2b46bec9ce2618dc95ac31328abb2c89f0088f77686cbb53e070cb169697`  
		Last Modified: Thu, 16 Jul 2026 01:57:57 GMT  
		Size: 3.8 MB (3764360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2f333ce7fce439ae6a9d915e9a04ab9583a4e0d1cce675e820972119e19387c`  
		Last Modified: Thu, 16 Jul 2026 01:57:57 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json
