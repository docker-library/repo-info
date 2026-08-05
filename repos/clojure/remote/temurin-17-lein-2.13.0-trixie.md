## `clojure:temurin-17-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:3df4fba2b17c1c4fb6353b058a33bd8381f83a2bc35e179d662a2d5469b74e6a
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

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:a503b58e50b141f52ab1f3a922ae197fd0129ca251a7e648e27469dd068c873b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218624558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338eadde7ec046b74553129b9ffa6fe6712133226e309299b5e800a9f2d284fc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:20:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:20:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:20:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:35 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:20:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:20:35 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:21:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:21:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:21:45 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:21:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:21:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:21:46 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:21:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e69471bea80ad9f9ea3a25a6f862f8cff1deb98a0cd4b35b084b538fd13ca63`  
		Last Modified: Wed, 05 Aug 2026 01:22:06 GMT  
		Size: 145.9 MB (145905429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d925e3f2aaaf602c760fbe403485a363a4ce77b6498849f85d7379c721a5bfb`  
		Last Modified: Wed, 05 Aug 2026 01:22:03 GMT  
		Size: 18.9 MB (18891206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:466273c9698a8d9e1a840dae397ed7867775d68feea2df17f0aa536b591f7f92`  
		Last Modified: Wed, 05 Aug 2026 01:22:03 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a939360837a59131789a5580a798a056854494ac73a80885128ccd06a9b6a332`  
		Last Modified: Wed, 05 Aug 2026 01:22:02 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:46555fd362ba5370ceafe237b04c4fa3c637f667d3a67432ab224f21d11afda0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d89e57f0c5df43d7566813ef159d01e4c8bae7080e2726160f333038f6faaaa`

```dockerfile
```

-	Layers:
	-	`sha256:d915f6f11a42aca752ca8c79873e87c9dd37331856da8954f27c8661e4754d91`  
		Last Modified: Wed, 05 Aug 2026 01:22:03 GMT  
		Size: 3.8 MB (3817856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54f882c4d81f22c34f006dff48febc90b66fbc17af35d757d3c8a7f19ffff795`  
		Last Modified: Wed, 05 Aug 2026 01:22:02 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:70f52d8d21a8dcfc91cf57c6a0797378fc694853ebf40381d06b2ae530654d57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217753101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c61d7a6756e191a99bc334317d75a32416c31ec73a4822e869fb52a10dd1b351`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:26:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:26:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:26:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:44 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:26:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:26:44 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:28:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:28:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:28:01 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:28:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:28:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:28:02 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:28:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ce8f8ba7c732649dce007010b705e3bae311218f4fc101cab0607f4457839b6`  
		Last Modified: Wed, 05 Aug 2026 01:28:23 GMT  
		Size: 144.7 MB (144724288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3fdaca99a3d14e421d929b4338fd6c2d438fa1246fa5478e987bc8f13938e4b`  
		Last Modified: Wed, 05 Aug 2026 01:28:20 GMT  
		Size: 18.8 MB (18839352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1216c763844bb6df5fba97594a24dd9cc84c378bb26d38d13854d33a82a4c6e`  
		Last Modified: Wed, 05 Aug 2026 01:28:20 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a9285e97a7e956174b5861af332c5930dcdf0c1e79de70a56c1ad570ab533a`  
		Last Modified: Wed, 05 Aug 2026 01:28:19 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d535fe1073ddd8ffb9cfcd30638daa66687e9b46a924bdc60bbced7e8271098e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3835934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00b88dbad70936abb65ae8999ce7d8d1e06a2e9f50efdf848db58e973dbe7761`

```dockerfile
```

-	Layers:
	-	`sha256:9993fc7b0136b2e2577f7b8947faa5db414b1fc5e48b27c6ba2cfc706e5d82ff`  
		Last Modified: Wed, 05 Aug 2026 01:28:20 GMT  
		Size: 3.8 MB (3818096 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf8c867e62c031cc3be3e70737fab4b23765335985dc477ffb759a1a0f4a2d04`  
		Last Modified: Wed, 05 Aug 2026 01:28:19 GMT  
		Size: 17.8 KB (17838 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ed42e135c3c40903d8620926cf3982cee7d6f9f7392877323dbd6a461a34e01f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.4 MB (222351708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56af05ccff2a0f84f224d28c40922ea7954d0a1a4f8a936568eff3b85cb679ce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:42:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:42:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:42:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:42:47 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 07:42:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 07:42:47 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:45:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 07:45:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 07:45:23 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 07:45:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 07:45:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:45:26 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:45:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec09b02bc18a2ef8dd9aee4c32be708f70921a9b5ece3219b28485e4156e6f4`  
		Last Modified: Wed, 05 Aug 2026 07:46:01 GMT  
		Size: 145.8 MB (145766127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169b04798ad28bb35f5360f13bfb0bf290798011fdb729a1da0e3ff6b02a8ba6`  
		Last Modified: Wed, 05 Aug 2026 07:45:58 GMT  
		Size: 18.9 MB (18936353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5744d0401e145694955c23dafa6738ea5fd6f35e51d7db9bec91ba676e5f7c9`  
		Last Modified: Wed, 05 Aug 2026 07:45:57 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5cab069c67d3537d38ce9fab431af1818f7a43e2c1ce63093208359b2b85d3f`  
		Last Modified: Wed, 05 Aug 2026 07:45:57 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:0d5600d7f3202cb655a8b8c931f9297d6ad744c8905d630fec5bc5deec0790cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3836618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e6da7997068de87d0d23d3d3d1a5e6c27a136023b7d4c290146619b9564961`

```dockerfile
```

-	Layers:
	-	`sha256:4952fa6f781ebc6412edb82fc1492c4c23f4a4d8cb295bf796f7a5a475387470`  
		Last Modified: Wed, 05 Aug 2026 07:45:57 GMT  
		Size: 3.8 MB (3818856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eff78beaaaff7d72e3dd58420e0eed310e87031e715af6414ac0ce8ffe2b0b0b`  
		Last Modified: Wed, 05 Aug 2026 07:45:57 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:4929e3d88a542171c98e943fd99e824ac107ff949ddc8b6e7cf1e36c61952f7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208729516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09e3cd2a1a186ce747606d96a6fac2030df3c4ddc71163eb59fd480dd6c275a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:46:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:46:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:46:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:46:39 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:46:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:46:39 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:47:53 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:47:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:47:53 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:47:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:47:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:47:55 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:47:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afaa1b159fb975a1a4d66a9844394236e00d609cc280aa514cbdc48a6aa375ff`  
		Last Modified: Wed, 05 Aug 2026 01:48:21 GMT  
		Size: 135.9 MB (135910404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a785d63b5ddc48781c652481c3ce86ecea957e634919613f2f711d1e57a1c15a`  
		Last Modified: Wed, 05 Aug 2026 01:48:18 GMT  
		Size: 18.9 MB (18922039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8c7ce72eb494abe4d34a4cced892e79e5fc3f39c0574cc66f0cb8674f21ebf`  
		Last Modified: Wed, 05 Aug 2026 01:48:18 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d773d08323aa9d147b071e20b13649f7a8dac243c2ec34dd74feda6e13aa6d`  
		Last Modified: Wed, 05 Aug 2026 01:48:18 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6ba169a08efb11164aae8d77ddcd6dc55e80b8ee3ea75860da75762b5ddc7dbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3832001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c25b72f0161bc27da98d5f4c3c985487089e7e7aaa04f0919596093e9b17b8a`

```dockerfile
```

-	Layers:
	-	`sha256:26311158c9828d0c5e2950625a6b88645925493443fcff230a74ec2a7513855d`  
		Last Modified: Wed, 05 Aug 2026 01:48:18 GMT  
		Size: 3.8 MB (3814283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0441af160c63e72a4e1c51fc3e119d1776fc9db84b9e6bff6be7f572085369b0`  
		Last Modified: Wed, 05 Aug 2026 01:48:18 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json
