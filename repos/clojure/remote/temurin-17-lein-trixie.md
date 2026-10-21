## `clojure:temurin-17-lein-trixie`

```console
$ docker pull clojure@sha256:2e107221c9b98c160d4ecce00632c44860c756b44547bd8a2058b5ca6aa50b4b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:b041410a8c095af6c60724d40a22c1ae2951f151fc813692b62405741a42ee03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218619999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70dec73f34a123d30b3a304284113fef044998e1fd6a3f62cbf93e3c14b7ae05`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:17:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:17:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:17:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:17:50 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:17:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:17:50 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:19:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:19:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:19:09 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:19:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:19:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:19:10 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:19:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20023b0d7ca6832b8f551f946de3ae2ac90c07308d4d516beedcd93e8e074350`  
		Last Modified: Wed, 21 Oct 2026 01:19:32 GMT  
		Size: 145.8 MB (145825483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec310a3cecccb995319af7d7d9dfd3f3844e26a5f38ea58101a7ac9caf7cb3e`  
		Last Modified: Wed, 21 Oct 2026 01:19:29 GMT  
		Size: 18.9 MB (18885286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e09f0389ec2640a8a892c3ff77da5bc82a3c8db2fe14137404cf9f955960cd2`  
		Last Modified: Wed, 21 Oct 2026 01:19:28 GMT  
		Size: 4.5 MB (4515179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8134853cb5baa988928e2db2d35e2b5ffd7624c42566ac2c00fa78308ca3b6`  
		Last Modified: Wed, 21 Oct 2026 01:19:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9b64d8738a5063876f551af8944d724f3ceb9b47f8faba37846808e4c2866187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f66f5d3894a0cd1b0738da6f5386512803d9c3c1c64de20fccb44a3b9a82faae`

```dockerfile
```

-	Layers:
	-	`sha256:02676706de2f4fbdb3b9220916a50fab617afafc352d20864169f943b118356f`  
		Last Modified: Wed, 21 Oct 2026 01:19:28 GMT  
		Size: 3.8 MB (3826470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f021d881711371fb047b3b0924066461cc40717da98d80bc19eeca667566d70`  
		Last Modified: Wed, 21 Oct 2026 01:19:28 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f8ffb1a8c58610d0443e6be3caaac8a02f26fdd57cf4868ea827e163f65623d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217769365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd3c558350768b2380eb42d3ccd4630d7f4dd2852f3cb6954b9adf758a74cc1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:24:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:24:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:24:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:24:06 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:24:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:24:06 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:25:27 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:25:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:25:27 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:25:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:25:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:25:29 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:25:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73a065251573f0ea2c689a11fca8d648e517b1fd5be3479e738ca5a6eec1542`  
		Last Modified: Wed, 21 Oct 2026 01:25:51 GMT  
		Size: 144.6 MB (144648245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee3e01228820fd9ef57eec89d9219f86afaacb1f6eb6bf695dbecebe843d293`  
		Last Modified: Wed, 21 Oct 2026 01:25:48 GMT  
		Size: 18.8 MB (18843885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2fdcc84c1475587051d9503a50cb460ff9686e68181344a8096bc65c93fffa3`  
		Last Modified: Wed, 21 Oct 2026 01:25:47 GMT  
		Size: 4.5 MB (4515203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40e8c1a6f3908a7cf22d9c798084f50d1779fe4c818075b52b2b07cab4b30c84`  
		Last Modified: Wed, 21 Oct 2026 01:25:47 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3a36cc1e3598f108e85746a79de5eff77eef59418672e75c1a24b6576107b12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6357ab24e2cf3998ed7130061a9ce9f5144df6b1d767dd54dc75283456b570b`

```dockerfile
```

-	Layers:
	-	`sha256:f11f76e1286c8982fc1e53eec57d63ec56850d65aa11b91570c885e6cf063252`  
		Last Modified: Wed, 21 Oct 2026 01:25:47 GMT  
		Size: 3.8 MB (3826710 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8a897ae13aaab2eb3595716aaa9ba8ef8eb3c1b27cd7be549f0ce019a46f586`  
		Last Modified: Wed, 21 Oct 2026 01:25:47 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:27adbe3b89d20df1bdf7bbed3ec060bfe0e4d1322e740cd7d4aeae4b03d49ec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.3 MB (222334633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cb5ae5ed91202ebe940c6f9f15647bbe586d50495f9c314aebea5e62333136b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:22:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:22:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:22:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:22:54 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 10:22:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 10:22:55 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:27:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 10:27:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 10:27:24 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 10:27:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 10:27:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:27:35 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:27:35 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14205fbba26894adf902cfcd4da08f03dbf8cc5016c01e991ea6e329381c7af`  
		Last Modified: Wed, 21 Oct 2026 10:28:12 GMT  
		Size: 145.7 MB (145671534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0b2dd87de3d0afebb60c88295d0cf34ed23691d3368657f71fba806f3167d9`  
		Last Modified: Wed, 21 Oct 2026 10:28:22 GMT  
		Size: 18.9 MB (18939863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c0178ef39859ab9920c4c2564c16deefa134a6edec042b9e5c368e62f9c4b5`  
		Last Modified: Wed, 21 Oct 2026 10:28:22 GMT  
		Size: 4.5 MB (4515229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14e7cd69314a1fdb45d4f5b3d136f2b12249390023ccb2ae07cf99b8e599442`  
		Last Modified: Wed, 21 Oct 2026 10:28:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a1f523d16f320405dcc62c11c57a3541007961a984c23c4dd3aad03562e8352f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591811f92d5a1f7840816513a9802245e3370573a5a9682a0642090c933e0d04`

```dockerfile
```

-	Layers:
	-	`sha256:a89ec2600ca53c52d7fbb85513663295168bfe5232ffc26f3c5d46bb7c8b4127`  
		Last Modified: Wed, 21 Oct 2026 10:28:21 GMT  
		Size: 3.8 MB (3827468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53b88ebb5320eaa71fbdbf1817db2ef0b9139251303fd8b0620f088266a5db93`  
		Last Modified: Wed, 21 Oct 2026 10:28:21 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
