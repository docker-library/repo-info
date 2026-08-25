## `clojure:temurin-26-lein-2.13.0-bullseye`

```console
$ docker pull clojure@sha256:6728821eddae42861c3f9b424ae378a002fb6b6018b6708e4ab3e65156a4ecd7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:2e87292f4fcb5f5403b5fb837e8e66b581fac6ec12d9075c22b0c4eafb851aa5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169796703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a73ffb95bd656f74a2e1233c315f1641cd0076bbb18b4fec4192eaede9dc42c9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:22:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:22:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:22:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:22:05 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 21 Aug 2026 19:22:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 21 Aug 2026 19:22:05 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:23:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 21 Aug 2026 19:23:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 21 Aug 2026 19:23:16 GMT
ENV LEIN_ROOT=1
# Fri, 21 Aug 2026 19:23:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 21 Aug 2026 19:23:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:23:18 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:23:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e616c66a34b55854fe5d85bde5e7fe8a36a465197a119ce4fd56f2161cb8198a`  
		Last Modified: Fri, 21 Aug 2026 19:23:38 GMT  
		Size: 94.6 MB (94563771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785b61ccc44186e9307c63580cbcc8a0e413297555f83856855622b25bee7a07`  
		Last Modified: Fri, 21 Aug 2026 19:23:36 GMT  
		Size: 16.9 MB (16940300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc23ae9bcdbeb63a9af58dcc3ed701cbb6f8fa7da57643d18de1a01f624cd262`  
		Last Modified: Fri, 21 Aug 2026 19:23:36 GMT  
		Size: 4.5 MB (4515183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6af5fd36afeeb0e3adc1f5d8ea055e3539a2fc9e279b864b3ccc71031faa6b`  
		Last Modified: Fri, 21 Aug 2026 19:23:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:f0d726d27a15e34b369a99ded2bedca83e73c6664f7ab754958f3d5ab72f09ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4488854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:202126c3fab5383e372126a1bad0c664da681c20d42f692578b64ee62e9bd62b`

```dockerfile
```

-	Layers:
	-	`sha256:00055aefd4fd9f7e29dac31deb5d52750e18361766fc21ca6de4679fd00bb0d4`  
		Last Modified: Fri, 21 Aug 2026 19:23:35 GMT  
		Size: 4.5 MB (4471123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f549969cee78ab4dff8e595e6bbed120219fdee5c5e5dae9585bfad3e77bd9c9`  
		Last Modified: Fri, 21 Aug 2026 19:23:35 GMT  
		Size: 17.7 KB (17731 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f27ec0ffaa37bfc5e33f7953f09134286cff012df3c581bfda661bf7e1d4d43e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.2 MB (167248850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da777f1dd4a9207c76b9a5f373cbd11b8c1f9bfb3a1db1c9e133827e56fa21cb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Tue, 25 Aug 2026 01:36:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:36:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:36:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:36:59 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:36:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:36:59 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:38:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:38:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:38:10 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:38:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:38:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:38:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:38:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc6034befb518be826c4ebf7600d36cfb5b322b02217d469acdff8b68777a9e`  
		Last Modified: Tue, 25 Aug 2026 01:38:32 GMT  
		Size: 93.5 MB (93541521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e57a69d087684339cf309490d3954281e6c1ef99e9e4a4518131dc445e40de`  
		Last Modified: Tue, 25 Aug 2026 01:38:30 GMT  
		Size: 16.9 MB (16930393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29494ecaa430e87dfd789bce4853b68c97205fd4c26ff2ff598326867fe725ae`  
		Last Modified: Tue, 25 Aug 2026 01:38:29 GMT  
		Size: 4.5 MB (4515163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab57b42bf523fce9e6642b74f06e0b89ae385700bb030c49c076a82197e60fe`  
		Last Modified: Tue, 25 Aug 2026 01:38:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:bc9ba008b151f0e5a68fdc1c93bb6ea24c9e435acd6d85f9dab7ad39d4c325ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4487946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dbd0c610b2203875a6d0e3c1e9a0ea0cbfc9a4740903ded636ef09f661fa67`

```dockerfile
```

-	Layers:
	-	`sha256:6256e0c5b03914a928d7e279a1fc221f21aff67aebc3213cbe6d28ff9377ec21`  
		Last Modified: Tue, 25 Aug 2026 01:38:29 GMT  
		Size: 4.5 MB (4470094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1b95e6f65d7d7201f3f3d0caa1fcfd7507723caff0d9503d09a5419416d8fc5`  
		Last Modified: Tue, 25 Aug 2026 01:38:29 GMT  
		Size: 17.9 KB (17852 bytes)  
		MIME: application/vnd.in-toto+json
