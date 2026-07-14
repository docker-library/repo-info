## `clojure:temurin-21-lein-bookworm`

```console
$ docker pull clojure@sha256:e8544e4adee60dff03907b4aa04b73ee7881d35b2eda4c70cbb0fd2829026df2
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

### `clojure:temurin-21-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:7dd6f61cedc2cdb56664ee12d4e384e4d25f067939de423335fa1e741ae85d92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231298680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c69e774f76ee362aba66bc91e33fdd26a77422504ad316e78dd4133946b4a3b6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:19:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:19:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:19:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:19:37 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:19:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:19:37 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:20:41 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:20:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:20:41 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:20:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:20:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:20:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:20:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9892450f01d2a014185f63ecfc6fa799b33941ab74b936cabe6114e47c2a9af3`  
		Last Modified: Tue, 14 Jul 2026 02:21:04 GMT  
		Size: 158.2 MB (158166960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5645d19fecc2e42c4950690a9772051aa4f4ace265db577f538daf7985b0598`  
		Last Modified: Tue, 14 Jul 2026 02:21:01 GMT  
		Size: 20.1 MB (20118713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0681cdc2afc3f6bfdb9359d99caaed1dd7b49da3e7690e8c43056db536f0e6`  
		Last Modified: Tue, 14 Jul 2026 02:21:01 GMT  
		Size: 4.5 MB (4515175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aba3f5365cfbf42328c1a77cfedd026e83feb0ea1b560cc49799d27a93e774f5`  
		Last Modified: Tue, 14 Jul 2026 02:21:00 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f4d52172f990dc722c150cbb5312d533a8b5d1f97ec612be1a3cbdb4518b0a4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c15c4fb89d1e6b8817724d72b713f8a891fee32564dc0adb2d96d83524882cd`

```dockerfile
```

-	Layers:
	-	`sha256:faac9b63b7a1ee8b672dbb335c5d063628c79d5ad0fc07f1a5f91ef2927083b2`  
		Last Modified: Tue, 14 Jul 2026 02:21:00 GMT  
		Size: 4.3 MB (4286556 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a33b549f8ddf3eb50dd1e436b10e55228415bc3b77c9f54dfab0ea0da996d7c3`  
		Last Modified: Tue, 14 Jul 2026 02:21:00 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:11de2299374e2e533fb3ad51c7c45bffa7c44a18b5effe135076b5ebf2027f9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229311386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0201830d339e607fb61d72a0bbde6c188d7836734beae4ea458867bc2afab07b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:27:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:27:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:27:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:27:08 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 02:27:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 02:27:08 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:28:14 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 02:28:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 02:28:14 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 02:28:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 02:28:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:28:16 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:28:16 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2479c082fb31fc8b72cecbe8d11c54e03b6c2b8f584f0d97037b93c1a3721bc0`  
		Last Modified: Tue, 14 Jul 2026 02:28:38 GMT  
		Size: 156.5 MB (156461236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9109c75f581615b255701d63157cca713144b4eec31a81e30a5a7e66940f949a`  
		Last Modified: Tue, 14 Jul 2026 02:28:35 GMT  
		Size: 20.0 MB (19950806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b1b1899c4279f9075e7522bb93a5bfd0096df79fb6880d2a8cd06490233c0f`  
		Last Modified: Tue, 14 Jul 2026 02:28:35 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5691a9a9066784ad176d4414f08509894a0b70b684573758f3ee08e6aaa91f3`  
		Last Modified: Tue, 14 Jul 2026 02:28:34 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c5a9470c82ef77705b6152c21da11a6e40a7264341f81057eea75805687a4383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dfb0d16f3d31582b50faac1f946b454201131e0ce5929d321591f2bf938a5be`

```dockerfile
```

-	Layers:
	-	`sha256:794405110904be6acb9582bc66a9bff61a099491dce12ed4a04e507cfb7845d9`  
		Last Modified: Tue, 14 Jul 2026 02:28:34 GMT  
		Size: 4.3 MB (4286195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25a160bcc3b5ddc5bfea3bf62206ba1e40b42a1ac7382d666a20ea1e06da9e17`  
		Last Modified: Tue, 14 Jul 2026 02:28:34 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:81c74a47564d8012bbc975bff8bd405e152ae3d23b6db26399ab76f8d1e71948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235537990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27d00404208ff8e14eea64ab656be8dccda832b65165454c8103a99fd40ea936`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 07:19:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:19:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:19:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:19:07 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:19:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:19:07 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:21:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:21:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:21:47 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:21:51 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:21:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:21:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:21:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:55b0e891f4e8dc14bf4bc7e853254fcf1f3ba5a8e8e3c07c21e7dd5bd6d87882`  
		Last Modified: Wed, 24 Jun 2026 00:27:34 GMT  
		Size: 52.3 MB (52346847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9336473475900452c48606b59d65c92a5631d6774370e5dc92b53680a448ea`  
		Last Modified: Thu, 02 Jul 2026 07:22:36 GMT  
		Size: 158.3 MB (158343220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d10f2ad49c058b28ed580b1c87c9e9e7d3b7df11a11f9cacd930bac61dadf10`  
		Last Modified: Thu, 02 Jul 2026 07:22:32 GMT  
		Size: 20.3 MB (20332271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b563c6fadd7c1238c1cd7cee71a4154d24d97546e3596e61f441962a2eeebda`  
		Last Modified: Thu, 02 Jul 2026 07:22:31 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcd4b26e0baac67e0564dc4c2fdc260e1a652a73129a391aef16cfe457427ed`  
		Last Modified: Thu, 02 Jul 2026 07:22:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:61bbc5fc73fb7a068bfe38c25757bc699624cf6519d7e648c79635ed6cd3eed4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:215451edea095f58276e0bd87af07febe1269fd8aa0fd4110a1571a711ace4c4`

```dockerfile
```

-	Layers:
	-	`sha256:8093040698633491a9e3b5bdc9e604c800e7a350cc11143ed0902fd784d9e1ed`  
		Last Modified: Thu, 02 Jul 2026 07:22:31 GMT  
		Size: 4.3 MB (4288393 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec6ea3891fef3221a9a6075119ab1f6fd8f9266a17b886ba3e5c135ee7fd6e15`  
		Last Modified: Thu, 02 Jul 2026 07:22:30 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:545e9aeffe86104f1238990323ddac874c8ced96ea4a118d820c2dc8a465b015
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218831656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7053d23065347826c8111202fd38b62171c5e43eebf5daef8190c57d72659a9b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:30:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:30:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:30:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:30:37 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 14 Jul 2026 04:30:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 14 Jul 2026 04:30:37 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:31:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 14 Jul 2026 04:31:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 14 Jul 2026 04:31:44 GMT
ENV LEIN_ROOT=1
# Tue, 14 Jul 2026 04:31:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 14 Jul 2026 04:31:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:31:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:31:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196811e35c87249f8019aa2ba86efd5df75b8ca9e73b66cf9e78415cccc45346`  
		Last Modified: Tue, 14 Jul 2026 04:32:15 GMT  
		Size: 147.4 MB (147388351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af081a34c1c8e92695999ef698e3b50265f96ad6bd32fd0c9f0fe1de5505743`  
		Last Modified: Tue, 14 Jul 2026 04:32:13 GMT  
		Size: 19.8 MB (19770385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1f75936b715247ba03e1bf34250c2a79d70c2788bca9f3a082b20b2b6a277f9`  
		Last Modified: Tue, 14 Jul 2026 04:32:12 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:355fa5cd8b7027830f4a0891b4d62e5168e82221973458032160f7f6deccfb24`  
		Last Modified: Tue, 14 Jul 2026 04:32:12 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:72d3c6f5303614254f0c912c0f30e4e5f9eb5f60ef08a07865a52870a801267b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4296758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13de9f8dd90613b4690b69830cbb5d8c06c5ade7b5e2edf241ccda869df4b0ec`

```dockerfile
```

-	Layers:
	-	`sha256:8256e94b5d560ace51465f25f55d0bcf1d5c7cfab0de86eb42ae013ba9203748`  
		Last Modified: Tue, 14 Jul 2026 04:32:12 GMT  
		Size: 4.3 MB (4278370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef69d2b71de5d5e6ee4ab6e8229412756c62e32199535f2e38577d803c6fa162`  
		Last Modified: Tue, 14 Jul 2026 04:32:12 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json
