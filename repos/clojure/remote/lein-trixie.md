## `clojure:lein-trixie`

```console
$ docker pull clojure@sha256:dbcc530135c9e35b49b966f6bb86b244359ca42f081d01d62e51fc18d000f579
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
$ docker pull clojure@sha256:96edbecb412543263a69da1a38346bd53b71338a4c90e53449e6030bc530ce3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.4 MB (165427796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb3f93d434fe60d67e0b2f2f771fb92d17305eef7ebfb81ea64a22f141df4e70`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:14:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:04 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:14:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:14:04 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:15:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:15:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:15:23 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:15:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:15:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:15:25 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:15:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7415db5d66c03ec1d6a98019fd0240103c6cd78ff547c82895402c0b5b3f6c5`  
		Last Modified: Wed, 28 Oct 2026 02:15:44 GMT  
		Size: 92.6 MB (92618034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6015a9ae6575dfd43c9fa50de598e00cd0b583a11f2db2f6594965770140d406`  
		Last Modified: Wed, 28 Oct 2026 02:15:42 GMT  
		Size: 18.9 MB (18886216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e87b10c07e951623b908d90e707df8a4d372d068ea909cb664b7efc88b09a0ce`  
		Last Modified: Wed, 28 Oct 2026 02:15:42 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87fd49af6ca218a3e58e64f3639d562c6a357a195d369f6e477fadee2692db08`  
		Last Modified: Wed, 28 Oct 2026 02:15:41 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9909928df35c2756609611126e2e63957a82de2e28df05e52a730f4ffe8c14df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3812845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fff18652e46579b76d4f7ac238f497d8eb80613110d8b80ad9a74003e04906a`

```dockerfile
```

-	Layers:
	-	`sha256:aec66daa827d79cb762d17150e7e7eb3c526a0008ebdc60642ad9df7ecaf9168`  
		Last Modified: Wed, 28 Oct 2026 02:15:42 GMT  
		Size: 3.8 MB (3794500 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6084ccdf66ad8c29e85fa18666282d6c807b248d9f107805bfe576aafa5b5958`  
		Last Modified: Wed, 28 Oct 2026 02:15:41 GMT  
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
$ docker pull clojure@sha256:6f280e8de610570ac6cf2a18120dd845efffcbc155a1bcb830de9b1e9e06998c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167933714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94bc2f07892b35226b46702416daf0f88b7ca0df45936ad2d84d8f1bd71d73ad`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 10:15:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:15:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:15:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:15:52 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 10:15:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 10:15:53 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:19:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 10:19:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 10:19:26 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 10:19:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 10:19:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:19:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:19:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677971f4056fd8f18e466293b6a0abcb78b1f4043b0ba39541c2213b7e06138f`  
		Last Modified: Wed, 28 Oct 2026 10:20:15 GMT  
		Size: 91.3 MB (91256243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be47a80a1390b6d875bd895f6b23abdfca8413665858c93b8b167f5021b2c94c`  
		Last Modified: Wed, 28 Oct 2026 10:20:13 GMT  
		Size: 18.9 MB (18939560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3003cdc17b964d3901e5b9942129a310623802ca88b185ec6939a2728013076f`  
		Last Modified: Wed, 28 Oct 2026 10:20:12 GMT  
		Size: 4.5 MB (4515237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608d05e538af7bbb2aa41fa26d854158f40e0b3962d1bcb42ffc26677a0bb8d1`  
		Last Modified: Wed, 28 Oct 2026 10:20:12 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:afcc84c6f38deb88e6d799df622b9702ebffcc1dab2eacba46dca34fcc12da15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3797222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c50e6a1ce907476757a126734c3265ea94eaedd93dd94f2ef88571cdf1eb5b8`

```dockerfile
```

-	Layers:
	-	`sha256:9ee2cce1a42c0cdfbea84e05f333451e5b062440ab7576d4eb86f96565d6c632`  
		Last Modified: Wed, 28 Oct 2026 10:20:12 GMT  
		Size: 3.8 MB (3778822 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b8bf7c8a925f3a6019bf38cb9aec897fdeefa0e0b7503255d459e6bbe6aed36`  
		Last Modified: Wed, 28 Oct 2026 10:20:12 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json
