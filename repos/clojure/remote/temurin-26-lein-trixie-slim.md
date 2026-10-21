## `clojure:temurin-26-lein-trixie-slim`

```console
$ docker pull clojure@sha256:7e33097fba54a5450e3c77aa96864af20d6d6a84e1d8414ac8f008fc9b6891cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:59327096f17ff71354a6498a5710bf1b6674c3176771cd3a089d4e691912b50c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.7 MB (145664011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a7b502b58de46b3db72e616f6f329cf7d435dc2c74b1c14f6f359f1c880314`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:21:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:21:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:21:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:21:22 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:21:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:21:22 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:22:34 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:22:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:22:34 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:22:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:22:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:22:36 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:22:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3256eec611195d8ed1f37e530ee04381d1e8e1b4a542ad438fc81da608ad315`  
		Last Modified: Wed, 21 Oct 2026 01:22:55 GMT  
		Size: 94.6 MB (94563496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33bf70417674b959b24d5bcce71f00a276bf4c5849ab530f32ff4552d6407915`  
		Last Modified: Wed, 21 Oct 2026 01:22:53 GMT  
		Size: 16.7 MB (16741293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae539e50e1061f64f49cce96c3d18fdc4e9819303ce2f318302e699b4ef1235`  
		Last Modified: Wed, 21 Oct 2026 01:22:52 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f66eeb9e5e5e54d2c690e73cc70c1bb99627e0ce3305f652938a73e5b57f67c`  
		Last Modified: Wed, 21 Oct 2026 01:22:52 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:99c1885a31678661891a04e1b7570f23decf388718322cdc05cba84551f629c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2354393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d396056026761a3eb4e29fcd1dbcd40a6fd45f3b4842281250bc1c495908278`

```dockerfile
```

-	Layers:
	-	`sha256:956cd9d05611a7b2110c7899ba08fc3c1a74e6eb48ada91c519d2f1c9c9dc5b3`  
		Last Modified: Wed, 21 Oct 2026 01:22:52 GMT  
		Size: 2.3 MB (2336647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:388c556cf42df85db2514c1e12ca640949df13e2d8420db031963b55564ff5b7`  
		Last Modified: Wed, 21 Oct 2026 01:22:52 GMT  
		Size: 17.7 KB (17746 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e0dfdb5c2b646abca570e0768037f7f93d013a913368c120245e78ef4d6b0863
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144968216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc5eb4f0428d1e37d35366baa5946079baff7f7fa99162b32ef6ec872588ceb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:27:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:27:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:27:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:27:26 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:27:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:27:26 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:28:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:28:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:28:43 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:28:44 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:28:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:28:44 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:28:44 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0002c6dc3df708fa4fde869b34af8f9dbf7419554a066cc16eeb55fbaf36dd89`  
		Last Modified: Wed, 21 Oct 2026 01:29:03 GMT  
		Size: 93.5 MB (93543584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802abfb13b0e6fcf7e6aeba9571c7ebab021a89b33c31d3a96e38470ad10ab24`  
		Last Modified: Wed, 21 Oct 2026 01:29:01 GMT  
		Size: 16.7 MB (16708538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458b0419e12668a0bda39d9eca51dd2d7fe241c2eaefffdada69609e4a436e73`  
		Last Modified: Wed, 21 Oct 2026 01:29:01 GMT  
		Size: 4.5 MB (4515185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a11cddad759e4f3ef75506e3740717e74f90d79d656b17c8655acbd32d759a0`  
		Last Modified: Wed, 21 Oct 2026 01:29:00 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:49790482cb69878dadc2e00f59b4b68e6e66491353e4ada3a2f14fc37627c9a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2354121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc0ea820b8fb31f55a667de15dcae74c1ac78ffc4a6bf406606baff7f0dd5d38`

```dockerfile
```

-	Layers:
	-	`sha256:c8ce73f4e90ec2343a2c778a7b96cecf1d30a5676d388468b85c99fadda7ed27`  
		Last Modified: Wed, 21 Oct 2026 01:29:01 GMT  
		Size: 2.3 MB (2336254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a7d76e9078a3d8e4937a18a96ace25e874cc8fbbb7c6da32b1146e15db7b07e`  
		Last Modified: Wed, 21 Oct 2026 01:29:00 GMT  
		Size: 17.9 KB (17867 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f1ab2287acce768acbb10ac4fe5b6ad24af7fa0c2f28f2c2f24fbd23d096db89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.3 MB (148300763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cda0b18df86ad7795ebc58260aab3ebb98d800e2d7b0989f67ddcb9cd619fa4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:44:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:44:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:44:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:44:59 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 06:44:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 06:45:00 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:48:24 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 06:48:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 06:48:24 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 06:48:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 06:48:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:48:29 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:48:29 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6275636597043f36e4bc7c271ac19ada4a6931e012217b3564adbc0c86125c7`  
		Last Modified: Sat, 17 Oct 2026 06:49:07 GMT  
		Size: 93.4 MB (93350847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:902550afb846dbfe1f8792e3e9c595159daa449c1c74ba1bf467f5f064367c51`  
		Last Modified: Sat, 17 Oct 2026 06:49:06 GMT  
		Size: 16.8 MB (16782672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23c415909a74b8926dd28b73328c770570dc96487fbc70d6445704b225100915`  
		Last Modified: Sat, 17 Oct 2026 06:49:05 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1762ab37ce6dd5439e097a131fa6cb619b2a4422bb2d2fa26135eec37c13540`  
		Last Modified: Sat, 17 Oct 2026 06:49:05 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f1e061500a6f17fdd8e4eddd6c472c311984f07bde36a200b4379d9eaa7eea22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2340629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2162b352b38eb505f6798d2cf98dafad2925b25da9baaea4ce9b9f38d8b130c1`

```dockerfile
```

-	Layers:
	-	`sha256:f2dd60ce87941600b5194749e40c7216bd60dfc8a1b7ec5064f19bf263566669`  
		Last Modified: Sat, 17 Oct 2026 06:49:05 GMT  
		Size: 2.3 MB (2322840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:366b348d166e1273504ffcc13ba87e6c547cfaede42b034372edec9490bb0a72`  
		Last Modified: Sat, 17 Oct 2026 06:49:05 GMT  
		Size: 17.8 KB (17789 bytes)  
		MIME: application/vnd.in-toto+json
