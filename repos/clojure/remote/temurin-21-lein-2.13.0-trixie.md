## `clojure:temurin-21-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:be7cf66fe25f80b918a9ea108a5a2cc2aa3054221e02643ae9da7ac092bc5173
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:d307a9fc612988a880f2669f5f63781d3d4e229764ae2fb8643dd7724bb96b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.8 MB (236799930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b00681df2048a08896f0ad73caa66836fe8850571027e540b064d15bb335e217`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
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
# Wed, 16 Sep 2026 04:35:40 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:37:01 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:37:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:37:01 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:37:02 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:37:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:37:03 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:37:03 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a682e359d525eeaaadd74fd20eb13248db8048e1f019773b145a1011d5603f2b`  
		Last Modified: Wed, 16 Sep 2026 04:36:17 GMT  
		Size: 158.1 MB (158120292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9456a713f6647d9b8f42cea1c03d33fb188ca9b648558d73712f89ca35fbaab7`  
		Last Modified: Wed, 16 Sep 2026 04:37:22 GMT  
		Size: 24.8 MB (24826208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09357e00f528b8179b77b2e03757702ccf9dfb066fce5fe0e3d6c573512d37de`  
		Last Modified: Wed, 16 Sep 2026 04:37:21 GMT  
		Size: 4.5 MB (4515171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe246de5095154fe8a76de95dfa184ebc010a048a7d049284f4af5fb19a55ac8`  
		Last Modified: Wed, 16 Sep 2026 04:37:21 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:897cb0a68fa3eaa6b7fed12b91b8549322131d0ce2af8bdee2ca6037ce2eb247
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3842438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a435c32ce5d66f0343e79be6c27b480470c760b5257c696eb3263a15ab39013b`

```dockerfile
```

-	Layers:
	-	`sha256:4239bcca6589ad10e41c2cc6d66ee9808bf9d5e11a19ed1bd7632ac239d2cfa6`  
		Last Modified: Wed, 16 Sep 2026 04:37:21 GMT  
		Size: 3.8 MB (3824720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95b37ac31005339d9de57a0ff0e73caefa67e790e1dbf267760975195f08646a`  
		Last Modified: Wed, 16 Sep 2026 04:37:21 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b03ffd096aaa4c969b8de2c5a6a1cae4cfd10c3196338e2cf212f0f356b47049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235715672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591c6b72757cc00f63e148488cd4fb2927b293bb908763e39922b3e60a8fdb31`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:36:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:36:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:36:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:36:01 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:36:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:36:01 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:37:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:37:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:37:25 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:37:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:37:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:37:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:37:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f409fb8f19b9fa30d03fb60728c7f8aa8535e7eb93bc5fb09db55fac73606fa9`  
		Last Modified: Wed, 16 Sep 2026 04:37:50 GMT  
		Size: 156.4 MB (156401918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7321f39084ba5337c3f52df33a4664234c8b84c0bd95e2c6ca7618776d801e51`  
		Last Modified: Wed, 16 Sep 2026 04:37:48 GMT  
		Size: 25.1 MB (25093263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0fc0f5fe6c080811a41a3b7d2ed2a126e4db6591235f25f1083fabae026c8aa`  
		Last Modified: Wed, 16 Sep 2026 04:37:47 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7acef9a5809200b78de64cc79399c5cfa6e37be3dd08965445e101fbae7ebef2`  
		Last Modified: Wed, 16 Sep 2026 04:37:46 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1700300996cf68b77154273a44fc0810488bead4a78623595fe5663211f2926e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3842799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32655ee743f40af18c7ece1fc6c23659569df9717cde2c4cba9e7eef5ff3f088`

```dockerfile
```

-	Layers:
	-	`sha256:41379d98ee6361a8e866e163dd34900a635379c31d6d3b681c4223b324c41225`  
		Last Modified: Wed, 16 Sep 2026 04:37:47 GMT  
		Size: 3.8 MB (3824960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0d212eabec9c3b540c478bff82e7b75944c8d1a7dfdbb58fb8c088e1cf16428`  
		Last Modified: Wed, 16 Sep 2026 04:37:46 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:2e6ad95935d70a14c8de2fc0ff04792f130f2e9d259e358690138c5379ef88bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.7 MB (238664391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:260aa76adddaa05062420100d13dde62a8ae98585233aa8392d96632ae281d71`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:24:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:24:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:24:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:24:31 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:24:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:24:32 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:09:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:09:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:09:52 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:09:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:09:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:09:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:09:56 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287354e4c6ec2cae513d4cbacde250853a1371b3e972277d907395058c66553b`  
		Last Modified: Fri, 04 Sep 2026 00:26:22 GMT  
		Size: 158.3 MB (158274892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c53add64fc20feaa84cc5fd870738ce6b277b4d4dbdcf777052404db1bdfcf82`  
		Last Modified: Wed, 09 Sep 2026 11:10:27 GMT  
		Size: 22.7 MB (22709594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:277f7854182030d24eb78cf5476da4fed6734e1a8b0c1b3461a4a4af2d4b7805`  
		Last Modified: Wed, 09 Sep 2026 11:10:20 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71842b95446fa056ae4e89e540f6fb6959ad046eb286e0a9ab5c7486f9545c2`  
		Last Modified: Wed, 09 Sep 2026 11:10:19 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d98aeb94447781fb88db1bf24d46a4c21fe8b77b2b1a3850b90813990331c73d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3843446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51e19815907ece6c7c391fe7f2dff8ed40e6de89fa90986dc9b65be6ade0782`

```dockerfile
```

-	Layers:
	-	`sha256:5b994937173be6fd6399df6c650c27345792e464936575956301616abf037b65`  
		Last Modified: Wed, 09 Sep 2026 11:10:19 GMT  
		Size: 3.8 MB (3825684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5857ea9c9fef4e18693d8ff8b6ee4dec8d1fb37172360c15077ef26459cd7dcb`  
		Last Modified: Wed, 09 Sep 2026 11:10:18 GMT  
		Size: 17.8 KB (17762 bytes)  
		MIME: application/vnd.in-toto+json
