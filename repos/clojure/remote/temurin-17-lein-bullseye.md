## `clojure:temurin-17-lein-bullseye`

```console
$ docker pull clojure@sha256:cdaebd31ae5bc2b27134fe7d0373d327aa276e6fc62e36c8b69a0a71a3952876
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:1f3bd385f4405799e6a3a7d55ea3ec2b0e1507079dd1ca67b7bff79a162ed3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221138275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:438ede11d983bcd81cf798b976126ca500dacbce3c1fb5f1352f8e5839ba6ada`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:20:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:20:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:20:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:26 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:20:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:20:26 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:21:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:21:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:21:39 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:21:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:21:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:21:40 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:21:40 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f549b777573532eb17459cfea39d854ab5dfd8633edd28ffd1d5d3e247600d79`  
		Last Modified: Wed, 05 Aug 2026 01:22:01 GMT  
		Size: 145.9 MB (145905429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6136028f1061b6518f7bdb0dc6b190f9140324d077e9c9ff0ee5f9ab78c2959`  
		Last Modified: Wed, 05 Aug 2026 01:21:58 GMT  
		Size: 16.9 MB (16940194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b1d190515c501a94fc17c7b788aa2f2af7975ddfbe19619d091eb07f085b1a2`  
		Last Modified: Wed, 05 Aug 2026 01:21:58 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00d5c519eb040c597e45aa682d3bb44f694d0b0927ab9a37d5be962fcefbe7f`  
		Last Modified: Wed, 05 Aug 2026 01:21:57 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:b3b81abcf3edd5163b5001f0f6c35d9ee12f7fc6cf00146432f5c96b1a9b83b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4518764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8af2743f409fc703fa54b541ccafac208db1f999351051156e626f5bed18eb00`

```dockerfile
```

-	Layers:
	-	`sha256:0492987bd65608454f9bd6fd239158a0c0578cf50f05b5e81ff0c5c275f30242`  
		Last Modified: Wed, 05 Aug 2026 01:21:57 GMT  
		Size: 4.5 MB (4501027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ab98f6f35535ddb5d4d87b85b68f629ae5a22fcf6856dccc94a0b80da623673`  
		Last Modified: Wed, 05 Aug 2026 01:21:57 GMT  
		Size: 17.7 KB (17737 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6a6603853d6c6b9fd570e0e84fbb95944af1c6d1987444ae43bdb7c05d78a403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.4 MB (218418889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48b248ae4c52afd0ecf98b423d86b997be5767969ea886439c40647c65f220b6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:26:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:26:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:26:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:39 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:26:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:26:39 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:27:49 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:27:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:27:49 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:27:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:27:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:27:50 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:27:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23ef7ee4810296d3249ed22758f3fa6347c68b74d50b16e4c869c353da7d6b26`  
		Last Modified: Wed, 05 Aug 2026 01:28:11 GMT  
		Size: 144.7 MB (144724292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c804cbcfe4823db3d70cda85b23fbc4b9df19a0867624d7545ded00299684ee4`  
		Last Modified: Wed, 05 Aug 2026 01:28:08 GMT  
		Size: 16.9 MB (16918076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f3b88a870568dcc520c982252744eb48f3e8f4a96ab1ae0327af343e174165`  
		Last Modified: Wed, 05 Aug 2026 01:28:07 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d3d71ca348ac0ca1e0a917dbddeabe7941ba71e3466090946d10136ccab884`  
		Last Modified: Wed, 05 Aug 2026 01:28:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:e27e2a1c009f79e92cdf1c02f3ce584c71a01ecb76b51cec4dda60b22a13abcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4517860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d0c79ca9bac188d2fb151ab8acc6cac2b919f07d3787e023fa54677f3700da`

```dockerfile
```

-	Layers:
	-	`sha256:61251b8a91328bed628bc6efd8a75755811012be63963238dd50773a3ddb6aa9`  
		Last Modified: Wed, 05 Aug 2026 01:28:07 GMT  
		Size: 4.5 MB (4500001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cbd1e8ae801a5e81cd696489725c2910cf623794b289426daf80181c917df94`  
		Last Modified: Wed, 05 Aug 2026 01:28:07 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json
