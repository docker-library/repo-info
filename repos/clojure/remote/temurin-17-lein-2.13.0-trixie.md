## `clojure:temurin-17-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:89a23706b9579bf1e07d9c49cdcc70df79cf61978723597929acb6ddc07ea672
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:e87a9569075699ab1a7b9d156be070d7576e58492e4ea359b6ec8f5ae861b045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.6 MB (218614755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a0fb6c9586b21010eabaae58da91c2b57c14513698ffa3cc5bf543bddc85aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:14:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:14:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:14:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:14:49 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:14:49 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:14:49 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:15:57 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:15:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:15:57 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:15:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:15:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:15:59 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:15:59 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630e0dedd8ea332128cc8c85854f68cc3a5c2e0332d12064012f02fba1ff377e`  
		Last Modified: Sat, 19 Sep 2026 01:16:19 GMT  
		Size: 145.8 MB (145822695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c81e6adea548db203a585a79cf528f8b28262a217c62c9b6edb1e982f80738`  
		Last Modified: Sat, 19 Sep 2026 01:16:16 GMT  
		Size: 18.9 MB (18896721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c417ff7f9778ab3f376181469a90782eb0e40f6df3143948b0c5177aeb3bd8`  
		Last Modified: Sat, 19 Sep 2026 01:16:15 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77ad43b1df04ce10f163d0be2d41da7eacb671574977c71a23a8debd9c44231`  
		Last Modified: Sat, 19 Sep 2026 01:16:15 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7bc571dca3aa049854df0a70e335925a5956fc7e859a622d1763c7db7ed4e7aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f17d3761a6f66a648a550ac068b08944c26c63c7b8974e3f8cf469489c41c05`

```dockerfile
```

-	Layers:
	-	`sha256:b436ac50018bafd5cf85b4e4e16999304fcfa6f92557f95dd317d365c6d21f7a`  
		Last Modified: Sat, 19 Sep 2026 01:16:15 GMT  
		Size: 3.8 MB (3827739 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4689a5e6e6a2cf9f27c4bb21f17a3f39a68ee267c14cd859df3fd75e051442e6`  
		Last Modified: Sat, 19 Sep 2026 01:16:15 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9c0195e2fcf2ca32aec5fc89a280619b34881c929ef31b4a650aefdf05a1b2da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.8 MB (217756159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1320161420054422163d1df603aba6a5c933267cd55bbb1a79dd8fe6be7d1510`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:22:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:22:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:22:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:22:01 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:22:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:22:01 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:23:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:23:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:23:14 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:23:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:23:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:23:16 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:23:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45bd6eeead16e1fd8c5347f2405395dfce76340082f83e6c30c408c9966f0905`  
		Last Modified: Sat, 19 Sep 2026 01:23:35 GMT  
		Size: 144.6 MB (144647462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09324e5e46f3eb63bb325decb745e6c24cb39d525aa9a2e19598b364065ea80a`  
		Last Modified: Sat, 19 Sep 2026 01:23:34 GMT  
		Size: 18.8 MB (18844202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a71c49fb1309a8cd87beeee3f240339b6a6ea81598cbf5f9a7104eab2599029`  
		Last Modified: Sat, 19 Sep 2026 01:23:33 GMT  
		Size: 4.5 MB (4515229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d856224cbb5df61269d50e01c2fd3a973e656a7f6483b8fa592f5c677bd4432`  
		Last Modified: Sat, 19 Sep 2026 01:23:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:45a566407783b058fde822bac5b2504988a10698e7d5c6b6d65c49acc25ec09a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3845818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93a85f5012e725d4325686070af5a3bf6ac64f8ed5a14e9e29cc37079363cc4`

```dockerfile
```

-	Layers:
	-	`sha256:a5d41379a925ddb0dcacc44fe9b25187db8f3505b3edbda376988d1dd1116f5c`  
		Last Modified: Sat, 19 Sep 2026 01:23:33 GMT  
		Size: 3.8 MB (3827979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:339733842ce698541423316bef084871792a5b3f8e06e2c613edc7fb4b9b0326`  
		Last Modified: Sat, 19 Sep 2026 01:23:33 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:2844539bd165731f9354db4c38f8de05627eb5298dbd95711c6b40459be568a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228620364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423ac3af3cf6e3c61967eb46f481973e56dd11cda18d2b1adf014c2d1a8988c0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 10:40:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 10:40:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 10:40:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 10:40:46 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 10:40:46 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 10:40:46 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 10:44:15 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 10:44:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 10:44:15 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 10:44:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 10:44:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 10:44:19 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 10:44:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e97171d710898b8837b880924833783b0d54fb957ef5c4cea163b9e766e5f847`  
		Last Modified: Wed, 16 Sep 2026 10:44:59 GMT  
		Size: 145.7 MB (145674285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a3d227babadb70d61877a03f8a663240afa1ba373b42d4bb436982992036b7f`  
		Last Modified: Wed, 16 Sep 2026 10:44:56 GMT  
		Size: 25.3 MB (25266146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d027cd21c5aa7e0373b1b87f33d2898c8bf7ed532632b95ac37541eb1057821e`  
		Last Modified: Wed, 16 Sep 2026 10:44:55 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c01962fde6738daa3303ce72a264a0551496774bff3aed6bc570c97be667d6`  
		Last Modified: Wed, 16 Sep 2026 10:44:55 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3c2f0c763581d25539aa3b7f8783c81fdefef7bedd07f61701638ddc2f69ea42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3841630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b7fc5df0f7a415d0a6059b1628df8a42007625451a366771cf685a32773aafe`

```dockerfile
```

-	Layers:
	-	`sha256:3dde15de203d8ba729559056caefcb182d47d0bd9120ed130ecba946667a3dee`  
		Last Modified: Wed, 16 Sep 2026 10:44:55 GMT  
		Size: 3.8 MB (3823868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2af4722dabfe5800b768317c9cdb548f75c240f424c755d0f0bb8de3f93c53ab`  
		Last Modified: Wed, 16 Sep 2026 10:44:55 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
