## `clojure:temurin-26-lein-bullseye`

```console
$ docker pull clojure@sha256:c7c229cd418a2d982d385215d20fce6508d85871be61343303286afe0a20f8db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:a3ad0c5a17ac72c9c4dad76804d9bf5300f17a7fd776b475144c8372c9985627
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169757495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9daf27d596a1d2f1380ac62a7e43110240fd00ca7fd27ed21d85c9b2e2c59f1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:49:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:49:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:49:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:49:40 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:49:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:49:40 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:50:54 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:50:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:50:54 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:50:56 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:50:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:50:56 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:50:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7df4f5932c8a6d19e46850233dbf9514e48e3cddc8049e898e8f8c473b9c40`  
		Last Modified: Tue, 18 Aug 2026 20:51:16 GMT  
		Size: 94.5 MB (94524339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5647be1460c0cd35a9d36b4e0133d0694e7c9d5a871cffaf726dfaaa85a04687`  
		Last Modified: Tue, 18 Aug 2026 20:51:14 GMT  
		Size: 16.9 MB (16940487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15ce0a66b5edf57bf5c32967b251a00b94aba6e733753da5b78c00239548083`  
		Last Modified: Tue, 18 Aug 2026 20:51:14 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6976de80bdf4383abe3325da6053c79016a54b0141d8a220e36c0820e92b5f50`  
		Last Modified: Tue, 18 Aug 2026 20:51:14 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:d46e9757b8d88e861068b46f2e2983967092092ed469da6868ea5af80e98f1b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4488852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ea45606e24557dda67d57da07fa02d10b2131dc5a121afeb32d66fa23f271d`

```dockerfile
```

-	Layers:
	-	`sha256:cbcbc5130f549044d78a43d4deb0013703e025eb896ceabffe84019275359a49`  
		Last Modified: Tue, 18 Aug 2026 20:51:14 GMT  
		Size: 4.5 MB (4471121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16e74583191f2a70260bcb393d4c6fc9d99a6eb4812f4f86ce374971328269f5`  
		Last Modified: Tue, 18 Aug 2026 20:51:13 GMT  
		Size: 17.7 KB (17731 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:961381ae3dfe87b559b809ed76cd4a9c7c823be1ce1b0da41b11a5932859796a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167211859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:738c5fb3363d388020d7c28227f984a194988371ef929bf8bd619a85fd52b1e7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:49:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:49:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:49:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:49:49 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 18 Aug 2026 20:49:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 18 Aug 2026 20:49:49 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:51:00 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 18 Aug 2026 20:51:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 18 Aug 2026 20:51:00 GMT
ENV LEIN_ROOT=1
# Tue, 18 Aug 2026 20:51:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 18 Aug 2026 20:51:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:51:02 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:51:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edfcbdb3d594f88feab8a39196c728c83517555649650dbc223373b152bfe40d`  
		Last Modified: Tue, 18 Aug 2026 20:51:22 GMT  
		Size: 93.5 MB (93504353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12532f62f491bc1d0f5bed1034fd621ec5b6b0ca8ce95df4dda291892bf23cd4`  
		Last Modified: Tue, 18 Aug 2026 20:51:20 GMT  
		Size: 16.9 MB (16930974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9aea034c17394c9ef88f36fddaca52ab9d6514d047fbb8b4174b5a17eacbe6`  
		Last Modified: Tue, 18 Aug 2026 20:51:20 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a00ff1c388d38228ba806a317bf333a08a2d3d859f889db02031162027367cc`  
		Last Modified: Tue, 18 Aug 2026 20:51:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:25a7d44ca71c0a02a9232bb353999dbf167a1ccdb802ea30e527d23a5e4c79a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4487944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea720d67df4390fe55479a7cf2f8bfb15f5e46a900ba03b0e915bab4b1b1d3f0`

```dockerfile
```

-	Layers:
	-	`sha256:9cc2a8722c64c9fc666b085c281e80e92219c680d7817d4b3bc8e66a8029b99f`  
		Last Modified: Tue, 18 Aug 2026 20:51:20 GMT  
		Size: 4.5 MB (4470092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29249bb1b81fe2d186ad7e368a885897deb7f7f5193f79ab113e0cb44006025e`  
		Last Modified: Tue, 18 Aug 2026 20:51:20 GMT  
		Size: 17.9 KB (17852 bytes)  
		MIME: application/vnd.in-toto+json
