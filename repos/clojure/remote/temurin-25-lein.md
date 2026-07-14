## `clojure:temurin-25-lein`

```console
$ docker pull clojure@sha256:91380558354cda3032d6077d11f494fb9d66e91fdb295365c8b32ea45c1975de
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

### `clojure:temurin-25-lein` - linux; amd64

```console
$ docker pull clojure@sha256:de61d5f1a3c90a090b19d4eab7c952e53c23771268dcc49ac90e31bf70e2d376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.7 MB (165706899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea00b660e2deb9a172291e0ac30b9b0d4d5d9add6ffdd31f9719ba0b41d0df91`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:21:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:21:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:21:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:21:17 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:21:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:21:17 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:22:21 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:22:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:22:21 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:22:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:22:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:22:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:22:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ca238876adeb6a8d2f6bf2b42e4d90de6a93f4f833aee94f970191f4578ec2`  
		Last Modified: Tue, 14 Jul 2026 02:22:43 GMT  
		Size: 92.6 MB (92574607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3197deb601d16864d05039897a6117e44e5cb0fce0de9184310428e37e2f68e2`  
		Last Modified: Tue, 14 Jul 2026 02:22:41 GMT  
		Size: 20.1 MB (20119253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e5b09d504abb5d1aaf952c01532c277c8a4b83b49b71a7cbeed9a94c2362ef`  
		Last Modified: Tue, 14 Jul 2026 02:22:40 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7267b677141ce6495b77c3a66d84d28c3764bf3a62601020d07709ceb9fee0`  
		Last Modified: Tue, 14 Jul 2026 02:22:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:aa0e6e4337594678ae19cd14546fc87b322c7c8c24785094d1333bac2b9e1909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3da4467fd822d1fd4ef7250b879f4a28518f0ea10e93fb7e880d3c26e07ea10b`

```dockerfile
```

-	Layers:
	-	`sha256:4248332bed133152a321fdd161796fc49107124b5d3698dc95ad0ce3843f747e`  
		Last Modified: Tue, 14 Jul 2026 02:22:40 GMT  
		Size: 4.3 MB (4253346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e82cad977afff5c3273e908f2f4034eaee67901355d83b8fb37282dec12cfcb3`  
		Last Modified: Tue, 14 Jul 2026 02:22:39 GMT  
		Size: 19.6 KB (19628 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ec634bc6aa40515995fb4d579618a41121b8d43ffd0788bb9113486efb6c1e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164392496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ee7cbaea5fe52411229f5c867074570066f17ac79c1fadd1bf847f09ba311ce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:28:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:28:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:28:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:28:25 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:28:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:28:25 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:29:35 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:29:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:29:35 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:29:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:29:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:29:36 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:29:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f619fcdd3505482c4214fa7c46394c17462595daa1232c2f4588e104498c88cb`  
		Last Modified: Tue, 14 Jul 2026 02:29:56 GMT  
		Size: 91.5 MB (91542261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6983ddb91c06a1dfca5a98d96c0cd1a20eb29d56cc746fe0e922db1e74a308`  
		Last Modified: Tue, 14 Jul 2026 02:29:54 GMT  
		Size: 20.0 MB (19950923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7795d19f76d2c163360aef7041a7f11ca6f4087b6fa0e4ce037ff70c3b50951b`  
		Last Modified: Tue, 14 Jul 2026 02:29:54 GMT  
		Size: 4.5 MB (4515195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620ea7a3a0f4734389ea2e7bae8630e65d945e9a47881d78b3703401ce151741`  
		Last Modified: Tue, 14 Jul 2026 02:29:53 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:480ddd2df59cc7bead7f3739820281d3a1c45a002d318043b4539be065d66516
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4272850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb5f7fe04ed2c461396947b0bdc82ccc9a06e766b719c155b21f223fca223c0`

```dockerfile
```

-	Layers:
	-	`sha256:cf04fc16045907306a082f9ef3830af2901eb1ea4e568b780199789cef7c70c5`  
		Last Modified: Tue, 14 Jul 2026 02:29:54 GMT  
		Size: 4.3 MB (4253030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cdbbde32295a6e129534c6268f78ebbfd35b19ffda3ca7335cc950931a555c1`  
		Last Modified: Tue, 14 Jul 2026 02:29:53 GMT  
		Size: 19.8 KB (19820 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:17382ad07828c95cc25c40f0a4587f5fa4a989e84c4afb4c37245d900b1368c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169108576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653ffdf1c8ade57ecdb34605930b7fc805b0e5619ecdf904ba6d7318fe0714dd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 06:43:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:43:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:43:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:43:22 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 06:43:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 06:43:22 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:46:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 06:46:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 06:46:16 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 06:46:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:33:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:33:46 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:33:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1de9677813712ddada398d96870b701336e684bc5a28731b883aed48b1d31b`  
		Last Modified: Thu, 02 Jul 2026 06:47:39 GMT  
		Size: 91.9 MB (91914031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963784037ee750a7dfa2576133d5f7e57e56aeef0d7345ed19d3abda135d9cb9`  
		Last Modified: Thu, 02 Jul 2026 06:47:35 GMT  
		Size: 20.3 MB (20332041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6563e138138eac9cb737288bb0676aff81644cabb2f0815ae1acea418078382`  
		Last Modified: Thu, 02 Jul 2026 06:47:34 GMT  
		Size: 4.5 MB (4515228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63686e7dda86ccae9dc97f759285acb29b63206c469f128e8f2e04ecc24a660`  
		Last Modified: Thu, 02 Jul 2026 07:34:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:2a9410c324ba022ed349cad00a225c148d7328d62eee217eb825c5a22e1f2914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4258228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc76b5cd0d3f6c04d76c9367a1bdc9fd87fcba33330ddc39935c88bc37d2430c`

```dockerfile
```

-	Layers:
	-	`sha256:e0acb3a6d4905db96f968439ef3ed10ec17b99d72f7c17b42da13d783fdffeb8`  
		Last Modified: Thu, 02 Jul 2026 07:34:04 GMT  
		Size: 4.2 MB (4238519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df9ffae9a681b59ca6c49402c524799cd5c8f42274783fd9169f3ea434cbf9da`  
		Last Modified: Thu, 02 Jul 2026 07:34:04 GMT  
		Size: 19.7 KB (19709 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein` - linux; s390x

```console
$ docker pull clojure@sha256:59bbf8b16d5f9fad66ea075c42bd17445c8e956a027785e662a74e3a1ed79c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.9 MB (159863461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7963f87cdffc156579d604c7bee32be7facca46b37a288d9b50659b1ea4ef4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:24:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:24:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:24:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:24:34 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:24:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:24:34 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:25:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:25:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:25:46 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:25:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:33:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:33:29 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:33:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c65f380ae18d77b1dc3bd2b392013426b17929af1216965dbc5bb8963851b0`  
		Last Modified: Tue, 14 Jul 2026 04:26:29 GMT  
		Size: 88.4 MB (88420356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f7e6b65ca5ccf4fbae83121cfde182f3c3e78f536f913fa15df1d84984e92d`  
		Last Modified: Tue, 14 Jul 2026 04:26:27 GMT  
		Size: 19.8 MB (19770177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945c8be06ce37187fc0ee382d50671ae12ba5e2ff4981db3964ae22ce75872fc`  
		Last Modified: Tue, 14 Jul 2026 04:26:27 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3aeb962a60672838adb3950636648b3963a242de3f54da28e1531e55429962a`  
		Last Modified: Tue, 14 Jul 2026 04:33:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:4df5e29daf4f1fc729aac8322aaf813d4c401b2a587cdb90c101d03365b4a240
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4248397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de31ff136e07db158e6d862b6c028b831bdaa946cad5df3c83119cfac9a228b9`

```dockerfile
```

-	Layers:
	-	`sha256:f7d3cd09536300324c1cf6d30a47850bb8f24ea5ccc42c1dcf02d0d5c5fa0792`  
		Last Modified: Tue, 14 Jul 2026 04:33:40 GMT  
		Size: 4.2 MB (4229722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50a69e1e87bd4cb3de3fc52ea72cd6deb5d6517356f4312c7dee0e6b7cd210b3`  
		Last Modified: Tue, 14 Jul 2026 04:33:40 GMT  
		Size: 18.7 KB (18675 bytes)  
		MIME: application/vnd.in-toto+json
