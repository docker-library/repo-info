## `clojure:lein-bookworm-slim`

```console
$ docker pull clojure@sha256:a3535e3c6a42536bc704f753b68c5c9c18fd92c33111e5a900c541c30c78c0cd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ff795371a7ff0e62ade66ea3f749290a28850dd29b66553930af541815f76bb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143450675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd96db7a798c9bf7608e5195055a6e2578ae32c7dbdb4526abab9d791548736`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 17:50:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:50:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:50:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:50:28 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 17:50:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 17:50:28 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:51:49 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 17:51:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 17:51:49 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 17:51:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 17:51:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:51:50 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:51:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55242045798638ba1e63966dd2e014fd529ec578c96dfad8c569748c8ea087ff`  
		Last Modified: Fri, 20 Nov 2026 17:52:09 GMT  
		Size: 92.6 MB (92613907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55c93cfc83d73d871ac5561984d897b289b6f67600c3affdcfecea58f819df0`  
		Last Modified: Fri, 20 Nov 2026 17:52:07 GMT  
		Size: 18.1 MB (18072673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f29434c2d6cf9179e74fd8e920aa492a59f3fd17a62c1ff74b8970845648b4`  
		Last Modified: Fri, 20 Nov 2026 17:52:07 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8411e1739b8db08b1b46d91649eb07258a133cc38d435ca529b8da9f093713`  
		Last Modified: Fri, 20 Nov 2026 17:52:06 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f72b40ec02d655dd3bffec844ed9e3a9296f2cad4afa0dcd9422c2d3d2fb4d1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2722808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e82cb6880dd003822c9a50251d308d43123c92d9512fdddd0100f5ba2621d17`

```dockerfile
```

-	Layers:
	-	`sha256:c7fc067561d4d4a65d8fc2bd6c1e6247e07d9fb8c5aae2657bb2c642315308d0`  
		Last Modified: Fri, 20 Nov 2026 17:52:07 GMT  
		Size: 2.7 MB (2704381 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ec3411b39cee4734fc25767f47ae9efb44df8f1f280c08970a419722fd271f5`  
		Last Modified: Fri, 20 Nov 2026 17:52:06 GMT  
		Size: 18.4 KB (18427 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bbfe616b9361e647f2fd59b5cbbf4b272bd09ff80f8d19a787188343cbb9bb99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142130613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57071cd7c301bdc466957976abdfc321740bcace81fa966870c4e55bed3f5a22`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 17:45:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:45:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:45:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:45:56 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 17:45:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 17:45:56 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:47:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 17:47:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 17:47:16 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 17:47:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 17:47:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:47:18 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:47:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0823abeb75cdb55e3a695b989ce527690233eeb16e306548df946e16c5348aed`  
		Last Modified: Fri, 20 Nov 2026 17:47:36 GMT  
		Size: 91.6 MB (91554030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa95160a4283415d41096aff3bc615bafbb5664ec9ddc60bb72203a78a58880`  
		Last Modified: Fri, 20 Nov 2026 17:47:35 GMT  
		Size: 17.9 MB (17916092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10dd201390484c1c042d7ca938a6b2247715bc347d613045f1800c52ef288c35`  
		Last Modified: Fri, 20 Nov 2026 17:47:34 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:072cdb9efd3497fa2aa5eb6b0b51f540cc1bd99d90f197e2bcc3102212acbe19`  
		Last Modified: Fri, 20 Nov 2026 17:47:34 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7a676bd1796e1fe2df39d0fc6e83d6a57b7ac5c0be2161bfb765541703056443
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2722590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2739bb3c29f676b0cf9d20e5bb6d1b1782c1b71e00779a0e2407367902fdda9a`

```dockerfile
```

-	Layers:
	-	`sha256:e7225d8d42e6c564f869e1938a9fc4f991019046d52375cb07d24f5fe64491f7`  
		Last Modified: Fri, 20 Nov 2026 17:47:34 GMT  
		Size: 2.7 MB (2704017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a6436ee36c7b4a88e1005c9dc71b59c9152fbf00bb036fd112d04501d786cba`  
		Last Modified: Fri, 20 Nov 2026 17:47:34 GMT  
		Size: 18.6 KB (18573 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:89cc9049ac6808451a3625f06c3bec4018e9c408b5795c9365e1fcecadff3d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145009126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8851bddef8d0d0357cf5e68f62dd668909b7033bd044dae3e0f5b799415af0b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:46:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:46:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:46:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:46:52 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:46:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:46:52 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:50:04 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:50:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:50:04 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:50:10 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:50:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:50:10 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:50:10 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f672a32a5a7d2c45be508745f49ef21073e964225973cf17ea017ff8c3732852`  
		Last Modified: Fri, 20 Nov 2026 19:50:48 GMT  
		Size: 90.1 MB (90119618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78dd3a02805467842e908adcbbe570ab9d4a2d541f7392e0728115d4f8931f2d`  
		Last Modified: Fri, 20 Nov 2026 19:50:46 GMT  
		Size: 18.3 MB (18279808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaedf7d8e54b0696a5942e39117db709d90e8b74ea160a307f348b4aadfa0bb0`  
		Last Modified: Fri, 20 Nov 2026 19:50:45 GMT  
		Size: 4.5 MB (4515205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd49159abbbc8d8d3aa84ecc1e4e17735cc2f19aa903f25e0c2579c8d6a5acfc`  
		Last Modified: Fri, 20 Nov 2026 19:50:45 GMT  
		Size: 903.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fa2c05103b869e6bca637a53da8ce777b59adef158dc8c583949d1a483b0ab77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5593fb82769b6e5037fbe4b145d7606ed74ed11c6cf2b20a3829b13189d353b`

```dockerfile
```

-	Layers:
	-	`sha256:da028428e61667e4ba4c6e019dafd80f86810392a16ad4cbac0933d869c704f5`  
		Last Modified: Fri, 20 Nov 2026 19:50:45 GMT  
		Size: 2.7 MB (2687677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ef5df07338039a94dcb3522dfeab083050cbf95767aa904c828a8de4ba9d320`  
		Last Modified: Fri, 20 Nov 2026 19:50:44 GMT  
		Size: 18.5 KB (18484 bytes)  
		MIME: application/vnd.in-toto+json
