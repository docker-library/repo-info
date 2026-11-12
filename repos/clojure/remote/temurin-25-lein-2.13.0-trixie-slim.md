## `clojure:temurin-25-lein-2.13.0-trixie-slim`

```console
$ docker pull clojure@sha256:1fc56725e3514676eb2dfb097c43d87199b5352f8a906c8ac37d4001354d706c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:eb7d9389682e2894e58589e0c52195df7ef7ded46ffae42f983e356a3c62247c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.7 MB (143712094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fba52a0399f238afa992bc6c93588e74290e726f2fb9a227c87fd08877cf8be`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:50:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:50:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:50:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:50:48 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 00:50:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 00:50:48 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:52:03 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 00:52:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 00:52:03 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 00:52:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 00:52:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:52:04 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:52:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c8b949cfd3827d5762b7cb371b26540ba2e23466307b006e80919c5cacbf6c`  
		Last Modified: Thu, 12 Nov 2026 00:52:23 GMT  
		Size: 92.6 MB (92598912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccb9f1ada581c834443d43e40984a15c383d7c4be694a6c61d5ef7dab80c485`  
		Last Modified: Thu, 12 Nov 2026 00:52:22 GMT  
		Size: 16.7 MB (16740939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b6bd710bbeee32345ce8f9cfbd287854d78936f9100b49251b3874f77af8b6`  
		Last Modified: Thu, 12 Nov 2026 00:52:21 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf54cc07102bdbd5aaebe42b8baf0fcba170eeb43085e6c8fb232203e6c06b0`  
		Last Modified: Thu, 12 Nov 2026 00:52:21 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3d781afef482b33bce52f287d3b39bb1369e01607f6c84e78a74922e14450c8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2358195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80622299ac2e95fffa6addb2d9b94efd619fbb1a579a29bebb5eb11f1f7855b`

```dockerfile
```

-	Layers:
	-	`sha256:6f89fbd19c20ab82a005ac84b77a1c1d962e6fb715592bc9313bcd7e6decf93f`  
		Last Modified: Thu, 12 Nov 2026 00:52:21 GMT  
		Size: 2.3 MB (2339796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c1acd00e9bdf7b101362fc15e19e3171a0fca4e8f18e1818223634b66a0ad5a`  
		Last Modified: Thu, 12 Nov 2026 00:52:21 GMT  
		Size: 18.4 KB (18399 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:015c50ba368cd159151513a4a09a4c74b1b0afd5c08adfdf7fe428930c07b239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142963323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baae7a734bed29d6624e688b91a10ccc5ac2b1c9727bba56ff87ade4179d39a9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:06:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:06:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:06:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:06:37 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 12 Nov 2026 01:06:37 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 12 Nov 2026 01:06:37 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:07:59 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 12 Nov 2026 01:07:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 12 Nov 2026 01:07:59 GMT
ENV LEIN_ROOT=1
# Thu, 12 Nov 2026 01:08:00 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 12 Nov 2026 01:08:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:08:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:08:00 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f48e2df2237ba2f2e2cc06942b9a22d5fca6128d6d35f82dc994dac9fcd437`  
		Last Modified: Thu, 12 Nov 2026 01:08:21 GMT  
		Size: 91.5 MB (91525624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bafca65f51e0c93e442f0de71e4712b76647dd93fde31c776187c2160ba36cf`  
		Last Modified: Thu, 12 Nov 2026 01:08:18 GMT  
		Size: 16.7 MB (16707550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541ab83a906756e21904adc55d7246aca256eea9c3f044ab61050fdc841911c2`  
		Last Modified: Thu, 12 Nov 2026 01:08:17 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5065fe6a08d5a9edf9a4d66be73b816be2a93bb35d1683caf5b750613305bb6a`  
		Last Modified: Thu, 12 Nov 2026 01:08:17 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4f2b0edb36a70efbc94a2f53fd4d5be4155aaac2b7c43e347c59d261127266c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2357972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:411d17879cca59c1b9749a918e2b9720f591d8d0140f6f52d3a4a9deffaea291`

```dockerfile
```

-	Layers:
	-	`sha256:ef148e5ed246e704ea1116c7894b6ba6fc2336289636be74d64b53ec9dde6201`  
		Last Modified: Thu, 12 Nov 2026 01:08:17 GMT  
		Size: 2.3 MB (2339427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a765b1c796a9c2ee551c8afa6f7cb588bb04e692df7ee60562464b4d06f30e1f`  
		Last Modified: Thu, 12 Nov 2026 01:08:17 GMT  
		Size: 18.5 KB (18545 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7fb934a31cbebc16d8fe754382a1651bfca060e5697f4128921dc80c859628d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.1 MB (145074102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f566586924916df16d26765287e7f92c4303e67b6713e44e7779056b21bd1c55`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 16:07:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:07:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:07:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:07:44 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 16:07:44 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 16:07:44 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:11:01 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 16:11:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 16:11:01 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 16:11:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:46:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:46:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:46:01 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16eb107ad4aab0d839191f5d20438fae2bc20bed304c2176a95bc563270b24d6`  
		Last Modified: Thu, 05 Nov 2026 16:11:42 GMT  
		Size: 90.1 MB (90111671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a0530b942ddf14a1d8f0ff0c4450a10a9a3e4b5b1ded40754c518c0097ca84`  
		Last Modified: Thu, 05 Nov 2026 16:11:41 GMT  
		Size: 16.8 MB (16778640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56be9c7048bf171b828b4401105a5451a19e8a972ad29deaed4ae62ef807949a`  
		Last Modified: Thu, 05 Nov 2026 16:11:40 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be0f5a2c010124829f1b75e8b1569294057592d7e11aa2329d19c0077358864`  
		Last Modified: Tue, 10 Nov 2026 02:46:16 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-2.13.0-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bc3d3acaa0822e63c752627d943916e80368bd35008939bd793364ffa47b70fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2340695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82786f34041fd48c909aa74812ed8dd926141a345ccc308836dada3ce400a61d`

```dockerfile
```

-	Layers:
	-	`sha256:2c46f94f2749692768afd77ff1b76d5a9873921fd164f77f588d8a52e4f9584b`  
		Last Modified: Thu, 12 Nov 2026 08:39:59 GMT  
		Size: 2.3 MB (2322239 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a0cecba339b2dff47a6d8dcf942547338d36089a144be475984bfd32250d3a9`  
		Last Modified: Thu, 12 Nov 2026 08:39:59 GMT  
		Size: 18.5 KB (18456 bytes)  
		MIME: application/vnd.in-toto+json
