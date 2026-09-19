## `clojure:temurin-21-lein-2.13.0-bookworm-slim`

```console
$ docker pull clojure@sha256:6280f265f3e2e15b72499cf82d5cdfb4cea0e97dfa820f7ad5640e1a38d9c90c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:640e95f93c8fa6b2a54b0f4b9e20698a488ed81b6b9877b87a7fa47e376ef4de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (208954202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc1a2353f83c967445b593c850b4a5d5ff5b3e06762d4319d8250ddfe08adf9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:35:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:35:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:35:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:35:12 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 16 Sep 2026 04:35:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 16 Sep 2026 04:35:12 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:36:18 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 16 Sep 2026 04:36:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 16 Sep 2026 04:36:18 GMT
ENV LEIN_ROOT=1
# Wed, 16 Sep 2026 04:36:19 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 16 Sep 2026 04:36:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:36:19 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:36:19 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ba5ff5c6bc4c970f85c837c44410bb423b3cf8e20ad025389e523c9c43d132`  
		Last Modified: Wed, 16 Sep 2026 04:36:39 GMT  
		Size: 158.1 MB (158120306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff56f67d2e7e7028c8adc9b46b1bd4d5483c76d2fee495789d054d5d39d6d30`  
		Last Modified: Wed, 16 Sep 2026 04:36:36 GMT  
		Size: 18.1 MB (18085612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac5a358b31fff89f84b9f31f7bcc8c4ca4b97e97c7e8cd13b3718be93aa3952`  
		Last Modified: Wed, 16 Sep 2026 04:36:35 GMT  
		Size: 4.5 MB (4515199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85867d90d86cb94b6c0dc0771e6809986e34265785572779b54deaf65aa260c4`  
		Last Modified: Wed, 16 Sep 2026 04:36:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:528906d6dbfad4d437cddb3dd13ed4b96214305ef72a6e311f4504996677f81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2757199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3da2c1741eaa92622bb6b121e19886f34a310b9200751975f7dbe25b7f8a8b5`

```dockerfile
```

-	Layers:
	-	`sha256:f7bf93717024220cc5fada345a940bbe4bdb7b9c7ff6856f70ab09eb6468cc56`  
		Last Modified: Wed, 16 Sep 2026 04:36:35 GMT  
		Size: 2.7 MB (2739426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b12e5b6749df0c49ef417be53461ab8d6390bc6c0726c001afd3338142d82769`  
		Last Modified: Wed, 16 Sep 2026 04:36:35 GMT  
		Size: 17.8 KB (17773 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a1b1175bb540ee7c280b7a24614e9562dafd27cccb580e11e69079e5081eb4d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206948171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914ab88fd00e6c7d37ab9b390a11e3b48c69bb71cf463e1550d0535d42b4c38f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:23:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:23:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:23:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:23:06 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 01:23:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 01:23:06 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:24:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 01:24:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 01:24:16 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 01:24:17 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 01:24:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:24:17 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:24:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e594e68bdc907ed16f27d6b4e2247c9c9e930f41bb73f6cf1d9bd540c386878b`  
		Last Modified: Sat, 19 Sep 2026 01:24:38 GMT  
		Size: 156.4 MB (156401948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18202e40d82d95a92e0a345088185d74c2b4fd1c3e04cbeff4f669ee5d996ad`  
		Last Modified: Sat, 19 Sep 2026 01:24:35 GMT  
		Size: 17.9 MB (17906936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca052c5ed98cb1a0871e0fd1e8e735e46df80e1afb3b3cf8468a6c267bfbccf`  
		Last Modified: Sat, 19 Sep 2026 01:24:35 GMT  
		Size: 4.5 MB (4515178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4d653eb12e99986dc94ca8c4a587f0d31fb2e7d365916d6e7100c9b54e675d`  
		Last Modified: Sat, 19 Sep 2026 01:24:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a83fe33aa42672fcef69a877f22c8a778ee1f21a8d8b22fb8dd74972460973a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1033375585580094f959f04073db11c9790a3adaf4963cb6b86840d7660f54`

```dockerfile
```

-	Layers:
	-	`sha256:712f5191361b31479167f553db15f8a2e466bf78a8919cfa6cc87e0e47f780ad`  
		Last Modified: Sat, 19 Sep 2026 01:24:35 GMT  
		Size: 2.7 MB (2739077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8654d1592880693a26b19f01527ef797b71815d83c7eb68f31ab83c1fc83fb26`  
		Last Modified: Sat, 19 Sep 2026 01:24:34 GMT  
		Size: 17.9 KB (17894 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1fe45d03e16e529e233c955a9fceba6144833ee01e57b96e94e6fdb1a06df2ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.1 MB (213146089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a796b62d06e4d2901a42e374ac53704c9049d2f60a6c0df9a85ac9c2c50c2b31`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:20:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:20:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:20:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:20:34 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 04 Sep 2026 00:20:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 04 Sep 2026 00:20:34 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 11:05:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 09 Sep 2026 11:05:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 09 Sep 2026 11:05:08 GMT
ENV LEIN_ROOT=1
# Wed, 09 Sep 2026 11:05:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 09 Sep 2026 11:05:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 11:05:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 11:05:13 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d866b20eba167def1cd6e612f1d7dd17ba8fe02043e41bcb160cbb8bc3c90ab6`  
		Last Modified: Fri, 04 Sep 2026 00:22:09 GMT  
		Size: 158.3 MB (158274917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b73216dc27f92e9c6960b76113be43eefdc12da996ee7ad3d03d34b072b741`  
		Last Modified: Wed, 09 Sep 2026 11:05:50 GMT  
		Size: 18.3 MB (18279073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89390ed0cdde7c2734488f91bbefd3f42d8de3354d1123ad1637a2eee2b63a34`  
		Last Modified: Wed, 09 Sep 2026 11:05:50 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae0653f868d429278821359ee196126f38cd324b7fae4eedee100c1bc971e53e`  
		Last Modified: Wed, 09 Sep 2026 11:05:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:47723d231a635ddf972e9a7532b6101750cc93325e0a950d1b581ddb44c3849d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2759076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dda2d4b22273c12d8a93d0dcfde05c2323c57b1b6ebafc6bd5271e481ecac195`

```dockerfile
```

-	Layers:
	-	`sha256:4619f60a318de990ca4990397accd8b1675de47271f93557c43f294677eaf260`  
		Last Modified: Wed, 16 Sep 2026 10:51:18 GMT  
		Size: 2.7 MB (2741259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:245ad3fe7dd20bd5c33fdb4d881bb12e444cbf3d0b08bee3c1bd17511dc10747`  
		Last Modified: Wed, 16 Sep 2026 10:51:18 GMT  
		Size: 17.8 KB (17817 bytes)  
		MIME: application/vnd.in-toto+json
