## `clojure:temurin-17-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:c862f960541d6c80cfad2f0f09b5f4b577737436d5f96d4fe9b02edc48c3c865
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0b2c5d1ae7f8c60a68e87eb4c66ebd1dca0cc7b67e96513d7ffbc395d8434a54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 MB (197227612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdec88968b4dc1df51fa201a75b6c86e10c6747a13b1c059d506db228c4aff86`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 18:08:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 18:08:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 18:08:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 18:08:10 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 18:08:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 18:08:10 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 18:09:40 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 18:09:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 18:09:40 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 18:09:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 18:09:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 18:09:42 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 18:09:42 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3438bb2e1d069c3d154ce6df11e4ed25a4d57a9dc5f244c252a1631772af76`  
		Last Modified: Fri, 20 Nov 2026 18:10:02 GMT  
		Size: 146.1 MB (146114263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f789a40d92e1cef9fa846c50b1328c9fa97a02457a98698b093cd445dd1515ef`  
		Last Modified: Fri, 20 Nov 2026 18:09:59 GMT  
		Size: 16.7 MB (16741115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2986be65a7d94ff092a615fd8a1587b0a751c62bc23f26011a6b86a0f471a55`  
		Last Modified: Fri, 20 Nov 2026 18:09:58 GMT  
		Size: 4.5 MB (4515169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b5df973421232bae1bc9583868e12cd97bc0c8e67c065891694b761b41c775b`  
		Last Modified: Fri, 20 Nov 2026 18:09:58 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4c2ec355296827471b9f19971e7affbd36ebc6ae9eaaa97cc686b695f7b72b6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:001bb7dba38c40bc5f11cc09b34e9cc1493f24930d270178ddb3b597078cc3fb`

```dockerfile
```

-	Layers:
	-	`sha256:db9d50461a9593f6528fe13586ab9926fd222f2de1ac97e0da576b6fe335fce1`  
		Last Modified: Fri, 20 Nov 2026 18:09:58 GMT  
		Size: 2.4 MB (2371754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a43bfea609d157399f10de2a24add85ba8470d57c78cda5b470e953a4a3909a`  
		Last Modified: Fri, 20 Nov 2026 18:09:58 GMT  
		Size: 17.8 KB (17753 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5f3efffecdbdb615800fc826e205862fce67545b82fc6eec08e38d56c66f7545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196395146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdc1ed1329a58146800ed6d8fc429df20badb012da793dfbe3fba0d379f3d5a7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:03:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:03:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:03:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:03:33 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:03:33 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:03:33 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:04:54 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:04:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:04:54 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:04:55 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:04:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:04:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:04:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54d9017001072ff03267551e9a1b9f7398006f0796f0beea435f3f04780b17f`  
		Last Modified: Thu, 12 Nov 2026 01:05:16 GMT  
		Size: 145.0 MB (144957159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:292b3d5b4ed8cfeef518f9f9c3b4102686d820efbea54b7bd885059c9405eb1e`  
		Last Modified: Thu, 12 Nov 2026 01:05:13 GMT  
		Size: 16.7 MB (16707827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083eac634c616c35e72bb67ab9d086b92d76d8e25c0ee8499a0ff623a77a2785`  
		Last Modified: Thu, 12 Nov 2026 01:05:13 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b509a7b44669ded3896cbaed658fab9631a129b3f26c3b4979183f163de2818`  
		Last Modified: Thu, 12 Nov 2026 01:05:12 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4c0ec450f967480c96935fe5e6726a7ec6a7d9d3a2dd7f1942bca80050d1ac73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:493204d7b9c11f77c2ec9cdf0484311848ad45747571efa5cce7d789654c9fa0`

```dockerfile
```

-	Layers:
	-	`sha256:9e55698cf8d11db25ee78330731b3b121c0a7f846e1486ac21f8acc6ef99a2d7`  
		Last Modified: Thu, 12 Nov 2026 01:05:13 GMT  
		Size: 2.4 MB (2371356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5230782786d668dfb216f28edbc972bad4126cf988f108a48b89d8aa178cbce1`  
		Last Modified: Thu, 12 Nov 2026 01:05:12 GMT  
		Size: 17.9 KB (17873 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f11aeed750c39b923a0fdc44ed3df2836b459adbe021e93d59b750f926736981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199855265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed579396fa421ba4aa927de8d89aba32e2cdbd866928e7a5ab3e463c8829c21`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:21:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:21:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:21:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:21:32 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:21:32 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:21:33 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:24:44 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:24:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:24:44 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:24:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:24:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:24:49 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:24:49 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8414bae47d7405a7372988f6ef49623a98c61807e361f6a8999b8be82a0cc3`  
		Last Modified: Fri, 20 Nov 2026 19:25:35 GMT  
		Size: 144.9 MB (144892672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d91bb770f860b75dd760fa5bb2e36698906ca5cc3cff0dd0271d7befa99f77`  
		Last Modified: Fri, 20 Nov 2026 19:25:32 GMT  
		Size: 16.8 MB (16778797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e330bad6476c45e705f74bce8f3807440e5eb94747a58453ec9a06b67e73203e`  
		Last Modified: Fri, 20 Nov 2026 19:25:31 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2fc82eb73551ae227e1c0b08dc1163f661e1350d8f99dc4a299d4dfd53d4f68`  
		Last Modified: Fri, 20 Nov 2026 19:25:31 GMT  
		Size: 902.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:aec8560a90c7820b837d0ecfda49b5075e95f9b957101ae9c02bea761e771854
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2389285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4351895a51038970f830c91fecd7299018a4688f22c0d3f032a8c4fd0c8cb3b`

```dockerfile
```

-	Layers:
	-	`sha256:18ab111c7fe14b0953c2d1d5fef98f424fbebb55cb7e663af7e0c599dec0476c`  
		Last Modified: Fri, 20 Nov 2026 19:25:31 GMT  
		Size: 2.4 MB (2371488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48ede12df6f0c6007a621cbd176a72f970d0c311430e1fb9f44da62aa9fd5638`  
		Last Modified: Fri, 20 Nov 2026 19:25:31 GMT  
		Size: 17.8 KB (17797 bytes)  
		MIME: application/vnd.in-toto+json
