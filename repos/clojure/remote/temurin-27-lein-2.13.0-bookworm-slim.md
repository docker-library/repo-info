## `clojure:temurin-27-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:c1ad4874bea13e1a36a9067120ad308e4439071699246b56862f23080314c247
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:100289e7792a16b0246b5683eb35ac7bcaeccd87f1fbc5ab302670cb44b121c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144484715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2c4741d98fd6ffa477bad4d34b1507aeabce097fa4fe0150e15d0c576575f2c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:52:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:52:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:52:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:52:02 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:52:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:52:02 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:53:10 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:53:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:53:10 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:53:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:53:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:53:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:53:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d94ad6dd1632fbfbf20f9f307f0bc3071a3230d37f4f0015586ad7f2ee6d9751`  
		Last Modified: Thu, 12 Nov 2026 00:53:30 GMT  
		Size: 93.6 MB (93647885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71eede476dfe0d4ac02297c7d364eff106423c8e8e7a6590031376d504020a6f`  
		Last Modified: Thu, 12 Nov 2026 00:53:28 GMT  
		Size: 18.1 MB (18072707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9a750bd02a64a9339e260589ee80e13973020853324cd8a35a3f9e365e0d3a8`  
		Last Modified: Thu, 12 Nov 2026 00:53:27 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b2548541605efbe7da1cbc1e42633c34e83f0b44edd562c502229f7baae2c32`  
		Last Modified: Thu, 12 Nov 2026 00:53:27 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6333c4a735bc851ce0839e4d88d5ae0d7f0ef7c9d9a9705e2d90def7ac7102c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5627529d8f50347fdcdf7a328558ce527bb73f7cf7fe670bbb69c2bfd6a1c80`

```dockerfile
```

-	Layers:
	-	`sha256:ad0b31b4110051cbc6389f5bd4b292ab07513be1c56d1f88907cd3ce01e0d72c`  
		Last Modified: Thu, 12 Nov 2026 00:53:27 GMT  
		Size: 2.7 MB (2699977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa4152cfac4db03358dac702a5dbb455f7187e2c62ca860078c3300e58030696`  
		Last Modified: Thu, 12 Nov 2026 00:53:27 GMT  
		Size: 17.8 KB (17765 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ba894784172bddee488e0e8e0232f195c8fbe897154587d35dc0afc3931140f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143227475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d51e10c58cd5dce50c2ea5e8a63c058d18fd93c12b9c94827b3c94d11cd2a1e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:07:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:07:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:07:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:07:40 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:07:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:07:40 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:08:51 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:08:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:08:51 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:08:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:08:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:08:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:08:53 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67389f4d3b61fcf5dc137b04ff57c871537065a898c47f12e48f3450a1ea826d`  
		Last Modified: Thu, 12 Nov 2026 01:09:13 GMT  
		Size: 92.7 MB (92660443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bbd0b697fe2c89c00913de02c98fcdd3f58d6075aae02b6fd0b6c5aa4bf2c70`  
		Last Modified: Thu, 12 Nov 2026 01:09:11 GMT  
		Size: 17.9 MB (17906529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634e188cf02b1f037746070f7b068ed16013a33123ca53cb6955bce134a35cff`  
		Last Modified: Thu, 12 Nov 2026 01:09:11 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0ee386345170d2b660fc78df2ac9792c3ad62d76cc43fc51f04ee54aa0a99c`  
		Last Modified: Thu, 12 Nov 2026 01:09:10 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:17a80e53e131d0a380db55b8ad49bad04ae1a53c4302064f98d922af0e82d40d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b63cde04e5c90cca3c780de09508aaf279331b9923d07d5ba5ad637d8d6eed05`

```dockerfile
```

-	Layers:
	-	`sha256:6d90d785bad831d1a7862b9504f3b75d21465ad785edffb74aca7ff7196bf1b4`  
		Last Modified: Thu, 12 Nov 2026 01:09:10 GMT  
		Size: 2.7 MB (2699589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4953e4efd52779ae43083db518615370a12f56c986cabd13df203e2098683ed9`  
		Last Modified: Thu, 12 Nov 2026 01:09:10 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0a4c04bdc1d906d1a1512b845b5dab00b4affb760096e8a49c0d940afd41f4e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146814853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cccec15e2b69d6d6a034f2f6eb34e27a8185201c65057c7b24b6cb23f4ec946`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 02:52:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:52:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:52:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:52:51 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 02:52:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 02:52:52 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:56:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 02:56:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 02:56:42 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 02:56:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:56:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:56:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:56:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02c64fde149246e1dbcd66abe605690d715a442bae5549d2bac4eff3880950b`  
		Last Modified: Tue, 10 Nov 2026 02:57:38 GMT  
		Size: 91.9 MB (91925729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d563117eabb368ac20c0a1c86d6e308f51982d7093352552666e80ba93c35273`  
		Last Modified: Tue, 10 Nov 2026 02:57:36 GMT  
		Size: 18.3 MB (18279441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e06a988a6d4c4207e4444b5b5818e439869fbebcebb22b59f09681ea9cb25e`  
		Last Modified: Tue, 10 Nov 2026 02:57:35 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5360338cbbea9e840d89940eed49659980c85f98ce888aba6a9f12b83e121253`  
		Last Modified: Tue, 10 Nov 2026 02:57:35 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d4abaccd818e3628ce2e3a0b2389c9babfe6081c8027f4ef870893da78f2a4bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2701695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55eea1c1825daba4265080da8f3227d5f10c88b9bfad1033db93095731ffa2f2`

```dockerfile
```

-	Layers:
	-	`sha256:4ff1b0de980cd9a08b20f77a6415ab2d9801c921709a94fbcef49e6272715bff`  
		Last Modified: Tue, 10 Nov 2026 02:57:35 GMT  
		Size: 2.7 MB (2683885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2efd9a4eb18f0cb58b2e313305e901daf6bc2e860388ac853f66739ca66df855`  
		Last Modified: Tue, 10 Nov 2026 02:57:35 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
