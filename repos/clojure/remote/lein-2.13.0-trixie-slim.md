## `clojure:lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:c50f5658c28ff9dabfed8bac7988d847a1bf1cd2eada8113a497b5c5c78a71a6
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

### `clojure:lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:dc2a50d1e0cc12cd2efe9ceffc5e7c40156af1e59b8458d4a8c0281a7036316f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.6 MB (143625916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed848fcfdc211ae510001eda462779bbe928d9d0cffaabd405deddcc0524820`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:53:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:53:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:53:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:53:41 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:53:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:53:42 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:54:56 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:54:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:54:56 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:54:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:54:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:54:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:54:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae157e4986bbf8cc92237c5a27c0c549ff7872c00170b72f7aaa948226d80bd`  
		Last Modified: Tue, 04 Aug 2026 02:55:17 GMT  
		Size: 92.6 MB (92574586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5dda9eee775c2628d7b43349b4dc4845977ad24a0205d9d11d0cf0583b07f51`  
		Last Modified: Tue, 04 Aug 2026 02:55:15 GMT  
		Size: 16.8 MB (16754814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055019add00c49320ec8042042a0f8718f7e2aa676b9e0c792e730990298e620`  
		Last Modified: Tue, 04 Aug 2026 02:55:14 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28a6e250a180dffaaa7410bce81a04b851611f8973772ab252b528cea0a993c`  
		Last Modified: Tue, 04 Aug 2026 02:55:14 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:26af1ab300c029f9a4d102f0398237071ea51b28e1fc03279a7e86d2f213b57f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed4bc24343caaff74fbe1000c99e37b390c6497c42e03121ce6600aa4698714`

```dockerfile
```

-	Layers:
	-	`sha256:1374159daeaba1146134509077dbdad1bb51aae11dcc93078e0b19085ff77850`  
		Last Modified: Tue, 04 Aug 2026 02:55:14 GMT  
		Size: 2.3 MB (2335165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77fa602c44fb4a1234227828deeb47d758d4ce44175f147c18337e3abe51ba4d`  
		Last Modified: Tue, 04 Aug 2026 02:55:14 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6c8847eeadec7ba7de606ebde7e4fdb982c81add2ea98a41d7b9bb5535e16719
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.9 MB (142913377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:488eefa43036f91095c6addb7d2659493871b674ca3d37044cd7dfe0411f06ba`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:54:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:09 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:54:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:54:09 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:27 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:55:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:55:27 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:55:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:55:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:29 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e2d0fb3048f863786f7aa34d49cc5c7ddf721a1aa3113935cfde805ac30e69`  
		Last Modified: Tue, 04 Aug 2026 02:55:48 GMT  
		Size: 91.5 MB (91542237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eeb4a8cae3f1a357338880d8ebf75e5e37f2cce5b2fee1aeb99252f77de6026`  
		Last Modified: Tue, 04 Aug 2026 02:55:46 GMT  
		Size: 16.7 MB (16711773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefcb37f3dd840b6a6e24d66031d4b7eaa7f85d66ebe9512314d77efce99af33`  
		Last Modified: Tue, 04 Aug 2026 02:55:46 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86341360b4a1956d0ba569f34f7ef5ba5e55e26fe47b59fc32a67337e6d9fda4`  
		Last Modified: Tue, 04 Aug 2026 02:55:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:109d942fdc719420ae4d013ec3b96baf9fa9c7527eb00c8a71bdf98012e3e011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2353341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d699455738b188e94cacd8489c7b4db6f0456737bcb86e46437ffadbe42c047a`

```dockerfile
```

-	Layers:
	-	`sha256:d5367cabc0dc2b510d6f158f6d24962a46e734d4cbe4a90efa624087bccfac0f`  
		Last Modified: Tue, 04 Aug 2026 02:55:45 GMT  
		Size: 2.3 MB (2334796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bec3b018a056835c67909e18dd9b99eba300b9ee4f79a911b4abbafb80463215`  
		Last Modified: Tue, 04 Aug 2026 02:55:45 GMT  
		Size: 18.5 KB (18545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:cc244f96613222fff6ea8b91d3ff03b61556a66af189a8e49fc448667438e84a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146813504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7a28cddf84c6c765e823b94aef7c980e6ac5e9ef02ba0eaf7ebd69f6166dc7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 05:42:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 05:42:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 05:42:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 05:42:04 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 05:42:04 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 05:42:04 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:45:13 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 05:45:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 05:45:13 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 05:45:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 05:45:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 05:45:18 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 05:45:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8956397a45515bd221ae4dd70baa36802f7ac561573c520178196c8a0c5689ee`  
		Last Modified: Tue, 04 Aug 2026 05:45:53 GMT  
		Size: 91.9 MB (91914022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58950b5b5749e03475158d033d88280784c95fd5847354d4efaea2945dcc9e8`  
		Last Modified: Tue, 04 Aug 2026 05:45:51 GMT  
		Size: 16.8 MB (16782356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6705d696747f54fa1e7f278b0dc275fe8725e86a4860caf51af5bf7ae12384c`  
		Last Modified: Tue, 04 Aug 2026 05:45:51 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64436aa60f81bc719433a6bdf4c3aa319dc6fcb34315ff1875b47426799a646f`  
		Last Modified: Tue, 04 Aug 2026 05:45:51 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e91fd473be93392af01a0ee7bfc221a6b2d5d2bf27939058a5ceaeb70ef0ab02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2337923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3f9e09c5ecac8d1ee91e66a99a8eac0571c62f431bf7c0ea33f8d2c91e72b05`

```dockerfile
```

-	Layers:
	-	`sha256:5889f97fc7e4aa681beee72bc1ce069350e5f8dac468d5ec0582637f5d48b63c`  
		Last Modified: Tue, 04 Aug 2026 05:45:51 GMT  
		Size: 2.3 MB (2319469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3e9d79ae268e425481e3f771d137802f4341a902440689a664de1d2d8f96d6a`  
		Last Modified: Tue, 04 Aug 2026 05:45:51 GMT  
		Size: 18.5 KB (18454 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-2.13.0-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:1aad0db107f8af3b810e4b345a68bfd5346cf18c8edf94b3cf4296bba91c0dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139562956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb0116cd302efac54557a39b9b5e8551d0f108256a3b108c0741076740eb6ed`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 03:03:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:03:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:03:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:03:18 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:03:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:03:18 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:04:29 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:04:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:04:29 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:04:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:04:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:04:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:04:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:110675017e5132bf84a4c8cd0f7249b22c9a12dc1809c3edf79789850911cf5a`  
		Last Modified: Tue, 04 Aug 2026 03:04:55 GMT  
		Size: 88.4 MB (88420359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ead0a067a05f6fb50894fa325435eece15332b8b59d996a2c8d572212ae805`  
		Last Modified: Tue, 04 Aug 2026 03:04:53 GMT  
		Size: 16.8 MB (16780327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41eff216b1739c0bfaef788a47c4601194276144b34f253e927f0a94c5b24ab1`  
		Last Modified: Tue, 04 Aug 2026 03:04:53 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:126510baf8914e39db503c1966121e65d37e77a5d54c09a53f149de6bb42d703`  
		Last Modified: Tue, 04 Aug 2026 03:04:53 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ec0721b06da18a255d477f240b7c5a85dfde57efe33d3985ad6d50df5c563041
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2334554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ab7ca06e296893b1dd4790419dcd0b6be85aa549ec182af1c7488b25033247`

```dockerfile
```

-	Layers:
	-	`sha256:afa21e3a5340fe2e37829d63b0ea056ee2bb53aa3875a9a01f5b28c566e90c77`  
		Last Modified: Tue, 04 Aug 2026 03:04:53 GMT  
		Size: 2.3 MB (2316154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2207b317ffa918639caaac793c3cf79ff60d803366c832f30d5a13cd55acd585`  
		Last Modified: Tue, 04 Aug 2026 03:04:53 GMT  
		Size: 18.4 KB (18400 bytes)  
		MIME: application/vnd.in-toto+json
