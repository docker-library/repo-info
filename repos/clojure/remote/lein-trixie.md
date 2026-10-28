## `clojure:lein-trixie`

```console
$ docker pull clojure@sha256:25a2501937b2f2da5c54d6051719d04797ce46b6842feb4880e0dccd954642c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:f89dc59dab990ea48bea36751ff136745d628ca2110b695e52a935c869822ba3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165413044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ca6d10db984da25fd5c0bf7878e2c2a71c36ac5b86322c775104f1f314875a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:51:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:51:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:51:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:51:27 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:51:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:51:27 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:52:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:52:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:52:42 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:52:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:52:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:52:44 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:52:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf8551d9083edd853ef2d6e4ad7a711bf850c5649aead586ba941c9fc3584d39`  
		Last Modified: Tue, 27 Oct 2026 00:53:02 GMT  
		Size: 92.6 MB (92618010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a1da4c94e17e24fe1c264ce4191fde8f305926192d46635f1c254a186ec7ef`  
		Last Modified: Tue, 27 Oct 2026 00:53:01 GMT  
		Size: 18.9 MB (18885795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ed400e62d6a151645c120ed628a37ff3e69e6239f5b612bee26a649d182162`  
		Last Modified: Tue, 27 Oct 2026 00:53:00 GMT  
		Size: 4.5 MB (4515186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4cfaf307f96e6e4ddd3e032731a628cd67c6f8ba4055f81c5f86a24f4e0e97`  
		Last Modified: Tue, 27 Oct 2026 00:53:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5f5501bc630ecbb0500862f4d94c94c5a690e4619b89595db0b108f13f93488f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3812845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c7aee6fcecb6c01a9da46ef2c4bbc9c06f1cd9ef5656fbd747fde43559db52`

```dockerfile
```

-	Layers:
	-	`sha256:7a626d7b2febc465d88a33f90800c57aecaa869afb725ed7e7c9733f8031a945`  
		Last Modified: Tue, 27 Oct 2026 00:53:00 GMT  
		Size: 3.8 MB (3794500 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08bdc6e514d272e52f3a009147736a031944cb894c173b774de1ba570658db3b`  
		Last Modified: Tue, 27 Oct 2026 00:53:00 GMT  
		Size: 18.3 KB (18345 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0e6c0239574b3def1c81c2ff25e4977ac9ba4181cd76bc271f08a8244dfc06fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.7 MB (164675133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e03e2dbff2244092db5e789b690f2f91bc91006aac7ade86bb77726fb301e17`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:21:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:21:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:09 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:21:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:21:09 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:22:36 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:22:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:22:36 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:22:37 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:22:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:22:37 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:22:37 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b45b28b2b67b27d5e2b2e6d37195ae2d8b5bbda7b38fa88e489913cf457ac5`  
		Last Modified: Wed, 28 Oct 2026 02:22:57 GMT  
		Size: 91.5 MB (91528799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad0848eaac183bf385a58269f3879f30c2ccf1f272361ffa097a81cea276aef`  
		Last Modified: Wed, 28 Oct 2026 02:22:55 GMT  
		Size: 18.9 MB (18854547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba1a03bd3b7a2f45846cc31e18e2aa7f95151cb096c825753994f50512c5040`  
		Last Modified: Wed, 28 Oct 2026 02:22:54 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6d65765478c3a22964281cc324ea5c499b6b6b932d76289f8d5755e864ed7c`  
		Last Modified: Wed, 28 Oct 2026 02:22:54 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:6168e2146e67e4fef244e0be98facb4220a728fce4b1ab9c8282f12ae02f9a04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3813250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b8f88b1cd2d9d5b085acf05c74d1b215f2885ffdf6de3a35b0bb19be1f00a4`

```dockerfile
```

-	Layers:
	-	`sha256:4d6f18a12a08d5afa154c4c254f20c77b7df7d5f474d23833d8febb05023b640`  
		Last Modified: Wed, 28 Oct 2026 02:22:54 GMT  
		Size: 3.8 MB (3794761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48a2695be8ccada43be48c111448cfa677ba7cb7ecdf813bf59c5e489e1487d9`  
		Last Modified: Wed, 28 Oct 2026 02:22:54 GMT  
		Size: 18.5 KB (18489 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:496d8360403bd62e25b4d5ce76865ef14081fcf3774c470a6430dd44a2a10d37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167918710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23bcb448b6ce9ec4dac04411e6983c6f7aabf89ec33531c08982fc10b52b89ef`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:50:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:50:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:50:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:50:25 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:50:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:50:26 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:53:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:53:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:53:51 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:53:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:53:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:53:55 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:53:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048e1f0e41557690eae11af5f83bc54103283e7cb6f701fe4a358768b52b4bda`  
		Last Modified: Wed, 21 Oct 2026 10:54:40 GMT  
		Size: 91.3 MB (91256233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5f7c930e63ac0fc5b79826fdc8559686e66f3a52d95acf30b20d094935b4fa`  
		Last Modified: Wed, 21 Oct 2026 10:54:38 GMT  
		Size: 18.9 MB (18939292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:babd7ac528f1de1e7b5fa8b1439673348e9f4a16d467618902fe2bd2b2cf6a77`  
		Last Modified: Wed, 21 Oct 2026 10:54:38 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413d26720b7ce1c5b27b53a9a5a3b4e1b7b0afe1624514d2dddb2b19c4576132`  
		Last Modified: Wed, 21 Oct 2026 10:54:37 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8c3ed3ecbb3f6336e96158c833e565ac0cc684b3bee4453c18516f8df994067b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3797222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d8050d3df32e6a062f6c291e1b3a53fd2558f7bf3ddcff48091b7426a827eb4`

```dockerfile
```

-	Layers:
	-	`sha256:f1482d42fa34eb210cfd5f44ae0c461d587bddc1d30f7065b1adc1c207b49ab9`  
		Last Modified: Wed, 21 Oct 2026 10:54:38 GMT  
		Size: 3.8 MB (3778822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d10f12a106bef7a4feefd421a890eed8d6c9674dfb7456ec4bb94d02fafa3a79`  
		Last Modified: Wed, 21 Oct 2026 10:54:37 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json
