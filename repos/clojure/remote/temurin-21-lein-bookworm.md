## `clojure:temurin-21-lein-bookworm`

```console
$ docker pull clojure@sha256:1d131e0a0d25b8252b58f17baba6be34dfaf57b19c2fd7ebe77afa033d584d27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:17ecd8ea08516f21fe3ccf5d870317cc74d9ae6283caca6336da63dbc96f98dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231267248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2817cf5d62ed23cb4ff808b7a27781d1a4370cac9ec5ba469ff00f38be847e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:35:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:35:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:35:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:35:00 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:35:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:35:00 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:36:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:36:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:36:09 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:36:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:36:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:36:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:36:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ee760fa2c32a97e0deba8b31d2e76d97d3dd1f2be3d904f0cebd92dfe83a32`  
		Last Modified: Wed, 16 Sep 2026 04:36:32 GMT  
		Size: 158.1 MB (158120292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1841b2dd016aa29f233e9b3d7bd264af5d3c4d80428103cc316e4ee957c76041`  
		Last Modified: Wed, 16 Sep 2026 04:36:30 GMT  
		Size: 20.1 MB (20133955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c59d4f333c3a09e5fd4df60b79c521bf0da9068ca733bd35dd78ad43baa876`  
		Last Modified: Wed, 16 Sep 2026 04:36:29 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d73a249fe879df03278654b9065380c84c1cffd3c7b70955561750df67986e09`  
		Last Modified: Wed, 16 Sep 2026 04:36:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:505d3a2ad5ce086483208e7b698d2dd9ac9d6ffef96d7636637dd0d1ca003410
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e01b78477ac77af041dfd4ceb6267b570a4153374697862da95e8226c3441c`

```dockerfile
```

-	Layers:
	-	`sha256:1a1cd82187cceb95f10352f872300d2cf8dbf0c04cbe420422a1f57f0692479b`  
		Last Modified: Wed, 16 Sep 2026 04:36:29 GMT  
		Size: 4.3 MB (4291757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc6908813fda3c50a2774aa6ba67322e2c550ebe521b7a1da700afe9b119529e`  
		Last Modified: Wed, 16 Sep 2026 04:36:29 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:60b848f06f117464c2fb2b3d79693c62da7271ca5a2bbd555aab433314b597af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229257587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3112b1eecef97b16a521f982ab8e9ef67e8e451617b13c3b5abdb6f25144880`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:35:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:35:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:35:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:35:39 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:35:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:35:39 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:36:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:36:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:36:48 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:36:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:36:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:36:50 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:36:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8452036d14b92d873bc367fe4f153b6db999e4152c37866236379855ea09df7`  
		Last Modified: Wed, 16 Sep 2026 04:37:13 GMT  
		Size: 156.4 MB (156401947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a0f3205a3c425985e574525e8d18d17a80dc6e6cdac045ca41467db62402888`  
		Last Modified: Wed, 16 Sep 2026 04:37:10 GMT  
		Size: 20.0 MB (19956334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9891c174209cc7b2f50dbab552073f3e5a9b5ffac45f289b9f39de6eda2c8872`  
		Last Modified: Wed, 16 Sep 2026 04:37:09 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa0b722f4352c8b06bea98d436f60bcc5f16bac71f22e428f48db80b72432e8`  
		Last Modified: Wed, 16 Sep 2026 04:37:09 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8dd061c8e619d0110e9e2d42405f527de0731c215b660f775b284baa2c3110d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cee2f0f971ba7259053934ed3b22dc118ab5ac91d35ef3b810e0f56377f2df8`

```dockerfile
```

-	Layers:
	-	`sha256:a6da4f5b2925341ae6cccbd7dd4c90a242cd46ebea8222968d1b8e2fe0114a3a`  
		Last Modified: Wed, 16 Sep 2026 04:37:09 GMT  
		Size: 4.3 MB (4291396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b5253d8b48d2b18e962b062ee647d3e64744d031c18c4ee6d4260275a679762`  
		Last Modified: Wed, 16 Sep 2026 04:37:09 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:a9df1c908dd77a3982601255c09ca2c4d4999dede5293e990b967f5cbca22510
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235480506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3a443778b73d3a2ea40ea56ddb9bec668aaf397825a0b74ed05110748497ca`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:20:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:20:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:20:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:20:30 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:20:30 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:20:30 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:05:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:05:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:05:16 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:05:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:05:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:05:26 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:05:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f14408da35d1f050a1b6d9bf3b1a019bc9d47db0dbdeb7a4fa6d6c3e4a0c970`  
		Last Modified: Fri, 04 Sep 2026 00:22:07 GMT  
		Size: 158.3 MB (158274895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d896ef768c648f9b83a9abcf1792ff6a3abf4fb914791388d4785c869cdcac7`  
		Last Modified: Wed, 09 Sep 2026 11:05:52 GMT  
		Size: 20.3 MB (20348189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e6b6b02fb96c05f2734e399f9620c134890395d429eadc748badbd37bf2976`  
		Last Modified: Wed, 09 Sep 2026 11:05:51 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c615a344a836d4614153353f5195d54fb932dd3eaa2996ac8af6203732beb4`  
		Last Modified: Wed, 09 Sep 2026 11:05:51 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:87897b2ed17cebacf48fb290c3e2fc60fa77e6c06f168f75dddb0a539f3d1ce7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4312074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51013a73bb8b2d77e00c6ff2af6ff3930e711f26be445f5b5a2c060df2f3d93`

```dockerfile
```

-	Layers:
	-	`sha256:c674ad802e01810d366da2b760ae1150762697875df6150be3a91b284d30a584`  
		Last Modified: Wed, 09 Sep 2026 11:05:51 GMT  
		Size: 4.3 MB (4293630 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d530834db186f68e31d4720bbcc7feb1954facfca43eff03734b081fe577f89`  
		Last Modified: Wed, 09 Sep 2026 11:05:50 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json
