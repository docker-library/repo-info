## `clojure:temurin-17-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:13b724a0da93b47ddc6ade18b6281ceeee443a2666674ccf0d29c1777e2d29f7
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

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:81919fcba54cd21b80159d6421de0d6c5a7167ac42db317c97f1d08159836116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (219035588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:442c1d972586e2e4287969aab379096ce95a5c4c30d111785bf376c5f7214fd6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:20:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:20:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:21 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:20:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:20:21 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:21:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:21:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:21:32 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:21:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:21:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:21:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:21:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e788b7afb12286b43fd3bf51bc9f85cb85f28711b50076d29cf0f5460a2e4c`  
		Last Modified: Wed, 05 Aug 2026 01:21:56 GMT  
		Size: 145.9 MB (145905439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91965d85352aeb668bfa79a2ae2fcf8a58e0d0d9667f51a6c0d1cd9321a52250`  
		Last Modified: Wed, 05 Aug 2026 01:21:53 GMT  
		Size: 20.1 MB (20117413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29dcb2b1ceb61095edab34789cac4026d42503fb381dd4eb29f6a1674fc993b1`  
		Last Modified: Wed, 05 Aug 2026 01:21:52 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0719a19fd4408b6be9c2bac2f5d4f9027997395295036d99dab75d32c3fd98`  
		Last Modified: Wed, 05 Aug 2026 01:21:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e07bb41efe98832def7f25d62ec066d934f36b6266737932b5d457de3ce76ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4301792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec730703e89ae9b860ca19cb2054384ac16201f2eb7f0d447c816324577ac48d`

```dockerfile
```

-	Layers:
	-	`sha256:1af1d4d4ed02ba62d225a30ac77a88c20a0310e48ecafc14bb4b66fc92b54a5b`  
		Last Modified: Wed, 05 Aug 2026 01:21:52 GMT  
		Size: 4.3 MB (4284054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42d11818c5e3a785a454535eef90da7ce613e259ed7899aa044143c04827992f`  
		Last Modified: Wed, 05 Aug 2026 01:21:52 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3ee27aa9fa9de2b46b7e902e7ace8c8250bb4bad4551f74704fd93d1925b603e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.6 MB (217563445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac75d122130b18e8ae252bf1fd0a17553ffb849f944c7df0e34b599c3da4f6b7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:26:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:26:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:26:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:14 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:26:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:26:14 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:27:19 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:27:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:27:19 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:27:21 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:27:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:27:21 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:27:21 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b20a40b4f75d7bffe628f74d367c2b9db22212fbb077133b8eed69b7ccb3ef50`  
		Last Modified: Wed, 05 Aug 2026 01:27:44 GMT  
		Size: 144.7 MB (144724287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aad91a4d263bc9c5ebb5614f623548c75ed58b3507888af5de49028226a4847`  
		Last Modified: Wed, 05 Aug 2026 01:27:42 GMT  
		Size: 19.9 MB (19940141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad245453f514710dd3af012bae6b40c3abfdf9e37e25c2b36df545cfa5db52f8`  
		Last Modified: Wed, 05 Aug 2026 01:27:41 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37ff42acc1f26265b758e1c808ac3495d9732ae8ca6da18b554a482751832f1f`  
		Last Modified: Wed, 05 Aug 2026 01:27:41 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e005ffaa29d9b639f38cd5f380976affa39d8b98d40aff8c9e198c0dc3ab41cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4301528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c690d2b2555fe5c723bde0f92cf93b384d974a0970bb7735b3ca3f9bd39b44`

```dockerfile
```

-	Layers:
	-	`sha256:aae8ee8ed15154277e8507baaeebc61d8355b8363665f029f5f32c5c6aae8e19`  
		Last Modified: Wed, 05 Aug 2026 01:27:41 GMT  
		Size: 4.3 MB (4283669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d803891a1702ce7e13606126c32d81c1644b4eb87cef0583b3be7d957c55668`  
		Last Modified: Wed, 05 Aug 2026 01:27:41 GMT  
		Size: 17.9 KB (17859 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:7bdbb95d05e5153758ea178846ad70ba93e0da77063a34b879ff4d82d8923c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.0 MB (222955173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9609a9ece4b214caeeae61433fb1afd2e02070b63b73b3b75144b63d5c7311f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:29:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:29:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:29:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:29:59 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 03:29:59 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 03:29:59 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:32:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 03:32:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 03:32:33 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 03:32:36 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 03:32:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:32:36 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:32:36 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf9b001c3c03526ee978c85cbf44ef2b90b2685e4627dc3481258c9eb34d3c3`  
		Last Modified: Wed, 05 Aug 2026 03:33:16 GMT  
		Size: 145.8 MB (145766102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea5577ecbfdc126f3fb692ee9ba73efe1f1eeb759c452089a72bc4a0eed1d71`  
		Last Modified: Wed, 05 Aug 2026 03:33:14 GMT  
		Size: 20.3 MB (20331938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455b243c30502bbe9620a5d8084b7e6e211ddbbaa0215871e6b24be24bcee610`  
		Last Modified: Wed, 05 Aug 2026 03:33:13 GMT  
		Size: 4.5 MB (4515226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73e7420c2d2dc0ad2b2f58fbf52ba63ad5d54e713c975910c0cd18ba6d8295ee`  
		Last Modified: Wed, 05 Aug 2026 03:33:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b65c1203ce5429a652f185e886e6f9226905ae21cf1be081f5e31d924827f070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4303697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41173561bf82738680cd55de4b2e7a2048eadf46ae00ae2132b26a4b5b5b326e`

```dockerfile
```

-	Layers:
	-	`sha256:e2cc13ed8d93008458e2308ed2d81de0e0c0c9548505a615aeca10d1604b3df2`  
		Last Modified: Wed, 05 Aug 2026 03:33:13 GMT  
		Size: 4.3 MB (4285915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfbe0fc0f43c9c6be8c31574e64a929b44deb53be0b0e11dbca954a9d4231b60`  
		Last Modified: Wed, 05 Aug 2026 03:33:13 GMT  
		Size: 17.8 KB (17782 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:463d2f5b68cb936c5c2573e66c83868638ae01db26f23e758208965d8d769361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207353250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de8dba5ab5e0fd9c53b63ad2a79b15f2ae7037f5a392fef8b66db22909b64cd5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:52:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:52:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:52:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:52:35 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:52:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:52:35 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:53:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:53:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:53:45 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:53:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:53:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:53:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:53:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309965fd29815352376730fa95c4d849749c698da80d21a83af566516fa3898d`  
		Last Modified: Tue, 04 Aug 2026 02:54:13 GMT  
		Size: 135.9 MB (135910420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5d1f6475473e300348805cfabe690c122627ef0440ee655ecb4a14b7f07122`  
		Last Modified: Tue, 04 Aug 2026 02:54:11 GMT  
		Size: 19.8 MB (19769924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aba123444d6e3877902fc32684f0d657439937021ae9ba18bb173688baf60d7`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95338122a9b1d364e1084dae83b24895ef156f4d40be011a5afceca627eebf48`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:104ebc38021d804ecd1f93c120d76d63b1b02af7cbb5ceacaa070fc44dc98998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4293606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b3442c7eef5bb39cbe6390ca4baa6b521b397585872446d088ecc18829bc440`

```dockerfile
```

-	Layers:
	-	`sha256:3cad48098292d4af8d035bf5f8d8353141f93a0b5da5cf8eca9d13220757c639`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 4.3 MB (4275868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb6b05deaa80ccdaa6b3b99b07f791192930ec46f46c4c67d4de6c6d148d3f8e`  
		Last Modified: Tue, 04 Aug 2026 02:54:10 GMT  
		Size: 17.7 KB (17738 bytes)  
		MIME: application/vnd.in-toto+json
