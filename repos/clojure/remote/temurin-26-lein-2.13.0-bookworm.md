## `clojure:temurin-26-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:a2464874c62c5e3ff3cad6e4ee5e11ba58dda823098e595ebf6e9612bfc16f46
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

### `clojure:temurin-26-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:50c1fe79fc6e5b9557310d4d80a2de0db754f05d551fdb7e7da4fd8f2d8ea934
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167659522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37bd70888c1455d88eb8ca5777ce9a4fc8ab01548fe4107ff39c9660179ca4fb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:55:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:55:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:55:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:55:45 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:55:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:55:45 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:56:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:56:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:56:46 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:56:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:56:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:56:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:56:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:425befdf76e52426879d2abe42093a00dca59a893e7b4fa2a7679b0180b71d4b`  
		Last Modified: Wed, 24 Jun 2026 00:27:40 GMT  
		Size: 48.5 MB (48502210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3bc9935d3857fea19457977792eee3aec31ea8d05910ad02e6e17f8d4a34ef9`  
		Last Modified: Thu, 02 Jul 2026 05:57:08 GMT  
		Size: 94.5 MB (94524293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b4587e68d609232d475141269bac225bfcbb2d378192cae4d1dd30d311045e7`  
		Last Modified: Thu, 02 Jul 2026 05:57:06 GMT  
		Size: 20.1 MB (20117399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef444cada00db0f626b268f77750616654ee425a541a2a848ddbad36932c276`  
		Last Modified: Thu, 02 Jul 2026 05:57:05 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88802f2617817a1747354bacccbce389c71f60ebf148e9b41c3bac1c9a5631a9`  
		Last Modified: Thu, 02 Jul 2026 05:57:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:84bc63e69a94774f69b1cf29b79d209f9a9de1fefa39097227f0d764f5db83e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4267940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf8496c9b06ae818f7f28e1d4599935fd386a47aceb6f8aa0e160c6c846f1770`

```dockerfile
```

-	Layers:
	-	`sha256:2ac5fee158b6ab8c3be78d6bba7c5e78f81625392863ae2a2290bb4078ac9601`  
		Last Modified: Thu, 02 Jul 2026 05:57:05 GMT  
		Size: 4.2 MB (4249559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0656b3583293872769f8bc86df25e2ef129f8c904de5e870d6c558d4012911aa`  
		Last Modified: Thu, 02 Jul 2026 05:57:04 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:075774290fc70db2369b6340c979eeefde6dfcc5f775a28634e897a19ef7b599
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166349143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd2a7448edc95d451a976eb16f6d711845b440d4a2394a55e9366e1dca851e33`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:56:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:56:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:56:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:56:21 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:56:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:56:21 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:57:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:57:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:57:30 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:57:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:57:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:57:32 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:57:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0fb1189398e2e4b474d43aac6502510d0da0318e70137a377c21087f198814db`  
		Last Modified: Wed, 24 Jun 2026 00:27:19 GMT  
		Size: 48.4 MB (48389201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd1e8bdaa94002dd9181c6213994ff7ec1c159eccbd4e458560bf72c9d3e440e`  
		Last Modified: Thu, 02 Jul 2026 05:57:52 GMT  
		Size: 93.5 MB (93504349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6405da52a7f24406918da8ee7d50bfed68735e1c968406ab2bf1911541227f42`  
		Last Modified: Thu, 02 Jul 2026 05:57:51 GMT  
		Size: 19.9 MB (19939944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6424e6fe68fcaadb1a7583ab0be937e688c9e4123abe05c407321ba209c1231f`  
		Last Modified: Thu, 02 Jul 2026 05:57:50 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6706f84b26c36bcb2952b5b5b30116b5c3581e9d86fe74078a069ef9a774066`  
		Last Modified: Thu, 02 Jul 2026 05:57:50 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4e2f96b34fd4c60984554b9ded6fd22b2afe51f5d18aa3aac3d83e4c5140e949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4267721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dabf1a85018b7e373d573f9623f7f7d91820370204f45e416361e942f8922887`

```dockerfile
```

-	Layers:
	-	`sha256:a8698b65e2a93d1a61d2e9f81670258536a666b9a76dbba9eaa0b27593e60f90`  
		Last Modified: Thu, 02 Jul 2026 05:57:50 GMT  
		Size: 4.2 MB (4249195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c71be7a793067a0a2a30231636a6040ca3a9140b6d108b0a01f2b9b6436d2d9b`  
		Last Modified: Thu, 02 Jul 2026 05:57:49 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm` - linux; ppc64le

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

### `clojure:temurin-26-lein-2.13.0-bookworm` - unknown; unknown

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

### `clojure:temurin-26-lein-2.13.0-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:37259d7c5763f2ed474725cc64805f7a4e3c186e43aedfd7969aa3db5af35ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161984848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb6abb223cdedfbff5e96179e0431cfd899ef25b6d951f8ca2558d1e10fa520f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 05:59:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:59:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:59:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:59:08 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:59:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:59:08 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:00:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 06:00:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 06:00:14 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 06:00:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 06:00:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 06:00:16 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 06:00:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:bdd2e9d83d68023204331dd445067114dbd3500d2d496368624fa7ef81743d4a`  
		Last Modified: Wed, 24 Jun 2026 00:27:09 GMT  
		Size: 47.2 MB (47161675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849b47c64ef6c47815a69b952ee55a49d3d214d465b57830e3deae2a70058e00`  
		Last Modified: Thu, 02 Jul 2026 06:00:42 GMT  
		Size: 90.5 MB (90536944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebbba680dc7e1b9f5d0760e6462ef78ce06984b2e984addc1106ef2482350fe`  
		Last Modified: Thu, 02 Jul 2026 06:00:40 GMT  
		Size: 19.8 MB (19770605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9313e5d95e3fed2567a4a62e632c1736c1d670e56575ae14b2c580ba5da15ea`  
		Last Modified: Thu, 02 Jul 2026 06:00:40 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d8476cc2c20b738074b9674774fbe8111ceac4e16b28a3906457bfd46c052b`  
		Last Modified: Thu, 02 Jul 2026 06:00:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e4c791419006bb194d38bff78e41ca691c7c74e6cded5efbef1c32fb6ad07666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4244940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6da4b964a983840def5e7f0a231a17a78eef59346919d6fb48edec1ce8c388a`

```dockerfile
```

-	Layers:
	-	`sha256:888044e7c86102a5e7fcd540d8d0ff9ed3e332eedb2f2c332959c08d33fde429`  
		Last Modified: Thu, 02 Jul 2026 06:00:39 GMT  
		Size: 4.2 MB (4226559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3353bd5e2921d0b33915fb01725cff1f5a3af3841802242b393a23f7dba356bd`  
		Last Modified: Thu, 02 Jul 2026 06:00:39 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json
