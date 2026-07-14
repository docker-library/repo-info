## `clojure:temurin-26-lein`

```console
$ docker pull clojure@sha256:07491ad073a973e0340ba99880d0f09d645551d4aa7ece0d645477accc9fcd46
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

### `clojure:temurin-26-lein` - linux; amd64

```console
$ docker pull clojure@sha256:e8a7ae1e9314be1d141e6037281cd96a3b18010db27241708464183ad15a1206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167656115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cece8a080353344e560ef8543c3466dec0a82142d46de0aa5db4e85b1e817e8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:23:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:05 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:23:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:23:05 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:24:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:24:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:24:09 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:24:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:24:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:24:10 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:24:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236cfdd4f45603ac5945a524799b5f8c3ce8f2196cd565250fdf858a7196969d`  
		Last Modified: Tue, 14 Jul 2026 02:24:30 GMT  
		Size: 94.5 MB (94524293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8700f6b9ca7755bfcc07c0ccb79e95a5645bbf81a7757fefd6b7b4938d83457f`  
		Last Modified: Tue, 14 Jul 2026 02:24:28 GMT  
		Size: 20.1 MB (20118806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2046fe5457d22b622c9c47cd5393b52ce2ac731b6f1e672db6bf0c0e1906e417`  
		Last Modified: Tue, 14 Jul 2026 02:24:28 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85831301bc6922cc41f94c736e870abc23395fba15eb17f2af4bc6ef2a4aff57`  
		Last Modified: Tue, 14 Jul 2026 02:24:27 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:768adead208282c6fe1e8d519c7357b8560aeb8ccc189374db6e43a0ac87d840
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4267976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf18ea3fb75730c28cd97a51b6c2982f2cb32eab1d02af72a15ce05aec88e0e6`

```dockerfile
```

-	Layers:
	-	`sha256:e3dafe18f61d9e81b7b28782c055ef2db776b8e6d95e7ceb094fcb0be04bb935`  
		Last Modified: Tue, 14 Jul 2026 02:24:28 GMT  
		Size: 4.2 MB (4249595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28930321f6ed7f01094801a7ed27cf347dbb073f78c4da0e54cd4f3943df1000`  
		Last Modified: Tue, 14 Jul 2026 02:24:27 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a1f6e25fbf40868806c968ad66700c0fb7a22e2e913605561f64383a08c8ad48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166354562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ef33c9dd90b3bf5cb42d3bfc982987d891f1f01eea0c6c7017c950f65cbee14`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:30:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:30:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:30:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:30:20 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:30:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:30:20 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:31:29 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:31:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:31:29 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:31:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:31:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:31:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:31:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cc49946971db867b37ac2e7272d08e7d31256a236bdccb1bb7fbb4bec2d114`  
		Last Modified: Tue, 14 Jul 2026 02:31:51 GMT  
		Size: 93.5 MB (93504359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad0146423041f79afa2f3ad7cd46d474560545a0c0bb7853c148661349f4876`  
		Last Modified: Tue, 14 Jul 2026 02:31:49 GMT  
		Size: 20.0 MB (19950873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9bd9b185c9c556a22af988afc2d8fec568589a625d34657080e7630f87cdcd3`  
		Last Modified: Tue, 14 Jul 2026 02:31:49 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7fd8875fb3c27c44415d98fe71c767b17c8fb51b55e065b66982fbed22b45e`  
		Last Modified: Tue, 14 Jul 2026 02:31:48 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:23a95bdfb9b57ee9dd8fe3cc5fddd4c466c82b55e1e8b194e1886a34a582d161
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4267757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da86c36c9703c849a1ad3dc11102fc3fda10e56dc81aa852f892f19780676ab2`

```dockerfile
```

-	Layers:
	-	`sha256:4bfeecae4aa44c1dfd8615899741dc1d10acfe640486cda8316e14358acfb043`  
		Last Modified: Tue, 14 Jul 2026 02:31:49 GMT  
		Size: 4.2 MB (4249231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:014d5519cf271381b6a6497307da1cb6a25f4ec1ac7a3d4120c2605ca113e17a`  
		Last Modified: Tue, 14 Jul 2026 02:31:48 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:8b857aba1b7fc3fc1aca791540974fab2d5978218dba62ebf5c3e20fef81f3f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171096822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b0a4559b1644d1e87194a12dba7fdc9c26300f422123a383e7dc2e1970123a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:45:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:45:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:45:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:45:01 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:45:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:45:02 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:47:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:47:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:47:45 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:47:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:47:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:47:50 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:47:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa6bed2d17156130589e4befa6c04383771757ae9b6d7ae9400259ff714b55d`  
		Last Modified: Thu, 02 Jul 2026 07:48:28 GMT  
		Size: 93.9 MB (93902030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff48f10f2575538dbcdd305bdd0547edc4f61a26e9708d043e07520c95dc9ff3`  
		Last Modified: Thu, 02 Jul 2026 07:48:24 GMT  
		Size: 20.3 MB (20332298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0443473cc60f441237a166687869f19398984da9ae8b258ba908759691887db1`  
		Last Modified: Thu, 02 Jul 2026 07:48:24 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9db23b689dccc28c3f4f10912806ef06c198d4584c78a93335975767c9eccc`  
		Last Modified: Thu, 02 Jul 2026 07:48:23 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:6a0bd640a6bbf891441e8b228e249ba0f300451bf251b9cf198d526e54323b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4253805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2132bc81bdf45188f44d198c808468dcd214e9c79af66669436b9ed3cf227aac`

```dockerfile
```

-	Layers:
	-	`sha256:7b8e48304773584d5c4a1242cb7a4617236bc8f796fe949b2106da070fa518e5`  
		Last Modified: Thu, 02 Jul 2026 07:48:23 GMT  
		Size: 4.2 MB (4235368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb4b0f6e24a9c06880f329ab6d4e580f00d0cb40d6cc70a3717b2b3c21fb2c42`  
		Last Modified: Thu, 02 Jul 2026 07:48:23 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein` - linux; s390x

```console
$ docker pull clojure@sha256:6a3da00696bf0a16b79d4de82a95d6e767995627a1aa37cb32b16327339541eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161980293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43ba592ea7f3363dc2e16f3088b1376f2472b17d7ee1b1a3dd518343f06dc18`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:36:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:36:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:36:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:36:16 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:36:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:36:16 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:37:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:37:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:37:16 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:37:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:37:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:37:18 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:37:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88301aa1ab36f34dac9e5b52781a0467a7fa38343a4df0f5174281048ba05ddb`  
		Last Modified: Tue, 14 Jul 2026 04:37:44 GMT  
		Size: 90.5 MB (90536950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aec18b3fb27d3ceec8b328fc25518917939ea8cc85b0a507026956e0b88717f0`  
		Last Modified: Tue, 14 Jul 2026 04:37:43 GMT  
		Size: 19.8 MB (19770445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b34b2e485fabed9f0568562a2e6cf2b9c372cb4504485b613b459093e71145d`  
		Last Modified: Tue, 14 Jul 2026 04:37:42 GMT  
		Size: 4.5 MB (4515189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47914ffbdf112145fbeabf1d7a32076d5bf2056c1095704b385e7bfc4daceea8`  
		Last Modified: Tue, 14 Jul 2026 04:37:42 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:596542f0f1ffb03f4b8f0dbfca725a146ddd1d93dfc0e931e9a89a50b84a7c06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4244974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e12547efb5ba5f0161ecaf73701fd2347872adb380835659149674f8e90aaff`

```dockerfile
```

-	Layers:
	-	`sha256:e522a5e6bf3b241c0f4a3cfd785b1f61a4af7f38530225af9ac854c0c4d2c1df`  
		Last Modified: Tue, 14 Jul 2026 04:37:42 GMT  
		Size: 4.2 MB (4226595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3db88f2853da63706694c0b0ca8f51309370532cc183085b6b198fbfb7724f97`  
		Last Modified: Tue, 14 Jul 2026 04:37:42 GMT  
		Size: 18.4 KB (18379 bytes)  
		MIME: application/vnd.in-toto+json
