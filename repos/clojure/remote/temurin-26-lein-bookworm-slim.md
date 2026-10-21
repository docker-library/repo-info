## `clojure:temurin-26-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:cfabb8304ef0497f85c382a5a07f110d4af311d03de19297b012f6de1ea108ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2828b83c74ec3c4d8af39e6a050fba31b67cf7c423d61cf9dd6ecf2a2860eff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.4 MB (145400037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b840e1d62c2f24e19cfaa5ce24f312a8abdda5568645115f599ae663a86cf1f3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:20:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:20:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:20:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:20:59 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:20:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:20:59 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:22:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:22:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:22:07 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:22:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:22:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:22:09 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:22:09 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4099f5d639814da992fdd6e707baf5eeb738fefafb372ef2d38de8ba9999e2`  
		Last Modified: Wed, 21 Oct 2026 01:22:28 GMT  
		Size: 94.6 MB (94563481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d84dae258eca874f984e7f117ccca7edc7e878a08ea23be1ac64a5fc7b8244a`  
		Last Modified: Wed, 21 Oct 2026 01:22:26 GMT  
		Size: 18.1 MB (18072979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4deea495964ba5b41a584c78fd13a3974c7847d7224c03104936122a17a9960`  
		Last Modified: Wed, 21 Oct 2026 01:22:26 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb9564aae781056c4f8062cdd2dfe9eb016ee48cc2f062cc08174358199691aa`  
		Last Modified: Wed, 21 Oct 2026 01:22:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a8558e108b988d55af0248b5af2702279519c8c437d0fcfcd8b67705878f38e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee21b849a61f218211fb431ec67abe3e42d0590e3702e321767a8bc924fc1744`

```dockerfile
```

-	Layers:
	-	`sha256:99f8382d5edb23cba5486547ca3deb8b91b8a7a706c4a3131a6bdc1b8a16ddf5`  
		Last Modified: Wed, 21 Oct 2026 01:22:25 GMT  
		Size: 2.7 MB (2701216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf534bf9eaa171af00a504fe8ec1957dca6c55758ea37bb72b9708af12182e25`  
		Last Modified: Wed, 21 Oct 2026 01:22:25 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f7bb944276c89e80850c5dbe1003694b2c05aca32a8cd84cece440d7477338d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.1 MB (144103773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d14f58121a47f4393770932176d01675144cba89b7f54bd7bdff61b9c2e589`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:27:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:27:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:27:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:27:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:27:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:27:00 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:28:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:28:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:28:10 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:28:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:28:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:28:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:28:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2966af034fbcaf5fc8a25cfea75d0fc668385ce9e9939a3cc78d34bd1877d914`  
		Last Modified: Wed, 21 Oct 2026 01:28:31 GMT  
		Size: 93.5 MB (93543594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb16fd871a10e9905073e3240f3dce8f9055d1b4c015d8b65e73676971e7aff`  
		Last Modified: Wed, 21 Oct 2026 01:28:29 GMT  
		Size: 17.9 MB (17906164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0732b2ce11f72c301ab5987687aaf9e54e8d157dab08abc439964c0f2a8a9796`  
		Last Modified: Wed, 21 Oct 2026 01:28:29 GMT  
		Size: 4.5 MB (4515159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2df7cd64eeb07ec489b5b0ea88dedf9055d0f4d2ea025fbd95314bacf852754`  
		Last Modified: Wed, 21 Oct 2026 01:28:28 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d42cd468143272b81a1d3feabeb5250f03a45d405160d6e37dfe72d4f13c76d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2718713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38b6db5ece871f27c18281d9ba7d666eb09af07ed96a3bf61d2970a0cb3bf6f`

```dockerfile
```

-	Layers:
	-	`sha256:37240036fd8b33b86b328bb9ec339db57bdcd038c93fde2459f1b5cb794694ff`  
		Last Modified: Wed, 21 Oct 2026 01:28:29 GMT  
		Size: 2.7 MB (2700828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ac2192561c480dc3d4a0a27a2f552557e341e67c8f192595f6bfce195ed8024`  
		Last Modified: Wed, 21 Oct 2026 01:28:28 GMT  
		Size: 17.9 KB (17885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ec89f24f2eb208b41fb9698e334b3ea1df52d7365976bbcfeeb8a7205b6ca4a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.2 MB (148239094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:561b409001bfd357f66c8312b8eb01a7e81a694757484a3538d8605ce3b2031b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:03:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:03:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:03:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:03:28 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:03:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:03:30 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:07:02 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:07:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:07:02 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:07:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:07:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:07:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:07:07 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b181dc2a83b940d69077a6cc6b9a90c0ff198e7ef6de7740dd65912334038feb`  
		Last Modified: Wed, 21 Oct 2026 11:07:50 GMT  
		Size: 93.4 MB (93350847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97b699d276d94d4bd3202486c2a336d61897626dc0c185802739579655a1845d`  
		Last Modified: Wed, 21 Oct 2026 11:07:48 GMT  
		Size: 18.3 MB (18279395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b948c92b7701c4ae9cbcc39246d450f5e123ea83e90c42757845e3c08266ffce`  
		Last Modified: Wed, 21 Oct 2026 11:07:47 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e7b2c8d6c4ca3ab6e4a1f1cb08184995b84b5a8c9f0265b4142a5ac9ee6a08`  
		Last Modified: Wed, 21 Oct 2026 11:07:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b510ed1d4a3b81b94c08a680f33fd1cdfc7c4393236cc4ced8a0afbd0dabccdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2704794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35634253dd9c5d25e0a47fa6feee58573eab5141c32cb78c3dba9287b9c73bca`

```dockerfile
```

-	Layers:
	-	`sha256:0498fa9c4099220b12f6dc32c2208ce956fef95b99d84b2b415d91e46a611639`  
		Last Modified: Wed, 21 Oct 2026 11:07:47 GMT  
		Size: 2.7 MB (2686985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e86de779b78d280c636e5fd7394a45eda85dac7a06677e0842786f0a986f7c5d`  
		Last Modified: Wed, 21 Oct 2026 11:07:47 GMT  
		Size: 17.8 KB (17809 bytes)  
		MIME: application/vnd.in-toto+json
