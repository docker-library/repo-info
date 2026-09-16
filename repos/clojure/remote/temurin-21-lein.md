## `clojure:temurin-21-lein`

```console
$ docker pull clojure@sha256:a45ea7cdf7627b0bbe6411ee067e0844f1e6ea37d28c398792557d0f7d76e3fa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein` - linux; amd64

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

### `clojure:temurin-21-lein` - unknown; unknown

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

### `clojure:temurin-21-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:382c8de8c3d77b0462f894c3f1d8d275c0ac2c648b21b23fe4de80d05501f58b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229257927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51ed55ac5b6b1ca18e80d54a5c28caea59203fb74331eeeb28c17da5e0380d78`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:59:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:59:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:59:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:59:19 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 09 Sep 2026 03:59:19 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 09 Sep 2026 03:59:19 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:00:29 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 04:00:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 04:00:29 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 04:00:31 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 04:00:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:00:31 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:00:31 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:992dbcd98d9d56da443ef7b2926632a2e7fb21a5f7454501adf1da617b549055`  
		Last Modified: Wed, 09 Sep 2026 04:00:54 GMT  
		Size: 156.4 MB (156401916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1719dcec35149873166cc5eff1bfb03a236038094f0a0a91950024b058783c`  
		Last Modified: Wed, 09 Sep 2026 04:00:51 GMT  
		Size: 20.0 MB (19956725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a4eb14aa7190b8c30681291f4bfc492064993bdc583c549ff3ce0e5c51eea2`  
		Last Modified: Wed, 09 Sep 2026 04:00:50 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0f7d59862b07ba44486662df5d49ee6591e4b7d8caca1862db33952e82303e`  
		Last Modified: Wed, 09 Sep 2026 04:00:50 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:b53e2b401e20518ffff24e87cb14e0ba5e0daa8656ad175935b7c68660274a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9408bfd06a03e5e723a2faae45dd327a2aa347b53819ae9dcb2703a1a436c2a3`

```dockerfile
```

-	Layers:
	-	`sha256:ff109097fa6c2a16fc43f64ff143b2a59deda5eea6177dbfafdd0751b99f3773`  
		Last Modified: Wed, 09 Sep 2026 04:00:50 GMT  
		Size: 4.3 MB (4291396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e16ced125c02a4d9b1160dd02ef0a75f51829ef819a9de402ecb900cf0fe647c`  
		Last Modified: Wed, 09 Sep 2026 04:00:50 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein` - linux; ppc64le

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

### `clojure:temurin-21-lein` - unknown; unknown

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
