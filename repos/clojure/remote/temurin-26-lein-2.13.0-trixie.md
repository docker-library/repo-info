## `clojure:temurin-26-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:ea9050c27af210c7fe718705c50198ea60025525074e0bc520d0c91439248444
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:f7bb2224acdb203ef1dddff40a31b83ca96e672dd196d8173fb67a263079369e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167356043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c70c0c5091cd334d1e04c1e6e2acf1e4d1c51129134cb531a7c2db71c46ed5e5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:18:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:18:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:18:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:18:02 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:18:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:18:02 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:19:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:19:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:19:14 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:19:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:19:15 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:19:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790faae6498adb61c1a8d2b4a122baa0f670be646ed58db9cb91ab8e87871604`  
		Last Modified: Sat, 19 Sep 2026 01:19:35 GMT  
		Size: 94.6 MB (94563692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ef9d17014d65a7898f2f95ea6e645953c8329a0dc3d7f71444b05a56e9866c`  
		Last Modified: Sat, 19 Sep 2026 01:19:33 GMT  
		Size: 18.9 MB (18897056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a488ae5a1b5133c828e0ab84e2217ba14b5e2bb769b88f64e661e74ca90dd49`  
		Last Modified: Sat, 19 Sep 2026 01:19:33 GMT  
		Size: 4.5 MB (4515167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2959fe0b7e0c52fd449310e5bd45be6763bbfe93d91977b5d58288e94e9a603`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1772c82d11b76475a0a348f83e1f0545ef20ab5b1e2d87c09f068ff0b2becf21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3810345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baae9bec20b0726aac65499e63af7d94c95b5875dd63abcc3653bfef5ecaab1d`

```dockerfile
```

-	Layers:
	-	`sha256:b6205f26937e9d4a3c9bc9d0bc0a0ca52d6fd37f083c16d65f524958af97b5e9`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 3.8 MB (3792634 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:063c2bbd91fb24811218857cae392691479861cfd4a1ae3eefe95e19b7c0a607`  
		Last Modified: Sat, 19 Sep 2026 01:19:32 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:85e8b77ba17ef4343e8833492c2c7821fcf4c661098f56d4ad2c991a31675209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.7 MB (166650591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bcebb13471272d8b04c3b8fe8b1021077f03deb45f0c70e18a3e6420c46507c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:25:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:25:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:25:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:25:45 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:25:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:25:45 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:51:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:51:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:51:48 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:51:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:51:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:51:50 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:51:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe73a2fd1e6fda59cd74d6766f99fc9fa26e77e1ae0fa2b50eea5acf89abb2cb`  
		Last Modified: Sat, 19 Sep 2026 01:26:25 GMT  
		Size: 93.5 MB (93541602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a44cc974e172a7489d7691ded83c0cb3602d91ee6d6d98571c26875257d8e56`  
		Last Modified: Sat, 19 Sep 2026 01:52:00 GMT  
		Size: 18.8 MB (18844523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76cc1a86e35707ef0902b233390f99ef0e69d6596550ec855702ca8cffd85a59`  
		Last Modified: Sat, 19 Sep 2026 01:52:00 GMT  
		Size: 4.5 MB (4515201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2389c435c99c42cb464a731097ff583f15a96ac4a38d1d7167444d72037d7a78`  
		Last Modified: Sat, 19 Sep 2026 01:52:00 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a2b92c7e5a2b58f2650afb18247167c15ae1c8d8cca857c79b5f3b3788284bc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3809750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cddc66b843cbef3bd2af677d02ac5e64e9ab16bf3df7b42b275eae68088973e0`

```dockerfile
```

-	Layers:
	-	`sha256:4d76c871edb8ca3be55da3dbac4114e20cf4f75357218ddb7a2287ec82ccd145`  
		Last Modified: Sat, 19 Sep 2026 01:52:00 GMT  
		Size: 3.8 MB (3792871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bee3413d4e5ecdd6eab0599cb3a9fa2ee0baadcb2a4f558e6e53a4c2fce68467`  
		Last Modified: Sat, 19 Sep 2026 01:51:59 GMT  
		Size: 16.9 KB (16879 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:3cc2cde66600efaa98b0336512310653ac9aaaf49bf933575afce57ddb2a4f40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.0 MB (170003135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1912b388e075ac09ea034cc1de48d29351d27590a9b87db81014c794c80bc0ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:29:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:29:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:29:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:29:35 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 08:29:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 08:29:36 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:32:53 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 08:32:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 08:32:53 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 08:32:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 08:32:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:32:57 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:32:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c978fdd14e79985f41c4b5ec2407d905572e538e942fa16c833f96b1db019f92`  
		Last Modified: Sat, 19 Sep 2026 08:33:36 GMT  
		Size: 93.4 MB (93350806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f716211ecb1b73c761843e8c5179f19c65f8175be2f775efd7bed81537128cd`  
		Last Modified: Sat, 19 Sep 2026 08:33:34 GMT  
		Size: 18.9 MB (18941633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c465b2a9797cb9aa66330678e2abefadb51c5b14c339f1905a23350849a0c88`  
		Last Modified: Sat, 19 Sep 2026 08:33:33 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb9b45a35481efcbbbb0fc5a4125657145d7a4947fe06517776c41d7860f84e`  
		Last Modified: Sat, 19 Sep 2026 08:33:33 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9ccad1777fe64043055d0cdde6978c9e55e7c337e78fe1bd23c0e63880e5a86c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3795323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b33699cfdc4c428a90bedf39607212e8cff40cb891fcd00dda3302d67f706764`

```dockerfile
```

-	Layers:
	-	`sha256:ed1283d909a22e44fab6fcc82a2aab94b45c65d2f4e781eb7fd000636bedb2e6`  
		Last Modified: Sat, 19 Sep 2026 08:33:33 GMT  
		Size: 3.8 MB (3777568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:357ece8f0e06658d72f4b401c172de0fce46e5f0cef24342bddd80028a225585`  
		Last Modified: Sat, 19 Sep 2026 08:33:33 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json
